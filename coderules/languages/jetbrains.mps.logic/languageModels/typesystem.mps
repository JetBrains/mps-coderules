<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:63d079fa-4fab-4468-a2ee-4cf39ac1306b(jetbrains.mps.logic.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790189" name="jetbrains.mps.baseLanguage.structure.Type" flags="in" index="33vP2l" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern">
      <concept id="1136720037777" name="jetbrains.mps.lang.pattern.structure.PatternExpression" flags="in" index="2DMOqp">
        <child id="9046399079000773837" name="pattern" index="HM535" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1185805035213" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement" flags="nn" index="nvevp">
        <child id="1185805047793" name="body" index="nvhr_" />
        <child id="1185805056450" name="argument" index="nvjzm" />
        <child id="1205761991995" name="argumentRepresentator" index="2X0Ygz" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175147670730" name="jetbrains.mps.lang.typesystem.structure.SubtypingRule" flags="ig" index="2sgARr" />
      <concept id="1205762105978" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableDeclaration" flags="ng" index="2X1qdy" />
      <concept id="1205762656241" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableReference" flags="nn" index="2X3wrD">
        <reference id="1205762683928" name="whenConcreteVar" index="2X3Bk0" />
      </concept>
      <concept id="1201607707634" name="jetbrains.mps.lang.typesystem.structure.InequationReplacementRule" flags="ig" index="35pCF_">
        <child id="1201607798918" name="supertypeNode" index="35pZ6h" />
        <child id="3592071576955708909" name="isApplicableClause" index="1xSnZW" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="3592071576955708904" name="jetbrains.mps.lang.typesystem.structure.IsReplacementRuleApplicable_ConceptFunction" flags="in" index="1xSnZT" />
      <concept id="1176543928247" name="jetbrains.mps.lang.typesystem.structure.IsSubtypeExpression" flags="nn" index="3JuTUA">
        <child id="1176543945045" name="subtypeExpression" index="3JuY14" />
        <child id="1176543950311" name="supertypeExpression" index="3JuZjQ" />
      </concept>
      <concept id="1178870617262" name="jetbrains.mps.lang.typesystem.structure.CoerceExpression" flags="nn" index="1UaxmW">
        <child id="1178870894644" name="pattern" index="1Ub_4A" />
        <child id="1178870894645" name="nodeToCoerce" index="1Ub_4B" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174642900584" name="jetbrains.mps.lang.typesystem.structure.PatternCondition" flags="ig" index="1Yb3XT">
        <child id="1174642936809" name="pattern" index="1YbcFS" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
      <concept id="1174665551739" name="jetbrains.mps.lang.typesystem.structure.TypeVarDeclaration" flags="ng" index="1ZxtTE" />
      <concept id="1174666260556" name="jetbrains.mps.lang.typesystem.structure.TypeVarReference" flags="nn" index="1Z$b5t">
        <reference id="1174666276259" name="typeVarDeclaration" index="1Z$eMM" />
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
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7" />
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="1pt0VTMFfZC">
    <property role="TrG5h" value="typeof_TreeFormExpression" />
    <property role="3GE5qa" value="dataform.expression" />
    <node concept="3clFbS" id="1pt0VTMFg58" role="18ibNy">
      <node concept="3clFbJ" id="6YPNC4OxBT5" role="3cqZAp">
        <node concept="3clFbS" id="6YPNC4OxBT7" role="3clFbx">
          <node concept="1Z5TYs" id="6YPNC4OxD65" role="3cqZAp">
            <node concept="mw_s8" id="6YPNC4OxD66" role="1ZfhKB">
              <node concept="2c44tf" id="6YPNC4OxD67" role="mwGJk">
                <node concept="3uibUv" id="6YPNC4OxDfx" role="2c44tc">
                  <ref role="3uigEE" to="6exd:5JQSuNswOXL" resolve="TermNode" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="6YPNC4OxD69" role="1ZfhK$">
              <node concept="1Z2H0r" id="6YPNC4OxD6a" role="mwGJk">
                <node concept="1YBJjd" id="6YPNC4OxD6b" role="1Z2MuG">
                  <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6YPNC4OxDna" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="6YPNC4OxC_W" role="3clFbw">
          <node concept="2OqwBi" id="6YPNC4OxCcp" role="2Oq$k0">
            <node concept="1YBJjd" id="6YPNC4OxC2I" role="2Oq$k0">
              <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
            </node>
            <node concept="3TrEf2" id="6YPNC4OxCkj" role="2OqNvi">
              <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
            </node>
          </node>
          <node concept="1mIQ4w" id="6YPNC4OxCRo" role="2OqNvi">
            <node concept="chp4Y" id="6YPNC4OxD1q" role="cj9EA">
              <ref role="cht4Q" to="5j4j:6$jH9oLmYC_" resolve="TermNode" />
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="6YPNC4OxDfW" role="3eNLev">
          <node concept="2OqwBi" id="6YPNC4OxE85" role="3eO9$A">
            <node concept="2OqwBi" id="6YPNC4OxDwC" role="2Oq$k0">
              <node concept="1YBJjd" id="6YPNC4OxDnj" role="2Oq$k0">
                <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
              </node>
              <node concept="3TrEf2" id="6YPNC4OxDQs" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
              </node>
            </node>
            <node concept="1mIQ4w" id="6YPNC4OxEuq" role="2OqNvi">
              <node concept="chp4Y" id="6YPNC4OxEwq" role="cj9EA">
                <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6YPNC4OxDfY" role="3eOfB_">
            <node concept="1Z5TYs" id="6YPNC4OxE_R" role="3cqZAp">
              <node concept="mw_s8" id="6YPNC4OxE_S" role="1ZfhKB">
                <node concept="2c44tf" id="6YPNC4OxE_T" role="mwGJk">
                  <node concept="3uibUv" id="6YPNC4OxEY4" role="2c44tc">
                    <ref role="3uigEE" to="6exd:1msb0mq99GH" resolve="ValueRole" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="6YPNC4OxE_V" role="1ZfhK$">
                <node concept="1Z2H0r" id="6YPNC4OxE_W" role="mwGJk">
                  <node concept="1YBJjd" id="6YPNC4OxE_X" role="1Z2MuG">
                    <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6YPNC4OxEYt" role="3cqZAp" />
          </node>
        </node>
        <node concept="3eNFk2" id="6YPNC4OxEYC" role="3eNLev">
          <node concept="2OqwBi" id="6YPNC4OxFPR" role="3eO9$A">
            <node concept="2OqwBi" id="6YPNC4OxFjr" role="2Oq$k0">
              <node concept="1YBJjd" id="6YPNC4OxFa6" role="2Oq$k0">
                <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
              </node>
              <node concept="3TrEf2" id="6YPNC4OxFyr" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
              </node>
            </node>
            <node concept="1mIQ4w" id="6YPNC4OxGc$" role="2OqNvi">
              <node concept="chp4Y" id="6YPNC4OxGhh" role="cj9EA">
                <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6YPNC4OxEYE" role="3eOfB_">
            <node concept="3clFbJ" id="6YPNC4P2G25" role="3cqZAp">
              <node concept="3clFbS" id="6YPNC4P2G27" role="3clFbx">
                <node concept="1Z5TYs" id="6YPNC4P2P6L" role="3cqZAp">
                  <node concept="mw_s8" id="6YPNC4P2P6M" role="1ZfhKB">
                    <node concept="2c44tf" id="6YPNC4P2P6N" role="mwGJk">
                      <node concept="3uibUv" id="6YPNC4P2Pw2" role="2c44tc">
                        <ref role="3uigEE" to="6exd:6YPNC4OECgm" resolve="ListRole" />
                      </node>
                    </node>
                  </node>
                  <node concept="mw_s8" id="6YPNC4P2P6P" role="1ZfhK$">
                    <node concept="1Z2H0r" id="6YPNC4P2P6Q" role="mwGJk">
                      <node concept="1YBJjd" id="6YPNC4P2P6R" role="1Z2MuG">
                        <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6YPNC4P2G26" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6YPNC4P2Oqd" role="3clFbw">
                <node concept="1y4W85" id="6YPNC4P2NB5" role="2Oq$k0">
                  <node concept="3cmrfG" id="6YPNC4P2O1E" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="6YPNC4P2IP0" role="1y566C">
                    <node concept="1PxgMI" id="6YPNC4P2I8W" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="6YPNC4P2I$a" role="3oSUPX">
                        <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                      </node>
                      <node concept="2OqwBi" id="6YPNC4P2GbL" role="1m5AlR">
                        <node concept="1YBJjd" id="6YPNC4P2G2s" role="2Oq$k0">
                          <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
                        </node>
                        <node concept="3TrEf2" id="6YPNC4P2G_1" role="2OqNvi">
                          <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                        </node>
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="6YPNC4P2Jwj" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" resolve="contents" />
                    </node>
                  </node>
                </node>
                <node concept="1mIQ4w" id="6YPNC4P2P06" role="2OqNvi">
                  <node concept="chp4Y" id="6YPNC4P2P26" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="6YPNC4P2Qie" role="9aQIa">
                <node concept="3clFbS" id="6YPNC4P2Qif" role="9aQI4">
                  <node concept="1Z5TYs" id="6YPNC4OxGmI" role="3cqZAp">
                    <node concept="mw_s8" id="6YPNC4OxGmJ" role="1ZfhKB">
                      <node concept="2c44tf" id="6YPNC4OxGmK" role="mwGJk">
                        <node concept="3uibUv" id="6YPNC4OxGQV" role="2c44tc">
                          <ref role="3uigEE" to="6exd:6YPNC4NYnau" resolve="ChildRole" />
                        </node>
                      </node>
                    </node>
                    <node concept="mw_s8" id="6YPNC4OxGmM" role="1ZfhK$">
                      <node concept="1Z2H0r" id="6YPNC4OxGmN" role="mwGJk">
                        <node concept="1YBJjd" id="6YPNC4OxGmO" role="1Z2MuG">
                          <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6YPNC4OxGRk" role="3cqZAp" />
          </node>
        </node>
        <node concept="3eNFk2" id="428_4iY4YrU" role="3eNLev">
          <node concept="3clFbS" id="428_4iY4YrW" role="3eOfB_">
            <node concept="1Z5TYs" id="428_4iY4YLn" role="3cqZAp">
              <node concept="mw_s8" id="428_4iY4YLo" role="1ZfhKB">
                <node concept="2c44tf" id="428_4iY4YLp" role="mwGJk">
                  <node concept="3uibUv" id="428_4iY4YLq" role="2c44tc">
                    <ref role="3uigEE" to="6exd:6YPNC4OECgm" resolve="ListRole" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="428_4iY4YLr" role="1ZfhK$">
                <node concept="1Z2H0r" id="428_4iY4YLs" role="mwGJk">
                  <node concept="1YBJjd" id="428_4iY4YLt" role="1Z2MuG">
                    <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="428_4iY4YMs" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="428_4iY4Yzs" role="3eO9$A">
            <node concept="2OqwBi" id="428_4iY4Yzt" role="2Oq$k0">
              <node concept="1YBJjd" id="428_4iY4Yzu" role="2Oq$k0">
                <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
              </node>
              <node concept="3TrEf2" id="428_4iY4Yzv" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
              </node>
            </node>
            <node concept="1mIQ4w" id="428_4iY4Yzw" role="2OqNvi">
              <node concept="chp4Y" id="428_4iY4YEz" role="cj9EA">
                <ref role="cht4Q" to="5j4j:5NAQwIkRIXT" resolve="ListRole" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="6YPNC4OxGRv" role="3eNLev">
          <node concept="2OqwBi" id="6YPNC4OxHZZ" role="3eO9$A">
            <node concept="2OqwBi" id="6YPNC4OxHgy" role="2Oq$k0">
              <node concept="1YBJjd" id="6YPNC4OxH7d" role="2Oq$k0">
                <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
              </node>
              <node concept="3TrEf2" id="6YPNC4OxHIm" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
              </node>
            </node>
            <node concept="1mIQ4w" id="6YPNC4OxIuk" role="2OqNvi">
              <node concept="chp4Y" id="6YPNC4OxIwk" role="cj9EA">
                <ref role="cht4Q" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6YPNC4OxGRx" role="3eOfB_">
            <node concept="1Z5TYs" id="6YPNC4OxI$Z" role="3cqZAp">
              <node concept="mw_s8" id="6YPNC4OxI_0" role="1ZfhKB">
                <node concept="2c44tf" id="6YPNC4OxI_1" role="mwGJk">
                  <node concept="3uibUv" id="6YPNC4OxITb" role="2c44tc">
                    <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="6YPNC4OxI_3" role="1ZfhK$">
                <node concept="1Z2H0r" id="6YPNC4OxI_4" role="mwGJk">
                  <node concept="1YBJjd" id="6YPNC4OxI_5" role="1Z2MuG">
                    <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6YPNC4OxIT2" role="3cqZAp" />
          </node>
        </node>
        <node concept="3eNFk2" id="6YPNC4OxIUn" role="3eNLev">
          <node concept="2OqwBi" id="6YPNC4OxJWM" role="3eO9$A">
            <node concept="2OqwBi" id="6YPNC4OxJmS" role="2Oq$k0">
              <node concept="1YBJjd" id="6YPNC4OxJdz" role="2Oq$k0">
                <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
              </node>
              <node concept="3TrEf2" id="6YPNC4OxJGY" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
              </node>
            </node>
            <node concept="1mIQ4w" id="6YPNC4OxKul" role="2OqNvi">
              <node concept="chp4Y" id="6YPNC4OxKwl" role="cj9EA">
                <ref role="cht4Q" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6YPNC4OxIUp" role="3eOfB_">
            <node concept="1Z5TYs" id="6YPNC4OxK_0" role="3cqZAp">
              <node concept="mw_s8" id="6YPNC4OxK_1" role="1ZfhKB">
                <node concept="2c44tf" id="6YPNC4OxK_2" role="mwGJk">
                  <node concept="3uibUv" id="6YPNC4OxKWl" role="2c44tc">
                    <ref role="3uigEE" to="6exd:3OPtF03lco4" resolve="ListNode" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="6YPNC4OxK_4" role="1ZfhK$">
                <node concept="1Z2H0r" id="6YPNC4OxK_5" role="mwGJk">
                  <node concept="1YBJjd" id="6YPNC4OxK_6" role="1Z2MuG">
                    <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6YPNC4OxKWJ" role="3cqZAp" />
          </node>
        </node>
        <node concept="9aQIb" id="6YPNC4OxKWU" role="9aQIa">
          <node concept="3clFbS" id="6YPNC4OxKWV" role="9aQI4">
            <node concept="1Z5TYs" id="1pt0VTMFg9O" role="3cqZAp">
              <node concept="mw_s8" id="1pt0VTMFgab" role="1ZfhKB">
                <node concept="2c44tf" id="1pt0VTMFga7" role="mwGJk">
                  <node concept="3uibUv" id="6r6omRlboX3" role="2c44tc">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="1pt0VTMFg9R" role="1ZfhK$">
                <node concept="1Z2H0r" id="1pt0VTMFg6c" role="mwGJk">
                  <node concept="1YBJjd" id="1pt0VTMFg6_" role="1Z2MuG">
                    <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="tfe" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1pt0VTMFg5X" role="1YuTPh">
      <property role="TrG5h" value="tfe" />
      <ref role="1YaFvo" to="5j4j:6$jH9oLmUCq" resolve="DataNodeExpression" />
    </node>
  </node>
  <node concept="2sgARr" id="1mP5b6jNJDj">
    <property role="3GE5qa" value="logical.type" />
    <property role="TrG5h" value="supertypesOf_LogicalType" />
    <node concept="3clFbS" id="1mP5b6jNJDk" role="2sgrp5">
      <node concept="3cpWs8" id="5f6wxQ39Kg4" role="3cqZAp">
        <node concept="3cpWsn" id="5f6wxQ39Kg5" role="3cpWs9">
          <property role="TrG5h" value="dataType" />
          <node concept="3Tqbb2" id="5f6wxQ39Kg0" role="1tU5fm">
            <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
          </node>
          <node concept="3K4zz7" id="5f6wxQ39Kg6" role="33vP2m">
            <node concept="2c44tf" id="5f6wxQ39Kg7" role="3K4E3e">
              <node concept="3uibUv" id="5f6wxQ39Kg8" role="2c44tc">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
            </node>
            <node concept="2OqwBi" id="5f6wxQ39Kg9" role="3K4GZi">
              <node concept="1YBJjd" id="5f6wxQ39Kga" role="2Oq$k0">
                <ref role="1YBMHb" node="1mP5b6jNJDm" resolve="lt" />
              </node>
              <node concept="3TrEf2" id="5f6wxQ39Kgb" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
              </node>
            </node>
            <node concept="2OqwBi" id="5f6wxQ39Kgc" role="3K4Cdx">
              <node concept="2OqwBi" id="5f6wxQ39Kgd" role="2Oq$k0">
                <node concept="1YBJjd" id="5f6wxQ39Kge" role="2Oq$k0">
                  <ref role="1YBMHb" node="1mP5b6jNJDm" resolve="lt" />
                </node>
                <node concept="3TrEf2" id="5f6wxQ39Kgf" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                </node>
              </node>
              <node concept="3w_OXm" id="5f6wxQ39Kgg" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="49obaclpTqu" role="3cqZAp">
        <node concept="3cpWsn" id="49obaclpTqv" role="3cpWs9">
          <property role="TrG5h" value="clsDataType" />
          <node concept="3Tqbb2" id="49obaclpTqh" role="1tU5fm">
            <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
          </node>
          <node concept="1UaxmW" id="49obaclpTqw" role="33vP2m">
            <node concept="1YaCAy" id="49obaclpTqx" role="1Ub_4A">
              <property role="TrG5h" value="_" />
              <ref role="1YaFvo" to="tpee:g7uibYu" resolve="ClassifierType" />
            </node>
            <node concept="37vLTw" id="49obaclpTqy" role="1Ub_4B">
              <ref role="3cqZAo" node="5f6wxQ39Kg5" resolve="dataType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="3kjrYXAraoO" role="3cqZAp">
        <node concept="2ShNRf" id="3kjrYXAraoM" role="3clFbG">
          <node concept="Tc6Ow" id="3kjrYXArbwW" role="2ShVmc">
            <node concept="2c44tf" id="3kjrYXArbGw" role="HW$Y0">
              <node concept="3uibUv" id="3kjrYXArbHz" role="2c44tc">
                <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                <node concept="33vP2l" id="49obaclpTyp" role="11_B2D">
                  <node concept="2c44te" id="49obaclpTAf" role="lGtFl">
                    <node concept="37vLTw" id="49obaclpTAq" role="2c44t1">
                      <ref role="3cqZAo" node="49obaclpTqv" resolve="clsDataType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2c44tf" id="3kjrYXArbI4" role="HW$Y0">
              <node concept="3uibUv" id="3kjrYXArbID" role="2c44tc">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="33vP2l" id="49obaclpTbw" role="11_B2D">
                  <node concept="2c44te" id="49obaclpTxh" role="lGtFl">
                    <node concept="37vLTw" id="49obaclpTxs" role="2c44t1">
                      <ref role="3cqZAo" node="49obaclpTqv" resolve="clsDataType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5f6wxQ39K_D" role="HW$Y0">
              <ref role="3cqZAo" node="5f6wxQ39Kg5" resolve="dataType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1mP5b6jNJDm" role="1YuTPh">
      <property role="TrG5h" value="lt" />
      <ref role="1YaFvo" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
    </node>
  </node>
  <node concept="1YbPZF" id="2c3nq4GQw_E">
    <property role="TrG5h" value="typeof_LogicalVariableReference" />
    <property role="3GE5qa" value="logical.variable" />
    <node concept="3clFbS" id="2c3nq4GQw_F" role="18ibNy">
      <node concept="3clFbJ" id="7dgRGU4B5dx" role="3cqZAp">
        <node concept="3clFbS" id="7dgRGU4B5dz" role="3clFbx">
          <node concept="1Z5TYs" id="2c3nq4GQwBU" role="3cqZAp">
            <node concept="mw_s8" id="2c3nq4GQwBX" role="1ZfhK$">
              <node concept="1Z2H0r" id="2c3nq4GQw_L" role="mwGJk">
                <node concept="1YBJjd" id="2c3nq4GQwAU" role="1Z2MuG">
                  <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="2c3nq4GQKvg" role="1ZfhKB">
              <node concept="1Z2H0r" id="2c3nq4GQKvc" role="mwGJk">
                <node concept="2OqwBi" id="2c3nq4GQKxV" role="1Z2MuG">
                  <node concept="1YBJjd" id="2c3nq4GQKvx" role="2Oq$k0">
                    <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
                  </node>
                  <node concept="3TrEf2" id="2c3nq4GQKRj" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7HUwyZb82c7" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="7dgRGU4B5$v" role="3clFbw">
          <node concept="2OqwBi" id="7dgRGU4B5g2" role="2Oq$k0">
            <node concept="1YBJjd" id="7dgRGU4B5dT" role="2Oq$k0">
              <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
            </node>
            <node concept="3TrEf2" id="28ktUhrpc2D" role="2OqNvi">
              <ref role="3Tt5mk" to="5j4j:5f6wxQ3pnWr" resolve="indexExpr" />
            </node>
          </node>
          <node concept="3w_OXm" id="7dgRGU4B5O8" role="2OqNvi" />
        </node>
        <node concept="9aQIb" id="7dgRGU4B5Rr" role="9aQIa">
          <node concept="3clFbS" id="7dgRGU4B5Rs" role="9aQI4">
            <node concept="1ZxtTE" id="7dgRGU4B6qV" role="3cqZAp">
              <property role="TrG5h" value="T" />
            </node>
            <node concept="1ZxtTE" id="37pq54QvlAM" role="3cqZAp">
              <property role="TrG5h" value="MT" />
            </node>
            <node concept="1Z5TYs" id="7dgRGU4B6kd" role="3cqZAp">
              <node concept="mw_s8" id="7dgRGU4B6ke" role="1ZfhK$">
                <node concept="1Z2H0r" id="7dgRGU4B6kf" role="mwGJk">
                  <node concept="2OqwBi" id="7dgRGU4B6xL" role="1Z2MuG">
                    <node concept="1YBJjd" id="7dgRGU4B6kg" role="2Oq$k0">
                      <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
                    </node>
                    <node concept="3TrEf2" id="7dgRGU4B6GF" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="4pNU3yqjKUg" role="1ZfhKB">
                <node concept="2pJPEk" id="65DJywF0U8X" role="mwGJk">
                  <node concept="2pJPED" id="65DJywF0U8Y" role="2pJPEn">
                    <ref role="2pJxaS" to="5j4j:7HUwyZb1HXL" resolve="MultiLogicalType" />
                    <node concept="2pIpSj" id="65DJywF0U8Z" role="2pJxcM">
                      <ref role="2pIpSl" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                      <node concept="36biLy" id="65DJywF0U90" role="2pJxcZ">
                        <node concept="1PxgMI" id="37pq54Qvmfe" role="36biLW">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="37pq54QvmfL" role="3oSUPX">
                            <ref role="cht4Q" to="tpee:fz3vP1H" resolve="Type" />
                          </node>
                          <node concept="1Z$b5t" id="37pq54QvlC_" role="1m5AlR">
                            <ref role="1Z$eMM" node="37pq54QvlAM" resolve="MT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Z5TYs" id="7dgRGU4B6l5" role="3cqZAp">
              <node concept="mw_s8" id="7dgRGU4B6l6" role="1ZfhK$">
                <node concept="1Z2H0r" id="7dgRGU4B6l7" role="mwGJk">
                  <node concept="1YBJjd" id="7dgRGU4B6l8" role="1Z2MuG">
                    <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="4pNU3yqjL0L" role="1ZfhKB">
                <node concept="2pJPEk" id="65DJywF0UgL" role="mwGJk">
                  <node concept="2pJPED" id="65DJywF0UgX" role="2pJPEn">
                    <ref role="2pJxaS" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                    <node concept="2pIpSj" id="65DJywF0UiM" role="2pJxcM">
                      <ref role="2pIpSl" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                      <node concept="36biLy" id="65DJywF0UjO" role="2pJxcZ">
                        <node concept="1Z$b5t" id="65DJywF0UjZ" role="36biLW">
                          <ref role="1Z$eMM" node="7dgRGU4B6qV" resolve="T" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="15s5l7" id="65DJywF0Uqw" role="lGtFl" />
            </node>
            <node concept="1Z5TYs" id="37pq54QvlBH" role="3cqZAp">
              <node concept="mw_s8" id="37pq54QvlCh" role="1ZfhK$">
                <node concept="1Z$b5t" id="37pq54QvlCf" role="mwGJk">
                  <ref role="1Z$eMM" node="7dgRGU4B6qV" resolve="T" />
                </node>
              </node>
              <node concept="mw_s8" id="37pq54QvlCs" role="1ZfhKB">
                <node concept="1Z$b5t" id="37pq54QvlCq" role="mwGJk">
                  <ref role="1Z$eMM" node="37pq54QvlAM" resolve="MT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2c3nq4GQw_H" role="1YuTPh">
      <property role="TrG5h" value="lvr" />
      <ref role="1YaFvo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
  </node>
  <node concept="1YbPZF" id="7dgRGU4$_5X">
    <property role="TrG5h" value="typeof_Splice" />
    <property role="3GE5qa" value="dataform.expression" />
    <node concept="3clFbS" id="7dgRGU4$_5Y" role="18ibNy">
      <node concept="3clFbJ" id="7dgRGU4$_64" role="3cqZAp">
        <node concept="3clFbS" id="7dgRGU4$_65" role="3clFbx">
          <node concept="nvevp" id="7dgRGU4_YFt" role="3cqZAp">
            <node concept="3clFbS" id="7dgRGU4_YFv" role="nvhr_">
              <node concept="3clFbJ" id="5Ii$nZP2G7S" role="3cqZAp">
                <node concept="3clFbS" id="5Ii$nZP2G7U" role="3clFbx">
                  <node concept="3SKdUt" id="5Ii$nZP2Gyx" role="3cqZAp">
                    <node concept="3SKdUq" id="5Ii$nZP2Gy$" role="3SKWNk">
                      <property role="3SKdUp" value="TODO: ensure the correct variable type" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="5Ii$nZP2GZj" role="3cqZAp" />
                </node>
                <node concept="3JuTUA" id="5Ii$nZP2Gwi" role="3clFbw">
                  <node concept="2X3wrD" id="5Ii$nZP2GwB" role="3JuY14">
                    <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                  </node>
                  <node concept="2c44tf" id="5Ii$nZP2GwS" role="3JuZjQ">
                    <node concept="3uibUv" id="5Ii$nZP2GxX" role="2c44tc">
                      <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5Ii$nZP2GFL" role="3eNLev">
                  <node concept="3clFbS" id="5Ii$nZP2GFM" role="3eOfB_">
                    <node concept="3SKdUt" id="5Ii$nZP2H0i" role="3cqZAp">
                      <node concept="3SKdUq" id="5Ii$nZP2H0l" role="3SKWNk">
                        <property role="3SKdUp" value="OK" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="5Ii$nZP2H0n" role="3cqZAp" />
                  </node>
                  <node concept="3JuTUA" id="5Ii$nZP2GFN" role="3eO9$A">
                    <node concept="2X3wrD" id="5Ii$nZP2GFO" role="3JuY14">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="2c44tf" id="5Ii$nZP52Ws" role="3JuZjQ">
                      <node concept="3uibUv" id="6MYr6Jy880T" role="2c44tc">
                        <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                        <node concept="3uibUv" id="6MYr6Jy8824" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="6MYr6Jy87VU" role="3eNLev">
                  <node concept="3clFbS" id="6MYr6Jy87VV" role="3eOfB_">
                    <node concept="3SKdUt" id="6MYr6Jy87VW" role="3cqZAp">
                      <node concept="3SKdUq" id="6MYr6Jy87VX" role="3SKWNk">
                        <property role="3SKdUp" value="OK" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="6MYr6Jy87VY" role="3cqZAp" />
                  </node>
                  <node concept="3JuTUA" id="6MYr6Jy87VZ" role="3eO9$A">
                    <node concept="2X3wrD" id="6MYr6Jy87W0" role="3JuY14">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="2c44tf" id="6MYr6Jy87W1" role="3JuZjQ">
                      <node concept="3uibUv" id="6MYr6Jy87W2" role="2c44tc">
                        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                        <node concept="3uibUv" id="6MYr6Jy87W3" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5Ii$nZP52UN" role="3eNLev">
                  <node concept="3clFbS" id="5Ii$nZP52UO" role="3eOfB_">
                    <node concept="3SKdUt" id="5Ii$nZP52UP" role="3cqZAp">
                      <node concept="3SKdUq" id="5Ii$nZP52UQ" role="3SKWNk">
                        <property role="3SKdUp" value="OK" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="5Ii$nZP52UR" role="3cqZAp" />
                  </node>
                  <node concept="3JuTUA" id="5Ii$nZP52US" role="3eO9$A">
                    <node concept="2X3wrD" id="5Ii$nZP52UT" role="3JuY14">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="2c44tf" id="5Ii$nZP52UU" role="3JuZjQ">
                      <node concept="10Oyi0" id="5Ii$nZP52UV" role="2c44tc" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5Ii$nZP2GHw" role="3eNLev">
                  <node concept="3clFbS" id="5Ii$nZP2GHx" role="3eOfB_">
                    <node concept="3SKdUt" id="5Ii$nZP2H0r" role="3cqZAp">
                      <node concept="3SKdUq" id="5Ii$nZP2H0t" role="3SKWNk">
                        <property role="3SKdUp" value="OK" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="5Ii$nZP2H0v" role="3cqZAp" />
                  </node>
                  <node concept="3JuTUA" id="5Ii$nZP2GHy" role="3eO9$A">
                    <node concept="2X3wrD" id="5Ii$nZP2GHz" role="3JuY14">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="2c44tf" id="5Ii$nZP2GIO" role="3JuZjQ">
                      <node concept="3uibUv" id="5Ii$nZP2GIP" role="2c44tc">
                        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5Ii$nZP2GLF" role="3eNLev">
                  <node concept="3clFbS" id="5Ii$nZP2GLG" role="3eOfB_">
                    <node concept="3SKdUt" id="5Ii$nZP2H0_" role="3cqZAp">
                      <node concept="3SKdUq" id="5Ii$nZP2H0C" role="3SKWNk">
                        <property role="3SKdUp" value="TODO: ensure the correct logical type" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="5Ii$nZP2H0E" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="5Ii$nZP2GN3" role="3eO9$A">
                    <node concept="2X3wrD" id="5Ii$nZP2GN4" role="2Oq$k0">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="1mIQ4w" id="5Ii$nZP2GN5" role="2OqNvi">
                      <node concept="chp4Y" id="5Ii$nZP2GN6" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="5Ii$nZP2GOe" role="9aQIa">
                  <node concept="3clFbS" id="5Ii$nZP2GOf" role="9aQI4">
                    <node concept="1ZobV4" id="2zBk6uIp8Po" role="3cqZAp">
                      <property role="3wDh2S" value="true" />
                      <node concept="mw_s8" id="2zBk6uIp8Pt" role="1ZfhK$">
                        <node concept="1Z2H0r" id="2zBk6uIp8Pu" role="mwGJk">
                          <node concept="2OqwBi" id="2zBk6uIp8Pv" role="1Z2MuG">
                            <node concept="1YBJjd" id="2zBk6uIp8Pw" role="2Oq$k0">
                              <ref role="1YBMHb" node="7dgRGU4$_60" resolve="splice" />
                            </node>
                            <node concept="3TrEf2" id="2zBk6uIp8Px" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:dfChU1zo4I" resolve="expression" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="mw_s8" id="2zBk6uIp8Pq" role="1ZfhKB">
                        <node concept="2c44tf" id="2zBk6uIp8Pr" role="mwGJk">
                          <node concept="3uibUv" id="kTK1BfxohV" role="2c44tc">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Z2H0r" id="7dgRGU4_YGs" role="nvjzm">
              <node concept="2OqwBi" id="7dgRGU4_YJ3" role="1Z2MuG">
                <node concept="1YBJjd" id="7dgRGU4_YGS" role="2Oq$k0">
                  <ref role="1YBMHb" node="7dgRGU4$_60" resolve="splice" />
                </node>
                <node concept="3TrEf2" id="7dgRGU4_YUb" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:dfChU1zo4I" resolve="expression" />
                </node>
              </node>
            </node>
            <node concept="2X1qdy" id="7dgRGU4_YFz" role="2X0Ygz">
              <property role="TrG5h" value="exprType" />
              <node concept="10Q1$e" id="7dgRGU4_YWZ" role="1tU5fm">
                <node concept="10Q1$e" id="7dgRGU4_YWJ" role="10Q1$1">
                  <node concept="10Q1$e" id="7dgRGU4_YW_" role="10Q1$1">
                    <node concept="2jxLKc" id="7dgRGU4_YF$" role="10Q1$1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="7dgRGU4$_ru" role="3clFbw">
          <node concept="2OqwBi" id="7dgRGU4$_8v" role="2Oq$k0">
            <node concept="1YBJjd" id="7dgRGU4$_6g" role="2Oq$k0">
              <ref role="1YBMHb" node="7dgRGU4$_60" resolve="splice" />
            </node>
            <node concept="1mfA1w" id="7dgRGU4$_hC" role="2OqNvi" />
          </node>
          <node concept="1mIQ4w" id="7dgRGU4$_wj" role="2OqNvi">
            <node concept="chp4Y" id="7dgRGU4$_wO" role="cj9EA">
              <ref role="cht4Q" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7dgRGU4$_60" role="1YuTPh">
      <property role="TrG5h" value="splice" />
      <ref role="1YaFvo" to="5j4j:dfChU1zo4B" resolve="Splice" />
    </node>
  </node>
  <node concept="2sgARr" id="7HUwyZb1IYy">
    <property role="3GE5qa" value="logical.type" />
    <property role="TrG5h" value="supertypesOf_MultiLogicalType" />
    <node concept="3clFbS" id="7HUwyZb1IYz" role="2sgrp5">
      <node concept="3clFbF" id="7HUwyZb1IYI" role="3cqZAp">
        <node concept="2c44tf" id="7HUwyZb1IYG" role="3clFbG">
          <node concept="3uibUv" id="1HG00HGaTIh" role="2c44tc">
            <ref role="3uigEE" to="bj13:~MultiMetaLogical" resolve="MultiMetaLogical" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7HUwyZb1IY_" role="1YuTPh">
      <property role="TrG5h" value="mlt" />
      <ref role="1YaFvo" to="5j4j:7HUwyZb1HXL" resolve="MultiLogicalType" />
    </node>
  </node>
  <node concept="1YbPZF" id="2c3nq4GQKid">
    <property role="TrG5h" value="typeof_LogicalVariableDeclaration" />
    <property role="3GE5qa" value="logical.variable" />
    <node concept="3clFbS" id="2c3nq4GQKie" role="18ibNy">
      <node concept="3clFbJ" id="7dgRGU4AfaF" role="3cqZAp">
        <node concept="3clFbS" id="7dgRGU4AfaH" role="3clFbx">
          <node concept="1Z5TYs" id="4pNU3yqjENS" role="3cqZAp">
            <node concept="mw_s8" id="4pNU3yqjENT" role="1ZfhK$">
              <node concept="1Z2H0r" id="4pNU3yqjENU" role="mwGJk">
                <node concept="1YBJjd" id="4pNU3yqjENV" role="1Z2MuG">
                  <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="4pNU3yqjGtj" role="1ZfhKB">
              <node concept="2pJPEk" id="65DJywF0UOF" role="mwGJk">
                <node concept="2pJPED" id="65DJywF0UOR" role="2pJPEn">
                  <ref role="2pJxaS" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  <node concept="2pIpSj" id="65DJywF0UQG" role="2pJxcM">
                    <ref role="2pIpSl" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                    <node concept="36biLy" id="65DJywF0URI" role="2pJxcZ">
                      <node concept="2OqwBi" id="37pq54QwP99" role="36biLW">
                        <node concept="2OqwBi" id="65DJywF0URT" role="2Oq$k0">
                          <node concept="1PxgMI" id="65DJywF0URU" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="2OqwBi" id="65DJywF0URV" role="1m5AlR">
                              <node concept="1YBJjd" id="65DJywF0URW" role="2Oq$k0">
                                <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
                              </node>
                              <node concept="1mfA1w" id="65DJywF0URX" role="2OqNvi" />
                            </node>
                            <node concept="chp4Y" id="6fXjIfxgndN" role="3oSUPX">
                              <ref role="cht4Q" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="65DJywF0URY" role="2OqNvi">
                            <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                          </node>
                        </node>
                        <node concept="1$rogu" id="37pq54QwP$W" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="7dgRGU4Ag2P" role="3clFbw">
          <node concept="2OqwBi" id="7dgRGU4AfcX" role="2Oq$k0">
            <node concept="1YBJjd" id="7dgRGU4Afb9" role="2Oq$k0">
              <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
            </node>
            <node concept="3TrEf2" id="5f6wxQ3yqXS" role="2OqNvi">
              <ref role="3Tt5mk" to="5j4j:5f6wxQ3ychO" resolve="cardinalityExpr" />
            </node>
          </node>
          <node concept="3w_OXm" id="7dgRGU4Agit" role="2OqNvi" />
        </node>
        <node concept="9aQIb" id="7dgRGU4AgmI" role="9aQIa">
          <node concept="3clFbS" id="7dgRGU4AgmJ" role="9aQI4">
            <node concept="1Z5TYs" id="7dgRGU4AgnO" role="3cqZAp">
              <node concept="mw_s8" id="7dgRGU4AgnP" role="1ZfhK$">
                <node concept="1Z2H0r" id="7dgRGU4AgnQ" role="mwGJk">
                  <node concept="1YBJjd" id="7dgRGU4AgnR" role="1Z2MuG">
                    <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="4pNU3yqjHOp" role="1ZfhKB">
                <node concept="2pJPEk" id="65DJywF0V1e" role="mwGJk">
                  <node concept="2pJPED" id="65DJywF0V1q" role="2pJPEn">
                    <ref role="2pJxaS" to="5j4j:7HUwyZb1HXL" resolve="MultiLogicalType" />
                    <node concept="2pIpSj" id="65DJywF0VtC" role="2pJxcM">
                      <ref role="2pIpSl" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                      <node concept="36biLy" id="65DJywF0VuE" role="2pJxcZ">
                        <node concept="2OqwBi" id="37pq54QwPP$" role="36biLW">
                          <node concept="2OqwBi" id="65DJywF0VuP" role="2Oq$k0">
                            <node concept="1PxgMI" id="65DJywF0VuQ" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="2OqwBi" id="65DJywF0VuR" role="1m5AlR">
                                <node concept="1YBJjd" id="65DJywF0VuS" role="2Oq$k0">
                                  <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
                                </node>
                                <node concept="1mfA1w" id="65DJywF0VuT" role="2OqNvi" />
                              </node>
                              <node concept="chp4Y" id="6fXjIfxgndT" role="3oSUPX">
                                <ref role="cht4Q" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="65DJywF0VuU" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                            </node>
                          </node>
                          <node concept="1$rogu" id="37pq54QwQhn" role="2OqNvi" />
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
    <node concept="1YaCAy" id="2c3nq4GQKig" role="1YuTPh">
      <property role="TrG5h" value="lvd" />
      <ref role="1YaFvo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    </node>
  </node>
  <node concept="1YbPZF" id="428_4iYhAjN">
    <property role="TrG5h" value="typeof_ListExpression" />
    <property role="3GE5qa" value="dataform.expression" />
    <node concept="3clFbS" id="428_4iYhAjO" role="18ibNy">
      <node concept="1Z5TYs" id="428_4iYhACh" role="3cqZAp">
        <node concept="mw_s8" id="428_4iYhAC_" role="1ZfhKB">
          <node concept="2c44tf" id="428_4iYhACx" role="mwGJk">
            <node concept="3uibUv" id="428_4iYhADp" role="2c44tc">
              <ref role="3uigEE" to="6exd:6YPNC4OECgm" resolve="ListRole" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="428_4iYhACk" role="1ZfhK$">
          <node concept="1Z2H0r" id="428_4iYhArk" role="mwGJk">
            <node concept="1YBJjd" id="428_4iYhAr$" role="1Z2MuG">
              <ref role="1YBMHb" node="428_4iYhAjQ" resolve="le" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="428_4iYhAjQ" role="1YuTPh">
      <property role="TrG5h" value="le" />
      <ref role="1YaFvo" to="5j4j:428_4iYhwbR" resolve="ListExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="28ktUhrEYS_">
    <property role="TrG5h" value="typeof_ValueOfLogicalExpression" />
    <property role="3GE5qa" value="logical" />
    <node concept="3clFbS" id="28ktUhrEYSA" role="18ibNy">
      <node concept="1ZxtTE" id="28ktUhrF1XH" role="3cqZAp">
        <property role="TrG5h" value="DT" />
      </node>
      <node concept="nvevp" id="7lt0LtPZ8m6" role="3cqZAp">
        <node concept="3clFbS" id="7lt0LtPZ8m8" role="nvhr_">
          <node concept="1Z5TYs" id="28ktUhrF1PA" role="3cqZAp">
            <node concept="mw_s8" id="28ktUhrF1PB" role="1ZfhK$">
              <node concept="1Z2H0r" id="28ktUhrF1PC" role="mwGJk">
                <node concept="2OqwBi" id="28ktUhrF2IB" role="1Z2MuG">
                  <node concept="1YBJjd" id="28ktUhrF2u0" role="2Oq$k0">
                    <ref role="1YBMHb" node="28ktUhrEYSC" resolve="vle" />
                  </node>
                  <node concept="3TrEf2" id="28ktUhrF33X" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:28ktUhrjrp0" resolve="logical" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="28ktUhrF1PG" role="1ZfhKB">
              <node concept="2pJPEk" id="28ktUhrF1PH" role="mwGJk">
                <node concept="2pJPED" id="28ktUhrF1PI" role="2pJPEn">
                  <ref role="2pJxaS" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  <node concept="2pIpSj" id="28ktUhrF1PJ" role="2pJxcM">
                    <ref role="2pIpSl" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                    <node concept="36biLy" id="28ktUhrF1PK" role="2pJxcZ">
                      <node concept="1PxgMI" id="28ktUhrF1PL" role="36biLW">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="28ktUhrF1PM" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:fz3vP1H" resolve="Type" />
                        </node>
                        <node concept="1Z$b5t" id="28ktUhrF1Yg" role="1m5AlR">
                          <ref role="1Z$eMM" node="28ktUhrF1XH" resolve="DT" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7lt0LtPZ5ss" role="3cqZAp">
            <node concept="3clFbS" id="7lt0LtPZ5su" role="3clFbx">
              <node concept="1Z5TYs" id="28ktUhrF1zx" role="3cqZAp">
                <node concept="mw_s8" id="28ktUhrF1zy" role="1ZfhK$">
                  <node concept="1Z2H0r" id="28ktUhrF1zz" role="mwGJk">
                    <node concept="1YBJjd" id="28ktUhrF2ws" role="1Z2MuG">
                      <ref role="1YBMHb" node="28ktUhrEYSC" resolve="vle" />
                    </node>
                  </node>
                </node>
                <node concept="mw_s8" id="28ktUhrF21A" role="1ZfhKB">
                  <node concept="1Z$b5t" id="28ktUhrF21w" role="mwGJk">
                    <ref role="1Z$eMM" node="28ktUhrF1XH" resolve="DT" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7lt0LtPZ5QN" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="7lt0LtPZ5$Q" role="3clFbw">
              <node concept="1Z$b5t" id="7lt0LtPZ5t3" role="2Oq$k0">
                <ref role="1Z$eMM" node="28ktUhrF1XH" resolve="DT" />
              </node>
              <node concept="3x8VRR" id="7lt0LtPZ5Jn" role="2OqNvi" />
            </node>
            <node concept="9aQIb" id="7lt0LtPZ5QX" role="9aQIa">
              <node concept="3clFbS" id="7lt0LtPZ5QY" role="9aQI4">
                <node concept="1Z5TYs" id="7lt0LtPZ63j" role="3cqZAp">
                  <node concept="mw_s8" id="7lt0LtPZ64j" role="1ZfhKB">
                    <node concept="2c44tf" id="7lt0LtPZ64f" role="mwGJk">
                      <node concept="3uibUv" id="7lt0LtPZ657" role="2c44tc">
                        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                      </node>
                    </node>
                  </node>
                  <node concept="mw_s8" id="7lt0LtPZ63m" role="1ZfhK$">
                    <node concept="1Z2H0r" id="7lt0LtPZ5Tr" role="mwGJk">
                      <node concept="1YBJjd" id="7lt0LtPZ5Vb" role="1Z2MuG">
                        <ref role="1YBMHb" node="28ktUhrEYSC" resolve="vle" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Z2H0r" id="7lt0LtPZ8of" role="nvjzm">
          <node concept="2OqwBi" id="7lt0LtPZ8wP" role="1Z2MuG">
            <node concept="1YBJjd" id="7lt0LtPZ8oF" role="2Oq$k0">
              <ref role="1YBMHb" node="28ktUhrEYSC" resolve="vle" />
            </node>
            <node concept="3TrEf2" id="7lt0LtPZ8MJ" role="2OqNvi">
              <ref role="3Tt5mk" to="5j4j:28ktUhrjrp0" resolve="logical" />
            </node>
          </node>
        </node>
        <node concept="2X1qdy" id="7lt0LtPZ8mc" role="2X0Ygz">
          <property role="TrG5h" value="T" />
          <node concept="2jxLKc" id="7lt0LtPZ8md" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="28ktUhrEYSC" role="1YuTPh">
      <property role="TrG5h" value="vle" />
      <ref role="1YaFvo" to="5j4j:28ktUhrjnwn" resolve="ValueOfExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="49obaclcIlr">
    <property role="TrG5h" value="typeof_LogicalExpression" />
    <property role="3GE5qa" value="logical.item.expression" />
    <node concept="3clFbS" id="49obaclcIls" role="18ibNy">
      <node concept="1Z5TYs" id="49obaclcIIl" role="3cqZAp">
        <node concept="mw_s8" id="49obaclcIID" role="1ZfhKB">
          <node concept="1Z2H0r" id="49obaclcII_" role="mwGJk">
            <node concept="2OqwBi" id="49obaclcIQc" role="1Z2MuG">
              <node concept="1YBJjd" id="49obaclcIIU" role="2Oq$k0">
                <ref role="1YBMHb" node="49obaclcIlu" resolve="le" />
              </node>
              <node concept="3TrEf2" id="49obaclcJ2Z" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:49obaclcanY" resolve="logical" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="49obaclcIIo" role="1ZfhK$">
          <node concept="1Z2H0r" id="49obaclcIos" role="mwGJk">
            <node concept="1YBJjd" id="49obaclcIoG" role="1Z2MuG">
              <ref role="1YBMHb" node="49obaclcIlu" resolve="le" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="49obaclcIlu" role="1YuTPh">
      <property role="TrG5h" value="le" />
      <ref role="1YaFvo" to="5j4j:49obaclcan7" resolve="LogicalItemExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="7lt0LtQg3Cb">
    <property role="TrG5h" value="typeof_ConstantExpressionItem" />
    <property role="3GE5qa" value="logical.item" />
    <node concept="3clFbS" id="7lt0LtQg3Cc" role="18ibNy">
      <node concept="nvevp" id="7lt0LtQg3Hj" role="3cqZAp">
        <node concept="3clFbS" id="7lt0LtQg3Hk" role="nvhr_">
          <node concept="1Z5TYs" id="7lt0LtQg3Hl" role="3cqZAp">
            <node concept="mw_s8" id="7lt0LtQg3Hm" role="1ZfhKB">
              <node concept="2pJPEk" id="7lt0LtQg3Hn" role="mwGJk">
                <node concept="2pJPED" id="7lt0LtQg3Ho" role="2pJPEn">
                  <ref role="2pJxaS" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  <node concept="2pIpSj" id="7lt0LtQg3Hp" role="2pJxcM">
                    <ref role="2pIpSl" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                    <node concept="36biLy" id="7lt0LtQg3Hq" role="2pJxcZ">
                      <node concept="1PxgMI" id="7lt0LtQg3Hr" role="36biLW">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="7lt0LtQg3Hs" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:fz3vP1H" resolve="Type" />
                        </node>
                        <node concept="2X3wrD" id="7lt0LtQg3Ht" role="1m5AlR">
                          <ref role="2X3Bk0" node="7lt0LtQg3H_" resolve="codeType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="7lt0LtQg3Hu" role="1ZfhK$">
              <node concept="1Z2H0r" id="7lt0LtQg3Hv" role="mwGJk">
                <node concept="1YBJjd" id="7lt0LtQg3Hw" role="1Z2MuG">
                  <ref role="1YBMHb" node="7lt0LtQg3Ce" resolve="cei" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Z2H0r" id="7lt0LtQg3Hx" role="nvjzm">
          <node concept="2OqwBi" id="7lt0LtQg3Hy" role="1Z2MuG">
            <node concept="1YBJjd" id="7lt0LtQg3Hz" role="2Oq$k0">
              <ref role="1YBMHb" node="7lt0LtQg3Ce" resolve="cei" />
            </node>
            <node concept="3TrEf2" id="7lt0LtQg3H$" role="2OqNvi">
              <ref role="3Tt5mk" to="5j4j:7lt0LtQg3vl" resolve="code" />
            </node>
          </node>
        </node>
        <node concept="2X1qdy" id="7lt0LtQg3H_" role="2X0Ygz">
          <property role="TrG5h" value="codeType" />
          <node concept="2jxLKc" id="7lt0LtQg3HA" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7lt0LtQg3Ce" role="1YuTPh">
      <property role="TrG5h" value="cei" />
      <ref role="1YaFvo" to="5j4j:7lt0LtQg3tE" resolve="ExpressionItem" />
    </node>
  </node>
  <node concept="35pCF_" id="dfChU1jsd3">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalPattern_subtypeOf_logical" />
    <node concept="3clFbS" id="dfChU1jsd4" role="2sgrp5">
      <node concept="3SKdUt" id="dfChU1jzdK" role="3cqZAp">
        <node concept="3SKdUq" id="dfChU1jzqi" role="3SKWNk">
          <property role="3SKdUp" value="yes" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="dfChU1jtEQ" role="35pZ6h">
      <property role="TrG5h" value="logicalType" />
      <ref role="1YaFvo" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
    </node>
    <node concept="1YaCAy" id="dfChU1jtEr" role="1YuTPh">
      <property role="TrG5h" value="ct" />
      <ref role="1YaFvo" to="tpee:g7uibYu" resolve="ClassifierType" />
    </node>
    <node concept="1xSnZT" id="dfChU1jtFt" role="1xSnZW">
      <node concept="3clFbS" id="dfChU1jtFu" role="2VODD2">
        <node concept="3clFbF" id="dfChU1jx6v" role="3cqZAp">
          <node concept="2OqwBi" id="dfChU1jylg" role="3clFbG">
            <node concept="1UaxmW" id="dfChU1jx6s" role="2Oq$k0">
              <node concept="1YBJjd" id="5yj19qb1sQP" role="1Ub_4B">
                <ref role="1YBMHb" node="dfChU1jtEr" resolve="ct" />
              </node>
              <node concept="1Yb3XT" id="5yj19qb1t54" role="1Ub_4A">
                <property role="TrG5h" value="ml" />
                <node concept="2DMOqp" id="5yj19qb1t56" role="1YbcFS">
                  <node concept="2c44tf" id="5yj19qb1t58" role="HM535">
                    <node concept="3uibUv" id="5yj19qb1t5o" role="2c44tc">
                      <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="dfChU1jz0$" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

