<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:2dd5d115-9996-497e-919a-307116853dd6(jetbrains.mps.logic.intentions)">
  <persistence version="8" />
  <language namespace="d7a92d38-f7db-40d0-8431-763b0c3c9f20(jetbrains.mps.lang.intentions)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="5j4j" modelUID="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" version="-1" />
  <import index="t6w" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.lang.smodel.generator.smodelAdapter(MPS.Core/jetbrains.mps.lang.smodel.generator.smodelAdapter@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp3j" modelUID="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" version="8" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <root type="tp3j.ParameterizedIntentionDeclaration" typeId="tp3j.1240395258925" id="6459492821860326367" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="ShowAs" />
    <property name="isAvailableInChildNodes" nameId="tp3j.2522969319638091386" value="true" />
    <link role="forConcept" roleId="tp3j.2522969319638198290" targetNodeId="5j4j.7571593955706137125" resolveInfo="Node" />
    <node role="descriptionFunction" roleId="tp3j.2522969319638093993" type="tp3j.ParameterizedDescriptionBlock" typeId="tp3j.1812109616120608865" id="6459492821860326368" nodeInfo="nn">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="6459492821860326369" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6459492821860866577" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="6459492821860871228" nodeInfo="nn">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6459492821861092832" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t6w.~SEnumOperations%dgetEnumMemberName(org%djetbrains%dmps%dopenapi%dmodel%dSNode)%cjava%dlang%dString" resolveInfo="getEnumMemberName" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="t6w.~SEnumOperations" resolveInfo="SEnumOperations" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tp3j.IntentionParameter" typeId="tp3j.1240322627579" id="6459492821861094012" nodeInfo="nn" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6459492821860866576" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value="Show as " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" roleId="tp3j.2522969319638198291" type="tp3j.ParameterizedExecuteBlock" typeId="tp3j.1812109616120795373" id="6459492821860326370" nodeInfo="nn">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="6459492821860326371" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6459492821860520858" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6459492821861108833" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6459492821860520944" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tp3j.ConceptFunctionParameter_node" typeId="tp3j.1192796902958" id="6459492821860520856" nodeInfo="nn" />
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="6459492821860522026" nodeInfo="nn">
                <link role="property" roleId="tp25.1138056395725" targetNodeId="5j4j.7166797808989209772" resolveInfo="kind" />
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Property_SetOperation" typeId="tp25.1138661924179" id="6459492821861112219" nodeInfo="nn">
              <node role="value" roleId="tp25.1138662048170" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6459492821861127099" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t6w.~SEnumOperations%dgetEnumMemberValue(org%djetbrains%dmps%dopenapi%dmodel%dSNode)%cjava%dlang%dString" resolveInfo="getEnumMemberValue" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="t6w.~SEnumOperations" resolveInfo="SEnumOperations" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tp3j.IntentionParameter" typeId="tp3j.1240322627579" id="6459492821861127100" nodeInfo="nn" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="queryBlock" roleId="tp3j.1240395532443" type="tp3j.QueryBlock" typeId="tp3j.1240316299033" id="6459492821860329302" nodeInfo="nn">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="6459492821860329303" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7166797808990433874" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7166797808990433877" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="members" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="7166797808990433872" nodeInfo="in" />
            <node role="initializer" roleId="tpee.1068431790190" type="tp25.SEnumOperationInvocation" typeId="tp25.1240930118027" id="7166797808990441820" nodeInfo="nn">
              <link role="enumDeclaration" roleId="tp25.1240930118028" targetNodeId="5j4j.7166797808989207678" resolveInfo="NodeKind" />
              <node role="operation" roleId="tp25.1240930317927" type="tp25.SEnum_MembersOperation" typeId="tp25.1240930444980" id="7166797808990441821" nodeInfo="ng" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6459492821860374488" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6459492821860489592" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6459492821860437388" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6459492821860374487" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7166797808990433877" resolveInfo="members" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp2q.WhereOperation" typeId="tp2q.1202120902084" id="6459492821860929892" nodeInfo="nn">
                <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="6459492821860929894" nodeInfo="nn">
                  <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="6459492821860929895" nodeInfo="sn">
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6459492821860929896" nodeInfo="nn">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.NotExpression" typeId="tpee.1081516740877" id="6459492821860968724" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1081516765348" type="tpee.NPEEqualsExpression" typeId="tpee.1225271283259" id="6459492821861030349" nodeInfo="nn">
                          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6459492821861034744" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tp3j.ConceptFunctionParameter_node" typeId="tp3j.1192796902958" id="6459492821861033468" nodeInfo="nn" />
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="6459492821861038276" nodeInfo="nn">
                              <link role="property" roleId="tp25.1138056395725" targetNodeId="5j4j.7166797808989209772" resolveInfo="kind" />
                            </node>
                          </node>
                          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6459492821860968726" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t6w.~SEnumOperations%dgetEnumMemberValue(org%djetbrains%dmps%dopenapi%dmodel%dSNode)%cjava%dlang%dString" resolveInfo="getEnumMemberValue" />
                            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="t6w.~SEnumOperations" resolveInfo="SEnumOperations" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6459492821860968727" nodeInfo="nn">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6459492821860929901" resolveInfo="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="6459492821860929901" nodeInfo="ig">
                    <property name="name" nameId="tpck.1169194664001" value="it" />
                    <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="6459492821860929902" nodeInfo="in" />
                  </node>
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.ToListOperation" typeId="tp2q.1151702311717" id="6459492821860493749" nodeInfo="nn" />
          </node>
        </node>
      </node>
      <node role="paramType" roleId="tp3j.1240393479918" type="tp25.SNodeType" typeId="tp25.1138055754698" id="6459492821861085154" nodeInfo="in" />
    </node>
  </root>
</model>

