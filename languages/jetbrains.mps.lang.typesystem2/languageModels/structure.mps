<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
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
  <node concept="1TIwiD" id="7eGEHDlgPKk">
    <property role="TrG5h" value="Handler" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="rule" />
    <property role="34LRSv" value="handler" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6p0DfM0bRQj" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7eGEHDlgPU4" resolve="Rule" />
    </node>
    <node concept="PrWs8" id="6p0DfM0au2d" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7eGEHDlgPU1">
    <property role="TrG5h" value="NewTypeConstraint" />
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="34LRSv" value="new type" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="6p0DfM0gdsG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="typeVar" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0ew6_" resolve="LogicVariable" />
    </node>
    <node concept="1TJgyj" id="6Ng87FPS9JH" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="typeConcept" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0hKK1" resolve="LogicValue" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0gvH4" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="anchor" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="6p0DfM0hKK1" resolve="LogicValue" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0gSN1" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6p0DfM0evIr" resolve="LogicExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="7eGEHDlgPU4">
    <property role="TrG5h" value="Rule" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="rule" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="12yN8DyzPVU" role="1TKVEl">
      <property role="TrG5h" value="exactMatch" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="7eGEHDlgPUb" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="applicableConcept" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0ie7H" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="input" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0ia8T" resolve="RuleInputDeclaration" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0bS7I" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="head" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="6p0DfM0a3gA" resolve="Head" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0bSbZ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="guard" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6p0DfM0a3Qe" resolve="Guard" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0bSfr" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="6p0DfM0a3TO" resolve="Body" />
    </node>
    <node concept="1TJgyj" id="4laj_h9OavG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="applyCondition" />
      <ref role="20lvS9" node="4laj_h9P4cy" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="5MHpiylGjt8" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameterBlock" />
      <ref role="20lvS9" node="5MHpiylG7gA" resolve="RuleParameterBlock" />
    </node>
    <node concept="PrWs8" id="6p0DfM0c$n_" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0a3d3">
    <property role="TrG5h" value="RulePart" />
    <property role="3GE5qa" value="rule.part" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6p0DfM0a5m9" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0a3gA">
    <property role="TrG5h" value="Head" />
    <property role="3GE5qa" value="rule.part" />
    <ref role="1TJDcQ" node="6p0DfM0a3d3" resolve="RulePart" />
    <node concept="1TJgyi" id="6p0DfM0bSv$" role="1TKVEl">
      <property role="TrG5h" value="keep" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0a3Qe">
    <property role="TrG5h" value="Guard" />
    <property role="3GE5qa" value="rule.part" />
    <ref role="1TJDcQ" node="6p0DfM0a3d3" resolve="RulePart" />
  </node>
  <node concept="1TIwiD" id="6p0DfM0a3TO">
    <property role="TrG5h" value="Body" />
    <property role="3GE5qa" value="rule.part" />
    <ref role="1TJDcQ" node="6p0DfM0a3d3" resolve="RulePart" />
  </node>
  <node concept="1TIwiD" id="6p0DfM0a6KG">
    <property role="TrG5h" value="EmitConstraintStatement" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="6p0DfM0ajKO" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0ajMA">
    <property role="TrG5h" value="AbstractConstraint" />
    <property role="3GE5qa" value="constraint" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6p0DfM0ang5">
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="UserConstraint" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="6p0DfM0aywA" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0asBO" resolve="ConstraintTemplate" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0et2r" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="6p0DfM0evIr" resolve="LogicExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0asb7">
    <property role="3GE5qa" value="constraint.template" />
    <property role="TrG5h" value="Solver" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="solver" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6p0DfM0asSt" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6p0DfM0asBO" resolve="ConstraintTemplate" />
    </node>
    <node concept="PrWs8" id="6p0DfM0au4g" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0asBO">
    <property role="3GE5qa" value="constraint.template" />
    <property role="TrG5h" value="ConstraintTemplate" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6p0DfM0azKj" role="1TKVEl">
      <property role="TrG5h" value="arity" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="6p0DfM0ayqk" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0evIr">
    <property role="TrG5h" value="LogicExpression" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="constraint.expression" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6p0DfM0ew6_">
    <property role="TrG5h" value="LogicVariable" />
    <property role="3GE5qa" value="constraint.expression" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="6p0DfM0evIr" resolve="LogicExpression" />
    <node concept="PrWs8" id="2E5lcNnalh7" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0nev_" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="index" />
      <ref role="20lvS9" node="6p0DfM0hKK1" resolve="LogicValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0hKK1">
    <property role="TrG5h" value="LogicValue" />
    <property role="3GE5qa" value="constraint.expression" />
    <ref role="1TJDcQ" node="6p0DfM0evIr" resolve="LogicExpression" />
    <node concept="1TJgyj" id="6p0DfM0hKQz" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0ia8T">
    <property role="3GE5qa" value="rule.input" />
    <property role="TrG5h" value="RuleInputDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6p0DfM0iqhH" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="6p0DfM0iazm" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="6p0DfM0iaMp" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0im$2">
    <property role="3GE5qa" value="rule.input" />
    <property role="TrG5h" value="RuleInputReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6p0DfM0iCzc" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0ia8T" resolve="RuleInputDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0oBcI">
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="AssignConstraint" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="6p0DfM0oEeG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="assignee" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0evIr" resolve="LogicExpression" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0oEna" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0evIr" resolve="LogicExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0pKSO">
    <property role="TrG5h" value="LogicExpressionWrapper" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6p0DfM0pQge" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0evIr" resolve="LogicExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="2E5lcNn01_F">
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="TypeofConstraint" />
    <property role="34LRSv" value="typeof" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="2E5lcNn035O" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="anchor" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0hKK1" resolve="LogicValue" />
    </node>
    <node concept="1TJgyj" id="2E5lcNn03mK" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="assignedType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0evIr" resolve="LogicExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="2E5lcNn2Y0P">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LogicVariableDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2E5lcNndOwb" role="1TKVEl">
      <property role="TrG5h" value="isMulti" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="2E5lcNndMkF" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="cardinality" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="6p0DfM0hKK1" resolve="LogicValue" />
    </node>
    <node concept="PrWs8" id="2E5lcNn2Ya9" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2E5lcNn5kn6">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="ParameterDeclarationStatement" />
    <property role="34LRSv" value="parameter" />
    <ref role="1TJDcQ" node="2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
  </node>
  <node concept="1TIwiD" id="2E5lcNn5Ub2">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LocalDeclarationStatement" />
    <property role="34LRSv" value="local" />
    <ref role="1TJDcQ" node="2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
  </node>
  <node concept="1TIwiD" id="2E5lcNn8iYG">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LogicVariableDeclarationStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="2E5lcNn8k3O" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2E5lcNn2Y0P" resolve="LogicVariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6Ng87FPV$_x">
    <property role="TrG5h" value="LogicVariableType" />
    <property role="34LRSv" value="logic" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="6Ng87FPVZtW">
    <property role="3GE5qa" value="constraint.expression" />
    <property role="TrG5h" value="LogicVariableReference" />
    <ref role="1TJDcQ" node="6p0DfM0ew6_" resolve="LogicVariable" />
    <node concept="1TJgyj" id="2E5lcNn52Xp" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2E5lcNn2Y0P" resolve="LogicVariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6Ng87FPWKL5">
    <property role="3GE5qa" value="constraint.expression" />
    <property role="TrG5h" value="ExpressionLogicVariable" />
    <ref role="1TJDcQ" node="6p0DfM0ew6_" resolve="LogicVariable" />
    <node concept="1TJgyj" id="6Ng87FPWMo2" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4laj_h9P4cy">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="Condition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4laj_h9P4gL" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="6ntBQ9KFIud" role="PzmwI">
      <ref role="PrY4T" to="tpee:i0zv2NF" resolve="IContainsStatementList" />
    </node>
    <node concept="PrWs8" id="6ntBQ9KHkM6" role="PzmwI">
      <ref role="PrY4T" to="tpee:i2fhoOR" resolve="IMethodLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="5MHpiylEsuT">
    <property role="TrG5h" value="RuleParameterDeclaration" />
    <property role="3GE5qa" value="rule.parameter" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5MHpiylFYj$" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="PrWs8" id="5MHpiylEsHY" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="5MHpiylEsHZ" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="5MHpiylEsI0" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
  </node>
  <node concept="1TIwiD" id="5MHpiylG7gA">
    <property role="3GE5qa" value="rule.parameter" />
    <property role="TrG5h" value="RuleParameterBlock" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5MHpiylGFuy" role="PzmwI">
      <ref role="PrY4T" to="tpee:i0zv2NF" resolve="IContainsStatementList" />
    </node>
    <node concept="PrWs8" id="5MHpiylGFuz" role="PzmwI">
      <ref role="PrY4T" to="tpee:i2fhoOR" resolve="IMethodLike" />
    </node>
    <node concept="1TJgyj" id="5MHpiylFI5Z" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5MHpiylEsuT" resolve="RuleParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="5MHpiylGHFg" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="5MHpiylKSq8">
    <property role="3GE5qa" value="rule.parameter" />
    <property role="TrG5h" value="RuleParameterReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="5MHpiylKVev" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5MHpiylEsuT" resolve="RuleParameterDeclaration" />
    </node>
  </node>
</model>

