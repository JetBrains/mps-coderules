<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9" />
      <concept id="6054523464626862044" name="jetbrains.mps.lang.structure.structure.AttributeInfo_IsMultiple" flags="ng" index="tn0Fv">
        <property id="6054523464626875854" name="value" index="tnX3d" />
      </concept>
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <reference id="1083241965437" name="defaultMember" index="Qgau1" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
        <child id="7588428831955550186" name="multiple" index="HhnKV" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
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
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7eGEHDlgPKk">
    <property role="TrG5h" value="RulesList" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="rule" />
    <property role="34LRSv" value="rulesList" />
    <property role="EcuMT" value="8335224865066015764" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="34$A1Mf2w7l" role="1TKVEi">
      <property role="IQ2ns" value="3541122455446356437" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="extends" />
      <ref role="20lvS9" node="7eGEHDlgPKk" resolve="RulesList" />
    </node>
    <node concept="1TJgyj" id="1HWyn8jEsaE" role="1TKVEi">
      <property role="IQ2ns" value="1980609059185345194" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6p0DfM0asBO" resolve="ConstraintDeclaration" />
    </node>
    <node concept="1TJgyj" id="36tQV5Anslx" role="1TKVEi">
      <property role="IQ2ns" value="3575255234175157601" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="36tQV5AmIsf" resolve="RuleTemplate" />
    </node>
    <node concept="PrWs8" id="34$A1Mf53b_" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="b5g$pBzjBm" role="PzmwI">
      <ref role="PrY4T" node="1CgWc1Tyjkz" resolve="Commentable" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0a3d3">
    <property role="TrG5h" value="RuleComponent" />
    <property role="3GE5qa" value="rule.component" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="7368070394766963523" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3PWU9gizUQY" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
    <node concept="1TJgyj" id="PB1R3Y7EcX" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="965748826975413053" />
      <ref role="20lvS9" node="PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="20Ay2VegCfd" role="1TKVEi">
      <property role="IQ2ns" value="2316688792939037645" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="logic" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="20Ay2VefOqC" resolve="LogicalClauseList" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0a3gA">
    <property role="TrG5h" value="Head" />
    <property role="3GE5qa" value="rule.component" />
    <property role="EcuMT" value="7368070394766963750" />
    <ref role="1TJDcQ" node="6p0DfM0a3d3" resolve="RuleComponent" />
    <node concept="1TJgyi" id="6p0DfM0bSv$" role="1TKVEl">
      <property role="TrG5h" value="keep" />
      <property role="IQ2nx" value="7368070394767443940" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0a3Qe">
    <property role="TrG5h" value="Guard" />
    <property role="3GE5qa" value="rule.component" />
    <property role="EcuMT" value="7368070394766966158" />
    <ref role="1TJDcQ" node="6p0DfM0a3d3" resolve="RuleComponent" />
  </node>
  <node concept="1TIwiD" id="6p0DfM0a3TO">
    <property role="TrG5h" value="Body" />
    <property role="3GE5qa" value="rule.component" />
    <property role="EcuMT" value="7368070394766966388" />
    <ref role="1TJDcQ" node="6p0DfM0a3d3" resolve="RuleComponent" />
  </node>
  <node concept="1TIwiD" id="6p0DfM0a6KG">
    <property role="TrG5h" value="EmitConstraintStatement" />
    <property role="EcuMT" value="7368070394766978092" />
    <property role="3GE5qa" value="rule.clause" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="6p0DfM0ajKO" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394767031348" />
      <ref role="20lvS9" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0ajMA">
    <property role="TrG5h" value="AbstractConstraint" />
    <property role="3GE5qa" value="constraint" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="7368070394767031462" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6p0DfM0ang5">
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="UserConstraint" />
    <property role="EcuMT" value="7368070394767045637" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="6p0DfM0aywA" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394767091750" />
      <ref role="20lvS9" node="6p0DfM0asBO" resolve="ConstraintDeclaration" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0et2r" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="7368070394768117915" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0asBO">
    <property role="3GE5qa" value="constraint.template" />
    <property role="TrG5h" value="ConstraintDeclaration" />
    <property role="EcuMT" value="7368070394767067636" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6p0DfM0azKj" role="1TKVEl">
      <property role="TrG5h" value="arity" />
      <property role="IQ2nx" value="7368070394767096851" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="1CgWc1TyPxy" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="1878265754077059170" />
      <ref role="20lvS9" node="1CgWc1TyPXm" resolve="ConstraintParameterDeclaration" />
    </node>
    <node concept="PrWs8" id="1CgWc1TyDEK" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0ia8T">
    <property role="3GE5qa" value="rule.input" />
    <property role="TrG5h" value="RuleInputDeclaration" />
    <property role="EcuMT" value="7368070394769089081" />
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
    <property role="EcuMT" value="7368070394769139970" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6p0DfM0iCzc" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394769213644" />
      <ref role="20lvS9" node="6p0DfM0ia8T" resolve="RuleInputDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0oBcI">
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="UnifiesConstraint" />
    <property role="EcuMT" value="7368070394770780974" />
    <property role="34LRSv" value="=" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="6p0DfM0oEeG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="assignee" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394770793388" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0oEna" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394770793930" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="2E5lcNn8iYG">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LogicVariableDeclarationStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="3063948360254828460" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="PrWs8" id="75vUFrS_9Sh" role="PzmwI">
      <ref role="PrY4T" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="4laj_h9P4cy">
    <property role="3GE5qa" value="rule.code" />
    <property role="TrG5h" value="Condition" />
    <property role="EcuMT" value="4992889260816483106" />
    <ref role="1TJDcQ" node="1hX44vMFoce" resolve="CodeBlock" />
    <node concept="PrWs8" id="6ntBQ9KFIud" role="PzmwI">
      <ref role="PrY4T" to="tpee:i0zv2NF" resolve="IContainsStatementList" />
    </node>
    <node concept="PrWs8" id="6ntBQ9KHkM6" role="PzmwI">
      <ref role="PrY4T" to="tpee:i2fhoOR" resolve="IMethodLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="5NuEpF1if3e">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="RuleInputSpecification" />
    <property role="EcuMT" value="6691972578451976398" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="36tQV5Ayfuv" role="1TKVEl">
      <property role="IQ2nx" value="3575255234177988511" />
      <property role="TrG5h" value="exactMatch" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="5NuEpF1iiA0" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="applicableConcept" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="6691972578451990912" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="5NuEpF1ihrB" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="input" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="6691972578451986151" />
      <ref role="20lvS9" node="6p0DfM0ia8T" resolve="RuleInputDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="60B5zVESvAi">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LogicVariableConstraint" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="6928531011217258898" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="60B5zVESBfb" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="IQ2ns" value="6928531011217290187" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="60B5zVESBMM">
    <property role="TrG5h" value="IsfreeVariableConstraint" />
    <property role="3GE5qa" value="constraint.variable" />
    <property role="34LRSv" value="isFree" />
    <property role="EcuMT" value="6928531011217292466" />
    <ref role="1TJDcQ" node="60B5zVESvAi" resolve="LogicVariableConstraint" />
  </node>
  <node concept="1TIwiD" id="60B5zVEVSFB">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="IsboundVariableConstraint" />
    <property role="34LRSv" value="isAssigned" />
    <property role="EcuMT" value="6928531011218148071" />
    <ref role="1TJDcQ" node="60B5zVESvAi" resolve="LogicVariableConstraint" />
  </node>
  <node concept="1TIwiD" id="4EfgX2EvF4i">
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="ExpressionConstraint" />
    <property role="34LRSv" value="eval" />
    <property role="EcuMT" value="5372587443968979218" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="4EfgX2EvGcc" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="5372587443968983820" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="1HWyn8iMc5Z" role="PzmwI">
      <ref role="PrY4T" node="1HWyn8iLEBo" resolve="LateParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="6infEALDvmn">
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="AssertExpressionConstraint" />
    <property role="34LRSv" value="assert" />
    <property role="EcuMT" value="7248331023826941335" />
    <ref role="1TJDcQ" node="4EfgX2EvF4i" resolve="ExpressionConstraint" />
  </node>
  <node concept="1TIwiD" id="1CgWc1Tyjkw">
    <property role="TrG5h" value="Comment" />
    <property role="3GE5qa" value="comment" />
    <property role="EcuMT" value="1878265754076919072" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyj" id="5bC6UNlwzV7" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="part" />
      <property role="20lbJX" value="1..n" />
      <property role="IQ2ns" value="5974055334837370567" />
      <ref role="20lvS9" to="tpee:5vlcUuJ5uOX" resolve="TextCommentPart" />
    </node>
    <node concept="M6xJ_" id="1CgWc1Tyjkx" role="lGtFl">
      <property role="Hh88m" value="comment" />
      <node concept="tn0Fv" id="5bC6UNlxqD9" role="HhnKV">
        <property role="tnX3d" value="false" />
      </node>
      <node concept="trNpa" id="b5g$pBzjAP" role="EQaZv">
        <ref role="trN6q" node="1CgWc1Tyjkz" resolve="Commentable" />
      </node>
    </node>
  </node>
  <node concept="PlHQZ" id="1CgWc1Tyjkz">
    <property role="TrG5h" value="Commentable" />
    <property role="3GE5qa" value="comment" />
    <property role="EcuMT" value="1878265754076919075" />
  </node>
  <node concept="1TIwiD" id="1CgWc1TyPXm">
    <property role="3GE5qa" value="constraint.template" />
    <property role="TrG5h" value="ConstraintParameterDeclaration" />
    <property role="EcuMT" value="1878265754077060950" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5f6wxQ38Bap" role="1TKVEi">
      <property role="IQ2ns" value="6036655413802463897" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="dataType" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="PrWs8" id="5f6wxQ39cqG" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5B4X">
    <property role="3GE5qa" value="macro" />
    <property role="TrG5h" value="MacroTable" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="macro table" />
    <property role="EcuMT" value="1618328391714763069" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1pPth$m5B4Y" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="macro" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="1618328391714763070" />
      <ref role="20lvS9" node="1pPth$m5Bbz" resolve="MacroDeclaration" />
    </node>
    <node concept="PrWs8" id="1pPth$m5B55" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="b5g$pBzjBf" role="PzmwI">
      <ref role="PrY4T" node="1CgWc1Tyjkz" resolve="Commentable" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5Bbz">
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="MacroDeclaration" />
    <property role="EcuMT" value="1618328391714763491" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6DOfTm$zUE3" role="1TKVEi">
      <property role="IQ2ns" value="7670825977262353027" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="input" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6DOfTm$zRmf" resolve="MacroInputDeclaration" />
    </node>
    <node concept="1TJgyj" id="7IysFeA0yca" role="1TKVEi">
      <property role="IQ2ns" value="8908809128802132746" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7IysFeA0yb0" resolve="MacroParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="7IysFe_ZQc2" role="1TKVEi">
      <property role="IQ2ns" value="8908809128801952514" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="7IysFe_ZPX_" resolve="MacroBody" />
    </node>
    <node concept="PrWs8" id="1pPth$m5Bb$" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="7IysFeBd3kM" role="PzmwI">
      <ref role="PrY4T" node="7IysFeBd3kI" resolve="ApplicationSessionParticipant" />
    </node>
    <node concept="PrWs8" id="3AWu6Emeo$c" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
    <node concept="PrWs8" id="b5g$pBzjW6" role="PzmwI">
      <ref role="PrY4T" node="1CgWc1Tyjkz" resolve="Commentable" />
    </node>
  </node>
  <node concept="1TIwiD" id="PB1R3Y7Ed7">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="RulePartParameterDeclaration" />
    <property role="EcuMT" value="965748826975413063" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="75vUFrS_flD" role="PzmwI">
      <ref role="PrY4T" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="1hX44vMFoce">
    <property role="EcuMT" value="1476354154047570702" />
    <property role="TrG5h" value="CodeBlock" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1hX44vMFocf" role="PzmwI">
      <ref role="PrY4T" to="tpee:i0zv2NF" resolve="IContainsStatementList" />
    </node>
    <node concept="PrWs8" id="1hX44vMFocg" role="PzmwI">
      <ref role="PrY4T" to="tpee:i2fhoOR" resolve="IMethodLike" />
    </node>
    <node concept="1TJgyj" id="tIwzd1_VRv" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="535508562359074271" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="18kNIl0jL2T">
    <property role="EcuMT" value="1302893676238672057" />
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="ExpandPseudoConstraint" />
    <property role="34LRSv" value="expand" />
    <ref role="1TJDcQ" node="18kNIl0mxXI" resolve="PseudoConstraint" />
    <node concept="1TJgyj" id="18kNIl0jL_z" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="1302893676238674275" />
      <ref role="20lvS9" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
    <node concept="1TJgyj" id="18kNIl0jL3E" role="1TKVEi">
      <property role="IQ2ns" value="1302893676238672106" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="origin" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="18kNIl0mxXI">
    <property role="EcuMT" value="1302893676239396718" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="PseudoConstraint" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
  </node>
  <node concept="1TIwiD" id="7IysFe_ZPX_">
    <property role="EcuMT" value="8908809128801951589" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="MacroBody" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7IysFe_ZPXC" role="1TKVEi">
      <property role="IQ2ns" value="8908809128801951592" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="1TJgyj" id="7IysFe_ZPXE" role="1TKVEi">
      <property role="IQ2ns" value="8908809128801951594" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7IysFe_ZPXH" resolve="MacroBodyLogicalDeclaration" />
    </node>
    <node concept="PrWs8" id="7IysFe_ZPXA" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
  </node>
  <node concept="1TIwiD" id="7IysFe_ZPXH">
    <property role="EcuMT" value="8908809128801951597" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="MacroBodyLogicalDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7IysFe_ZPXI" role="PzmwI">
      <ref role="PrY4T" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7IysFeA0yb0">
    <property role="EcuMT" value="8908809128802132672" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="MacroParameterDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7IysFeA0ybI" role="1TKVEi">
      <property role="IQ2ns" value="8908809128802132718" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="7IysFeA5xBQ" role="1TKVEi">
      <property role="IQ2ns" value="8908809128803441142" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="init" />
      <ref role="20lvS9" node="7IysFeA5Lco" resolve="InitBlock" />
    </node>
    <node concept="PrWs8" id="7IysFeA0ybD" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="7IysFeA0ybs" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="7IysFeA0ybx" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
  </node>
  <node concept="1TIwiD" id="7IysFeA1uPa">
    <property role="EcuMT" value="8908809128802381130" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="MacroParameterReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="7IysFeA1uTj" role="1TKVEi">
      <property role="IQ2ns" value="8908809128802381395" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7IysFeA0yb0" resolve="MacroParameterDeclaration" />
    </node>
    <node concept="PrWs8" id="7IysFeA1uRT" role="PzmwI">
      <ref role="PrY4T" to="tpee:SORzhOp6jM" resolve="IVariableReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="7IysFeA5Lco">
    <property role="EcuMT" value="8908809128803504920" />
    <property role="3GE5qa" value="macro.code" />
    <property role="TrG5h" value="InitBlock" />
    <ref role="1TJDcQ" node="1hX44vMFoce" resolve="CodeBlock" />
  </node>
  <node concept="1TIwiD" id="7IysFeA99oR">
    <property role="EcuMT" value="8908809128804390455" />
    <property role="3GE5qa" value="macro.code" />
    <property role="TrG5h" value="MacroLogicalExpression" />
    <property role="34LRSv" value="macroLogical" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="PlHQZ" id="7IysFeBd3kI">
    <property role="EcuMT" value="8908809128822191406" />
    <property role="TrG5h" value="ApplicationSessionParticipant" />
  </node>
  <node concept="1TIwiD" id="3TnYLtqfhzx">
    <property role="EcuMT" value="4492335231042132193" />
    <property role="3GE5qa" value="macro.code.with" />
    <property role="TrG5h" value="ContextParameterDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3TnYLtqfhzO" role="1TKVEi">
      <property role="IQ2ns" value="4492335231042132212" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="PrWs8" id="3TnYLtqfhzy" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="3TnYLtqfhzB" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="3TnYLtqfhzJ" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
  </node>
  <node concept="1TIwiD" id="3TnYLtqfh$J">
    <property role="EcuMT" value="4492335231042132271" />
    <property role="3GE5qa" value="macro.code.with" />
    <property role="TrG5h" value="ContextParameterReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="3TnYLtqfh$T" role="1TKVEi">
      <property role="IQ2ns" value="4492335231042132281" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3TnYLtqfhzx" resolve="ContextParameterDeclaration" />
    </node>
    <node concept="PrWs8" id="3TnYLtqfh$K" role="PzmwI">
      <ref role="PrY4T" to="tpee:SORzhOp6jM" resolve="IVariableReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="3TnYLtqgQYU">
    <property role="EcuMT" value="4492335231042547642" />
    <property role="3GE5qa" value="macro.code.with" />
    <property role="TrG5h" value="WithContextStatement" />
    <property role="34LRSv" value="with" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="3TnYLtqgRY3" role="1TKVEi">
      <property role="IQ2ns" value="4492335231042551683" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3TnYLtqfhzx" resolve="ContextParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="3TnYLtqgQZ0" role="1TKVEi">
      <property role="IQ2ns" value="4492335231042547648" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="init" />
      <property role="20lbJX" value="1" />
      <property role="TrG5h" value="value" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="3TnYLtqgQYV" role="1TKVEi">
      <property role="IQ2ns" value="4492335231042547643" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="1L74NXEmF9s">
    <property role="EcuMT" value="2037618519496634972" />
    <property role="3GE5qa" value="macro.invoke" />
    <property role="TrG5h" value="MacroParameterBinding" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1L74NXEmG0t" role="1TKVEi">
      <property role="IQ2ns" value="2037618519496638493" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7IysFeA0yb0" resolve="MacroParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="1L74NXGK1G1" role="1TKVEi">
      <property role="IQ2ns" value="2037618519536835329" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="PlHQZ" id="1L74NXEmF9t">
    <property role="EcuMT" value="2037618519496634973" />
    <property role="3GE5qa" value="macro.invoke" />
    <property role="TrG5h" value="MacroInvocation" />
  </node>
  <node concept="1TIwiD" id="1L74NXEmFJU">
    <property role="EcuMT" value="2037618519496637434" />
    <property role="3GE5qa" value="macro.invoke" />
    <property role="TrG5h" value="MacroArgumentList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1L74NXEmFJV" role="1TKVEi">
      <property role="IQ2ns" value="2037618519496637435" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="binding" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="1L74NXEmF9s" resolve="MacroParameterBinding" />
    </node>
  </node>
  <node concept="1TIwiD" id="4MEOIDFfpSk">
    <property role="EcuMT" value="5524459797186715156" />
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="CallMacroPseudoConstraint" />
    <property role="34LRSv" value="call" />
    <ref role="1TJDcQ" node="18kNIl0mxXI" resolve="PseudoConstraint" />
    <node concept="1TJgyj" id="5hSMZ_lpUoi" role="1TKVEi">
      <property role="IQ2ns" value="6086839168131376658" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1pPth$m5Bbz" resolve="MacroDeclaration" />
    </node>
    <node concept="1TJgyj" id="4MEOIDFfpT9" role="1TKVEi">
      <property role="IQ2ns" value="5524459797186715209" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
    <node concept="1TJgyj" id="5hSMZ_lrcKO" role="1TKVEi">
      <property role="IQ2ns" value="6086839168131714100" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <ref role="20lvS9" node="1L74NXEmFJU" resolve="MacroArgumentList" />
    </node>
    <node concept="PrWs8" id="5hSMZ_ltV78" role="PzmwI">
      <ref role="PrY4T" node="1L74NXEmF9t" resolve="MacroInvocation" />
    </node>
  </node>
  <node concept="1TIwiD" id="20Ay2VefOqC">
    <property role="EcuMT" value="2316688792938825384" />
    <property role="3GE5qa" value="rule.clause" />
    <property role="TrG5h" value="LogicalClauseList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="20Ay2VefOqD" role="1TKVEi">
      <property role="IQ2ns" value="2316688792938825385" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="clauses" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="20Ay2VefOqF" resolve="LogicalClause" />
    </node>
  </node>
  <node concept="1TIwiD" id="20Ay2VefOqF">
    <property role="EcuMT" value="2316688792938825387" />
    <property role="3GE5qa" value="rule.clause" />
    <property role="TrG5h" value="LogicalClause" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="20Ay2VefOBs">
    <property role="EcuMT" value="2316688792938826204" />
    <property role="3GE5qa" value="rule.clause" />
    <property role="TrG5h" value="ConstraintLogicalClause" />
    <ref role="1TJDcQ" node="20Ay2VefOqF" resolve="LogicalClause" />
    <node concept="1TJgyj" id="20Ay2VefOBA" role="1TKVEi">
      <property role="IQ2ns" value="2316688792938826214" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    </node>
  </node>
  <node concept="1TIwiD" id="20Ay2Vei7FH">
    <property role="EcuMT" value="2316688792939428589" />
    <property role="3GE5qa" value="rule.clause" />
    <property role="TrG5h" value="TemplateLogicalClause" />
    <ref role="1TJDcQ" node="20Ay2VefOqF" resolve="LogicalClause" />
    <node concept="1TJgyj" id="20Ay2Vei7FI" role="1TKVEi">
      <property role="IQ2ns" value="2316688792939428590" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="1CcQBrQdzwG">
    <property role="EcuMT" value="1877115349178398764" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="EqualsConstraint" />
    <property role="34LRSv" value="==" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="1CcQBrQdzxt" role="1TKVEi">
      <property role="IQ2ns" value="1877115349178398813" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="1TJgyj" id="1CcQBrQdzxv" role="1TKVEi">
      <property role="IQ2ns" value="1877115349178398815" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="60zk4o7reud">
    <property role="EcuMT" value="6927468913528465293" />
    <property role="TrG5h" value="LogicalContextExpression" />
    <property role="34LRSv" value="logicalContext" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="6hqFpWmM6I9">
    <property role="EcuMT" value="7231283050490391433" />
    <property role="3GE5qa" value="macro.code.with" />
    <property role="TrG5h" value="ContextParameterContainer" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="context parameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6hqFpWmM98w" role="1TKVEi">
      <property role="IQ2ns" value="7231283050490401312" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3TnYLtqfhzx" resolve="ContextParameterDeclaration" />
    </node>
    <node concept="PrWs8" id="6hqFpWmM98u" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7smgEqggf12">
    <property role="EcuMT" value="8581119423153238082" />
    <property role="TrG5h" value="NodeAnchor" />
    <property role="34LRSv" value="@anchor" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="7smgEqggf13" role="1TKVEi">
      <property role="IQ2ns" value="8581119423153238083" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="node" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6DOfTm$zRmf">
    <property role="EcuMT" value="7670825977262339471" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="MacroInputDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6DOfTm$zVok" role="1TKVEi">
      <property role="IQ2ns" value="7670825977262355988" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tp25:gzTqbfa" resolve="SNodeType" />
    </node>
    <node concept="PrWs8" id="6DOfTm$zRmg" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="6DOfTm$zRml" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="6DOfTm$zRmt" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
  </node>
  <node concept="1TIwiD" id="6DOfTm$$CHj">
    <property role="EcuMT" value="7670825977262541651" />
    <property role="3GE5qa" value="macro.code" />
    <property role="TrG5h" value="MacroInputReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6DOfTm$$CHk" role="1TKVEi">
      <property role="IQ2ns" value="7670825977262541652" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6DOfTm$zRmf" resolve="MacroInputDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5WBVN_MT8FC">
    <property role="EcuMT" value="6856711987714624232" />
    <property role="TrG5h" value="LateExpressionItem" />
    <property role="34LRSv" value="lateExpression" />
    <property role="3GE5qa" value="logical" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="5WBVN_MT8FD" role="1TKVEi">
      <property role="IQ2ns" value="6856711987714624233" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="1HWyn8iMa37" role="PzmwI">
      <ref role="PrY4T" node="1HWyn8iLEBo" resolve="LateParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="1HWyn8iJ_xB">
    <property role="EcuMT" value="1980609059169917031" />
    <property role="TrG5h" value="CopyItem" />
    <property role="34LRSv" value="copyOf" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="1HWyn8iJ_Iq" role="1TKVEi">
      <property role="IQ2ns" value="1980609059169917850" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="origin" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="PlHQZ" id="1HWyn8iLEBo">
    <property role="EcuMT" value="1980609059170462168" />
    <property role="TrG5h" value="LateParameter" />
  </node>
  <node concept="1TIwiD" id="3pMFS1zdeji">
    <property role="EcuMT" value="3923391191348208850" />
    <property role="TrG5h" value="Substitution" />
    <property role="34LRSv" value="subst" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="3pMFS1zdejv" role="1TKVEi">
      <property role="IQ2ns" value="3923391191348208863" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="origin" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="1TJgyj" id="3pMFS1zdej$" role="1TKVEi">
      <property role="IQ2ns" value="3923391191348208868" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="pattern" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="1TJgyj" id="3pMFS1zdejx" role="1TKVEi">
      <property role="IQ2ns" value="3923391191348208865" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="replacement" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="36tQV5AmIsf">
    <property role="EcuMT" value="3575255234174969615" />
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="RuleTemplate" />
    <property role="34LRSv" value="template" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="xaaVXv4NiS" role="1TKVEl">
      <property role="IQ2nx" value="597338001513854136" />
      <property role="TrG5h" value="principal" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmIsx" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="input" />
      <property role="IQ2ns" value="3575255234174969633" />
      <ref role="20lvS9" node="5NuEpF1if3e" resolve="RuleInputSpecification" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmQgD" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="IQ2ns" value="3575255234175001641" />
      <ref role="20lvS9" node="4laj_h9P4cy" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmIss" role="1TKVEi">
      <property role="IQ2ns" value="3575255234174969628" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="6OXbTDyHcSb" role="PzmwI">
      <ref role="PrY4T" node="6OXbTDyHcuD" resolve="Template" />
    </node>
    <node concept="PrWs8" id="36tQV5AmIsC" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="36tQV5AmIsP" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
    <node concept="PrWs8" id="36tQV5AmIsH" role="PzmwI">
      <ref role="PrY4T" node="7IysFeBd3kI" resolve="ApplicationSessionParticipant" />
    </node>
  </node>
  <node concept="1TIwiD" id="36tQV5AmIsB">
    <property role="EcuMT" value="3575255234174969639" />
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="ConstraintRule" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7lt0LtPHSaf" role="1TKVEi">
      <property role="IQ2ns" value="8456919074565751439" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7lt0LtPpEVM" resolve="ParameterContainer" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmIsU" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="head" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="3575255234174969658" />
      <ref role="20lvS9" node="6p0DfM0a3gA" resolve="Head" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmIsV" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="guard" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="3575255234174969659" />
      <ref role="20lvS9" node="6p0DfM0a3Qe" resolve="Guard" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmIsW" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="3575255234174969660" />
      <ref role="20lvS9" node="6p0DfM0a3TO" resolve="Body" />
    </node>
    <node concept="PrWs8" id="36tQV5Ax0RU" role="PzmwI">
      <ref role="PrY4T" node="7IysFeBd3kI" resolve="ApplicationSessionParticipant" />
    </node>
    <node concept="PrWs8" id="7lt0LtPInTv" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
  </node>
  <node concept="1TIwiD" id="36tQV5AmIt0">
    <property role="EcuMT" value="3575255234174969664" />
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="ConstraintRuleStatement" />
    <property role="34LRSv" value="on" />
    <property role="R4oN_" value="Constraint Rule" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="36tQV5AmIt1" role="1TKVEi">
      <property role="IQ2ns" value="3575255234174969665" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="36tQV5AmIsB" resolve="ConstraintRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="36tQV5BDmft">
    <property role="EcuMT" value="3575255234196628445" />
    <property role="3GE5qa" value="rule.code" />
    <property role="TrG5h" value="RequireStatement" />
    <property role="34LRSv" value="require" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="36tQV5BDmjo" role="1TKVEi">
      <property role="IQ2ns" value="3575255234196628696" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="node" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="7lt0LtPpEVM">
    <property role="EcuMT" value="8456919074560454386" />
    <property role="3GE5qa" value="rule.component" />
    <property role="TrG5h" value="ParameterContainer" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7lt0LtPpF3M" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="8456919074560454898" />
      <ref role="20lvS9" node="PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
    </node>
    <node concept="PrWs8" id="7lt0LtPpF3K" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
  </node>
  <node concept="1TIwiD" id="oI9Ys1jH2">
    <property role="EcuMT" value="6958395097955138" />
    <property role="TrG5h" value="SNodeReportOperation" />
    <property role="34LRSv" value="report" />
    <ref role="1TJDcQ" to="tp25:g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyi" id="oI9Ys1lGD" role="1TKVEl">
      <property role="IQ2nx" value="6958395097963305" />
      <property role="TrG5h" value="kind" />
      <ref role="AX2Wp" node="oI9Ys1lFh" resolve="ReportKind" />
    </node>
    <node concept="1TJgyj" id="oI9Ys1lF8" role="1TKVEi">
      <property role="IQ2ns" value="6958395097963208" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="text" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="AxPO7" id="oI9Ys1lFh">
    <property role="TrG5h" value="ReportKind" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="oI9Ys1lFi" role="M5hS2">
      <property role="1uS6qo" value="info" />
      <property role="1uS6qv" value="info" />
    </node>
    <node concept="M4N5e" id="oI9Ys1lFj" role="M5hS2">
      <property role="1uS6qo" value="warning" />
      <property role="1uS6qv" value="warning" />
    </node>
    <node concept="M4N5e" id="oI9Ys1lFm" role="M5hS2">
      <property role="1uS6qo" value="error" />
      <property role="1uS6qv" value="error" />
    </node>
  </node>
  <node concept="1TIwiD" id="1mdVbTS8GIV">
    <property role="EcuMT" value="1553157749316176827" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="PatternLogicalVariable" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="PrWs8" id="JOGAOsIT9E" role="PzmwI">
      <ref role="PrY4T" to="5j4j:JOGAOsIRhm" resolve="Capture" />
    </node>
    <node concept="1TJgyj" id="4sSe4$p4oON" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="5131913661993028915" />
      <ref role="20lvS9" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
    <node concept="1TJgyj" id="4sSe4$p4oOP" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="5131913661993028917" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="7P_FdVQ_S6B">
    <property role="EcuMT" value="9035818301008609703" />
    <property role="TrG5h" value="QueryTemplate" />
    <property role="3GE5qa" value="query" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6OXbTDyyU9U" role="1TKVEi">
      <property role="IQ2ns" value="7871500063838282362" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="6OXbTDyHcHo" role="PzmwI">
      <ref role="PrY4T" node="6OXbTDyHcuD" resolve="Template" />
    </node>
    <node concept="PrWs8" id="7P_FdVQ_S6O" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="6OXbTDz3CC2" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
    <node concept="PrWs8" id="6OXbTDz3CCc" role="PzmwI">
      <ref role="PrY4T" node="7IysFeBd3kI" resolve="ApplicationSessionParticipant" />
    </node>
  </node>
  <node concept="PlHQZ" id="6OXbTDyHcuD">
    <property role="EcuMT" value="7871500063840978857" />
    <property role="TrG5h" value="Template" />
    <node concept="PrWs8" id="6OXbTDyHcuE" role="PrDN$">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="6OXbTD$dU7b">
    <property role="EcuMT" value="7871500063866331595" />
    <property role="TrG5h" value="Query" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="query" />
    <property role="3GE5qa" value="query" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2BZXJecE0bF" role="1TKVEi">
      <property role="IQ2ns" value="3026409000513569515" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="queryKind" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="6OXbTD$dU7c" role="1TKVEi">
      <property role="IQ2ns" value="7871500063866331596" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="queryStage" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7P_FdVQ_S6B" resolve="QueryTemplate" />
      <node concept="asaX9" id="6tPOoeT5KFi" role="lGtFl" />
    </node>
    <node concept="1TJgyj" id="2BZXJecNeMM" role="1TKVEi">
      <property role="IQ2ns" value="3026409000515988658" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2BZXJecNbEw" resolve="QueryParameterDeclaration" />
    </node>
    <node concept="PrWs8" id="6OXbTD$dU7e" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="2BZXJecNbEw">
    <property role="EcuMT" value="3026409000515975840" />
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="QueryParameterDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2BZXJecNbEx" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="2BZXJecNbEA" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="2BZXJecNbEI" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
    <node concept="1TJgyj" id="2BZXJecQkiP" role="1TKVEi">
      <property role="IQ2ns" value="3026409000516797621" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="2BZXJecNhT3">
    <property role="EcuMT" value="3026409000516001347" />
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="QueryParameterReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="2BZXJecNhVS" role="1TKVEi">
      <property role="IQ2ns" value="3026409000516001528" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2BZXJecNbEw" resolve="QueryParameterDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="12QmIo$yS$B">
    <property role="EcuMT" value="1204249894870288679" />
    <property role="3GE5qa" value="rule.code" />
    <property role="TrG5h" value="RequireAllStatement" />
    <property role="34LRSv" value="requireAll" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="12QmIo$ySSU" role="1TKVEi">
      <property role="IQ2ns" value="1204249894870289978" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="nodes" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="2E5lcNn5Ub2">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LocalDeclarationStatement" />
    <property role="34LRSv" value="local" />
    <property role="EcuMT" value="3063948360254202562" />
    <ref role="1TJDcQ" node="2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
    <node concept="asaX9" id="4nIWweBB$7z" role="lGtFl" />
  </node>
  <node concept="1TIwiD" id="72RDgINeSQJ">
    <property role="EcuMT" value="8122141922656226735" />
    <property role="TrG5h" value="ContextRepositoryExpression" />
    <property role="34LRSv" value="repository" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="4jcOV4hu088">
    <property role="EcuMT" value="4957570047283823112" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="ProvideFeedbackConstraint" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="4jcOV4hwicZ" role="1TKVEi">
      <property role="IQ2ns" value="4957570047284421439" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyi" id="4jcOV4hu0nK" role="1TKVEl">
      <property role="IQ2nx" value="4957570047283824112" />
      <property role="TrG5h" value="severity" />
      <ref role="AX2Wp" node="4jcOV4hu0ns" resolve="FeedbackSeverity" />
    </node>
    <node concept="PrWs8" id="4jcOV4hwWdd" role="PzmwI">
      <ref role="PrY4T" node="1HWyn8iLEBo" resolve="LateParameter" />
    </node>
  </node>
  <node concept="AxPO7" id="4jcOV4hu0ns">
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="FeedbackSeverity" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <ref role="Qgau1" node="4jcOV4hu0nu" />
    <node concept="M4N5e" id="4jcOV4hu0nt" role="M5hS2">
      <property role="1uS6qv" value="DEBUG" />
      <property role="1uS6qo" value="debug" />
    </node>
    <node concept="M4N5e" id="4jcOV4hu0nu" role="M5hS2">
      <property role="1uS6qv" value="INFO" />
      <property role="1uS6qo" value="info" />
    </node>
    <node concept="M4N5e" id="4jcOV4hu0nx" role="M5hS2">
      <property role="1uS6qv" value="WARN" />
      <property role="1uS6qo" value="warning" />
    </node>
    <node concept="M4N5e" id="4jcOV4hu0n_" role="M5hS2">
      <property role="1uS6qv" value="ERROR" />
      <property role="1uS6qo" value="error" />
    </node>
    <node concept="M4N5e" id="4jcOV4hu0nE" role="M5hS2">
      <property role="1uS6qv" value="FATAL" />
      <property role="1uS6qo" value="fatal" />
    </node>
  </node>
  <node concept="1TIwiD" id="4jcOV4hExo0">
    <property role="EcuMT" value="4957570047287105024" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="FailConstraint" />
    <property role="34LRSv" value="fail" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="4jcOV4hEDv3" role="1TKVEi">
      <property role="IQ2ns" value="4957570047287138243" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="4jcOV4hEyRj" role="PzmwI">
      <ref role="PrY4T" node="1HWyn8iLEBo" resolve="LateParameter" />
    </node>
  </node>
</model>

