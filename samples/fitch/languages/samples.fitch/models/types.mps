<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:30efdd3a-609b-4e7b-a8f2-60af62d5341f(samples.fitch.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="15" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="cba985fe-1e96-4f16-9f8d-b07434405d4f" name="jetbrains.mps.lang.smodel.types" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="2" />
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" />
    <import index="1g4i" ref="r:102178da-67ba-49f6-ba73-eb29fa352fe7(jetbrains.mps.typechecking)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.typechecking.service)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
        <child id="6399471711045617306" name="dataType" index="3vLBG7" />
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
      <concept id="861509610434243104" name="jetbrains.mps.logic.structure.DataFormTable" flags="ng" index="ns1xd">
        <child id="861509610434243105" name="contents" index="ns1xc" />
      </concept>
      <concept id="861509610434243081" name="jetbrains.mps.logic.structure.DataFormDeclaration" flags="ng" index="ns1x$">
        <child id="861509610434243084" name="template" index="ns1xx" />
      </concept>
      <concept id="861509610434276450" name="jetbrains.mps.logic.structure.DataFormTemplate" flags="ng" index="nspSf" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking">
      <concept id="6958395084019752" name="jetbrains.mps.lang.typechecking.structure.SNodeSetTypeOperation" flags="ng" index="2ra22R">
        <child id="6958395084020241" name="typeExpr" index="2ra2ae" />
      </concept>
    </language>
    <language id="cba985fe-1e96-4f16-9f8d-b07434405d4f" name="jetbrains.mps.lang.smodel.types">
      <concept id="7345257067587627589" name="jetbrains.mps.lang.smodel.types.structure.SNodeTypeOperation" flags="ng" index="2W$R8B" />
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="8456919074560454386" name="jetbrains.mps.lang.coderules.structure.ParameterContainer" flags="ng" index="0eUR_">
        <child id="8456919074560454898" name="parameter" index="0eVf_" />
      </concept>
      <concept id="7871500063866331595" name="jetbrains.mps.lang.coderules.structure.Query" flags="ng" index="92CTh">
        <child id="7871500063866331596" name="queryStage" index="92CTm" />
        <child id="3026409000513569515" name="queryKind" index="2_lZgo" />
      </concept>
      <concept id="9035818301008609703" name="jetbrains.mps.lang.coderules.structure.QueryTemplate" flags="ng" index="2bWyPT">
        <child id="7871500063838282362" name="code" index="fHCRw" />
      </concept>
      <concept id="6958395097955138" name="jetbrains.mps.lang.coderules.structure.SNodeReportOperation" flags="ng" index="2s7oft">
        <property id="6958395097963305" name="kind" index="2s7ueQ" />
        <child id="6958395097963208" name="text" index="2s7u9n" />
      </concept>
      <concept id="6691972578451976398" name="jetbrains.mps.lang.coderules.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.Handler" flags="ng" index="AVZre">
        <child id="1980609059185345194" name="constraint" index="8PkJo" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="8456919074565751439" name="parameter" index="0UC6o" />
        <child id="3575255234174969658" name="head" index="1nLNMb" />
        <child id="3575255234174969660" name="body" index="1nLNMd" />
      </concept>
      <concept id="3575255234174969615" name="jetbrains.mps.lang.coderules.structure.RuleTemplate" flags="ng" index="1nLNMY">
        <child id="3575255234174969633" name="input" index="1nLNMg" />
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.coderules.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="5372587443968979218" name="jetbrains.mps.lang.coderules.structure.ExpressionConstraint" flags="ng" index="3wWvb2">
        <child id="5372587443968983820" name="expression" index="3wWo3s" />
      </concept>
      <concept id="1878265754076919072" name="jetbrains.mps.lang.coderules.structure.Comment" flags="ng" index="1zAsnw">
        <child id="5974055334837370567" name="part" index="27qylF" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.coderules.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm" />
      <concept id="7368070394769089081" name="jetbrains.mps.lang.coderules.structure.RuleInputDeclaration" flags="ng" index="3A20r5" />
      <concept id="7368070394769139970" name="jetbrains.mps.lang.coderules.structure.RuleInputReference" flags="ng" index="3A2sRY">
        <reference id="7368070394769213644" name="declaration" index="3A2yKK" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.coderules.structure.Head" flags="ng" index="3Aq93q">
        <property id="7368070394767443940" name="keep" index="3ArMco" />
      </concept>
      <concept id="7368070394766963523" name="jetbrains.mps.lang.coderules.structure.RuleComponent" flags="ng" index="3Aq9uZ">
        <child id="2316688792939037645" name="logic" index="3Ip0Jz" />
      </concept>
      <concept id="7368070394766966388" name="jetbrains.mps.lang.coderules.structure.Body" flags="ng" index="3Aq9E8" />
      <concept id="7368070394767067636" name="jetbrains.mps.lang.coderules.structure.ConstraintDeclaration" flags="ng" index="3AqmO8">
        <child id="1878265754077059170" name="parameters" index="1zAUyy" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.coderules.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="8581119423153238082" name="jetbrains.mps.lang.coderules.structure.NodeAnchor" flags="ng" index="3BlFb$">
        <child id="8581119423153238083" name="node" index="3BlFb_" />
      </concept>
      <concept id="2316688792938826204" name="jetbrains.mps.lang.coderules.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.coderules.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="AVZre" id="2aBGSFge0GD">
    <property role="TrG5h" value="Check" />
    <node concept="3AqmO8" id="2aBGSFge6lD" role="8PkJo">
      <property role="TrG5h" value="main" />
    </node>
    <node concept="3AqmO8" id="2aBGSFge6lJ" role="8PkJo">
      <property role="TrG5h" value="checkAll" />
    </node>
    <node concept="3AqmO8" id="2YqrT$P6Q6Q" role="8PkJo">
      <property role="TrG5h" value="check" />
      <node concept="1zAUYm" id="2YqrT$P6Q72" role="1zAUyy">
        <property role="TrG5h" value="rsn" />
      </node>
    </node>
    <node concept="3AqmO8" id="2YqrT$P7tud" role="8PkJo">
      <property role="TrG5h" value="valid" />
      <node concept="1zAUYm" id="2YqrT$P7tui" role="1zAUyy">
        <property role="TrG5h" value="rsn" />
      </node>
      <node concept="1zAsnw" id="3l440nVsJkw" role="lGtFl">
        <node concept="3SKdUq" id="3l440nVsJkx" role="27qylF">
          <property role="3SKdUp" value="reasoning is valid" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8GZEJ" role="1nK1Vg">
      <property role="TrG5h" value="check_Reasoning" />
      <node concept="3clFbS" id="6$MtiK8GZEK" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8GZEL" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8GZEM" role="1nLNNK">
            <node concept="3Aq93q" id="2YqrT$P6QmL" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P6QmM" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P6QmQ" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P6QmP" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFge6lJ" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2YqrT$P6Qmq" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P6Qmr" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P6Qmv" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P6Qmu" role="3I6s78">
                    <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
                    <node concept="3BlFb$" id="2YqrT$P6Qmy" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P6QmD" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P6Qmb" resolve="rsn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P6Qma" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
        <node concept="3A20r5" id="2YqrT$P6Qmb" role="2t_VXX">
          <property role="TrG5h" value="rsn" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8GZEN" role="1nK1Vg">
      <property role="TrG5h" value="check_Goal" />
      <node concept="3clFbS" id="6$MtiK8GZEO" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8GZEP" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8GZEQ" role="1nLNNK">
            <node concept="3Aq93q" id="2YqrT$P7S$9" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P7S$a" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7S$b" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7S$c" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFge6lJ" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2YqrT$P7S$d" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P7S$e" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7S$f" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7S$g" role="3I6s78">
                    <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
                    <node concept="3BlFb$" id="2YqrT$P7S$h" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7S$i" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P7S$k" resolve="goal" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P7S$j" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7S$k" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8GZER" role="1nK1Vg">
      <property role="TrG5h" value="typeOf_Reasoning" />
      <node concept="3clFbS" id="6$MtiK8GZES" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8GZET" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8GZEU" role="1nLNNK">
            <node concept="3Aq93q" id="2aBGSFge6mF" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2aBGSFge6mG" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7zRj" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7zRh" role="3I6s78">
                    <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7zRt" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7zRA" role="3BlFb_">
                        <ref role="3A2yKK" node="2aBGSFge6ms" resolve="rsn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2YqrT$P6Q7a" role="1nLNMb">
              <node concept="3I6sU6" id="2YqrT$P6Q7b" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P6Q7q" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P6Q7p" role="3I6s78">
                    <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
                    <node concept="3BlFb$" id="2YqrT$P6Q7x" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P6QdB" role="3BlFb_">
                        <ref role="3A2yKK" node="2aBGSFge6ms" resolve="rsn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2aBGSFge6mr" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
        <node concept="3A20r5" id="2aBGSFge6ms" role="2t_VXX">
          <property role="TrG5h" value="rsn" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8GZEV" role="1nK1Vg">
      <property role="TrG5h" value="error_Reasoning" />
      <node concept="3clFbS" id="6$MtiK8GZEW" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8GZEX" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8GZEY" role="1nLNNK">
            <node concept="3Aq93q" id="2YqrT$P6Qn6" role="1nLNMb">
              <node concept="3I6sU6" id="2YqrT$P6Qn7" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P6Qnm" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P6Qnl" role="3I6s78">
                    <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
                    <node concept="3BlFb$" id="2YqrT$P6Qnr" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P6Qn$" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P6Q3h" resolve="rsn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2YqrT$P6Q3i" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P6Q3j" role="3Ip0Jz">
                <node concept="3I6s7M" id="3dsgZcixPye" role="3I6sU7">
                  <node concept="3wWvb2" id="3dsgZcixPyc" role="3I6s78">
                    <node concept="2OqwBi" id="3dsgZcixPUk" role="3wWo3s">
                      <node concept="2s7oft" id="3dsgZcixQbH" role="2OqNvi">
                        <property role="2s7ueQ" value="error" />
                        <node concept="Xl_RD" id="3dsgZcixQc7" role="2s7u9n">
                          <property role="Xl_RC" value="invalid" />
                        </node>
                      </node>
                      <node concept="3A2sRY" id="3dsgZcixQu7" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P6Q3h" resolve="rsn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P6Q3g" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
        <node concept="3A20r5" id="2YqrT$P6Q3h" role="2t_VXX">
          <property role="TrG5h" value="rsn" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8GZEZ" role="1nK1Vg">
      <property role="TrG5h" value="typeOf_Goal" />
      <node concept="3clFbS" id="6$MtiK8GZF0" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8GZF1" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8GZF2" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwajt" role="0UC6o">
              <node concept="3NuqgR" id="2YqrT$P7SuF" role="0eVf_">
                <node concept="aZer4" id="2YqrT$P7SuG" role="3XD1gS">
                  <property role="TrG5h" value="Node" />
                </node>
                <node concept="3Tqbb2" id="2YqrT$P7SuH" role="3vLBG7" />
              </node>
            </node>
            <node concept="3Aq93q" id="2YqrT$P7Su3" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P7Su4" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7Su8" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7Su7" role="3I6s78">
                    <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7Sud" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7Sum" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P7StR" resolve="goal" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2YqrT$P7SyN" role="1nLNMb">
              <node concept="3I6sU6" id="2YqrT$P7SyO" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7SyY" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7SyX" role="3I6s78">
                    <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
                    <node concept="3BlFb$" id="2YqrT$P7Sz3" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7Szc" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P7StR" resolve="goal" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2YqrT$P7Suu" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P7Suv" role="3Ip0Jz">
                <node concept="3I6s7M" id="3dsgZcixXN$" role="3I6sU7">
                  <node concept="3wWvb2" id="3dsgZcixXNy" role="3I6s78">
                    <node concept="2OqwBi" id="3dsgZcixYR8" role="3wWo3s">
                      <node concept="2OqwBi" id="3dsgZcixYhL" role="2Oq$k0">
                        <node concept="3A2sRY" id="3dsgZcixYaI" role="2Oq$k0">
                          <ref role="3A2yKK" node="2YqrT$P7StR" resolve="goal" />
                        </node>
                        <node concept="2W$R8B" id="3dsgZcixYAw" role="2OqNvi" />
                      </node>
                      <node concept="2ra22R" id="3dsgZcixZ06" role="2OqNvi">
                        <node concept="2pJPEk" id="3dsgZcixZmW" role="2ra2ae">
                          <node concept="2pJPED" id="3dsgZcixZmX" role="2pJPEn">
                            <ref role="2pJxaS" to="jfgh:2aBGSFge6pw" resolve="Ok" />
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
      <node concept="2t___k" id="2YqrT$P7StQ" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7StR" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8GZF3" role="1nK1Vg">
      <property role="TrG5h" value="error_Goal" />
      <node concept="3clFbS" id="6$MtiK8GZF4" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8GZF5" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8GZF6" role="1nLNNK">
            <node concept="3Aq93q" id="2YqrT$P7SA$" role="1nLNMb">
              <node concept="3I6sU6" id="2YqrT$P7SA_" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7SAA" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7SAB" role="3I6s78">
                    <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
                    <node concept="3BlFb$" id="2YqrT$P7SAC" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7SAD" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P7SAF" resolve="goal" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2YqrT$P7SAG" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P7SAH" role="3Ip0Jz">
                <node concept="3I6s7M" id="3dsgZcixQcO" role="3I6sU7">
                  <node concept="3wWvb2" id="3dsgZcixQcP" role="3I6s78">
                    <node concept="2OqwBi" id="3dsgZcixQcQ" role="3wWo3s">
                      <node concept="3A2sRY" id="3dsgZcixQvE" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P7SAF" resolve="goal" />
                      </node>
                      <node concept="2s7oft" id="3dsgZcixQcU" role="2OqNvi">
                        <property role="2s7ueQ" value="error" />
                        <node concept="Xl_RD" id="3dsgZcixQcV" role="2s7u9n">
                          <property role="Xl_RC" value="invalid" />
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
      <node concept="2t___k" id="2YqrT$P7SAE" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7SAF" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
    </node>
  </node>
  <node concept="92CTh" id="2rdxkKxrUlk">
    <property role="TrG5h" value="Typecheck" />
    <node concept="2bWyPT" id="2rdxkKxrXzd" role="92CTm">
      <property role="TrG5h" value="checkAll" />
      <node concept="3clFbS" id="2rdxkKxrXze" role="fHCRw">
        <node concept="1nLNNL" id="2rdxkKxrX$v" role="3cqZAp">
          <node concept="1nLNMm" id="2rdxkKxrX$x" role="1nLNNK">
            <node concept="3Aq9E8" id="2rdxkKxrXAg" role="1nLNMd">
              <node concept="3I6sU6" id="2rdxkKxrXAh" role="3Ip0Jz">
                <node concept="3I6s7M" id="2rdxkKxrXAl" role="3I6sU7">
                  <node concept="3Aqt3T" id="2rdxkKxrXAk" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFge6lJ" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10M0yZ" id="4RzhaQIJMWM" role="2_lZgo">
      <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
      <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
    </node>
  </node>
  <node concept="ns1xd" id="7VBaGntKJ6x">
    <property role="TrG5h" value="Types" />
    <node concept="ns1x$" id="7VBaGntKJ6y" role="ns1xc">
      <property role="TrG5h" value="Ok" />
      <node concept="nspSf" id="7VBaGntKJ6z" role="ns1xx" />
    </node>
  </node>
</model>

