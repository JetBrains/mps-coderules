<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
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
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
        <child id="7588428831955550186" name="multiple" index="HhnKV" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
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
    <property role="TrG5h" value="Handler" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="rule" />
    <property role="34LRSv" value="handler" />
    <property role="EcuMT" value="8335224865066015764" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="20Ay2Vf1h9X" role="1TKVEl">
      <property role="IQ2nx" value="2316688792951788157" />
      <property role="TrG5h" value="stage" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0bRQj" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="7368070394767441299" />
      <ref role="20lvS9" node="4EfgX2ET3GH" resolve="AbstractRule" />
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
    <node concept="PrWs8" id="6p0DfM0au2d" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7eGEHDlgPU4">
    <property role="TrG5h" value="Rule" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="rule" />
    <property role="34LRSv" value="rule" />
    <property role="EcuMT" value="8335224865066016388" />
    <ref role="1TJDcQ" node="4EfgX2ET3GH" resolve="AbstractRule" />
    <node concept="1TJgyj" id="3KXGt7WSNcl" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="IQ2ns" value="4340821131304055573" />
      <ref role="20lvS9" node="4laj_h9P4cy" resolve="Condition" />
    </node>
    <node concept="1TJgyi" id="1ffsG7bAGF$" role="1TKVEl">
      <property role="TrG5h" value="exactMatch" />
      <property role="IQ2nx" value="1427485783569910500" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="5MHpiylGjt8" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="iterateParameterBlock" />
      <property role="IQ2ns" value="6678105047444830024" />
      <ref role="20lvS9" node="1zN1RIkNhnM" resolve="IterateParameterBlock" />
    </node>
    <node concept="1TJgyj" id="6wQEDbCLoaZ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20lbJX" value="0..1" />
      <property role="20kJfa" value="includeClause" />
      <property role="IQ2ns" value="7509376976634086079" />
      <ref role="20lvS9" node="6wQEDbCL4Fi" resolve="IncludeFragmentClause" />
    </node>
    <node concept="PrWs8" id="5bC6UNl$TEw" role="PzmwI">
      <ref role="PrY4T" node="1CgWc1Tyjkz" resolve="ICanBeCommented" />
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
    <node concept="PrWs8" id="1CgWc1TyDEQ" role="PzmwI">
      <ref role="PrY4T" node="1CgWc1Tyjkz" resolve="ICanBeCommented" />
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
  <node concept="1TIwiD" id="2E5lcNn01_F">
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="TypeofConstraint" />
    <property role="34LRSv" value="typeof" />
    <property role="EcuMT" value="3063948360252660075" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="2E5lcNn035O" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="anchor" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="3063948360252666228" />
      <ref role="20lvS9" node="7smgEqggf12" resolve="NodeAnchor" />
    </node>
    <node concept="1TJgyj" id="2E5lcNn03mK" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="assignedType" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="3063948360252667312" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
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
    <ref role="1TJDcQ" node="tIwzd1_CMa" resolve="RuleCodeBlock" />
    <node concept="PrWs8" id="6ntBQ9KFIud" role="PzmwI">
      <ref role="PrY4T" to="tpee:i0zv2NF" resolve="IContainsStatementList" />
    </node>
    <node concept="PrWs8" id="6ntBQ9KHkM6" role="PzmwI">
      <ref role="PrY4T" to="tpee:i2fhoOR" resolve="IMethodLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="5MHpiylEsuT">
    <property role="TrG5h" value="RuleParameterDeclaration" />
    <property role="3GE5qa" value="rule.code.parameter" />
    <property role="EcuMT" value="6678105047444342713" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5MHpiylFYj$" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="6678105047444743396" />
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
    <property role="3GE5qa" value="rule.code.parameter" />
    <property role="TrG5h" value="RuleParameterBlock" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="6678105047444780070" />
    <ref role="1TJDcQ" node="tIwzd1_CMa" resolve="RuleCodeBlock" />
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
      <property role="IQ2ns" value="6678105047444676991" />
      <ref role="20lvS9" node="5MHpiylEsuT" resolve="RuleParameterDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5MHpiylKSq8">
    <property role="3GE5qa" value="rule.code.parameter" />
    <property role="TrG5h" value="RuleParameterReference" />
    <property role="EcuMT" value="6678105047446029960" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="5MHpiylKVev" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="6678105047446041503" />
      <ref role="20lvS9" node="5MHpiylEsuT" resolve="RuleParameterDeclaration" />
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
    <property role="34LRSv" value="isBound" />
    <property role="EcuMT" value="6928531011218148071" />
    <ref role="1TJDcQ" node="60B5zVESvAi" resolve="LogicVariableConstraint" />
  </node>
  <node concept="1TIwiD" id="1zN1RIkNhnM">
    <property role="3GE5qa" value="rule.code.parameter" />
    <property role="TrG5h" value="IterateParameterBlock" />
    <property role="EcuMT" value="1797788903609800178" />
    <ref role="1TJDcQ" node="5MHpiylG7gA" resolve="RuleParameterBlock" />
  </node>
  <node concept="1TIwiD" id="1zN1RIkQtcr">
    <property role="3GE5qa" value="rule.code.parameter" />
    <property role="TrG5h" value="BoundParameterBlock" />
    <property role="EcuMT" value="1797788903610635035" />
    <ref role="1TJDcQ" node="5MHpiylG7gA" resolve="RuleParameterBlock" />
  </node>
  <node concept="1TIwiD" id="tIwzd1_CMa">
    <property role="3GE5qa" value="rule.code" />
    <property role="TrG5h" value="RuleCodeBlock" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="535508562358996106" />
    <ref role="1TJDcQ" node="1hX44vMFoce" resolve="CodeBlock" />
    <node concept="PrWs8" id="tIwzd1_UDW" role="PzmwI">
      <ref role="PrY4T" to="tpee:i0zv2NF" resolve="IContainsStatementList" />
    </node>
    <node concept="PrWs8" id="tIwzd1_UDX" role="PzmwI">
      <ref role="PrY4T" to="tpee:i2fhoOR" resolve="IMethodLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="tIwzd1EOs6">
    <property role="3GE5qa" value="rule.code" />
    <property role="TrG5h" value="RequiredNodeBlock" />
    <property role="EcuMT" value="535508562360354566" />
    <ref role="1TJDcQ" node="tIwzd1_CMa" resolve="RuleCodeBlock" />
  </node>
  <node concept="1TIwiD" id="4EfgX2EvF4i">
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="ExpressionConstraint" />
    <property role="34LRSv" value="expression" />
    <property role="EcuMT" value="5372587443968979218" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="4EfgX2EvGcc" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="0..1" />
      <property role="IQ2ns" value="5372587443968983820" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="1HWyn8iMc5Z" role="PzmwI">
      <ref role="PrY4T" node="1HWyn8iLEBo" resolve="LateParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="4EfgX2ET3GH">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="AbstractRule" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="5372587443975633709" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6wQEDbCCPyR" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="input" />
      <property role="IQ2ns" value="7509376976631847095" />
      <ref role="20lvS9" node="5NuEpF1if3e" resolve="RuleInputSpecification" />
    </node>
    <node concept="1TJgyj" id="1ffsG7bh6Cz" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="requiredNodeBlock" />
      <property role="IQ2ns" value="1427485783564249635" />
      <ref role="20lvS9" node="tIwzd1EOs6" resolve="RequiredNodeBlock" />
    </node>
    <node concept="1TJgyj" id="6wQEDbCHGnY" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="letBlock" />
      <property role="IQ2ns" value="7509376976633120254" />
      <ref role="20lvS9" node="1zN1RIkQtcr" resolve="BoundParameterBlock" />
    </node>
    <node concept="1TJgyj" id="1ffsG7bCfL5" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="head" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="1427485783570316357" />
      <ref role="20lvS9" node="6p0DfM0a3gA" resolve="Head" />
    </node>
    <node concept="1TJgyj" id="1ffsG7bFM2v" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="guard" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="1427485783571243167" />
      <ref role="20lvS9" node="6p0DfM0a3Qe" resolve="Guard" />
    </node>
    <node concept="1TJgyj" id="1ffsG7bIxDv" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="1427485783571962463" />
      <ref role="20lvS9" node="6p0DfM0a3TO" resolve="Body" />
    </node>
    <node concept="PrWs8" id="3NRKQ2BIeUB" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="1ffsG7bN0QR" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
    <node concept="PrWs8" id="7IysFeBd5uE" role="PzmwI">
      <ref role="PrY4T" node="7IysFeBd3kI" resolve="ApplicationSessionParticipant" />
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
      <node concept="trNpa" id="1CgWc1TyjkA" role="EQaZv">
        <ref role="trN6q" node="1CgWc1Tyjkz" resolve="ICanBeCommented" />
      </node>
      <node concept="tn0Fv" id="5bC6UNlxqD9" role="HhnKV">
        <property role="tnX3d" value="false" />
      </node>
    </node>
  </node>
  <node concept="PlHQZ" id="1CgWc1Tyjkz">
    <property role="TrG5h" value="ICanBeCommented" />
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
  <node concept="1TIwiD" id="1pPth$m5o9D">
    <property role="TrG5h" value="TermTemplate" />
    <property role="3GE5qa" value="term" />
    <property role="EcuMT" value="1618328391714701929" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1pPth$m5oa9" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="1618328391714701961" />
      <ref role="20lvS9" node="1pPth$m5oa5" resolve="TermFeature" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5oa5">
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="TermFeature" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="1618328391714701957" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1CcQBrPqjP1" role="1TKVEl">
      <property role="IQ2nx" value="1877115349164965185" />
      <property role="TrG5h" value="final" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="1pPth$m5oa7" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5oa6">
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="ListTermFeature" />
    <property role="34LRSv" value="list" />
    <property role="EcuMT" value="1618328391714701958" />
    <ref role="1TJDcQ" node="1pPth$m5oa5" resolve="TermFeature" />
    <node concept="1TJgyj" id="3AWu6Embo_Z" role="1TKVEi">
      <property role="IQ2ns" value="4160332554964928895" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="getter" />
      <ref role="20lvS9" node="1hX44vMEjQg" resolve="GetterBlock" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5oae">
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="ValueTermFeature" />
    <property role="34LRSv" value="value" />
    <property role="EcuMT" value="1618328391714701966" />
    <ref role="1TJDcQ" node="1pPth$m5oa5" resolve="TermFeature" />
    <node concept="1TJgyj" id="1hX44vMEjQe" role="1TKVEi">
      <property role="IQ2ns" value="1476354154047290766" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="getter" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="1hX44vMEjQg" resolve="GetterBlock" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5oaL">
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="ChildTermFeature" />
    <property role="34LRSv" value="child" />
    <property role="EcuMT" value="1618328391714702001" />
    <ref role="1TJDcQ" node="1pPth$m5oa5" resolve="TermFeature" />
    <node concept="1TJgyj" id="2L20jGt8dYg" role="1TKVEi">
      <property role="IQ2ns" value="3189112839535124368" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="getter" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="1hX44vMEjQg" resolve="GetterBlock" />
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
  </node>
  <node concept="1TIwiD" id="6wQEDbCL4Fi">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="IncludeFragmentClause" />
    <property role="34LRSv" value="include" />
    <property role="EcuMT" value="7509376976634006226" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6wQEDbCL4Fj" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="fragment" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7509376976634006227" />
      <ref role="20lvS9" node="6wQEDbCHt15" resolve="Fragment" />
    </node>
  </node>
  <node concept="1TIwiD" id="6wQEDbCHt15">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="Fragment" />
    <property role="34LRSv" value="fragment" />
    <property role="EcuMT" value="7509376976633057349" />
    <ref role="1TJDcQ" node="4EfgX2ET3GH" resolve="AbstractRule" />
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
  <node concept="1TIwiD" id="1hX44vMEjQg">
    <property role="EcuMT" value="1476354154047290768" />
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="GetterBlock" />
    <ref role="1TJDcQ" node="1hX44vMFoce" resolve="CodeBlock" />
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
    <node concept="PrWs8" id="7IysFeA2ROS" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
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
    <node concept="PrWs8" id="7IysFeA99oS" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
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
    <node concept="PrWs8" id="3TnYLtqfh$P" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
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
  <node concept="1TIwiD" id="1L74NXElX0R">
    <property role="EcuMT" value="2037618519496446007" />
    <property role="3GE5qa" value="term" />
    <property role="TrG5h" value="Term" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="1L74NXFNj2L" role="1TKVEi">
      <property role="IQ2ns" value="2037618519520915633" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="override" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="1L74NXFMz6j" resolve="TermFeatureOverride" />
    </node>
    <node concept="1TJgyj" id="5hSMZ_l93p$" role="1TKVEi">
      <property role="IQ2ns" value="6086839168126957156" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="termDecl" />
      <ref role="20lvS9" node="4MEOIDFttoe" resolve="TermDeclaration" />
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
  <node concept="1TIwiD" id="1L74NXFMz6j">
    <property role="EcuMT" value="2037618519520719251" />
    <property role="3GE5qa" value="term" />
    <property role="TrG5h" value="TermFeatureOverride" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1L74NXFMBVS" role="1TKVEi">
      <property role="IQ2ns" value="2037618519520739064" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="term" />
      <property role="20lbJX" value="1" />
      <property role="TrG5h" value="override" />
      <ref role="20lvS9" node="1hX44vMEjQg" resolve="GetterBlock" />
    </node>
    <node concept="1TJgyj" id="1L74NXFMz74" role="1TKVEi">
      <property role="IQ2ns" value="2037618519520719300" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1pPth$m5oa5" resolve="TermFeature" />
    </node>
  </node>
  <node concept="1TIwiD" id="2vGNdoJLd0b">
    <property role="EcuMT" value="2876899482279399435" />
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="ConstraintReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2vGNdoJLd0c" role="1TKVEi">
      <property role="IQ2ns" value="2876899482279399436" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6p0DfM0asBO" resolve="ConstraintDeclaration" />
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
  <node concept="1TIwiD" id="4MEOIDFttoe">
    <property role="EcuMT" value="5524459797190399502" />
    <property role="3GE5qa" value="term" />
    <property role="TrG5h" value="TermDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7c96q9tz_UX" role="1TKVEi">
      <property role="IQ2ns" value="8289184774297116349" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="prototype" />
      <ref role="20lvS9" node="4MEOIDFttoe" resolve="TermDeclaration" />
    </node>
    <node concept="1TJgyj" id="4MEOIDFttNk" role="1TKVEi">
      <property role="IQ2ns" value="5524459797190401236" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1pPth$m5o9D" resolve="TermTemplate" />
    </node>
    <node concept="PrWs8" id="4MEOIDFttNg" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
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
  <node concept="1TIwiD" id="5hSMZ_lNwqz">
    <property role="EcuMT" value="6086839168138086051" />
    <property role="3GE5qa" value="term" />
    <property role="TrG5h" value="TermTable" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="term table" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5hSMZ_lNwq$" role="1TKVEi">
      <property role="IQ2ns" value="6086839168138086052" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="termDeclaration" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4MEOIDFttoe" resolve="TermDeclaration" />
    </node>
    <node concept="PrWs8" id="5hSMZ_lNwqA" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
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
    <property role="TrG5h" value="ExpressionItem" />
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
  </node>
  <node concept="1TIwiD" id="36tQV5AmIt0">
    <property role="EcuMT" value="3575255234174969664" />
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="ConstraintRuleStatement" />
    <property role="34LRSv" value="constraint rule" />
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
</model>

