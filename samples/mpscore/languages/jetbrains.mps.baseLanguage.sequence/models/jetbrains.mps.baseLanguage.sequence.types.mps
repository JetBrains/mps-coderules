<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:14dbdd37-ab02-4407-8e3c-3308d6f4fbba(jetbrains.mps.baseLanguage.sequence.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="21" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8456919074574710634" name="jetbrains.mps.logic.structure.ExpressionItem" flags="ng" index="37jhX">
        <child id="8456919074574710741" name="code" index="37jj2" />
      </concept>
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
        <child id="6399471711045617306" name="dataType" index="3vLBG7" />
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
      <concept id="6856711987710888499" name="jetbrains.mps.logic.structure.DataNodeLiteral" flags="ng" index="Hz6ka">
        <child id="6856711987710888500" name="root" index="Hz6kd" />
      </concept>
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.ListNode" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="4780620083400582599" name="jetbrains.mps.logic.structure.LogicalItemExpression" flags="ng" index="1nq8_$">
        <child id="4780620083400582654" name="logical" index="1nq8_t" />
      </concept>
      <concept id="960803923479540328" name="jetbrains.mps.logic.structure.LogicalVariableDataForm" flags="ng" index="3wAshV">
        <child id="960803923479549586" name="variable" index="3wAq21" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="861509610434242029" name="jetbrains.mps.lang.coderules.structure.TermConstructor" flags="ng" index="ns1u0">
        <reference id="861509610434243078" name="decl" index="ns1xF" />
        <child id="861509610434243076" name="override" index="ns1xD" />
      </concept>
      <concept id="861509610434243104" name="jetbrains.mps.lang.coderules.structure.TermTable" flags="ng" index="ns1xd">
        <reference id="8966267790978924106" name="extended" index="2efqH6" />
        <child id="861509610434243105" name="contents" index="ns1xc" />
      </concept>
      <concept id="861509610434243081" name="jetbrains.mps.lang.coderules.structure.TermDeclaration" flags="ng" index="ns1x$">
        <reference id="861509610434243089" name="prototype" index="ns1xW" />
        <child id="861509610434243084" name="template" index="ns1xx" />
      </concept>
      <concept id="861509610434276450" name="jetbrains.mps.lang.coderules.structure.TermTemplate" flags="ng" index="nspSf">
        <child id="861509610434276451" name="feature" index="nspSe" />
      </concept>
      <concept id="861509610434289827" name="jetbrains.mps.lang.coderules.structure.ChildFeature" flags="ng" index="nstbe" />
      <concept id="861509610434435669" name="jetbrains.mps.lang.coderules.structure.TermFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="861509610434435670" name="getter" index="nsMwV" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="2381360340662937504" name="jetbrains.mps.lang.coderules.structure.TermType" flags="ig" index="32pEOW" />
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="4814011019633607808" name="parameter" index="0Rg$4" />
        <child id="3575255234174969658" name="head" index="1nLNMb" />
        <child id="7674753015762572651" name="body" index="3xSepv" />
      </concept>
      <concept id="3575255234174969615" name="jetbrains.mps.lang.coderules.structure.RuleTemplate" flags="ng" index="1nLNMY">
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.coderules.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="7674753015762572646" name="jetbrains.mps.lang.coderules.structure.BodyBlock" flags="ng" index="3xSepi">
        <child id="7674753015762572647" name="body" index="3xSepj" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.coderules.structure.Head" flags="ng" index="3Aq93q" />
      <concept id="7368070394766963523" name="jetbrains.mps.lang.coderules.structure.RuleComponent" flags="ng" index="3Aq9uZ">
        <child id="2316688792939037645" name="logic" index="3Ip0Jz" />
      </concept>
      <concept id="7368070394766966388" name="jetbrains.mps.lang.coderules.structure.Body" flags="ng" index="3Aq9E8" />
      <concept id="7368070394767045637" name="jetbrains.mps.lang.coderules.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="1553157749316176827" name="jetbrains.mps.lang.coderules.structure.PatternLogicalVariable" flags="ng" index="1HFMs5">
        <child id="5131913661993028915" name="variable" index="1uarlU" />
        <child id="5131913661993028917" name="value" index="1uarlW" />
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
  <node concept="ns1xd" id="3MFPGC50_T2">
    <property role="TrG5h" value="SequenceTerm" />
    <ref role="2efqH6" to="kqnc:JOGAOsVt29" resolve="Terms" />
    <node concept="ns1x$" id="3MFPGC50Ab3" role="ns1xc">
      <property role="TrG5h" value="sequence" />
      <ref role="ns1xW" to="kqnc:4lCLOtwq2MF" resolve="type" />
      <node concept="nspSf" id="3MFPGC50Ab4" role="ns1xx">
        <node concept="nstbe" id="3MFPGC50Aiu" role="nspSe">
          <property role="TrG5h" value="elem" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="3MFPGC50Any">
    <property role="TrG5h" value="ConversionMainSeq" />
    <ref role="2YbDB9" to="kqnc:24Vro6cM_J$" resolve="ConversionMain" />
    <node concept="1nLNMY" id="3MFPGC50KDp" role="1nK1Vg">
      <property role="TrG5h" value="converts_sequence_covariance" />
      <node concept="3clFbS" id="3MFPGC50KDq" role="1nLNMH">
        <node concept="1nLNNL" id="3MFPGC50KDr" role="3cqZAp">
          <node concept="1nLNMm" id="3MFPGC50KDs" role="1nLNNK">
            <node concept="3Aq93q" id="3MFPGC50KDt" role="1nLNMb">
              <node concept="3I6sU6" id="3MFPGC50KDu" role="3Ip0Jz">
                <node concept="3I6s7M" id="3MFPGC50KDv" role="3I6sU7">
                  <node concept="3Aqt3T" id="3MFPGC50KDw" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                    <node concept="1HFMs5" id="3MFPGC50KDx" role="3AunhB">
                      <node concept="a7P8L" id="3MFPGC50KDy" role="1uarlU">
                        <ref role="a7OzE" node="3MFPGC50KDJ" resolve="T" />
                      </node>
                      <node concept="ns1u0" id="3MFPGC50KDz" role="1uarlW">
                        <ref role="ns1xF" node="3MFPGC50Ab3" resolve="sequence" />
                        <node concept="nsMwS" id="3MFPGC50KD$" role="ns1xD">
                          <ref role="nsMwP" node="3MFPGC50Aiu" resolve="elem" />
                          <node concept="1nq8_$" id="3MFPGC50KD_" role="nsMwV">
                            <node concept="a7P8L" id="3MFPGC50KDA" role="1nq8_t">
                              <ref role="a7OzE" node="3MFPGC50KDL" resolve="TElem" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1HFMs5" id="3MFPGC50KDB" role="3AunhB">
                      <node concept="a7P8L" id="3MFPGC50KDC" role="1uarlU">
                        <ref role="a7OzE" node="3MFPGC50KDI" resolve="S" />
                      </node>
                      <node concept="ns1u0" id="3MFPGC50KDD" role="1uarlW">
                        <ref role="ns1xF" node="3MFPGC50Ab3" resolve="sequence" />
                        <node concept="nsMwS" id="3MFPGC50KDE" role="ns1xD">
                          <ref role="nsMwP" node="3MFPGC50Aiu" resolve="elem" />
                          <node concept="1nq8_$" id="3MFPGC50KDF" role="nsMwV">
                            <node concept="a7P8L" id="3MFPGC50KDG" role="1nq8_t">
                              <ref role="a7OzE" node="3MFPGC50KDK" resolve="SElem" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="3MFPGC50KDH" role="0Rg$4">
              <node concept="aZer4" id="3MFPGC50KDI" role="3XD1gS">
                <property role="TrG5h" value="S" />
              </node>
              <node concept="aZer4" id="3MFPGC50KDJ" role="3XD1gS">
                <property role="TrG5h" value="T" />
              </node>
              <node concept="aZer4" id="3MFPGC50KDK" role="3XD1gS">
                <property role="TrG5h" value="SElem" />
              </node>
              <node concept="aZer4" id="3MFPGC50KDL" role="3XD1gS">
                <property role="TrG5h" value="TElem" />
              </node>
              <node concept="32pEOW" id="3MFPGC50KDM" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="3MFPGC50KDN" role="3xSepv">
              <node concept="3Aq9E8" id="3MFPGC50KDO" role="3xSepj">
                <node concept="3I6sU6" id="3MFPGC50KDP" role="3Ip0Jz">
                  <node concept="3I6s7M" id="3MFPGC50KYx" role="3I6sU7">
                    <node concept="3Aqt3T" id="3MFPGC50KYw" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                      <node concept="a7P8L" id="3MFPGC50L02" role="3AunhB">
                        <ref role="a7OzE" node="3MFPGC50KDL" resolve="TElem" />
                      </node>
                      <node concept="a7P8L" id="3MFPGC50L0U" role="3AunhB">
                        <ref role="a7OzE" node="3MFPGC50KDK" resolve="SElem" />
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
    <node concept="1nLNMY" id="3MFPGC50D1T" role="1nK1Vg">
      <property role="TrG5h" value="converts_sequence_Iterable" />
      <node concept="3clFbS" id="3MFPGC50D1U" role="1nLNMH">
        <node concept="1nLNNL" id="3MFPGC50D1V" role="3cqZAp">
          <node concept="1nLNMm" id="3MFPGC50D1W" role="1nLNNK">
            <node concept="3Aq93q" id="3MFPGC50D1X" role="1nLNMb">
              <node concept="3I6sU6" id="3MFPGC50D1Y" role="3Ip0Jz">
                <node concept="3I6s7M" id="3MFPGC50D1Z" role="3I6sU7">
                  <node concept="3Aqt3T" id="3MFPGC50D20" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                    <node concept="1HFMs5" id="3MFPGC50D21" role="3AunhB">
                      <node concept="a7P8L" id="3MFPGC50D22" role="1uarlU">
                        <ref role="a7OzE" node="3MFPGC50D2f" resolve="T" />
                      </node>
                      <node concept="ns1u0" id="3MFPGC50D9n" role="1uarlW">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                      </node>
                    </node>
                    <node concept="1HFMs5" id="3MFPGC50D27" role="3AunhB">
                      <node concept="a7P8L" id="3MFPGC50D28" role="1uarlU">
                        <ref role="a7OzE" node="3MFPGC50D2e" resolve="S" />
                      </node>
                      <node concept="ns1u0" id="3MFPGC50D29" role="1uarlW">
                        <ref role="ns1xF" node="3MFPGC50Ab3" resolve="sequence" />
                        <node concept="nsMwS" id="3MFPGC50D2a" role="ns1xD">
                          <ref role="nsMwP" node="3MFPGC50Aiu" resolve="elem" />
                          <node concept="1nq8_$" id="3MFPGC50D2b" role="nsMwV">
                            <node concept="a7P8L" id="3MFPGC50D2c" role="1nq8_t">
                              <ref role="a7OzE" node="3MFPGC50D2g" resolve="SElem" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="3MFPGC50D2d" role="0Rg$4">
              <node concept="aZer4" id="3MFPGC50D2e" role="3XD1gS">
                <property role="TrG5h" value="S" />
              </node>
              <node concept="aZer4" id="3MFPGC50D2f" role="3XD1gS">
                <property role="TrG5h" value="T" />
              </node>
              <node concept="aZer4" id="3MFPGC50D2g" role="3XD1gS">
                <property role="TrG5h" value="SElem" />
              </node>
              <node concept="32pEOW" id="3MFPGC50D2i" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="3MFPGC50D2j" role="3xSepv">
              <node concept="3Aq9E8" id="3MFPGC50D2k" role="3xSepj">
                <node concept="3I6sU6" id="3MFPGC50D2l" role="3Ip0Jz">
                  <node concept="3I6s7M" id="3MFPGC50DX3" role="3I6sU7">
                    <node concept="3Aqt3T" id="3MFPGC50DX2" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                      <node concept="a7P8L" id="3MFPGC50DZl" role="3AunhB">
                        <ref role="a7OzE" node="3MFPGC50D2f" resolve="T" />
                      </node>
                      <node concept="ns1u0" id="3MFPGC50E0b" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                        <node concept="nsMwS" id="3MFPGC50E0W" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                          <node concept="2tJFMh" id="3MFPGC50E3a" role="nsMwV">
                            <node concept="ZC_QK" id="3MFPGC50E40" role="2tJFKM">
                              <ref role="2aWVGs" to="wyt6:~Iterable" resolve="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="3MFPGC50Eol" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2e" resolve="parameter" />
                          <node concept="1nq8_$" id="3MFPGC50Erl" role="nsMwV">
                            <node concept="Hz6ka" id="4NtT$ZxGOeo" role="1nq8_t">
                              <node concept="KCUsM" id="4NtT$ZxGOeI" role="Hz6kd">
                                <node concept="3wAshV" id="4NtT$ZxGOf7" role="KCVpo">
                                  <node concept="a7P8L" id="4NtT$ZxGOf6" role="3wAq21">
                                    <ref role="a7OzE" node="3MFPGC50D2g" resolve="SElem" />
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
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC50F5O" role="3cqZAp" />
        <node concept="1nLNNL" id="3MFPGC50F9P" role="3cqZAp">
          <node concept="1nLNMm" id="3MFPGC50F9Q" role="1nLNNK">
            <node concept="3Aq93q" id="3MFPGC50F9R" role="1nLNMb">
              <node concept="3I6sU6" id="3MFPGC50F9S" role="3Ip0Jz">
                <node concept="3I6s7M" id="3MFPGC50F9T" role="3I6sU7">
                  <node concept="3Aqt3T" id="3MFPGC50F9U" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                    <node concept="1HFMs5" id="3MFPGC50F9Y" role="3AunhB">
                      <node concept="a7P8L" id="3MFPGC50FoC" role="1uarlU">
                        <ref role="a7OzE" node="3MFPGC50Fa6" resolve="T" />
                      </node>
                      <node concept="ns1u0" id="3MFPGC50Fa0" role="1uarlW">
                        <ref role="ns1xF" node="3MFPGC50Ab3" resolve="sequence" />
                        <node concept="nsMwS" id="3MFPGC50Fa1" role="ns1xD">
                          <ref role="nsMwP" node="3MFPGC50Aiu" resolve="elem" />
                          <node concept="1nq8_$" id="3MFPGC50Fa2" role="nsMwV">
                            <node concept="37jhX" id="3MFPGC50Fr2" role="1nq8_t">
                              <node concept="1nq8_$" id="3MFPGC50Fr1" role="37jj2">
                                <node concept="a7P8L" id="3MFPGC50Fr0" role="1nq8_t">
                                  <ref role="a7OzE" node="3MFPGC50Fa8" resolve="TElem" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1HFMs5" id="3MFPGC50FtO" role="3AunhB">
                      <node concept="a7P8L" id="3MFPGC50FtM" role="1uarlU">
                        <ref role="a7OzE" node="3MFPGC50Fa5" resolve="S" />
                      </node>
                      <node concept="ns1u0" id="3MFPGC50Fwi" role="1uarlW">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="3MFPGC50Fa4" role="0Rg$4">
              <node concept="aZer4" id="3MFPGC50Fa5" role="3XD1gS">
                <property role="TrG5h" value="S" />
              </node>
              <node concept="aZer4" id="3MFPGC50Fa6" role="3XD1gS">
                <property role="TrG5h" value="T" />
              </node>
              <node concept="aZer4" id="3MFPGC50Fa8" role="3XD1gS">
                <property role="TrG5h" value="TElem" />
              </node>
              <node concept="32pEOW" id="3MFPGC50Fa9" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="3MFPGC50Faa" role="3xSepv">
              <node concept="3Aq9E8" id="3MFPGC50Fab" role="3xSepj">
                <node concept="3I6sU6" id="3MFPGC50Fac" role="3Ip0Jz">
                  <node concept="3I6s7M" id="3MFPGC50Fad" role="3I6sU7">
                    <node concept="3Aqt3T" id="3MFPGC50Fae" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                      <node concept="ns1u0" id="3MFPGC50Fag" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                        <node concept="nsMwS" id="3MFPGC50Fah" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                          <node concept="2tJFMh" id="3MFPGC50Fai" role="nsMwV">
                            <node concept="ZC_QK" id="3MFPGC50Faj" role="2tJFKM">
                              <ref role="2aWVGs" to="wyt6:~Iterable" resolve="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="3MFPGC50Fak" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2e" resolve="parameter" />
                          <node concept="1nq8_$" id="4NtT$ZxGOm4" role="nsMwV">
                            <node concept="Hz6ka" id="4NtT$ZxGOm3" role="1nq8_t">
                              <node concept="KCUsM" id="4NtT$ZxGOm9" role="Hz6kd">
                                <node concept="3wAshV" id="4NtT$ZxGOmf" role="KCVpo">
                                  <node concept="a7P8L" id="4NtT$ZxGOme" role="3wAq21">
                                    <ref role="a7OzE" node="3MFPGC50Fa8" resolve="TElem" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3MFPGC52BAL" role="3AunhB">
                        <ref role="a7OzE" node="3MFPGC50Fa5" resolve="S" />
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
</model>

