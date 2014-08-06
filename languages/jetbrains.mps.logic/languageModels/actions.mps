<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:3e4db8f0-e5cf-49f3-9145-bc3c865d93ee(jetbrains.mps.logic.actions)">
  <persistence version="8" />
  <language namespace="aee9cad2-acd4-4608-aef2-0004f6a1cdbd(jetbrains.mps.lang.actions)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="5j4j" modelUID="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="tpdg" modelUID="r:00000000-0000-4000-0000-011c895902a8(jetbrains.mps.lang.actions.structure)" version="23" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <root type="tpdg.NodeSubstituteActions" typeId="tpdg.1112056943463" id="6459492821861813286" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="StandardNode" />
    <node role="actionsBuilder" roleId="tpdg.1112058057696" type="tpdg.NodeSubstituteActionsBuilder" typeId="tpdg.1112058030570" id="6459492821861813287" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpdg.1112058088712" targetNodeId="5j4j.7571593955706137125" resolveInfo="Node" />
      <node role="part" roleId="tpdg.1177324142645" type="tpdg.AddMenuPart" typeId="tpdg.1177323996388" id="6459492821861828564" nodeInfo="ng">
        <link role="concept" roleId="tpdg.1177333551023" targetNodeId="5j4j.7571593955706137125" resolveInfo="Node" />
        <node role="part" roleId="tpdg.1177333559040" type="tpdg.SimpleItemSubstitutePart" typeId="tpdg.1177327666243" id="6459492821861829348" nodeInfo="ng">
          <node role="handler" roleId="tpdg.1177327709106" type="tpdg.QueryFunction_Substitute_Handler" typeId="tpdg.1177327570013" id="6459492821861829350" nodeInfo="nn">
            <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="6459492821861829352" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6459492821861869870" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tp3r.NodeBuilder" typeId="tp3r.5455284157993863837" id="6459492821861869866" nodeInfo="nn">
                  <node role="quotedNode" roleId="tp3r.5455284157993863838" type="tp3r.NodeBuilderNode" typeId="tp3r.5455284157993863840" id="6459492821861873495" nodeInfo="nn">
                    <link role="concept" roleId="tp3r.5455284157993910961" targetNodeId="5j4j.7571593955706137125" resolveInfo="Node" />
                    <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitLink" typeId="tp3r.5455284157994012186" id="6459492821861873498" nodeInfo="ng">
                      <link role="link" roleId="tp3r.5455284157994012188" targetNodeId="5j4j.7571593955706284441" />
                      <node role="expression" roleId="tp3r.5455284157993911094" type="tp3r.NodeBuilderList" typeId="tp3r.8182547171709738802" id="6459492821861873499" nodeInfo="nn">
                        <node role="nodes" roleId="tp3r.8182547171709738803" type="tp3r.NodeBuilderNode" typeId="tp3r.5455284157993863840" id="6459492821861873500" nodeInfo="nn">
                          <link role="concept" roleId="tp3r.5455284157993910961" targetNodeId="5j4j.7571593955706137472" resolveInfo="ValueRole" />
                          <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitProperty" typeId="tp3r.5455284157993911077" id="6459492821861873501" nodeInfo="ng">
                            <link role="property" roleId="tp3r.5455284157993911078" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                            <node role="expression" roleId="tp3r.5455284157993911094" type="tp25.EnumMemberValueRefExpression" typeId="tp25.6973815483243445083" id="6459492821861873502" nodeInfo="nn">
                              <link role="member" roleId="tp25.6973815483243565416" targetNodeId="5j4j.7166797808990235509" />
                              <link role="enum" roleId="tp25.6973815483243564601" targetNodeId="5j4j.7166797808990235508" resolveInfo="StandardRole" />
                            </node>
                          </node>
                          <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitLink" typeId="tp3r.5455284157994012186" id="6459492821861873503" nodeInfo="ng">
                            <link role="link" roleId="tp3r.5455284157994012188" targetNodeId="5j4j.7571593955706137672" />
                            <node role="expression" roleId="tp3r.5455284157993911094" type="tp3r.NodeBuilderNode" typeId="tp3r.5455284157993863840" id="6459492821861873504" nodeInfo="nn">
                              <link role="concept" roleId="tp3r.5455284157993910961" targetNodeId="5j4j.7571593955706137573" resolveInfo="ValueHolder" />
                              <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitProperty" typeId="tp3r.5455284157993911077" id="6459492821861873505" nodeInfo="ng">
                                <link role="property" roleId="tp3r.5455284157993911078" targetNodeId="5j4j.7571593955706137638" resolveInfo="value" />
                                <node role="expression" roleId="tp3r.5455284157993911094" type="tp25.EnumMemberValueRefExpression" typeId="tp25.6973815483243445083" id="6459492821861873506" nodeInfo="nn">
                                  <link role="member" roleId="tp25.6973815483243565416" targetNodeId="5j4j.6459492821861618579" />
                                  <link role="enum" roleId="tp25.6973815483243564601" targetNodeId="5j4j.6459492821861618578" resolveInfo="StandardValue" />
                                </node>
                              </node>
                              <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitLink" typeId="tp3r.5455284157994012186" id="6097361656508749061" nodeInfo="ng">
                                <link role="link" roleId="tp3r.5455284157994012188" targetNodeId="5j4j.1503029989483908" />
                                <node role="expression" roleId="tp3r.5455284157993911094" type="tp3r.NodeBuilderNode" typeId="tp3r.5455284157993863840" id="6097361656508750036" nodeInfo="nn">
                                  <link role="concept" roleId="tp3r.5455284157993910961" targetNodeId="5j4j.7571593955706284481" resolveInfo="Symbol" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="nodes" roleId="tp3r.8182547171709738803" type="tp3r.NodeBuilderNode" typeId="tp3r.5455284157993863840" id="3608339284319900045" nodeInfo="nn">
                          <link role="concept" roleId="tp3r.5455284157993910961" targetNodeId="5j4j.7571593955706137472" resolveInfo="ValueRole" />
                          <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitProperty" typeId="tp3r.5455284157993911077" id="3608339284319900474" nodeInfo="ng">
                            <link role="property" roleId="tp3r.5455284157993911078" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                            <node role="expression" roleId="tp3r.5455284157993911094" type="tp25.EnumMemberValueRefExpression" typeId="tp25.6973815483243445083" id="3608339284319900691" nodeInfo="nn">
                              <link role="enum" roleId="tp25.6973815483243564601" targetNodeId="5j4j.7166797808990235508" resolveInfo="StandardRole" />
                              <link role="member" roleId="tp25.6973815483243565416" targetNodeId="5j4j.2411828275883490198" />
                            </node>
                          </node>
                          <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitLink" typeId="tp3r.5455284157994012186" id="3608339284319901350" nodeInfo="ng">
                            <link role="link" roleId="tp3r.5455284157994012188" targetNodeId="5j4j.7571593955706137672" />
                            <node role="expression" roleId="tp3r.5455284157993911094" type="tp3r.NodeBuilderNode" typeId="tp3r.5455284157993863840" id="3608339284319901571" nodeInfo="nn">
                              <link role="concept" roleId="tp3r.5455284157993910961" targetNodeId="5j4j.7571593955706137573" resolveInfo="ValueHolder" />
                              <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitLink" typeId="tp3r.5455284157994012186" id="6097361656508751029" nodeInfo="ng">
                                <link role="link" roleId="tp3r.5455284157994012188" targetNodeId="5j4j.1503029989483908" />
                                <node role="expression" roleId="tp3r.5455284157993911094" type="tp3r.NodeBuilderNode" typeId="tp3r.5455284157993863840" id="6097361656508751246" nodeInfo="nn">
                                  <link role="concept" roleId="tp3r.5455284157993910961" targetNodeId="5j4j.7571593955706284481" resolveInfo="Symbol" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitLink" typeId="tp3r.5455284157994012186" id="6459492821861873496" nodeInfo="ng">
                      <link role="link" roleId="tp3r.5455284157994012188" targetNodeId="5j4j.1503029989483908" />
                      <node role="expression" roleId="tp3r.5455284157993911094" type="tp3r.NodeBuilderNode" typeId="tp3r.5455284157993863840" id="3608339284319968742" nodeInfo="nn">
                        <link role="concept" roleId="tp3r.5455284157993910961" targetNodeId="5j4j.7571593955706284481" resolveInfo="Symbol" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" roleId="tpdg.1177336013307" type="tpdg.QueryFunction_SubstituteString" typeId="tpdg.1177335944525" id="3608339284319895835" nodeInfo="nn">
            <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3608339284319895836" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3608339284319896622" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tp25.EnumMemberValueRefExpression" typeId="tp25.6973815483243445083" id="3608339284319896621" nodeInfo="nn">
                  <link role="enum" roleId="tp25.6973815483243564601" targetNodeId="5j4j.6459492821861618578" resolveInfo="StandardValue" />
                  <link role="member" roleId="tp25.6973815483243565416" targetNodeId="5j4j.6459492821861618579" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="tpdg.SideTransformHintSubstituteActions" typeId="tpdg.1138079416598" id="3936021239967336342" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Node_add_parameter" />
    <node role="actionsBuilder" roleId="tpdg.1138079416599" type="tpdg.SideTransformHintSubstituteActionsBuilder" typeId="tpdg.1138079221458" id="3936021239967336394" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpdg.1138079221462" targetNodeId="5j4j.7571593955706137125" resolveInfo="Node" />
      <node role="precondition" roleId="tpdg.1154622757656" type="tpdg.SideTransformHintSubstitutePreconditionFunction" typeId="tpdg.1154622616118" id="3936021239967336396" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3936021239967336397" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3936021239967338703" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.NotExpression" typeId="tpee.1081516740877" id="3936021239967361593" nodeInfo="nn">
              <node role="expression" roleId="tpee.1081516765348" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3936021239967361594" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3936021239967361595" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpdg.ConceptFunctionParameter_sourceNode" typeId="tpdg.1177497140107" id="3936021239967361596" nodeInfo="nn" />
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="3936021239967361597" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056546658" targetNodeId="5j4j.7571593955706284441" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp2q.AnyOperation" typeId="tp2q.1235566554328" id="3936021239967361598" nodeInfo="nn">
                  <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="3936021239967361599" nodeInfo="nn">
                    <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="3936021239967361600" nodeInfo="sn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3936021239967361601" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3936021239967361602" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tp25.EnumMemberValueRefExpression" typeId="tp25.6973815483243445083" id="3936021239967361603" nodeInfo="nn">
                            <link role="member" roleId="tp25.6973815483243565416" targetNodeId="5j4j.7825160518169634632" />
                            <link role="enum" roleId="tp25.6973815483243564601" targetNodeId="5j4j.7166797808990235508" resolveInfo="StandardRole" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3936021239967361604" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3936021239967361605" nodeInfo="nn">
                              <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="3936021239967361606" nodeInfo="nn">
                                <property name="asCast" nameId="tp25.1238684351431" value="true" />
                                <link role="concept" roleId="tp25.1140138128738" targetNodeId="5j4j.7571593955706137263" resolveInfo="ChildRole" />
                                <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3936021239967361607" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3936021239967361609" resolveInfo="it" />
                                </node>
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="3936021239967361608" nodeInfo="nn">
                                <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="3936021239967361609" nodeInfo="ig">
                      <property name="name" nameId="tpck.1169194664001" value="it" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="3936021239967361610" nodeInfo="in" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="part" roleId="tpdg.1177442283389" type="tpdg.AddMenuPart" typeId="tpdg.1177323996388" id="3936021239967365362" nodeInfo="ng">
        <link role="concept" roleId="tpdg.1177333551023" targetNodeId="5j4j.7571593955706137125" resolveInfo="Node" />
        <node role="part" roleId="tpdg.1177333559040" type="tpdg.SimpleSideTransformMenuPart" typeId="tpdg.1177498013932" id="3936021239967366566" nodeInfo="ng">
          <node role="handler" roleId="tpdg.1177498207384" type="tpdg.QueryFunction_SideTransform_Handler" typeId="tpdg.1177498227294" id="3936021239967366567" nodeInfo="nn">
            <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3936021239967366568" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3936021239967366749" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3936021239967371931" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3936021239967366952" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpdg.ConceptFunctionParameter_sourceNode" typeId="tpdg.1177497140107" id="3936021239967366748" nodeInfo="nn" />
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="3936021239967367974" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056546658" targetNodeId="5j4j.7571593955706284441" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.AddElementOperation" typeId="tp2q.1160612413312" id="3936021239967380049" nodeInfo="nn">
                    <node role="argument" roleId="tp2q.1160612519549" type="tp3r.NodeBuilder" typeId="tp3r.5455284157993863837" id="3936021239967380528" nodeInfo="nn">
                      <node role="quotedNode" roleId="tp3r.5455284157993863838" type="tp3r.NodeBuilderNode" typeId="tp3r.5455284157993863840" id="3936021239967381052" nodeInfo="nn">
                        <link role="concept" roleId="tp3r.5455284157993910961" targetNodeId="5j4j.7571593955706137263" resolveInfo="ChildRole" />
                        <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitProperty" typeId="tp3r.5455284157993911077" id="3936021239967382721" nodeInfo="ng">
                          <link role="property" roleId="tp3r.5455284157993911078" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                          <node role="expression" roleId="tp3r.5455284157993911094" type="tp25.EnumMemberValueRefExpression" typeId="tp25.6973815483243445083" id="3936021239967383642" nodeInfo="nn">
                            <link role="enum" roleId="tp25.6973815483243564601" targetNodeId="5j4j.7166797808990235508" resolveInfo="StandardRole" />
                            <link role="member" roleId="tp25.6973815483243565416" targetNodeId="5j4j.7825160518169634632" />
                          </node>
                        </node>
                        <node role="values" roleId="tp3r.5455284157993911099" type="tp3r.NodeBuilderInitProperty" typeId="tp3r.5455284157993911077" id="3936021239967386338" nodeInfo="ng">
                          <link role="property" roleId="tp3r.5455284157993911078" targetNodeId="5j4j.7571593955706137428" resolveInfo="cardinality" />
                          <node role="expression" roleId="tp3r.5455284157993911094" type="tp25.EnumMemberValueRefExpression" typeId="tp25.6973815483243445083" id="3936021239967387013" nodeInfo="nn">
                            <link role="enum" roleId="tp25.6973815483243564601" targetNodeId="5j4j.7571593955706137344" resolveInfo="Cardinality" />
                            <link role="member" roleId="tp25.6973815483243565416" targetNodeId="5j4j.7571593955706137407" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" roleId="tpdg.1177498166690" type="tpdg.SideTransform_SimpleString" typeId="tpdg.1196433923911" id="3936021239967366652" nodeInfo="nn">
            <property name="text" nameId="tpdg.1196433942569" value="&lt;" />
          </node>
          <node role="descriptionText" roleId="tpdg.1177498182537" type="tpdg.SideTransform_SimpleString" typeId="tpdg.1196433923911" id="3936021239967366710" nodeInfo="nn">
            <property name="text" nameId="tpdg.1196433942569" value="add parameter" />
          </node>
        </node>
      </node>
    </node>
    <node role="actionsBuilder" roleId="tpdg.1138079416599" type="tpdg.SideTransformHintSubstituteActionsBuilder" typeId="tpdg.1138079221458" id="3936021239967436329" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpdg.1138079221462" targetNodeId="5j4j.7571593955706137573" resolveInfo="ValueHolder" />
      <node role="part" roleId="tpdg.1177442283389" type="tpdg.IncludeRightTransformForNodePart" typeId="tpdg.1180111159572" id="3936021239967437018" nodeInfo="ng">
        <node role="nodeBlock" roleId="tpdg.1180111489972" type="tpdg.QueryFunction_SideTransform_NodeQuery" typeId="tpdg.1178537049112" id="3936021239967437019" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3936021239967437020" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3936021239967437103" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3936021239967437256" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpdg.ConceptFunctionParameter_sourceNode" typeId="tpdg.1177497140107" id="3936021239967437102" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetParentOperation" typeId="tp25.1139613262185" id="3936021239967438279" nodeInfo="nn" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="actionsBuilder" roleId="tpdg.1138079416599" type="tpdg.SideTransformHintSubstituteActionsBuilder" typeId="tpdg.1138079221458" id="3936021239967448148" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpdg.1138079221462" targetNodeId="5j4j.7571593955706137472" resolveInfo="ValueRole" />
      <node role="part" roleId="tpdg.1177442283389" type="tpdg.IncludeRightTransformForNodePart" typeId="tpdg.1180111159572" id="3936021239967448834" nodeInfo="ng">
        <node role="nodeBlock" roleId="tpdg.1180111489972" type="tpdg.QueryFunction_SideTransform_NodeQuery" typeId="tpdg.1178537049112" id="3936021239967448835" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3936021239967448836" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3936021239967448919" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3936021239967449162" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpdg.ConceptFunctionParameter_sourceNode" typeId="tpdg.1177497140107" id="3936021239967448918" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetParentOperation" typeId="tp25.1139613262185" id="3936021239967449933" nodeInfo="nn" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
</model>

