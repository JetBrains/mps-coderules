<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:6a6b9246-6407-4ef2-8408-df149f70bcd9(jetbrains.mps.lang.typesystem2.typesystem)">
  <persistence version="8" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="nc4n" modelUID="r:2a1eb048-898c-47a3-863b-36b04c4b9f7c(jetbrains.mps.lang.typesystem2.runtime.rule)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpd4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="7" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="wq2x" modelUID="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" version="-1" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <import index="tp3t" modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" implicit="yes" />
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="7368070394769248962" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_RuleParameterDeclaration" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule.parameter" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="7368070394769249314" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="7368070394769249967" nodeInfo="nn">
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="7368070394769249970" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="7368070394769249650" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="7368070394769249743" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="7368070394769249316" resolveInfo="rpd" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="7368070394769268791" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="7368070394769268787" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7368070394769269202" nodeInfo="in">
              <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
              <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.ReferenceAntiquotation" typeId="tp3r.1196350785117" id="7368070394769277732" nodeInfo="ng">
                <property name="linkRole" nameId="tpck.1757699476691236116" value="concept" />
                <node role="expression" roleId="tp3r.1196350785111" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7368070394769278148" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="7368070394769278149" nodeInfo="nn">
                    <property name="asCast" nameId="tp25.1238684351431" value="true" />
                    <link role="concept" roleId="tp25.1140138128738" targetNodeId="wq2x.8335224865066016388" resolveInfo="Rule" />
                    <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7368070394769278150" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="7368070394769278151" nodeInfo="nn">
                        <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="7368070394769249316" resolveInfo="rpd" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetParentOperation" typeId="tp25.1139613262185" id="7368070394769278152" nodeInfo="nn" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7368070394769278153" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="wq2x.8335224865066016395" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="7368070394769249316" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="rpd" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="wq2x.7368070394769089081" resolveInfo="RuleParameterDeclaration" />
    </node>
  </root>
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="7368070394769280220" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_RuleParameterReference" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule.parameter" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="7368070394769280221" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="7368070394769280799" nodeInfo="nn">
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="7368070394769280876" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="7368070394769280872" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7368070394769281101" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="7368070394769280959" nodeInfo="nn">
                <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="7368070394769280223" resolveInfo="rpr" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7368070394769281770" nodeInfo="nn">
                <link role="link" roleId="tp25.1138056516764" targetNodeId="wq2x.7368070394769213644" />
              </node>
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="7368070394769280802" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="7368070394769280560" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="7368070394769280653" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="7368070394769280223" resolveInfo="rpr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="7368070394769280223" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="rpr" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="wq2x.7368070394769139970" resolveInfo="RuleParameterReference" />
    </node>
  </root>
  <root type="tpd4.SubtypingRule" typeId="tpd4.1175147670730" id="7340198212831312992" nodeInfo="ng">
    <property name="isWeak" nameId="tpd4.1175607673137" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="supertypesOf_LogicVariableType" />
    <node role="body" roleId="tpd4.1175147624276" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212831312993" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212831314189" nodeInfo="nn">
        <node role="expression" roleId="tpee.1068580123156" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="7340198212831314187" nodeInfo="nn">
          <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7340198212831349601" nodeInfo="in">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="nc4n.6135434422633921345" resolveInfo="LogicVariable" />
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="7340198212831312995" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="lvt" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="wq2x.7840802663736166753" resolveInfo="LogicVariableType" />
    </node>
  </root>
  <root type="tpd4.InequationReplacementRule" typeId="tpd4.1201607707634" id="7340198212831397996" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="LogicVariableType_supertypeOf_classifier_LogicVariable" />
    <node role="body" roleId="tpd4.1175147624276" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212831397998" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7340198212831400806" nodeInfo="nn">
        <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7340198212831400808" nodeInfo="nn">
          <property name="text" nameId="tpee.6329021646629104958" value="'nuff said" />
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.PatternCondition" typeId="tpd4.1174642900584" id="7340198212831443615" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="lv" />
      <node role="pattern" roleId="tpd4.1174642936809" type="tp3t.PatternExpression" typeId="tp3t.1136720037777" id="7340198212831443617" nodeInfo="in">
        <node role="patternNode" roleId="tp3t.1136720037778" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7340198212831443749" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="nc4n.6135434422633921345" resolveInfo="LogicVariable" />
        </node>
      </node>
    </node>
    <node role="supertypeNode" roleId="tpd4.1201607798918" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="7340198212831444106" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="lvt" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="wq2x.7840802663736166753" resolveInfo="LogicVariableType" />
    </node>
  </root>
</model>

