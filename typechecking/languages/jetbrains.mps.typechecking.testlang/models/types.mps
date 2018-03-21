<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:65f97255-4bb1-4783-acd6-a4ed5a1088e2(jetbrains.mps.typechecking.testlang.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2" version="7" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
      <concept id="6856711987710888499" name="jetbrains.mps.logic.structure.TreeFormLiteral" flags="ng" index="Hz6ka">
        <child id="6856711987710888500" name="root" index="Hz6kd" />
      </concept>
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.Value" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2">
      <concept id="4992889260816483106" name="jetbrains.mps.lang.typesystem2.structure.Condition" flags="ng" index="cBwPQ" />
      <concept id="6691972578451976398" name="jetbrains.mps.lang.typesystem2.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.typesystem2.structure.Handler" flags="ng" index="AVZre">
        <child id="1980609059185345194" name="constraint" index="8PkJo" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="3575255234196628445" name="jetbrains.mps.lang.typesystem2.structure.RequireStatement" flags="ng" index="1mebxG">
        <child id="3575255234196628696" name="node" index="1mebXD" />
      </concept>
      <concept id="3575255234174969639" name="jetbrains.mps.lang.typesystem2.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="3575255234174969658" name="head" index="1nLNMb" />
        <child id="3575255234174969660" name="body" index="1nLNMd" />
      </concept>
      <concept id="3575255234174969615" name="jetbrains.mps.lang.typesystem2.structure.RuleTemplate" flags="ng" index="1nLNMY">
        <child id="3575255234175001641" name="condition" index="1nLFYo" />
        <child id="3575255234174969633" name="input" index="1nLNMg" />
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.typesystem2.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.typesystem2.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm" />
      <concept id="7368070394769089081" name="jetbrains.mps.lang.typesystem2.structure.RuleInputDeclaration" flags="ng" index="3A20r5" />
      <concept id="7368070394769139970" name="jetbrains.mps.lang.typesystem2.structure.RuleInputReference" flags="ng" index="3A2sRY">
        <reference id="7368070394769213644" name="declaration" index="3A2yKK" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.typesystem2.structure.Head" flags="ng" index="3Aq93q">
        <property id="7368070394767443940" name="keep" index="3ArMco" />
      </concept>
      <concept id="7368070394766963523" name="jetbrains.mps.lang.typesystem2.structure.RuleComponent" flags="ng" index="3Aq9uZ">
        <child id="2316688792939037645" name="logic" index="3Ip0Jz" />
        <child id="965748826975413053" name="parameter" index="3Nuqhd" />
      </concept>
      <concept id="7368070394766966388" name="jetbrains.mps.lang.typesystem2.structure.Body" flags="ng" index="3Aq9E8" />
      <concept id="7368070394766978092" name="jetbrains.mps.lang.typesystem2.structure.EmitConstraintStatement" flags="ng" index="3Aqczg">
        <child id="7368070394767031348" name="constraint" index="3Aqpz8" />
      </concept>
      <concept id="7368070394767067636" name="jetbrains.mps.lang.typesystem2.structure.ConstraintDeclaration" flags="ng" index="3AqmO8">
        <child id="1878265754077059170" name="parameters" index="1zAUyy" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.typesystem2.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="1476354154047570702" name="jetbrains.mps.lang.typesystem2.structure.CodeBlock" flags="ng" index="3AO9d9">
        <child id="535508562359074271" name="code" index="16YjZG" />
      </concept>
      <concept id="8581119423153238082" name="jetbrains.mps.lang.typesystem2.structure.NodeAnchor" flags="ng" index="3BlFb$">
        <child id="8581119423153238083" name="node" index="3BlFb_" />
      </concept>
      <concept id="2316688792938826204" name="jetbrains.mps.lang.typesystem2.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.typesystem2.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
      <concept id="2316688792939428589" name="jetbrains.mps.lang.typesystem2.structure.TemplateLogicalClause" flags="ng" index="3IrJb3">
        <child id="2316688792939428590" name="code" index="3IrJb0" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.typesystem2.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
      <concept id="3063948360252660075" name="jetbrains.mps.lang.typesystem2.structure.TypeofConstraint" flags="ng" index="3XxkQB">
        <child id="3063948360252667312" name="assignedType" index="3Xxm5W" />
        <child id="3063948360252666228" name="anchor" index="3XxmmS" />
      </concept>
    </language>
  </registry>
  <node concept="AVZre" id="36tQV5Ao9p_">
    <property role="TrG5h" value="Foobar" />
    <node concept="1nLNMY" id="36tQV5Ao9qv" role="1nK1Vg">
      <property role="TrG5h" value="test" />
      <node concept="3clFbS" id="36tQV5Ao9qw" role="1nLNMH">
        <node concept="1mebxG" id="7lt0LtOVMbx" role="3cqZAp">
          <node concept="3A2sRY" id="7lt0LtOVMh4" role="1mebXD">
            <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
          </node>
        </node>
        <node concept="3cpWs8" id="36tQV5AKngS" role="3cqZAp">
          <node concept="3cpWsn" id="36tQV5AKngV" role="3cpWs9">
            <property role="TrG5h" value="str" />
            <node concept="17QB3L" id="36tQV5AKngQ" role="1tU5fm" />
            <node concept="Xl_RD" id="36tQV5AKnhT" role="33vP2m">
              <property role="Xl_RC" value="asdasdasd" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="36tQV5AKHu1" role="3cqZAp">
          <node concept="3clFbS" id="36tQV5AKHu3" role="2LFqv$">
            <node concept="1nLNNL" id="36tQV5AB4mv" role="3cqZAp">
              <node concept="1nLNMm" id="36tQV5AB4mx" role="1nLNNK">
                <node concept="3Aq9E8" id="36tQV5ADNkx" role="1nLNMd">
                  <node concept="3I6sU6" id="36tQV5ADNky" role="3Ip0Jz">
                    <node concept="3IrJb3" id="36tQV5AKnfR" role="3I6sU7">
                      <node concept="3clFbS" id="36tQV5AKnfS" role="3IrJb0">
                        <node concept="3clFbJ" id="36tQV5AKnfV" role="3cqZAp">
                          <node concept="3eOSWO" id="36tQV5AKpat" role="3clFbw">
                            <node concept="3cmrfG" id="36tQV5AKpaw" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="2OqwBi" id="36tQV5AKnEG" role="3uHU7B">
                              <node concept="37vLTw" id="36tQV5AKnlL" role="2Oq$k0">
                                <ref role="3cqZAo" node="36tQV5AKngV" resolve="str" />
                              </node>
                              <node concept="liA8E" id="36tQV5AKomS" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="36tQV5AKnfX" role="3clFbx">
                            <node concept="3Aqczg" id="36tQV5AKq9$" role="3cqZAp">
                              <node concept="3Aqt3T" id="36tQV5AKq9z" role="3Aqpz8">
                                <ref role="3AqCNq" node="36tQV5ADNk_" resolve="bar" />
                                <node concept="a7P8L" id="36tQV5AKqdA" role="3AunhB">
                                  <ref role="a7OzE" node="36tQV5ADNkj" resolve="AAA" />
                                </node>
                              </node>
                            </node>
                            <node concept="3Aqczg" id="36tQV5AL_z1" role="3cqZAp">
                              <node concept="3XxkQB" id="36tQV5AL_yT" role="3Aqpz8">
                                <node concept="3BlFb$" id="36tQV5AL_yV" role="3XxmmS">
                                  <node concept="3A2sRY" id="36tQV5AL_zd" role="3BlFb_">
                                    <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
                                  </node>
                                </node>
                                <node concept="a7P8L" id="36tQV5AL_zl" role="3Xxm5W">
                                  <ref role="a7OzE" node="36tQV5ADNkj" resolve="AAA" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="36tQV5AKC84" role="3cqZAp">
                          <node concept="3clFbS" id="36tQV5AKC86" role="3clFbx">
                            <node concept="3Aqczg" id="36tQV5AKDC$" role="3cqZAp">
                              <node concept="3Aqt3T" id="36tQV5AKDCy" role="3Aqpz8">
                                <ref role="3AqCNq" node="36tQV5ADNk_" resolve="bar" />
                                <node concept="Hz6ka" id="36tQV5AKDCD" role="3AunhB">
                                  <node concept="1oi5XN" id="36tQV5AKDCJ" role="Hz6kd">
                                    <property role="1oi5yK" value="ABASBDABSDAS" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="17R0WA" id="36tQV5AKDyy" role="3clFbw">
                            <node concept="Xl_RD" id="36tQV5AKD$G" role="3uHU7w">
                              <property role="Xl_RC" value="asdasd" />
                            </node>
                            <node concept="2OqwBi" id="36tQV5AKCmu" role="3uHU7B">
                              <node concept="3A2sRY" id="36tQV5AKCdT" role="2Oq$k0">
                                <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
                              </node>
                              <node concept="3TrcHB" id="36tQV5AKCwc" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Aq93q" id="36tQV5ALYt4" role="1nLNMb">
                  <property role="3ArMco" value="true" />
                  <node concept="3I6sU6" id="36tQV5ALYt5" role="3Ip0Jz">
                    <node concept="3I6s7M" id="36tQV5ALYyJ" role="3I6sU7">
                      <node concept="3XxkQB" id="36tQV5ALYyF" role="3I6s78">
                        <node concept="3BlFb$" id="36tQV5ALYyG" role="3XxmmS">
                          <node concept="3A2sRY" id="36tQV5ALYz3" role="3BlFb_">
                            <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
                          </node>
                        </node>
                        <node concept="a7P8L" id="36tQV5ALYzb" role="3Xxm5W">
                          <ref role="a7OzE" node="36tQV5ALYyU" resolve="T" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3NuqgR" id="36tQV5ALYyT" role="3Nuqhd">
                    <node concept="aZer4" id="36tQV5ALYyU" role="3XD1gS">
                      <property role="TrG5h" value="T" />
                    </node>
                  </node>
                </node>
                <node concept="3Aq93q" id="36tQV5ADNjn" role="1nLNMb">
                  <node concept="3I6sU6" id="36tQV5ADNjo" role="3Ip0Jz">
                    <node concept="3I6s7M" id="36tQV5ADNkc" role="3I6sU7">
                      <node concept="3Aqt3T" id="36tQV5ADNkb" role="3I6s78">
                        <ref role="3AqCNq" node="36tQV5ADNjJ" resolve="foo" />
                        <node concept="a7P8L" id="36tQV5ADNks" role="3AunhB">
                          <ref role="a7OzE" node="36tQV5ADNkj" resolve="AAA" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3NuqgR" id="36tQV5ADNki" role="3Nuqhd">
                    <node concept="aZer4" id="36tQV5ADNkj" role="3XD1gS">
                      <property role="TrG5h" value="AAA" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="36tQV5AKHu4" role="1Duv9x">
            <property role="TrG5h" value="nnn" />
            <node concept="3Tqbb2" id="36tQV5ALjuj" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="36tQV5ALi6Z" role="1DdaDG">
            <node concept="3A2sRY" id="36tQV5ALhR8" role="2Oq$k0">
              <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
            </node>
            <node concept="2Rf3mk" id="36tQV5ALir4" role="2OqNvi">
              <node concept="1xMEDy" id="36tQV5ALir6" role="1xVPHs">
                <node concept="chp4Y" id="36tQV5ALirO" role="ri$Ld">
                  <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7lt0LtP1Tij" role="3cqZAp" />
        <node concept="3clFbF" id="36tQV5AADjW" role="3cqZAp">
          <node concept="2OqwBi" id="36tQV5AADjT" role="3clFbG">
            <node concept="10M0yZ" id="36tQV5AADjU" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="36tQV5AADjV" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="36tQV5AAENn" role="37wK5m">
                <property role="Xl_RC" value="Foo-bar" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="36tQV5A_oxt" role="1nLNMg">
        <ref role="2t_S0q" to="tpck:4uZwTti3_$T" resolve="Attribute" />
        <node concept="3A20r5" id="36tQV5A_oxu" role="2t_VXX">
          <property role="TrG5h" value="attr" />
        </node>
      </node>
      <node concept="cBwPQ" id="36tQV5ALoUi" role="1nLFYo">
        <node concept="3clFbS" id="36tQV5ALoUj" role="16YjZG">
          <node concept="3clFbF" id="36tQV5ALp0k" role="3cqZAp">
            <node concept="2OqwBi" id="36tQV5ALp8U" role="3clFbG">
              <node concept="3A2sRY" id="36tQV5ALp0j" role="2Oq$k0">
                <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
              </node>
              <node concept="3x8VRR" id="36tQV5ALqz2" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3AqmO8" id="36tQV5ADNjJ" role="8PkJo">
      <property role="TrG5h" value="foo" />
      <node concept="1zAUYm" id="36tQV5ADNk9" role="1zAUyy">
        <property role="TrG5h" value="t" />
      </node>
    </node>
    <node concept="3AqmO8" id="36tQV5ADNk_" role="8PkJo">
      <property role="TrG5h" value="bar" />
      <node concept="1zAUYm" id="36tQV5ADNl1" role="1zAUyy">
        <property role="TrG5h" value="t" />
      </node>
    </node>
  </node>
</model>

