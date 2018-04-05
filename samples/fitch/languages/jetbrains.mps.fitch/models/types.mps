<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:30efdd3a-609b-4e7b-a8f2-60af62d5341f(jetbrains.mps.fitch.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2" version="8" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
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
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2">
      <concept id="8456919074560454386" name="jetbrains.mps.lang.typesystem2.structure.ParameterContainer" flags="ng" index="0eUR_">
        <child id="8456919074560454898" name="parameter" index="0eVf_" />
      </concept>
      <concept id="1618328391714701929" name="jetbrains.mps.lang.typesystem2.structure.TermTemplate" flags="ng" index="0oftK" />
      <concept id="6086839168138086051" name="jetbrains.mps.lang.typesystem2.structure.TermTable" flags="ng" index="1HGPq">
        <child id="6086839168138086052" name="termDeclaration" index="1HGPt" />
      </concept>
      <concept id="6691972578451976398" name="jetbrains.mps.lang.typesystem2.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066016388" name="jetbrains.mps.lang.typesystem2.structure.Rule" flags="ng" index="AVZhu" />
      <concept id="8335224865066015764" name="jetbrains.mps.lang.typesystem2.structure.Handler" flags="ng" index="AVZre">
        <property id="2316688792951788157" name="stage" index="3J8TDj" />
        <child id="1980609059185345194" name="constraint" index="8PkJo" />
        <child id="7368070394767441299" name="rule" index="3ArX_J" />
      </concept>
      <concept id="5524459797190399502" name="jetbrains.mps.lang.typesystem2.structure.TermDeclaration" flags="ng" index="BRKj$">
        <child id="5524459797190401236" name="template" index="BRKSY" />
      </concept>
      <concept id="6856711987714624232" name="jetbrains.mps.lang.typesystem2.structure.ExpressionItem" flags="ng" index="HKQnh">
        <child id="6856711987714624233" name="code" index="HKQng" />
      </concept>
      <concept id="5372587443975633709" name="jetbrains.mps.lang.typesystem2.structure.AbstractRule" flags="ng" index="3wqRzX">
        <child id="8456919074560456757" name="parameter" index="0eVGy" />
        <child id="7509376976631847095" name="input" index="20_v8_" />
        <child id="1427485783570316357" name="head" index="3orSU4" />
        <child id="1427485783571962463" name="body" index="3otmyu" />
      </concept>
      <concept id="1878265754076919072" name="jetbrains.mps.lang.typesystem2.structure.Comment" flags="ng" index="1zAsnw">
        <child id="5974055334837370567" name="part" index="27qylF" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.typesystem2.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm">
        <child id="6036655413802463897" name="dataType" index="3gTf24" />
      </concept>
      <concept id="7368070394769089081" name="jetbrains.mps.lang.typesystem2.structure.RuleInputDeclaration" flags="ng" index="3A20r5" />
      <concept id="7368070394769139970" name="jetbrains.mps.lang.typesystem2.structure.RuleInputReference" flags="ng" index="3A2sRY">
        <reference id="7368070394769213644" name="declaration" index="3A2yKK" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.typesystem2.structure.Head" flags="ng" index="3Aq93q">
        <property id="7368070394767443940" name="keep" index="3ArMco" />
      </concept>
      <concept id="7368070394766963523" name="jetbrains.mps.lang.typesystem2.structure.RuleComponent" flags="ng" index="3Aq9uZ">
        <child id="2316688792939037645" name="logic" index="3Ip0Jz" />
      </concept>
      <concept id="7368070394766966388" name="jetbrains.mps.lang.typesystem2.structure.Body" flags="ng" index="3Aq9E8" />
      <concept id="7368070394767067636" name="jetbrains.mps.lang.typesystem2.structure.ConstraintDeclaration" flags="ng" index="3AqmO8">
        <child id="1878265754077059170" name="parameters" index="1zAUyy" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.typesystem2.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="8581119423153238082" name="jetbrains.mps.lang.typesystem2.structure.NodeAnchor" flags="ng" index="3BlFb$">
        <child id="8581119423153238083" name="node" index="3BlFb_" />
      </concept>
      <concept id="1877115349178398764" name="jetbrains.mps.lang.typesystem2.structure.EqualsConstraint" flags="ng" index="3GeI9q">
        <child id="1877115349178398815" name="right" index="3GeI8D" />
        <child id="1877115349178398813" name="left" index="3GeI8F" />
      </concept>
      <concept id="2316688792938826204" name="jetbrains.mps.lang.typesystem2.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.typesystem2.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.typesystem2.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="1HGPq" id="5RfK0kxl_Hp">
    <property role="TrG5h" value="Types" />
    <node concept="BRKj$" id="5RfK0kxl_Hq" role="1HGPt">
      <property role="TrG5h" value="Ok" />
      <node concept="0oftK" id="5RfK0kxl_Hr" role="BRKSY" />
    </node>
  </node>
  <node concept="AVZre" id="2aBGSFge0GD">
    <property role="3J8TDj" value="Stage2" />
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
    <node concept="3AqmO8" id="2aBGSFge6oW" role="8PkJo">
      <property role="TrG5h" value="typeNode" />
      <node concept="1zAUYm" id="2aBGSFge6p4" role="1zAUyy">
        <property role="TrG5h" value="typeNode" />
        <node concept="3Tqbb2" id="2aBGSFge6p9" role="3gTf24" />
      </node>
      <node concept="1zAUYm" id="2aBGSFge6pc" role="1zAUyy">
        <property role="TrG5h" value="ref" />
      </node>
    </node>
    <node concept="3AqmO8" id="2YqrT$P6Qob" role="8PkJo">
      <property role="TrG5h" value="error" />
      <node concept="1zAUYm" id="2YqrT$P6Qo_" role="1zAUyy">
        <property role="TrG5h" value="msg" />
      </node>
      <node concept="1zAUYm" id="2YqrT$P6QoB" role="1zAUyy">
        <property role="TrG5h" value="ref" />
      </node>
    </node>
    <node concept="AVZhu" id="2aBGSFge6lQ" role="3ArX_J">
      <property role="TrG5h" value="check_All" />
      <node concept="3Aq93q" id="2aBGSFge6lS" role="3orSU4">
        <node concept="3I6sU6" id="2aBGSFge6lT" role="3Ip0Jz">
          <node concept="3I6s7M" id="2aBGSFge6lX" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFge6lW" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6lD" resolve="main" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="2aBGSFge6m7" role="3otmyu">
        <node concept="3I6sU6" id="2aBGSFge6m8" role="3Ip0Jz">
          <node concept="3I6s7M" id="2aBGSFge6mc" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFge6mb" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6lJ" resolve="checkAll" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P6QkW" role="3ArX_J">
      <property role="TrG5h" value="check_Reasoning" />
      <node concept="3Aq93q" id="2YqrT$P6QmL" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P6QmM" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P6QmQ" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P6QmP" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6lJ" resolve="checkAll" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="2YqrT$P6Qmq" role="3otmyu">
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
      <node concept="2t___k" id="2YqrT$P6Qma" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
        <node concept="3A20r5" id="2YqrT$P6Qmb" role="2t_VXX">
          <property role="TrG5h" value="rsn" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P7S$8" role="3ArX_J">
      <property role="TrG5h" value="check_Goal" />
      <node concept="3Aq93q" id="2YqrT$P7S$9" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P7S$a" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7S$b" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7S$c" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6lJ" resolve="checkAll" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="2YqrT$P7S$d" role="3otmyu">
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
      <node concept="2t___k" id="2YqrT$P7S$j" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7S$k" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2aBGSFge6mf" role="3ArX_J">
      <property role="TrG5h" value="typeOf_Reasoning" />
      <node concept="3Aq93q" id="2aBGSFge6mF" role="3orSU4">
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
      <node concept="3Aq93q" id="2YqrT$P6Q7a" role="3orSU4">
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
      <node concept="2t___k" id="2aBGSFge6mr" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
        <node concept="3A20r5" id="2aBGSFge6ms" role="2t_VXX">
          <property role="TrG5h" value="rsn" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P6Q34" role="3ArX_J">
      <property role="TrG5h" value="error_Reasoning" />
      <node concept="3Aq93q" id="2YqrT$P6Qn6" role="3orSU4">
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
      <node concept="2t___k" id="2YqrT$P6Q3g" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
        <node concept="3A20r5" id="2YqrT$P6Q3h" role="2t_VXX">
          <property role="TrG5h" value="rsn" />
        </node>
      </node>
      <node concept="3Aq9E8" id="2YqrT$P6Q3i" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P6Q3j" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P6QuV" role="3I6sU7">
            <node concept="3GeI9q" id="2YqrT$P6QuP" role="3I6s78">
              <node concept="a7P8L" id="2YqrT$P6Qve" role="3GeI8F">
                <ref role="a7OzE" node="2YqrT$P6Qsy" resolve="Msg" />
              </node>
              <node concept="HKQnh" id="2YqrT$P6Qvm" role="3GeI8D">
                <node concept="Xl_RD" id="2YqrT$P6Qvr" role="HKQng">
                  <property role="Xl_RC" value="invalid" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P6Qon" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P6Qol" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Qob" resolve="error" />
              <node concept="a7P8L" id="2YqrT$P6QvY" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P6Qsy" resolve="Msg" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P6Qxl" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P6Qxv" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P6Q3h" resolve="rsn" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="0eUR_" id="3dsgZciwaju" role="0eVGy">
        <node concept="3NuqgR" id="2YqrT$P6Q3v" role="0eVf_">
          <node concept="aZer4" id="2YqrT$P6Q3w" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="3Tqbb2" id="2YqrT$P6Q3x" role="3vLBG7" />
        </node>
        <node concept="3NuqgR" id="2YqrT$P6Qsx" role="0eVf_">
          <node concept="aZer4" id="2YqrT$P6Qsy" role="3XD1gS">
            <property role="TrG5h" value="Msg" />
          </node>
          <node concept="17QB3L" id="2YqrT$P6Quu" role="3vLBG7" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P7Ssz" role="3ArX_J">
      <property role="TrG5h" value="typeOf_Goal" />
      <node concept="3Aq9E8" id="2YqrT$P7Suu" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P7Suv" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7Suw" role="3I6sU7">
            <node concept="3GeI9q" id="2YqrT$P7Sux" role="3I6s78">
              <node concept="a7P8L" id="2YqrT$P7Suy" role="3GeI8F">
                <ref role="a7OzE" node="2YqrT$P7SuG" resolve="Node" />
              </node>
              <node concept="HKQnh" id="2YqrT$P7Suz" role="3GeI8D">
                <node concept="2pJPEk" id="2YqrT$P7Su$" role="HKQng">
                  <node concept="2pJPED" id="2YqrT$P7Su_" role="2pJPEn">
                    <ref role="2pJxaS" to="jfgh:2aBGSFge6pw" resolve="Ok" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7SuA" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7SuB" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6oW" resolve="typeNode" />
              <node concept="a7P8L" id="2YqrT$P7SuC" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P7SuG" resolve="Node" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P7SuD" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7Sx0" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7StR" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P7StQ" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7StR" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P7Su3" role="3orSU4">
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
      <node concept="3Aq93q" id="2YqrT$P7SyN" role="3orSU4">
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
      <node concept="0eUR_" id="3dsgZciwajt" role="0eVGy">
        <node concept="3NuqgR" id="2YqrT$P7SuF" role="0eVf_">
          <node concept="aZer4" id="2YqrT$P7SuG" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="3Tqbb2" id="2YqrT$P7SuH" role="3vLBG7" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P7SAz" role="3ArX_J">
      <property role="TrG5h" value="error_Goal" />
      <node concept="3Aq93q" id="2YqrT$P7SA$" role="3orSU4">
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
      <node concept="2t___k" id="2YqrT$P7SAE" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7SAF" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
      <node concept="3Aq9E8" id="2YqrT$P7SAG" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P7SAH" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7SAI" role="3I6sU7">
            <node concept="3GeI9q" id="2YqrT$P7SAJ" role="3I6s78">
              <node concept="a7P8L" id="2YqrT$P7SAK" role="3GeI8F">
                <ref role="a7OzE" node="2YqrT$P7SAW" resolve="Msg" />
              </node>
              <node concept="HKQnh" id="2YqrT$P7SAL" role="3GeI8D">
                <node concept="Xl_RD" id="2YqrT$P7SAM" role="HKQng">
                  <property role="Xl_RC" value="invalid" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7SAN" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7SAO" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Qob" resolve="error" />
              <node concept="a7P8L" id="2YqrT$P7SAP" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P7SAW" resolve="Msg" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P7SAQ" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7SAR" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7SAF" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="0eUR_" id="3dsgZciwajs" role="0eVGy">
        <node concept="3NuqgR" id="2YqrT$P7SAS" role="0eVf_">
          <node concept="aZer4" id="2YqrT$P7SAT" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="3Tqbb2" id="2YqrT$P7SAU" role="3vLBG7" />
        </node>
        <node concept="3NuqgR" id="2YqrT$P7SAV" role="0eVf_">
          <node concept="aZer4" id="2YqrT$P7SAW" role="3XD1gS">
            <property role="TrG5h" value="Msg" />
          </node>
          <node concept="17QB3L" id="2YqrT$P7SAX" role="3vLBG7" />
        </node>
      </node>
    </node>
  </node>
</model>

