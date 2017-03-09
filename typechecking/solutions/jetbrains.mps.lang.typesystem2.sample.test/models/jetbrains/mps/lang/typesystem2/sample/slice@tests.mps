<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5a2264dd-763c-4885-aafc-b21e89958de8(jetbrains.mps.lang.typesystem2.sample.slice@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="9oqm" ref="r:a8ff5933-0f6e-4d4a-af4a-5da865d78faf(jetbrains.mps.lang.typesystem2.sample.slice)" />
    <import index="t5kh" ref="r:1514c681-0724-461e-a435-315a6af4b3b4(jetbrains.mps.lang.typesystem2.sampleplugin.plugin)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1210674524691" name="jetbrains.mps.lang.test.structure.TestNodeReference" flags="nn" index="3xONca">
        <reference id="1210674534086" name="declaration" index="3xOPvv" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1172028177041" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNull" flags="nn" index="3ykFI1">
        <child id="1172028236559" name="expression" index="3ykU8v" />
      </concept>
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ng" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2XOHcx" id="1N_0WA5DT60">
    <property role="2XOHcw" value="${logic_home}" />
  </node>
  <node concept="1lH9Xt" id="1N_0WA5DT3k">
    <property role="TrG5h" value="Typechecking" />
    <node concept="1qefOq" id="1N_0WA5DTUS" role="1SKRRt">
      <node concept="3uibUv" id="1N_0WA5DX6P" role="1qenE9">
        <ref role="3uigEE" to="9oqm:61vfVfpb5w1" resolve="ComplexTypeErasure" />
        <node concept="3xLA65" id="1N_0WA5DX6Z" role="lGtFl">
          <property role="TrG5h" value="Test_ComplexTypeErasure" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1N_0WA5JGhF" role="1SKRRt">
      <node concept="3uibUv" id="1N_0WA5JGhG" role="1qenE9">
        <ref role="3uigEE" to="9oqm:61vfVfp6EBu" resolve="GenericSubst" />
        <node concept="3xLA65" id="1N_0WA5JGhH" role="lGtFl">
          <property role="TrG5h" value="Test_GenericSubst" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1N_0WA5DT8G" role="1SL9yI">
      <property role="TrG5h" value="ComplexTypeErasure" />
      <node concept="3cqZAl" id="1N_0WA5DT8H" role="3clF45" />
      <node concept="3clFbS" id="1N_0WA5DT8I" role="3clF47">
        <node concept="3ykFI1" id="1N_0WA5IMvR" role="3cqZAp">
          <node concept="2OqwBi" id="6nJA6bpKvFr" role="3ykU8v">
            <node concept="2YIFZM" id="6nJA6bpKvcB" role="2Oq$k0">
              <ref role="37wK5l" to="t5kh:7y50OW6XU7p" resolve="checkTypes" />
              <ref role="1Pybhc" to="t5kh:1N_0WA5JxZO" resolve="LaunchTypechecking" />
              <node concept="2OqwBi" id="6nJA6bpKvcC" role="37wK5m">
                <node concept="3xONca" id="6nJA6bpKvcD" role="2Oq$k0">
                  <ref role="3xOPvv" node="1N_0WA5DX6Z" resolve="Test_ComplexTypeErasure" />
                </node>
                <node concept="3TrEf2" id="6nJA6bpKvcE" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                </node>
              </node>
              <node concept="1jxXqW" id="6nJA6bpKvcF" role="37wK5m" />
            </node>
            <node concept="liA8E" id="6nJA6bpKvZn" role="2OqNvi">
              <ref role="37wK5l" to="t5kh:7y50OW6Y0Sl" resolve="error" />
            </node>
          </node>
          <node concept="3_1$Yv" id="1N_0WA5IN6H" role="3_9lra">
            <node concept="Xl_RD" id="1N_0WA5INjk" role="3_1BAH">
              <property role="Xl_RC" value="error while typechecking" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1N_0WA5JGiv" role="1SL9yI">
      <property role="TrG5h" value="GenericSubst" />
      <node concept="3cqZAl" id="1N_0WA5JGiw" role="3clF45" />
      <node concept="3clFbS" id="1N_0WA5JGix" role="3clF47">
        <node concept="3ykFI1" id="1N_0WA5JGiy" role="3cqZAp">
          <node concept="2OqwBi" id="6nJA6bpKwkc" role="3ykU8v">
            <node concept="2YIFZM" id="6nJA6bpKw4p" role="2Oq$k0">
              <ref role="37wK5l" to="t5kh:7y50OW6XU7p" resolve="checkTypes" />
              <ref role="1Pybhc" to="t5kh:1N_0WA5JxZO" resolve="LaunchTypechecking" />
              <node concept="2OqwBi" id="6nJA6bpKw4q" role="37wK5m">
                <node concept="3xONca" id="6nJA6bpKw4r" role="2Oq$k0">
                  <ref role="3xOPvv" node="1N_0WA5JGhH" resolve="Test_GenericSubst" />
                </node>
                <node concept="3TrEf2" id="6nJA6bpKw4s" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                </node>
              </node>
              <node concept="1jxXqW" id="6nJA6bpKw4t" role="37wK5m" />
            </node>
            <node concept="liA8E" id="6nJA6bpKwCp" role="2OqNvi">
              <ref role="37wK5l" to="t5kh:7y50OW6Y0Sl" resolve="error" />
            </node>
          </node>
          <node concept="3_1$Yv" id="1N_0WA5JGiC" role="3_9lra">
            <node concept="Xl_RD" id="1N_0WA5JGiD" role="3_1BAH">
              <property role="Xl_RC" value="error while typechecking" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

