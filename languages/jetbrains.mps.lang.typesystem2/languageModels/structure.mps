<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="wq2x" modelUID="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" version="-1" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8335224865066015764" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Handler" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="handler" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394767441299" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rule" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="8335224865066016388" resolveInfo="Rule" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7368070394767073421" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8335224865066016385" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="NewTypeConstraint" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.typespecific" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="new type" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394767031462" resolveInfo="Constraint" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394768578348" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="typeVar" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768130469" resolveInfo="LogicVariable" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7840802663735270381" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="typeConcept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768985089" resolveInfo="LogicValue" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394768653124" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="anchor" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768985089" resolveInfo="LogicValue" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394768755905" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="argument" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768128923" resolveInfo="LogicExpression" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8335224865066016388" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Rule" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8335224865066016395" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="applicableConcept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489090640" resolveInfo="ConceptDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394769105389" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="parameter" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394769089081" resolveInfo="RuleParameterDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394767442414" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="head" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394766963750" resolveInfo="Head" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394767442687" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="guard" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394766966158" resolveInfo="Guard" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394767442907" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="body" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394766966388" resolveInfo="Body" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7368070394767623653" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394766949563" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TypeDeclaration" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.typespecific" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394767031462" resolveInfo="Constraint" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394766963523" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="RulePart" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule.part" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394766972297" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="code" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068580123136" resolveInfo="StatementList" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394766963750" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Head" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule.part" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394766963523" resolveInfo="RulePart" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7368070394767443940" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="keep" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394766966158" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Guard" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule.part" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394766963523" resolveInfo="RulePart" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394766966388" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Body" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule.part" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394766963523" resolveInfo="RulePart" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394766978092" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="EmitConstraintStatement" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394767031348" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="constraint" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394767031462" resolveInfo="Constraint" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394767031462" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Constraint" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394767045637" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint" />
    <property name="name" nameId="tpck.1169194664001" value="UserConstraint" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394767031462" resolveInfo="Constraint" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394767091750" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="template" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394767067636" resolveInfo="ConstraintTemplate" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394768117915" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="argument" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768128923" resolveInfo="LogicExpression" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394767046089" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint" />
    <property name="name" nameId="tpck.1169194664001" value="BuiltinConstraint" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394767065799" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.template" />
    <property name="name" nameId="tpck.1169194664001" value="Solver" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="solver" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394767068701" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="template" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394767067636" resolveInfo="ConstraintTemplate" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7368070394767073552" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394767067636" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.template" />
    <property name="name" nameId="tpck.1169194664001" value="ConstraintTemplate" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7368070394767096851" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="arity" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7368070394767091348" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394768128923" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="LogicExpression" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.expression" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394768130469" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="LogicVariable" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.expression" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394768128923" resolveInfo="LogicExpression" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3063948360255362119" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1196978630214" resolveInfo="IResolveInfo" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394770417637" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="index" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768985089" resolveInfo="LogicValue" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394768985089" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="LogicValue" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.expression" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394768128923" resolveInfo="LogicExpression" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394768985507" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="code" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394769089081" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule.parameter" />
    <property name="name" nameId="tpck.1169194664001" value="RuleParameterDeclaration" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7368070394769155181" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.5432666129547687712" resolveInfo="IVariableDeclaration" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7368070394769090774" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1212170275853" resolveInfo="IValidIdentifier" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7368070394769091737" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1196978630214" resolveInfo="IResolveInfo" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394769139970" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rule.parameter" />
    <property name="name" nameId="tpck.1169194664001" value="RuleParameterReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394769213644" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="declaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394769089081" resolveInfo="RuleParameterDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394770780974" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.typespecific" />
    <property name="name" nameId="tpck.1169194664001" value="AssignConstraint" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394767031462" resolveInfo="Constraint" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394770793388" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="assignee" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768128923" resolveInfo="LogicExpression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394770793930" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="value" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768128923" resolveInfo="LogicExpression" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7368070394771082804" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="LogicExpressionWrapper" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7368070394771104782" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="expression" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768128923" resolveInfo="LogicExpression" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3063948360252660075" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.typespecific" />
    <property name="name" nameId="tpck.1169194664001" value="TypeofConstraint" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="typeof" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394767031462" resolveInfo="Constraint" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3063948360252666228" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="anchor" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768985089" resolveInfo="LogicValue" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3063948360252667312" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="assignedType" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768128923" resolveInfo="LogicExpression" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3063948360253431861" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.variable" />
    <property name="name" nameId="tpck.1169194664001" value="LogicVariableDeclaration" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3063948360256276491" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="isMulti" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3063948360256267563" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="cardinality" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7368070394768985089" resolveInfo="LogicValue" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3063948360253432457" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3063948360254047686" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.variable" />
    <property name="name" nameId="tpck.1169194664001" value="ParameterDeclarationStatement" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="parameter" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="3063948360254828460" resolveInfo="LogicVariableDeclarationStatement" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3063948360254202562" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.variable" />
    <property name="name" nameId="tpck.1169194664001" value="LocalDeclarationStatement" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="local" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="3063948360254828460" resolveInfo="LogicVariableDeclarationStatement" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3063948360254828460" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.variable" />
    <property name="name" nameId="tpck.1169194664001" value="LogicVariableDeclarationStatement" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3063948360254832884" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="declaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3063948360253431861" resolveInfo="LogicVariableDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7840802663736166753" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="LogicVariableType" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="logic" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790189" resolveInfo="Type" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7840802663736276860" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.expression" />
    <property name="name" nameId="tpck.1169194664001" value="LogicVariableReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394768130469" resolveInfo="LogicVariable" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3063948360253976409" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="declaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3063948360253431861" resolveInfo="LogicVariableDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7840802663736478789" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="constraint.expression" />
    <property name="name" nameId="tpck.1169194664001" value="ExpressionLogicVariable" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7368070394768130469" resolveInfo="LogicVariable" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7840802663736485378" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="expression" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
</model>

