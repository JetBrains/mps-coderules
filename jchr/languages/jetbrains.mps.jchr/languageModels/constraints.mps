<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:88a2eb0e-4ce2-4cb9-bbe9-e96ae2317eec(jetbrains.mps.jchr.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="1f2y" ref="r:c2e9552f-aeab-4773-af70-c663afdf96a5(jetbrains.mps.jchr.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271484915" name="jetbrains.mps.baseLanguage.structure.SubstringExpression" flags="nn" index="17RM3I">
        <child id="1225271484917" name="startIndex" index="17RM3C" />
        <child id="1225271484916" name="operand" index="17RM3D" />
        <child id="1225271484918" name="endIndex" index="17RM3F" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
        <child id="1152963095733" name="propertySetter" index="1LXaQT" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1152959968041" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertySetter" flags="in" index="1LLf8_" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
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
  </registry>
  <node concept="1M2fIO" id="5lJXKkSjj">
    <property role="3GE5qa" value="handlerType.operations" />
    <ref role="1M2myG" to="vgt0:5lJXKhI_g" resolve="ConstraintOperation" />
    <node concept="EnEH3" id="5lJXKkSCT" role="1MhHOB">
      <ref role="EomxK" to="vgt0:5lJXKhNI7" resolve="operation" />
      <node concept="Eqf_E" id="5lJXKkSCU" role="EtsB7">
        <node concept="3clFbS" id="5lJXKkSCV" role="2VODD2">
          <node concept="3clFbF" id="5lJXKkSCW" role="3cqZAp">
            <node concept="2OqwBi" id="5lJXKkSCX" role="3clFbG">
              <node concept="2OqwBi" id="5lJXKkSCY" role="2Oq$k0">
                <node concept="EsrRn" id="5lJXKkSCZ" role="2Oq$k0" />
                <node concept="3NT_Vc" id="5lJXKkSD0" role="2OqNvi" />
              </node>
              <node concept="2qgKlT" id="5lJXKkSD1" role="2OqNvi">
                <ref role="37wK5l" to="1f2y:5lJXKhP4l" resolve="operationName" />
                <node concept="2OqwBi" id="5lJXKkSD2" role="37wK5m">
                  <node concept="2OqwBi" id="5lJXKkSD3" role="2Oq$k0">
                    <node concept="EsrRn" id="5lJXKkSD4" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5lJXKkSD5" role="2OqNvi">
                      <ref role="3Tt5mk" to="vgt0:5lJXKhNAq" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5lJXKkSD6" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LLf8_" id="5lJXKkSD7" role="1LXaQT">
        <node concept="3clFbS" id="5lJXKkSD8" role="2VODD2">
          <node concept="3SKdUt" id="5lJXKkSD9" role="3cqZAp">
            <node concept="3SKdUq" id="5lJXKkSDa" role="3SKWNk">
              <property role="3SKdUp" value="read-only" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="5lJXKq$5z" role="1MhHOB">
      <ref role="EomxK" to="vgt0:5lJXKqzDG" resolve="methodname" />
      <node concept="Eqf_E" id="5lJXKq$mb" role="EtsB7">
        <node concept="3clFbS" id="5lJXKq$mc" role="2VODD2">
          <node concept="3clFbF" id="5lJXKqAEx" role="3cqZAp">
            <node concept="2OqwBi" id="5lJXKqAEy" role="3clFbG">
              <node concept="2OqwBi" id="5lJXKqAEz" role="2Oq$k0">
                <node concept="EsrRn" id="5lJXKqAE$" role="2Oq$k0" />
                <node concept="3NT_Vc" id="5lJXKqAE_" role="2OqNvi" />
              </node>
              <node concept="2qgKlT" id="5lJXKqAEA" role="2OqNvi">
                <ref role="37wK5l" to="1f2y:5lJXKhP4l" resolve="operationName" />
                <node concept="2OqwBi" id="5lJXKqAEB" role="37wK5m">
                  <node concept="2OqwBi" id="5lJXKqAEC" role="2Oq$k0">
                    <node concept="EsrRn" id="5lJXKqAED" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5lJXKqAEE" role="2OqNvi">
                      <ref role="3Tt5mk" to="vgt0:5lJXKhNAq" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5lJXKqAEF" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LLf8_" id="5lJXKq$xn" role="1LXaQT">
        <node concept="3clFbS" id="5lJXKq$xo" role="2VODD2">
          <node concept="3SKdUt" id="5lJXKq$GN" role="3cqZAp">
            <node concept="3SKdUq" id="5lJXKq$GR" role="3SKWNk">
              <property role="3SKdUp" value="read-only" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5lJXKmiUo">
    <property role="3GE5qa" value="handler" />
    <ref role="1M2myG" to="vgt0:pmDhvH6q87" resolve="Handler" />
    <node concept="EnEH3" id="5lJXKmiW2" role="1MhHOB">
      <ref role="EomxK" to="vgt0:5lJXKmiM$" resolve="classname" />
      <node concept="Eqf_E" id="5lJXKmiXK" role="EtsB7">
        <node concept="3clFbS" id="5lJXKmiXL" role="2VODD2">
          <node concept="3cpWs8" id="5lJXKmlc4" role="3cqZAp">
            <node concept="3cpWsn" id="5lJXKmlc5" role="3cpWs9">
              <property role="TrG5h" value="name" />
              <node concept="17QB3L" id="5lJXKmlc1" role="1tU5fm" />
              <node concept="2OqwBi" id="5lJXKmlc6" role="33vP2m">
                <node concept="EsrRn" id="5lJXKmlc7" role="2Oq$k0" />
                <node concept="3TrcHB" id="5lJXKmlc8" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5lJXKmlCI" role="3cqZAp">
            <node concept="3clFbS" id="5lJXKmlCL" role="3clFbx">
              <node concept="3cpWs6" id="5lJXKmo$n" role="3cqZAp">
                <node concept="Xl_RD" id="5lJXKmoXb" role="3cqZAk">
                  <property role="Xl_RC" value="?Handler" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="5lJXKmmDb" role="3clFbw">
              <node concept="3clFbC" id="5lJXKmolR" role="3uHU7w">
                <node concept="3cmrfG" id="5lJXKmotf" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="5lJXKmnb0" role="3uHU7B">
                  <node concept="37vLTw" id="5lJXKmmT7" role="2Oq$k0">
                    <ref role="3cqZAo" node="5lJXKmlc5" resolve="name" />
                  </node>
                  <node concept="liA8E" id="5lJXKmnF3" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5lJXKmm8B" role="3uHU7B">
                <node concept="37vLTw" id="5lJXKmlSa" role="3uHU7B">
                  <ref role="3cqZAo" node="5lJXKmlc5" resolve="name" />
                </node>
                <node concept="10Nm6u" id="5lJXKmmoQ" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5lJXKmjoG" role="3cqZAp">
            <node concept="3cpWs3" id="5lJXKqmYf" role="3clFbG">
              <node concept="Xl_RD" id="5lJXKqmYk" role="3uHU7w">
                <property role="Xl_RC" value="Handler" />
              </node>
              <node concept="3cpWs3" id="5lJXKmsmU" role="3uHU7B">
                <node concept="2OqwBi" id="5lJXKmqFx" role="3uHU7B">
                  <node concept="17RM3I" id="5lJXKmpu0" role="2Oq$k0">
                    <node concept="37vLTw" id="5lJXKmlc9" role="17RM3D">
                      <ref role="3cqZAo" node="5lJXKmlc5" resolve="name" />
                    </node>
                    <node concept="3cmrfG" id="5lJXKmqiK" role="17RM3F">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5lJXKmrM7" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.toUpperCase():java.lang.String" resolve="toUpperCase" />
                  </node>
                </node>
                <node concept="17RM3I" id="5lJXKmsOD" role="3uHU7w">
                  <node concept="37vLTw" id="5lJXKmsvC" role="17RM3D">
                    <ref role="3cqZAo" node="5lJXKmlc5" resolve="name" />
                  </node>
                  <node concept="3cmrfG" id="5lJXKmtjd" role="17RM3C">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LLf8_" id="5lJXKmj86" role="1LXaQT">
        <node concept="3clFbS" id="5lJXKmj87" role="2VODD2">
          <node concept="3SKdUt" id="5lJXKmjjy" role="3cqZAp">
            <node concept="3SKdUq" id="5lJXKmjjI" role="3SKWNk">
              <property role="3SKdUp" value="read-only" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5lJXKqB0n">
    <property role="3GE5qa" value="handlerType.operations" />
    <ref role="1M2myG" to="vgt0:5lJXKhB3b" resolve="AllConstraintsOperation" />
    <node concept="EnEH3" id="5lJXKqB1e" role="1MhHOB">
      <ref role="EomxK" to="vgt0:5lJXKqzDG" resolve="methodname" />
      <node concept="Eqf_E" id="5lJXKqB2W" role="EtsB7">
        <node concept="3clFbS" id="5lJXKqB2X" role="2VODD2">
          <node concept="3clFbF" id="5lJXKqEzh" role="3cqZAp">
            <node concept="3cpWs3" id="5lJXKqEUP" role="3clFbG">
              <node concept="Xl_RD" id="5lJXKqEUU" role="3uHU7w">
                <property role="Xl_RC" value="Constraints" />
              </node>
              <node concept="2OqwBi" id="5lJXKqEzi" role="3uHU7B">
                <node concept="2OqwBi" id="5lJXKqEzj" role="2Oq$k0">
                  <node concept="EsrRn" id="5lJXKqEzk" role="2Oq$k0" />
                  <node concept="3NT_Vc" id="5lJXKqEzl" role="2OqNvi" />
                </node>
                <node concept="2qgKlT" id="5lJXKqEzm" role="2OqNvi">
                  <ref role="37wK5l" to="1f2y:5lJXKqCu3" resolve="getMethodName" />
                  <node concept="2OqwBi" id="5lJXKqEzn" role="37wK5m">
                    <node concept="2OqwBi" id="5lJXKqEzo" role="2Oq$k0">
                      <node concept="EsrRn" id="5lJXKqEzp" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5lJXKqEzq" role="2OqNvi">
                        <ref role="3Tt5mk" to="vgt0:5lJXKhNAq" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5lJXKqEzr" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LLf8_" id="5lJXKqBow" role="1LXaQT">
        <node concept="3clFbS" id="5lJXKqBox" role="2VODD2">
          <node concept="3SKdUt" id="5lJXKqBzW" role="3cqZAp">
            <node concept="3SKdUq" id="5lJXKqB$8" role="3SKWNk">
              <property role="3SKdUp" value="read-only" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

