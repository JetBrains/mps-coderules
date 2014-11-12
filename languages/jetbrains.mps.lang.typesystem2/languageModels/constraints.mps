<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:81151157-4aa6-41ac-acda-128bb1020041(jetbrains.mps.lang.typesystem2.constraints)">
  <persistence version="8" />
  <language namespace="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)" />
  <language namespace="d4615e3b-d671-4ba9-af01-2b78369b0ba7(jetbrains.mps.lang.pattern)" />
  <language namespace="daafa647-f1f7-4b0b-b096-69cd7c8408c0(jetbrains.mps.baseLanguage.regexp)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="fnmy" modelUID="r:89c0fb70-0977-4113-a076-5906f9d8630f(jetbrains.mps.baseLanguage.scopes)" version="-1" />
  <import index="o8zo" modelUID="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" version="-1" />
  <import index="wq2x" modelUID="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="tp1t" modelUID="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" version="9" implicit="yes" />
  <import index="tpfo" modelUID="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" version="0" implicit="yes" />
  <import index="tpfp" modelUID="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" version="-1" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <root type="tp1t.ConceptConstraints" typeId="tp1t.1213093968558" id="3063948360253474864" nodeInfo="ng">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.variable" />
    <link role="concept" roleId="tp1t.1213093996982" targetNodeId="wq2x.3063948360253431861" resolveInfo="LogicVariableDeclaration" />
    <node role="property" roleId="tp1t.1213098023997" type="tp1t.NodePropertyConstraint" typeId="tp1t.1147467115080" id="3063948360256160984" nodeInfo="ng">
      <link role="applicableProperty" roleId="tp1t.1147467295099" targetNodeId="tpck.1169194664001" resolveInfo="name" />
      <node role="propertyValidator" roleId="tp1t.1212097481299" type="tp1t.ConstraintFunction_PropertyValidator" typeId="tp1t.1212096972063" id="3063948360256161094" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3063948360256161095" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3063948360256162069" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpfo.MatchRegexpExpression" typeId="tpfo.1179357154354" id="3063948360256165799" nodeInfo="nn">
              <node role="regexp" roleId="tpfo.1174653387388" type="tpfo.InlineRegexpExpression" typeId="tpfo.1174510540317" id="3063948360256165801" nodeInfo="nn">
                <node role="regexp" roleId="tpfo.1174510571016" type="tpfo.SeqRegexp" typeId="tpfo.1174484562151" id="3063948360256168986" nodeInfo="ng">
                  <node role="left" roleId="tpfo.1174485176897" type="tpfo.PredefinedSymbolClassRegexp" typeId="tpfo.1174555732504" id="3063948360256168241" nodeInfo="ng">
                    <link role="symbolClass" roleId="tpfo.1174555843709" targetNodeId="tpfp.1174554811966" resolveInfo="\p{Alpha}" />
                  </node>
                  <node role="right" roleId="tpfo.1174485181039" type="tpfo.StarRegexp" typeId="tpfo.1174482808826" id="3063948360256170632" nodeInfo="ng">
                    <node role="regexp" roleId="tpfo.1174485243418" type="tpfo.PositiveSymbolClassRegexp" typeId="tpfo.1174554211468" id="3063948360256168985" nodeInfo="ng">
                      <node role="part" roleId="tpfo.1174557628217" type="tpfo.PredefinedSymbolClassSymbolClassPart" typeId="tpfo.1174558792178" id="3063948360256169841" nodeInfo="ng">
                        <link role="declaration" roleId="tpfo.1174558819022" targetNodeId="tpfp.1174554852234" resolveInfo="\p{Alnum}" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="inputExpression" roleId="tpfo.1179357286898" type="tp1t.ConstraintsFunctionParameter_propertyValue" typeId="tp1t.1153138554286" id="3063948360256162068" nodeInfo="nn" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="property" roleId="tp1t.1213098023997" type="tp1t.NodePropertyConstraint" typeId="tp1t.1147467115080" id="3063948360256279134" nodeInfo="ng">
      <link role="applicableProperty" roleId="tp1t.1147467295099" targetNodeId="wq2x.3063948360256276491" resolveInfo="isMulti" />
      <node role="propertyGetter" roleId="tp1t.1147468630220" type="tp1t.ConstraintFunction_PropertyGetter" typeId="tp1t.1147467790433" id="3063948360256279310" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3063948360256279311" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3063948360256280015" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3063948360256282724" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3063948360256280308" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tp1t.ConstraintsFunctionParameter_node" typeId="tp1t.1147468365020" id="3063948360256280014" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="3063948360256281278" nodeInfo="nn">
                  <link role="link" roleId="tp25.1138056516764" targetNodeId="wq2x.3063948360256267563" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsNotNullOperation" typeId="tp25.1172008320231" id="3063948360256283683" nodeInfo="nn" />
            </node>
          </node>
        </node>
      </node>
      <node role="propertySetter" roleId="tp1t.1152963095733" type="tp1t.ConstraintFunction_PropertySetter" typeId="tp1t.1152959968041" id="3063948360256284552" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3063948360256284553" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ThrowStatement" typeId="tpee.1164991038168" id="3063948360256287067" nodeInfo="nn">
            <node role="throwable" roleId="tpee.1164991057263" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="3063948360256287085" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="3063948360256287741" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~UnsupportedOperationException%d&lt;init&gt;()" resolveInfo="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="tp1t.ConceptConstraints" typeId="tp1t.1213093968558" id="7840802663737115571" nodeInfo="ng">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.expression" />
    <link role="concept" roleId="tp1t.1213093996982" targetNodeId="wq2x.7840802663736276860" resolveInfo="LogicVariableReference" />
    <node role="referent" roleId="tp1t.1213100494875" type="tp1t.NodeReferentConstraint" typeId="tp1t.1148687176410" id="7840802663737115626" nodeInfo="ng">
      <link role="applicableLink" roleId="tp1t.1148687202698" targetNodeId="wq2x.3063948360253976409" />
      <node role="searchScopeFactory" roleId="tp1t.1148687345559" type="tp1t.ConstraintFunction_ReferentSearchScope_Scope" typeId="tp1t.5676632058862809931" id="7840802663737115792" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737115794" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7840802663737116612" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7840802663737116613" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7840802663737116614" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="parentScope" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="7840802663737116615" nodeInfo="in">
                <node role="parameterType" roleId="tp2c.1199542501692" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7840802663737116616" nodeInfo="in" />
                <node role="resultType" roleId="tp2c.1199542457201" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7840802663737116617" nodeInfo="in">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="o8zo.3734116213129862372" resolveInfo="Scope" />
                </node>
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7840802663737116618" nodeInfo="nn" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116619" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7840802663737116620" nodeInfo="nn">
              <node role="rValue" roleId="tpee.1068498886297" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116621" nodeInfo="nn">
                <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7840802663737116622" nodeInfo="ir">
                  <property name="name" nameId="tpck.1169194664001" value="container" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7840802663737116623" nodeInfo="in" />
                </node>
                <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116624" nodeInfo="sn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7840802663737116625" nodeInfo="nn">
                    <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116626" nodeInfo="sn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7840802663737116627" nodeInfo="nn" />
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7840802663737116628" nodeInfo="nn">
                        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7840802663737116629" nodeInfo="nr">
                          <property name="name" nameId="tpck.1169194664001" value="childrenScope" />
                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7840802663737116630" nodeInfo="in">
                            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="o8zo.5455284157994035575" resolveInfo="ListScope" />
                          </node>
                          <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7840802663737116631" nodeInfo="nn">
                            <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="7840802663737116632" nodeInfo="nn">
                              <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="7840802663737116633" nodeInfo="ig">
                                <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                                <link role="classifier" roleId="tpee.1170346070688" targetNodeId="o8zo.5455284157994035575" resolveInfo="ListScope" />
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.5455284157994035577" resolveInfo="ListScope" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116634" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116635" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116636" nodeInfo="nn">
                                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116637" nodeInfo="nn">
                                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116622" resolveInfo="container" />
                                      </node>
                                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7840802663737116638" nodeInfo="nn" />
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.WhereOperation" typeId="tp2q.1202120902084" id="7840802663737116639" nodeInfo="nn">
                                      <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116640" nodeInfo="nn">
                                        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116641" nodeInfo="sn">
                                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116642" nodeInfo="nn">
                                            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116643" nodeInfo="nn">
                                              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116644" nodeInfo="nn">
                                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116647" resolveInfo="stm" />
                                              </node>
                                              <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="7840802663737116645" nodeInfo="nn">
                                                <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7840802663737116646" nodeInfo="nn">
                                                  <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="wq2x.3063948360254828460" resolveInfo="LogicVariableDeclarationStatement" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116647" nodeInfo="ig">
                                          <property name="name" nameId="tpck.1169194664001" value="stm" />
                                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116648" nodeInfo="in" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.TranslateOperation" typeId="tp2q.1201792049884" id="7840802663737116649" nodeInfo="nn">
                                    <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116650" nodeInfo="nn">
                                      <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116651" nodeInfo="sn">
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116652" nodeInfo="nn">
                                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116653" nodeInfo="nn">
                                            <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="7840802663737116654" nodeInfo="nn">
                                              <link role="concept" roleId="tp25.1140138128738" targetNodeId="wq2x.3063948360254828460" resolveInfo="LogicVariableDeclarationStatement" />
                                              <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116655" nodeInfo="nn">
                                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116657" resolveInfo="vds" />
                                              </node>
                                            </node>
                                            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7840802663737116656" nodeInfo="nn">
                                              <link role="link" roleId="tp25.1138056546658" targetNodeId="wq2x.3063948360254832884" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116657" nodeInfo="ig">
                                        <property name="name" nameId="tpck.1169194664001" value="vds" />
                                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116658" nodeInfo="in" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7840802663737116659" nodeInfo="nn" />
                                <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7840802663737116660" nodeInfo="igu">
                                  <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                                  <property name="name" nameId="tpck.1169194664001" value="getName" />
                                  <node role="returnType" roleId="tpee.1068580123133" type="tpee.StringType" typeId="tpee.1225271177708" id="7840802663737116661" nodeInfo="in" />
                                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7840802663737116662" nodeInfo="nn" />
                                  <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7840802663737116663" nodeInfo="ir">
                                    <property name="name" nameId="tpck.1169194664001" value="child" />
                                    <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7840802663737116664" nodeInfo="in" />
                                  </node>
                                  <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116665" nodeInfo="sn">
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116666" nodeInfo="nn">
                                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116667" nodeInfo="nn">
                                        <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="7840802663737116668" nodeInfo="nn">
                                          <property name="asCast" nameId="tp25.1238684351431" value="true" />
                                          <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
                                          <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116669" nodeInfo="nn">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116663" resolveInfo="child" />
                                          </node>
                                        </node>
                                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="7840802663737116670" nodeInfo="nn">
                                          <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
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
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7840802663737116671" nodeInfo="nn">
                        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7840802663737116672" nodeInfo="nr">
                          <property name="name" nameId="tpck.1169194664001" value="parentContainer" />
                          <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7840802663737116673" nodeInfo="in">
                            <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
                          </node>
                          <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116674" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116675" nodeInfo="nn">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116622" resolveInfo="container" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetAncestorOperation" typeId="tp25.1171407110247" id="7840802663737116676" nodeInfo="nn">
                              <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_ConceptList" typeId="tp25.1154546920561" id="7840802663737116677" nodeInfo="ng">
                                <node role="concept" roleId="tp25.1154546920563" type="tp25.ConceptReference" typeId="tp25.1154546950173" id="7840802663737116678" nodeInfo="ng">
                                  <link role="concept" roleId="tp25.1154546997487" targetNodeId="tpee.1068580123136" resolveInfo="StatementList" />
                                </node>
                                <node role="concept" roleId="tp25.1154546920563" type="tp25.ConceptReference" typeId="tp25.1154546950173" id="7840802663737116679" nodeInfo="ng">
                                  <link role="concept" roleId="tp25.1154546997487" targetNodeId="wq2x.7368070394766963523" resolveInfo="RulePart" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7840802663737116680" nodeInfo="nn" />
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7840802663737116681" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068581517676" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7840802663737116682" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fnmy.4143990013475407974" resolveInfo="defaultWithNameHiding" />
                          <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="fnmy.4143990013474875883" resolveInfo="Scopes" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7840802663737116683" nodeInfo="nn">
                            <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="wq2x.3063948360253431861" resolveInfo="LogicVariableDeclaration" />
                          </node>
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116684" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116629" resolveInfo="childrenScope" />
                          </node>
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tp2c.CompactInvokeFunctionExpression" typeId="tp2c.1235746970280" id="7840802663737116685" nodeInfo="nn">
                            <node role="function" roleId="tp2c.1235746996653" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116686" nodeInfo="nn">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116614" resolveInfo="parentScope" />
                            </node>
                            <node role="parameter" roleId="tp2c.1235747002942" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116687" nodeInfo="nn">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116672" resolveInfo="parentContainer" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7840802663737116688" nodeInfo="nn" />
                    </node>
                    <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116689" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116690" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116622" resolveInfo="container" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="7840802663737116691" nodeInfo="nn">
                        <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7840802663737116692" nodeInfo="nn">
                          <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1068580123136" resolveInfo="StatementList" />
                        </node>
                      </node>
                    </node>
                    <node role="elsifClauses" roleId="tpee.1206060520071" type="tpee.ElsifClause" typeId="tpee.1206060495898" id="7840802663737116693" nodeInfo="ng">
                      <node role="statementList" roleId="tpee.1206060644605" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116694" nodeInfo="sn">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7840802663737116695" nodeInfo="nn" />
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116696" nodeInfo="nn">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116697" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116698" nodeInfo="nn">
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116699" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116700" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116701" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116702" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116622" resolveInfo="container" />
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetParentOperation" typeId="tp25.1139613262185" id="7840802663737116703" nodeInfo="nn" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7840802663737116704" nodeInfo="nn" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tp2q.WhereOperation" typeId="tp2q.1202120902084" id="7840802663737116705" nodeInfo="nn">
                                  <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116706" nodeInfo="nn">
                                    <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116707" nodeInfo="sn">
                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116708" nodeInfo="nn">
                                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116709" nodeInfo="nn">
                                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116710" nodeInfo="nn">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116713" resolveInfo="rp" />
                                          </node>
                                          <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="7840802663737116711" nodeInfo="nn">
                                            <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7840802663737116712" nodeInfo="nn">
                                              <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="wq2x.7368070394766963750" resolveInfo="Head" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116713" nodeInfo="ig">
                                      <property name="name" nameId="tpck.1169194664001" value="rp" />
                                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116714" nodeInfo="in" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="tp2q.SelectOperation" typeId="tp2q.1202128969694" id="7840802663737116715" nodeInfo="nn">
                                <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116716" nodeInfo="nn">
                                  <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116717" nodeInfo="sn">
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116718" nodeInfo="nn">
                                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116719" nodeInfo="nn">
                                        <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="7840802663737116720" nodeInfo="nn">
                                          <link role="concept" roleId="tp25.1140138128738" targetNodeId="wq2x.7368070394766963750" resolveInfo="Head" />
                                          <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116721" nodeInfo="nn">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116723" resolveInfo="h" />
                                          </node>
                                        </node>
                                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7840802663737116722" nodeInfo="nn">
                                          <link role="link" roleId="tp25.1138056516764" targetNodeId="wq2x.7368070394766972297" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116723" nodeInfo="ig">
                                    <property name="name" nameId="tpck.1169194664001" value="h" />
                                    <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116724" nodeInfo="in" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp2q.TranslateOperation" typeId="tp2q.1201792049884" id="7840802663737116725" nodeInfo="nn">
                              <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116726" nodeInfo="nn">
                                <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116727" nodeInfo="sn">
                                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116728" nodeInfo="nn">
                                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116729" nodeInfo="nn">
                                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116730" nodeInfo="nn">
                                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116731" nodeInfo="nn">
                                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116732" nodeInfo="nn">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116754" resolveInfo="c" />
                                          </node>
                                          <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7840802663737116733" nodeInfo="nn" />
                                        </node>
                                        <node role="operation" roleId="tpee.1197027833540" type="tp2q.WhereOperation" typeId="tp2q.1202120902084" id="7840802663737116734" nodeInfo="nn">
                                          <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116735" nodeInfo="nn">
                                            <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116736" nodeInfo="sn">
                                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116737" nodeInfo="nn">
                                                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116738" nodeInfo="nn">
                                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116739" nodeInfo="nn">
                                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116742" resolveInfo="stm" />
                                                  </node>
                                                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="7840802663737116740" nodeInfo="nn">
                                                    <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7840802663737116741" nodeInfo="nn">
                                                      <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="wq2x.3063948360254047686" resolveInfo="ParameterDeclarationStatement" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116742" nodeInfo="ig">
                                              <property name="name" nameId="tpck.1169194664001" value="stm" />
                                              <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116743" nodeInfo="in" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="operation" roleId="tpee.1197027833540" type="tp2q.TranslateOperation" typeId="tp2q.1201792049884" id="7840802663737116744" nodeInfo="nn">
                                        <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116745" nodeInfo="nn">
                                          <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116746" nodeInfo="sn">
                                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116747" nodeInfo="nn">
                                              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116748" nodeInfo="nn">
                                                <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="7840802663737116749" nodeInfo="nn">
                                                  <link role="concept" roleId="tp25.1140138128738" targetNodeId="wq2x.3063948360254047686" resolveInfo="ParameterDeclarationStatement" />
                                                  <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116750" nodeInfo="nn">
                                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116752" resolveInfo="pds" />
                                                  </node>
                                                </node>
                                                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7840802663737116751" nodeInfo="nn">
                                                  <link role="link" roleId="tp25.1138056546658" targetNodeId="wq2x.3063948360254832884" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116752" nodeInfo="ig">
                                            <property name="name" nameId="tpck.1169194664001" value="pds" />
                                            <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116753" nodeInfo="in" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116754" nodeInfo="ig">
                                  <property name="name" nameId="tpck.1169194664001" value="c" />
                                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116755" nodeInfo="in" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7840802663737116756" nodeInfo="nn" />
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7840802663737116757" nodeInfo="nn">
                          <node role="expression" roleId="tpee.1068581517676" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7840802663737116758" nodeInfo="nn">
                            <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="7840802663737116759" nodeInfo="nn">
                              <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="7840802663737116760" nodeInfo="ig">
                                <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.5455284157994035577" resolveInfo="ListScope" />
                                <link role="classifier" roleId="tpee.1170346070688" targetNodeId="o8zo.5455284157994035575" resolveInfo="ListScope" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116761" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116762" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116763" nodeInfo="nn">
                                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116764" nodeInfo="nn">
                                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116765" nodeInfo="nn">
                                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116766" nodeInfo="nn">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116622" resolveInfo="container" />
                                          </node>
                                          <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetParentOperation" typeId="tp25.1139613262185" id="7840802663737116767" nodeInfo="nn" />
                                        </node>
                                        <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7840802663737116768" nodeInfo="nn" />
                                      </node>
                                      <node role="operation" roleId="tpee.1197027833540" type="tp2q.WhereOperation" typeId="tp2q.1202120902084" id="7840802663737116769" nodeInfo="nn">
                                        <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116770" nodeInfo="nn">
                                          <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116771" nodeInfo="sn">
                                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116772" nodeInfo="nn">
                                              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116773" nodeInfo="nn">
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116774" nodeInfo="nn">
                                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116777" resolveInfo="rp" />
                                                </node>
                                                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="7840802663737116775" nodeInfo="nn">
                                                  <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7840802663737116776" nodeInfo="nn">
                                                    <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="wq2x.7368070394766963750" resolveInfo="Head" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116777" nodeInfo="ig">
                                            <property name="name" nameId="tpck.1169194664001" value="rp" />
                                            <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116778" nodeInfo="in" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.SelectOperation" typeId="tp2q.1202128969694" id="7840802663737116779" nodeInfo="nn">
                                      <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116780" nodeInfo="nn">
                                        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116781" nodeInfo="sn">
                                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116782" nodeInfo="nn">
                                            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116783" nodeInfo="nn">
                                              <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="7840802663737116784" nodeInfo="nn">
                                                <link role="concept" roleId="tp25.1140138128738" targetNodeId="wq2x.7368070394766963750" resolveInfo="Head" />
                                                <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116785" nodeInfo="nn">
                                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116787" resolveInfo="h" />
                                                </node>
                                              </node>
                                              <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7840802663737116786" nodeInfo="nn">
                                                <link role="link" roleId="tp25.1138056516764" targetNodeId="wq2x.7368070394766972297" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116787" nodeInfo="ig">
                                          <property name="name" nameId="tpck.1169194664001" value="h" />
                                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116788" nodeInfo="in" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.TranslateOperation" typeId="tp2q.1201792049884" id="7840802663737116789" nodeInfo="nn">
                                    <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116790" nodeInfo="nn">
                                      <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116791" nodeInfo="sn">
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116792" nodeInfo="nn">
                                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116793" nodeInfo="nn">
                                            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116794" nodeInfo="nn">
                                              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116795" nodeInfo="nn">
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116796" nodeInfo="nn">
                                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116818" resolveInfo="c" />
                                                </node>
                                                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7840802663737116797" nodeInfo="nn" />
                                              </node>
                                              <node role="operation" roleId="tpee.1197027833540" type="tp2q.WhereOperation" typeId="tp2q.1202120902084" id="7840802663737116798" nodeInfo="nn">
                                                <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116799" nodeInfo="nn">
                                                  <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116800" nodeInfo="sn">
                                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116801" nodeInfo="nn">
                                                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116802" nodeInfo="nn">
                                                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116803" nodeInfo="nn">
                                                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116806" resolveInfo="stm" />
                                                        </node>
                                                        <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="7840802663737116804" nodeInfo="nn">
                                                          <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7840802663737116805" nodeInfo="nn">
                                                            <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="wq2x.3063948360254047686" resolveInfo="ParameterDeclarationStatement" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116806" nodeInfo="ig">
                                                    <property name="name" nameId="tpck.1169194664001" value="stm" />
                                                    <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116807" nodeInfo="in" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node role="operation" roleId="tpee.1197027833540" type="tp2q.TranslateOperation" typeId="tp2q.1201792049884" id="7840802663737116808" nodeInfo="nn">
                                              <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7840802663737116809" nodeInfo="nn">
                                                <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116810" nodeInfo="sn">
                                                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116811" nodeInfo="nn">
                                                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116812" nodeInfo="nn">
                                                      <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="7840802663737116813" nodeInfo="nn">
                                                        <link role="concept" roleId="tp25.1140138128738" targetNodeId="wq2x.3063948360254047686" resolveInfo="ParameterDeclarationStatement" />
                                                        <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116814" nodeInfo="nn">
                                                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116816" resolveInfo="pds" />
                                                        </node>
                                                      </node>
                                                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7840802663737116815" nodeInfo="nn">
                                                        <link role="link" roleId="tp25.1138056546658" targetNodeId="wq2x.3063948360254832884" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116816" nodeInfo="ig">
                                                  <property name="name" nameId="tpck.1169194664001" value="pds" />
                                                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116817" nodeInfo="in" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="7840802663737116818" nodeInfo="ig">
                                        <property name="name" nameId="tpck.1169194664001" value="c" />
                                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="7840802663737116819" nodeInfo="in" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7840802663737116820" nodeInfo="nn" />
                                <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7840802663737116821" nodeInfo="igu">
                                  <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                                  <property name="name" nameId="tpck.1169194664001" value="getName" />
                                  <node role="returnType" roleId="tpee.1068580123133" type="tpee.StringType" typeId="tpee.1225271177708" id="7840802663737116822" nodeInfo="in" />
                                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7840802663737116823" nodeInfo="nn" />
                                  <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7840802663737116824" nodeInfo="ir">
                                    <property name="name" nameId="tpck.1169194664001" value="child" />
                                    <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7840802663737116825" nodeInfo="in" />
                                  </node>
                                  <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7840802663737116826" nodeInfo="sn">
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116827" nodeInfo="nn">
                                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116828" nodeInfo="nn">
                                        <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="7840802663737116829" nodeInfo="nn">
                                          <property name="asCast" nameId="tp25.1238684351431" value="true" />
                                          <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
                                          <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116830" nodeInfo="nn">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116824" resolveInfo="child" />
                                          </node>
                                        </node>
                                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="7840802663737116831" nodeInfo="nn">
                                          <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
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
                      <node role="condition" roleId="tpee.1206060619838" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116832" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116833" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116622" resolveInfo="container" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="7840802663737116834" nodeInfo="nn">
                          <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7840802663737116835" nodeInfo="nn">
                            <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="wq2x.7368070394766963523" resolveInfo="RulePart" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7840802663737116836" nodeInfo="nn" />
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116837" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7840802663737116838" nodeInfo="nn" />
                  </node>
                </node>
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116839" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116614" resolveInfo="parentScope" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7840802663737116840" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7840802663737116841" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tp2c.CompactInvokeFunctionExpression" typeId="tp2c.1235746970280" id="7840802663737116842" nodeInfo="nn">
              <node role="function" roleId="tp2c.1235746996653" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7840802663737116843" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7840802663737116614" resolveInfo="parentScope" />
              </node>
              <node role="parameter" roleId="tp2c.1235747002942" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7840802663737116844" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tp1t.ConstraintFunctionParameter_contextNode" typeId="tp1t.8966504967485224688" id="7840802663737116845" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetAncestorOperation" typeId="tp25.1171407110247" id="7840802663737116846" nodeInfo="nn">
                  <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Concept" typeId="tp25.1144101972840" id="7840802663737116847" nodeInfo="ng">
                    <node role="conceptArgument" roleId="tp25.1207343664468" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7840802663737116848" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1068580123136" resolveInfo="StatementList" />
                    </node>
                  </node>
                  <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Inclusion" typeId="tp25.1144100932627" id="7840802663737116849" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
</model>

