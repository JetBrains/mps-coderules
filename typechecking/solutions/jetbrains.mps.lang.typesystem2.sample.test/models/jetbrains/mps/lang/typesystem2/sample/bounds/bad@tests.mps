<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a202971f-09c7-4f25-ad39-9e8d7cea42b6(jetbrains.mps.lang.typesystem2.sample.bounds.bad@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="1" />
  </languages>
  <imports>
    <import index="7rut" ref="r:b1bec7fa-733c-4182-bbd4-b266e3d7e6db(jetbrains.mps.lang.typesystem2.sample.bounds.bad)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="f6t6" ref="r:9993217f-5bfa-4281-bc47-527677747cb2(jetbrains.mps.lang.typesystem2.sample.bounds)" />
    <import index="84wp" ref="r:dfdbef38-4e11-48e8-9622-22e284fc6feb(jetbrains.mps.lang.typesystem2.sample@tests)" />
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
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertInNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
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
  <node concept="1lH9Xt" id="1N_0WA5DT3k">
    <property role="TrG5h" value="Typechecking" />
    <node concept="1qefOq" id="1N_0WA5DTUS" role="1SKRRt">
      <node concept="3uibUv" id="1N_0WA5DX6P" role="1qenE9">
        <ref role="3uigEE" to="7rut:5s497Vrh6EY" resolve="Sample_bad1" />
        <node concept="3xLA65" id="1N_0WA5DX6Z" role="lGtFl">
          <property role="TrG5h" value="Test_Sample_bad1" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1N_0WA5J$6f" role="1SKRRt">
      <node concept="3uibUv" id="1N_0WA5J$6g" role="1qenE9">
        <ref role="3uigEE" to="7rut:4ekooLalg08" resolve="Sample_bad2" />
        <node concept="3xLA65" id="1N_0WA5J$6h" role="lGtFl">
          <property role="TrG5h" value="Test_Sample_bad2" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1N_0WA5DT8G" role="1SL9yI">
      <property role="TrG5h" value="Sample_bad1" />
      <node concept="3cqZAl" id="1N_0WA5DT8H" role="3clF45" />
      <node concept="3clFbS" id="1N_0WA5DT8I" role="3clF47">
        <node concept="2Hmddi" id="4ekooLap0nE" role="3cqZAp">
          <node concept="2YIFZM" id="4hh0cTRdicf" role="2Hmdds">
            <ref role="37wK5l" to="t5kh:1N_0WA5Jy0j" resolve="typecheckingErrors" />
            <ref role="1Pybhc" to="t5kh:1N_0WA5JxZO" resolve="LaunchTypechecking" />
            <node concept="2OqwBi" id="4ekooLap0sj" role="37wK5m">
              <node concept="3xONca" id="4ekooLap0sk" role="2Oq$k0">
                <ref role="3xOPvv" node="1N_0WA5DX6Z" resolve="Test_Sample_bad1" />
              </node>
              <node concept="3TrEf2" id="4ekooLap0sl" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
              </node>
            </node>
            <node concept="1jxXqW" id="4ekooLap0sm" role="37wK5m" />
          </node>
          <node concept="3_1$Yv" id="4ekooLap0B2" role="3_9lra">
            <node concept="Xl_RD" id="4ekooLap0Lv" role="3_1BAH">
              <property role="Xl_RC" value="error expected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="4ekooLap0My" role="1SL9yI">
      <property role="TrG5h" value="Sample_bad2" />
      <node concept="3cqZAl" id="4ekooLap0Mz" role="3clF45" />
      <node concept="3clFbS" id="4ekooLap0M$" role="3clF47">
        <node concept="2Hmddi" id="4ekooLap0MH" role="3cqZAp">
          <node concept="2YIFZM" id="4hh0cTRdica" role="2Hmdds">
            <ref role="37wK5l" to="t5kh:1N_0WA5Jy0j" resolve="typecheckingErrors" />
            <ref role="1Pybhc" to="t5kh:1N_0WA5JxZO" resolve="LaunchTypechecking" />
            <node concept="2OqwBi" id="4ekooLap0MJ" role="37wK5m">
              <node concept="3xONca" id="4ekooLap1cL" role="2Oq$k0">
                <ref role="3xOPvv" node="1N_0WA5J$6h" resolve="Test_Sample_bad2" />
              </node>
              <node concept="3TrEf2" id="4ekooLap0ML" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
              </node>
            </node>
            <node concept="1jxXqW" id="4ekooLap0MM" role="37wK5m" />
          </node>
          <node concept="3_1$Yv" id="4ekooLap0MN" role="3_9lra">
            <node concept="Xl_RD" id="4ekooLap0MO" role="3_1BAH">
              <property role="Xl_RC" value="error expected" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="1N_0WA5DT60">
    <property role="2XOHcw" value="${mps_home}" />
  </node>
</model>

