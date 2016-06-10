<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="3" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="m373" ref="r:4095af4f-a097-4799-aaa9-03df087ddfa6(jetbrains.mps.baseLanguage.javadoc.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9">
        <property id="1225118933224" name="comment" index="YLQ7P" />
      </concept>
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
    <node concept="1TJgyj" id="6p0DfM0bRQj" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="7368070394767441299" />
      <ref role="20lvS9" node="4EfgX2ET3GH" resolve="AbstractRule" />
    </node>
    <node concept="PrWs8" id="6p0DfM0au2d" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7eGEHDlgPU1">
    <property role="TrG5h" value="NewTypeConstraint" />
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="34LRSv" value="new type" />
    <property role="EcuMT" value="8335224865066016385" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="YGS68N6UU4" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="typeDeclaration" />
      <property role="20lbJX" value="0..1" />
      <property role="IQ2ns" value="1129524318932020868" />
      <ref role="20lvS9" node="1pPth$m5Bbz" resolve="TypeDeclaration" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0gdsG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="typeVar" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394768578348" />
      <ref role="20lvS9" to="5j4j:7E86$tKsHeX" resolve="AbstractLogicalVariable" />
    </node>
    <node concept="1TJgyj" id="6Ng87FPS9JH" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="typeConcept" />
      <property role="20lbJX" value="0..1" />
      <property role="IQ2ns" value="7840802663735270381" />
      <ref role="20lvS9" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0gvH4" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="anchor" />
      <property role="20lbJX" value="0..1" />
      <property role="IQ2ns" value="7368070394768653124" />
      <ref role="20lvS9" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0gSN1" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="7368070394768755905" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalClause" />
    </node>
  </node>
  <node concept="1TIwiD" id="7eGEHDlgPU4">
    <property role="TrG5h" value="Rule" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="rule" />
    <property role="34LRSv" value="template" />
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
    <node concept="1TJgyi" id="3x8pcoFsKIi" role="1TKVEl">
      <property role="TrG5h" value="postProcess" />
      <property role="IQ2nx" value="4055602266742393746" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
      <node concept="asaX9" id="3KXGt7WVuy3" role="lGtFl" />
    </node>
    <node concept="1TJgyj" id="5NuEpF1iiJF" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="inputSpecification" />
      <property role="IQ2ns" value="6691972578451991531" />
      <ref role="20lvS9" node="5NuEpF1if3e" resolve="RuleInputSpecification" />
      <node concept="asaX9" id="6wQEDbCCPAr" role="lGtFl" />
    </node>
    <node concept="1TJgyj" id="5MHpiylGjt8" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="iterateParameterBlock" />
      <property role="IQ2ns" value="6678105047444830024" />
      <ref role="20lvS9" node="1zN1RIkNhnM" resolve="IterateParameterBlock" />
    </node>
    <node concept="1TJgyj" id="1zN1RIkQKTu" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="boundParameterBlock" />
      <property role="IQ2ns" value="1797788903610715742" />
      <ref role="20lvS9" node="1zN1RIkQtcr" resolve="BoundParameterBlock" />
      <node concept="asaX9" id="6wQEDbCIWty" role="lGtFl" />
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
    <node concept="1TJgyj" id="6p0DfM0a5m9" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394766972297" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
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
      <property role="20lbJX" value="1..n" />
      <property role="IQ2ns" value="7368070394768117915" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalClause" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0asb7">
    <property role="3GE5qa" value="constraint.template" />
    <property role="TrG5h" value="Solver" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="solver" />
    <property role="EcuMT" value="7368070394767065799" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6p0DfM0asSt" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="7368070394767068701" />
      <ref role="20lvS9" node="6p0DfM0asBO" resolve="ConstraintDeclaration" />
    </node>
    <node concept="PrWs8" id="6p0DfM0au4g" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
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
      <node concept="asaX9" id="5bC6UNlv7_E" role="lGtFl">
        <property role="YLQ7P" value="use getArity() behavior method (derived from parameter number)" />
      </node>
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
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="AssignConstraint" />
    <property role="EcuMT" value="7368070394770780974" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="6p0DfM0oEeG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="assignee" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394770793388" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalClause" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0oEna" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394770793930" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalClause" />
    </node>
  </node>
  <node concept="1TIwiD" id="6p0DfM0pKSO">
    <property role="TrG5h" value="LogicalExpression" />
    <property role="EcuMT" value="7368070394771082804" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6p0DfM0pQge" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="clause" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7368070394771104782" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalClause" />
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
      <ref role="20lvS9" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
    </node>
    <node concept="1TJgyj" id="2E5lcNn03mK" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="assignedType" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="3063948360252667312" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalClause" />
    </node>
  </node>
  <node concept="1TIwiD" id="2E5lcNn5kn6">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="ParameterDeclarationStatement" />
    <property role="34LRSv" value="parameter" />
    <property role="EcuMT" value="3063948360254047686" />
    <ref role="1TJDcQ" node="2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
    <node concept="PrWs8" id="7ksQUDZoqiE" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="2E5lcNn5Ub2">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LocalDeclarationStatement" />
    <property role="34LRSv" value="local" />
    <property role="EcuMT" value="3063948360254202562" />
    <ref role="1TJDcQ" node="2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
    <node concept="PrWs8" id="7ksQUDZoqiC" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
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
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalClause" />
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
    <node concept="1TJgyj" id="1ffsG7bnJXK" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="applyCondition" />
      <property role="IQ2ns" value="1427485783565991792" />
      <ref role="20lvS9" node="4laj_h9P4cy" resolve="Condition" />
      <node concept="asaX9" id="3KXGt7WSRHz" role="lGtFl" />
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
    <node concept="PrWs8" id="1CgWc1TyPXw" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5o9D">
    <property role="TrG5h" value="TypeTermTemplate" />
    <property role="3GE5qa" value="type" />
    <property role="EcuMT" value="1618328391714701929" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1pPth$m5oa9" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1..n" />
      <property role="IQ2ns" value="1618328391714701961" />
      <ref role="20lvS9" node="1pPth$m5oa5" resolve="TypeFeature" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5oa5">
    <property role="3GE5qa" value="type.feature" />
    <property role="TrG5h" value="TypeFeature" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="1618328391714701957" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1pPth$m5oa7" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5oa6">
    <property role="3GE5qa" value="type.feature" />
    <property role="TrG5h" value="ListTypeFeature" />
    <property role="34LRSv" value="list" />
    <property role="EcuMT" value="1618328391714701958" />
    <ref role="1TJDcQ" node="1pPth$m5oa5" resolve="TypeFeature" />
  </node>
  <node concept="1TIwiD" id="1pPth$m5oae">
    <property role="3GE5qa" value="type.feature" />
    <property role="TrG5h" value="StringTypeFeature" />
    <property role="34LRSv" value="string" />
    <property role="EcuMT" value="1618328391714701966" />
    <ref role="1TJDcQ" node="1pPth$m5oa5" resolve="TypeFeature" />
    <node concept="1TJgyj" id="1hX44vMEjQe" role="1TKVEi">
      <property role="IQ2ns" value="1476354154047290766" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="getter" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="1hX44vMEjQg" resolve="GetterBlock" />
    </node>
    <node concept="1TJgyi" id="2N2MQGCKV7J" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="3225363944256549359" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
      <node concept="asaX9" id="1hX44vN6ydg" role="lGtFl" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5oaG">
    <property role="3GE5qa" value="type.feature" />
    <property role="TrG5h" value="ReferenceTypeFeature" />
    <property role="34LRSv" value="reference" />
    <property role="EcuMT" value="1618328391714701996" />
    <ref role="1TJDcQ" node="1pPth$m5oa5" resolve="TypeFeature" />
    <node concept="1TJgyj" id="1hX44vNe1iN" role="1TKVEi">
      <property role="IQ2ns" value="1476354154056651955" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="getter" />
      <ref role="20lvS9" node="1hX44vMEjQg" resolve="GetterBlock" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5oaL">
    <property role="3GE5qa" value="type.feature" />
    <property role="TrG5h" value="ChildTypeFeature" />
    <property role="34LRSv" value="child" />
    <property role="EcuMT" value="1618328391714702001" />
    <ref role="1TJDcQ" node="1pPth$m5oa5" resolve="TypeFeature" />
  </node>
  <node concept="1TIwiD" id="1pPth$m5B4X">
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="TypeTable" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="type table" />
    <property role="EcuMT" value="1618328391714763069" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1pPth$m5B4Y" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="1618328391714763070" />
      <ref role="20lvS9" node="1pPth$m5Bbz" resolve="TypeDeclaration" />
    </node>
    <node concept="PrWs8" id="1pPth$m5B55" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pPth$m5Bbz">
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="TypeDeclaration" />
    <property role="EcuMT" value="1618328391714763491" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5MFgGQnlLNJ" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaraton" />
      <property role="IQ2ns" value="6677504323281689839" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="1pPth$m5BbA" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="term" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="1618328391714763494" />
      <ref role="20lvS9" node="1pPth$m5o9D" resolve="TypeTermTemplate" />
    </node>
    <node concept="PrWs8" id="1pPth$m5Bb$" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="2CEQDIDRX6M">
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="TypeTermExpression" />
    <property role="EcuMT" value="3038481260719624626" />
    <ref role="1TJDcQ" to="5j4j:6$jH9oLmUCq" resolve="AtomExpression" />
    <node concept="1TJgyj" id="2CEQDIDTdBu" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="3038481260719954398" />
      <ref role="20lvS9" node="1pPth$m5Bbz" resolve="TypeDeclaration" />
    </node>
    <node concept="PrWs8" id="2CEQDIDXzlI" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
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
    <property role="3GE5qa" value="type.code" />
    <property role="TrG5h" value="GetterBlock" />
    <ref role="1TJDcQ" node="1hX44vMFoce" resolve="CodeBlock" />
  </node>
  <node concept="1TIwiD" id="1hX44vMEjQr">
    <property role="EcuMT" value="1476354154047290779" />
    <property role="3GE5qa" value="type.code" />
    <property role="TrG5h" value="TypeNodeExpression" />
    <property role="34LRSv" value="node" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="1hX44vMIQ6F" role="1TKVEi">
      <property role="IQ2ns" value="1476354154048479659" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1pPth$m5Bbz" resolve="TypeDeclaration" />
    </node>
    <node concept="PrWs8" id="1hX44vML8ZV" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
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
</model>

