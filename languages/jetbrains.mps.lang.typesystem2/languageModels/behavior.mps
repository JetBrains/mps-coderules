<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:15ea4f4e-2f41-4ce3-b7e4-a4e0737f0171(jetbrains.mps.lang.typesystem2.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431790189" name="jetbrains.mps.baseLanguage.structure.Type" flags="in" index="33vP2l" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="6ntBQ9KFIzq">
    <property role="3GE5qa" value="rule" />
    <ref role="13h7C2" to="wq2x:4laj_h9P4cy" resolve="Condition" />
    <node concept="13hLZK" id="6ntBQ9KFIzr" role="13h7CW">
      <node concept="3clFbS" id="6ntBQ9KFIzs" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6ntBQ9KFI_k" role="13h7CS">
      <property role="TrG5h" value="isStatementListCompactable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpek:i0zvp2S" resolve="isStatementListCompactable" />
      <node concept="3Tm1VV" id="6ntBQ9KFI_p" role="1B3o_S" />
      <node concept="3clFbS" id="6ntBQ9KFI_q" role="3clF47">
        <node concept="3clFbF" id="6ntBQ9KFTBN" role="3cqZAp">
          <node concept="3clFbT" id="6ntBQ9KFTBM" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6ntBQ9KFI_r" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6ntBQ9KHl13" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getExpectedRetType" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
      <node concept="3Tm1VV" id="6ntBQ9KHl14" role="1B3o_S" />
      <node concept="3clFbS" id="6ntBQ9KHl17" role="3clF47">
        <node concept="3clFbF" id="6ntBQ9KHldy" role="3cqZAp">
          <node concept="2c44tf" id="6ntBQ9KHldw" role="3clFbG">
            <node concept="10P_77" id="6ntBQ9KHlgF" role="2c44tc" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6ntBQ9KHl18" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6ntBQ9KHl19" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getBody" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:i2fhZ_m" resolve="getBody" />
      <node concept="3Tm1VV" id="6ntBQ9KHl1a" role="1B3o_S" />
      <node concept="3clFbS" id="6ntBQ9KHl1d" role="3clF47">
        <node concept="3clFbF" id="6ntBQ9KHl9t" role="3cqZAp">
          <node concept="BsUDl" id="6ntBQ9KHl9s" role="3clFbG">
            <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6ntBQ9KHl1e" role="3clF45">
        <ref role="ehGHo" to="tpee:fzclF80" resolve="StatementList" />
      </node>
    </node>
    <node concept="13i0hz" id="6ntBQ9KHl1f" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getThrowableTypes" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:5op8ooRkkc7" resolve="getThrowableTypes" />
      <node concept="3Tm1VV" id="6ntBQ9KHl1g" role="1B3o_S" />
      <node concept="3clFbS" id="6ntBQ9KHl1j" role="3clF47">
        <node concept="3clFbF" id="6ntBQ9KHl4a" role="3cqZAp">
          <node concept="10Nm6u" id="6ntBQ9KHl49" role="3clFbG" />
        </node>
      </node>
      <node concept="2I9FWS" id="6ntBQ9KHl1k" role="3clF45">
        <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5MHpiylGFx8">
    <property role="3GE5qa" value="rule.parameter" />
    <ref role="13h7C2" to="wq2x:5MHpiylG7gA" resolve="RuleParameterBlock" />
    <node concept="13hLZK" id="5MHpiylGFx9" role="13h7CW">
      <node concept="3clFbS" id="5MHpiylGFxa" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5MHpiylGFH_" role="13h7CS">
      <property role="TrG5h" value="isStatementListCompactable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpek:i0zvp2S" resolve="isStatementListCompactable" />
      <node concept="3Tm1VV" id="5MHpiylGFHE" role="1B3o_S" />
      <node concept="3clFbS" id="5MHpiylGFHF" role="3clF47">
        <node concept="3clFbF" id="5MHpiylGFPu" role="3cqZAp">
          <node concept="3clFbT" id="5MHpiylGFPt" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5MHpiylGFHG" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5MHpiylGF_f" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getExpectedRetType" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
      <node concept="3Tm1VV" id="5MHpiylGF_g" role="1B3o_S" />
      <node concept="3clFbS" id="5MHpiylGF_j" role="3clF47">
        <node concept="3clFbF" id="5MHpiylGQtF" role="3cqZAp">
          <node concept="2c44tf" id="5MHpiylGQtD" role="3clFbG">
            <node concept="A3Dl8" id="5MHpiylGQvY" role="2c44tc">
              <node concept="33vP2l" id="5MHpiylGQw0" role="A3Ik2">
                <node concept="2c44te" id="5MHpiylGQyW" role="lGtFl">
                  <node concept="2OqwBi" id="5MHpiylGRkB" role="2c44t1">
                    <node concept="2OqwBi" id="5MHpiylGQCt" role="2Oq$k0">
                      <node concept="13iPFW" id="5MHpiylGQA3" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5MHpiylGR2D" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:5MHpiylFI5Z" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="5MHpiylGRzT" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:5MHpiylFYj$" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5MHpiylGF_k" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5MHpiylGF_l" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getBody" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:i2fhZ_m" resolve="getBody" />
      <node concept="3Tm1VV" id="5MHpiylGF_m" role="1B3o_S" />
      <node concept="3clFbS" id="5MHpiylGF_p" role="3clF47">
        <node concept="3clFbF" id="5MHpiylGH$G" role="3cqZAp">
          <node concept="BsUDl" id="5MHpiylGH$F" role="3clFbG">
            <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5MHpiylGF_q" role="3clF45">
        <ref role="ehGHo" to="tpee:fzclF80" resolve="StatementList" />
      </node>
    </node>
    <node concept="13i0hz" id="5MHpiylGF_r" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getThrowableTypes" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:5op8ooRkkc7" resolve="getThrowableTypes" />
      <node concept="3Tm1VV" id="5MHpiylGF_s" role="1B3o_S" />
      <node concept="3clFbS" id="5MHpiylGF_v" role="3clF47">
        <node concept="3clFbF" id="5MHpiylGHB$" role="3cqZAp">
          <node concept="10Nm6u" id="5MHpiylGHBz" role="3clFbG" />
        </node>
      </node>
      <node concept="2I9FWS" id="5MHpiylGF_w" role="3clF45">
        <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
  </node>
</model>

