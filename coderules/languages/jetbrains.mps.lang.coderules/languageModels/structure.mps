<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
        <reference id="899069222106091871" name="oldMember" index="2wpffI" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="6491077959632463275" name="jetbrains.mps.lang.structure.structure.EnumPropertyMigrationInfo" flags="ng" index="3l_iC">
        <child id="6491077959632463286" name="oldProperty" index="3l_iP" />
      </concept>
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9" />
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
        <child id="7862711839422615224" name="seeAlso" index="t5JxU" />
      </concept>
      <concept id="7862711839422615221" name="jetbrains.mps.lang.structure.structure.DocumentationObjectiveRef" flags="ng" index="t5JxR">
        <reference id="7862711839422615222" name="target" index="t5JxO" />
      </concept>
      <concept id="6054523464626862044" name="jetbrains.mps.lang.structure.structure.AttributeInfo_IsMultiple" flags="ng" index="tn0Fv">
        <property id="6054523464626875854" name="value" index="tnX3d" />
      </concept>
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration_Old" flags="ng" index="AxPO7">
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <reference id="1083241965437" name="defaultMember" index="Qgau1" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1588368162884797030" name="jetbrains.mps.lang.structure.structure.EnumMigrationInfo" flags="ng" index="2JgGob">
        <property id="6491077959634662372" name="valueOpMigration" index="3scbB" />
        <property id="6491077959634650670" name="nameOpMigration" index="3sfsH" />
        <child id="6491077959632451996" name="oldEnum" index="3lCyv" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration_Old" flags="ig" index="M4N5e">
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
    <property role="34LRSv" value="rule table" />
    <property role="EcuMT" value="8335224865066015764" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="34$A1Mf2w7l" role="1TKVEi">
      <property role="IQ2ns" value="3541122455446356437" />
      <property role="20kJfa" value="extends" />
      <ref role="20lvS9" node="7eGEHDlgPKk" resolve="RulesList" />
    </node>
    <node concept="1TJgyj" id="1HWyn8jEsaE" role="1TKVEi">
      <property role="IQ2ns" value="1980609059185345194" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6p0DfM0asBO" resolve="ConstraintDeclaration" />
    </node>
    <node concept="1TJgyj" id="36tQV5Anslx" role="1TKVEi">
      <property role="IQ2ns" value="3575255234175157601" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="36tQV5AmIsf" resolve="RuleTemplate" />
    </node>
    <node concept="PrWs8" id="34$A1Mf53b_" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="b5g$pBzjBm" role="PzmwI">
      <ref role="PrY4T" node="1CgWc1Tyjkz" resolve="Commentable" />
    </node>
    <node concept="t5JxF" id="7LI_gNMj$_R" role="lGtFl">
      <property role="t5JxN" value="!! FIXME rename to RuleTable !!" />
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
    <node concept="PrWs8" id="hYA4REBKla" role="PzmwI">
      <ref role="PrY4T" to="5j4j:hYA4RE$stU" resolve="EvaluationSetting" />
    </node>
    <node concept="1TJgyj" id="PB1R3Y7EcX" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="965748826975413053" />
      <ref role="20lvS9" node="PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="20Ay2VegCfd" role="1TKVEi">
      <property role="IQ2ns" value="2316688792939037645" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logic" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7368070394767031348" />
      <ref role="20lvS9" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    </node>
    <node concept="PrWs8" id="hYA4RE_$Sj" role="PzmwI">
      <ref role="PrY4T" to="5j4j:hYA4RE$stU" resolve="EvaluationSetting" />
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
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7368070394767091750" />
      <ref role="20lvS9" node="6p0DfM0asBO" resolve="ConstraintDeclaration" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0et2r" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
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
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="assignee" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7368070394770793388" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="1TJgyj" id="6p0DfM0oEna" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7368070394770793930" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
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
      <property role="20kJfa" value="applicableConcept" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6691972578451990912" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="5NuEpF1ihrB" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="input" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
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
    <property role="34LRSv" value="$" />
    <property role="EcuMT" value="5372587443968979218" />
    <property role="R4oN_" value="evaluate expression" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="4EfgX2EvGcc" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5372587443968983820" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="hYA4RDX4O0" role="PzmwI">
      <ref role="PrY4T" node="1HWyn8iLEBo" resolve="LateParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="1CgWc1Tyjkw">
    <property role="TrG5h" value="Comment" />
    <property role="3GE5qa" value="comment" />
    <property role="EcuMT" value="1878265754076919072" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyj" id="5bC6UNlwzV7" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="part" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
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
    <node concept="1TJgyj" id="5itBwM9Rt6C" role="1TKVEi">
      <property role="IQ2ns" value="6097203247219331496" />
      <property role="20kJfa" value="extends" />
      <ref role="20lvS9" node="1pPth$m5B4X" resolve="MacroTable" />
    </node>
    <node concept="1TJgyj" id="5itBwM6ukmz" role="1TKVEi">
      <property role="IQ2ns" value="6097203247162410403" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="prototype" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5itBwM6ugMI" resolve="MacroPrototype" />
    </node>
    <node concept="1TJgyj" id="1pPth$m5B4Y" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="macro" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="1618328391714763070" />
      <ref role="20lvS9" node="5itBwM56wgT" resolve="MacroTemplate" />
    </node>
    <node concept="PrWs8" id="1pPth$m5B55" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="b5g$pBzjBf" role="PzmwI">
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
    <node concept="PrWs8" id="4beNoh2IxyQ" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
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
  <node concept="1TIwiD" id="7IysFe_ZPXH">
    <property role="EcuMT" value="8908809128801951597" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="MacroBodyLogicalDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7IysFe_ZPXI" role="PzmwI">
      <ref role="PrY4T" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
    </node>
  </node>
  <node concept="PlHQZ" id="7IysFeBd3kI">
    <property role="EcuMT" value="8908809128822191406" />
    <property role="TrG5h" value="ApplicationSessionParticipant" />
  </node>
  <node concept="1TIwiD" id="20Ay2VefOqC">
    <property role="EcuMT" value="2316688792938825384" />
    <property role="3GE5qa" value="rule.clause" />
    <property role="TrG5h" value="LogicalClauseList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="20Ay2VefOqD" role="1TKVEi">
      <property role="IQ2ns" value="2316688792938825385" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="clauses" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    </node>
    <node concept="PrWs8" id="hYA4RE_$Sh" role="PzmwI">
      <ref role="PrY4T" to="5j4j:hYA4RE$stU" resolve="EvaluationSetting" />
    </node>
  </node>
  <node concept="1TIwiD" id="20Ay2Vei7FH">
    <property role="EcuMT" value="2316688792939428589" />
    <property role="3GE5qa" value="rule.clause" />
    <property role="TrG5h" value="TemplateLogicalClause" />
    <ref role="1TJDcQ" node="20Ay2VefOqF" resolve="LogicalClause" />
    <node concept="1TJgyj" id="20Ay2Vei7FI" role="1TKVEi">
      <property role="IQ2ns" value="2316688792939428590" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="1TJgyj" id="1CcQBrQdzxv" role="1TKVEi">
      <property role="IQ2ns" value="1877115349178398815" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="60zk4o7reud">
    <property role="EcuMT" value="6927468913528465293" />
    <property role="TrG5h" value="LogicalContextExpression" />
    <property role="34LRSv" value="logicalContext" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="5WBVN_MT8FC">
    <property role="EcuMT" value="6856711987714624232" />
    <property role="TrG5h" value="LateExpressionItem" />
    <property role="34LRSv" value="$" />
    <property role="3GE5qa" value="logical" />
    <property role="R4oN_" value="evaluate expression" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="5WBVN_MT8FD" role="1TKVEi">
      <property role="IQ2ns" value="6856711987714624233" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="origin" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="PlHQZ" id="1HWyn8iLEBo">
    <property role="EcuMT" value="1980609059170462168" />
    <property role="TrG5h" value="LateParameter" />
    <node concept="PrWs8" id="7zIaasjACIn" role="PrDN$">
      <ref role="PrY4T" to="5j4j:7zIaasjACyh" resolve="EvaluationSubject" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pMFS1zdeji">
    <property role="EcuMT" value="3923391191348208850" />
    <property role="TrG5h" value="Substitution" />
    <property role="34LRSv" value="subst" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="3pMFS1zdejv" role="1TKVEi">
      <property role="IQ2ns" value="3923391191348208863" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="origin" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="1TJgyj" id="3pMFS1zdej$" role="1TKVEi">
      <property role="IQ2ns" value="3923391191348208868" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="pattern" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="1TJgyj" id="3pMFS1zdejx" role="1TKVEi">
      <property role="IQ2ns" value="3923391191348208865" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="replacement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="36tQV5AmIsf">
    <property role="EcuMT" value="3575255234174969615" />
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="RuleTemplate" />
    <property role="34LRSv" value="rule template" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="xaaVXv4NiS" role="1TKVEl">
      <property role="IQ2nx" value="597338001513854136" />
      <property role="TrG5h" value="auxiliary" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmIsx" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="input" />
      <property role="IQ2ns" value="3575255234174969633" />
      <ref role="20lvS9" node="5NuEpF1if3e" resolve="RuleInputSpecification" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmIss" role="1TKVEi">
      <property role="IQ2ns" value="3575255234174969628" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
    <node concept="1TJgyj" id="4beNoh24Wi0" role="1TKVEi">
      <property role="IQ2ns" value="4814011019633607808" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20kJfa" value="parameter" />
      <ref role="20lvS9" node="PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmIsU" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="head" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="3575255234174969658" />
      <ref role="20lvS9" node="6p0DfM0a3gA" resolve="Head" />
    </node>
    <node concept="1TJgyj" id="36tQV5AmIsV" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="guard" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="3575255234174969659" />
      <ref role="20lvS9" node="6p0DfM0a3Qe" resolve="Guard" />
    </node>
    <node concept="1TJgyj" id="6E2cNiboHlF" role="1TKVEi">
      <property role="IQ2ns" value="7674753015762572651" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6E2cNiboHlA" resolve="BodyBlock" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="node" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="1mdVbTS8GIV">
    <property role="EcuMT" value="1553157749316176827" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="PatternLogicalVariable" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="4sSe4$p4oON" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5131913661993028915" />
      <ref role="20lvS9" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
    <node concept="1TJgyj" id="4sSe4$p4oOP" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5131913661993028917" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="7P_FdVQ_S6B">
    <property role="EcuMT" value="9035818301008609703" />
    <property role="TrG5h" value="QueryTemplate" />
    <property role="3GE5qa" value="query" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5EDW3XEcagK" role="1TKVEl">
      <property role="IQ2nx" value="6533016889632793648" />
      <property role="TrG5h" value="queryName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="5EDW3XE6suU" role="1TKVEi">
      <property role="IQ2ns" value="6533016889631295418" />
      <property role="20kJfa" value="queryType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:g7pOWCK" resolve="Classifier" />
    </node>
    <node concept="1TJgyj" id="6OXbTDyyU9U" role="1TKVEi">
      <property role="IQ2ns" value="7871500063838282362" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
  <node concept="1TIwiD" id="12QmIo$yS$B">
    <property role="EcuMT" value="1204249894870288679" />
    <property role="3GE5qa" value="rule.code" />
    <property role="TrG5h" value="RequireAllStatement" />
    <property role="34LRSv" value="requireAll" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="12QmIo$ySSU" role="1TKVEi">
      <property role="IQ2ns" value="1204249894870289978" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodes" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="2E5lcNn5Ub2">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LocalDeclarationStatement" />
    <property role="34LRSv" value="logical" />
    <property role="EcuMT" value="3063948360254202562" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="PrWs8" id="6E2cNict01T" role="PzmwI">
      <ref role="PrY4T" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
    </node>
    <node concept="PrWs8" id="5TXeSYSAmha" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
  </node>
  <node concept="1TIwiD" id="4jcOV4hu088">
    <property role="EcuMT" value="4957570047283823112" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="ProvideFeedbackConstraint" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="4jcOV4hwicZ" role="1TKVEi">
      <property role="IQ2ns" value="4957570047284421439" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="1laj_RTdQq9" role="1TKVEi">
      <property role="IQ2ns" value="1534124788593157769" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="target" />
      <ref role="20lvS9" node="1laj_RThOpY" resolve="TargetSpec" />
    </node>
    <node concept="1TJgyi" id="3czCaDvmnOz" role="1TKVEl">
      <property role="TrG5h" value="severity" />
      <property role="IQ2nx" value="4957570047283824112" />
      <ref role="AX2Wp" node="3czCaDvmnMw" resolve="FeedbackSeverity" />
      <node concept="3l_iC" id="3czCaDvmnO$" role="lGtFl">
        <node concept="1TJgyi" id="4jcOV4hu0nK" role="3l_iP">
          <property role="IQ2nx" value="4957570047283824112" />
          <property role="TrG5h" value="severity" />
          <ref role="AX2Wp" node="4jcOV4hu0ns" resolve="FeedbackSeverity" />
        </node>
      </node>
    </node>
    <node concept="PrWs8" id="4jcOV4hwWdd" role="PzmwI">
      <ref role="PrY4T" node="1HWyn8iLEBo" resolve="LateParameter" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="4jcOV4hEyRj" role="PzmwI">
      <ref role="PrY4T" node="1HWyn8iLEBo" resolve="LateParameter" />
    </node>
  </node>
  <node concept="25R3W" id="3czCaDvmnMw">
    <property role="TrG5h" value="FeedbackSeverity" />
    <property role="3GE5qa" value="constraint" />
    <property role="3F6X1D" value="4957570047283824092" />
    <ref role="1H5jkz" node="3czCaDvmnMz" resolve="INFO" />
    <node concept="2JgGob" id="3czCaDvmnMx" role="lGtFl">
      <property role="3scbB" value="5CkWgdpp3eY/string_name" />
      <property role="3sfsH" value="5CkWgdpp0p2/by_presentation" />
      <node concept="AxPO7" id="4jcOV4hu0ns" role="3lCyv">
        <property role="3GE5qa" value="constraint" />
        <property role="TrG5h" value="FeedbackSeverity" />
        <property role="3F6X1D" value="4957570047283824092" />
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
    </node>
    <node concept="25R33" id="3czCaDvmnMy" role="25R1y">
      <property role="TrG5h" value="DEBUG" />
      <property role="1L1pqM" value="debug" />
      <property role="3tVfz5" value="4957570047283824093" />
      <ref role="2wpffI" node="4jcOV4hu0nt" />
    </node>
    <node concept="25R33" id="3czCaDvmnMz" role="25R1y">
      <property role="TrG5h" value="INFO" />
      <property role="1L1pqM" value="info" />
      <property role="3tVfz5" value="4957570047283824094" />
      <ref role="2wpffI" node="4jcOV4hu0nu" />
    </node>
    <node concept="25R33" id="3czCaDvmnM$" role="25R1y">
      <property role="TrG5h" value="WARN" />
      <property role="1L1pqM" value="warning" />
      <property role="3tVfz5" value="4957570047283824097" />
      <ref role="2wpffI" node="4jcOV4hu0nx" />
    </node>
    <node concept="25R33" id="3czCaDvmnM_" role="25R1y">
      <property role="TrG5h" value="ERROR" />
      <property role="1L1pqM" value="error" />
      <property role="3tVfz5" value="4957570047283824101" />
      <ref role="2wpffI" node="4jcOV4hu0n_" />
    </node>
  </node>
  <node concept="1TIwiD" id="1laj_RSpLVV">
    <property role="EcuMT" value="1534124788579507963" />
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="OriginSpec" />
    <property role="34LRSv" value="target" />
    <ref role="1TJDcQ" to="tpee:fK9aQHR" resolve="BlockStatement" />
    <node concept="1TJgyj" id="1laj_RSpMKx" role="1TKVEi">
      <property role="IQ2ns" value="1534124788579511329" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="origin" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="1laj_RThOpY">
    <property role="EcuMT" value="1534124788594198142" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="TargetSpec" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1laj_RThOqk" role="PzmwI">
      <ref role="PrY4T" node="1HWyn8iLEBo" resolve="LateParameter" />
    </node>
    <node concept="1TJgyj" id="1laj_RThOqm" role="1TKVEi">
      <property role="IQ2ns" value="1534124788594198166" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="59P$gGfKABp">
    <property role="EcuMT" value="5941814760080304601" />
    <property role="3GE5qa" value="rule.clause" />
    <property role="TrG5h" value="ItemLogicalClause" />
    <ref role="1TJDcQ" node="20Ay2VefOqF" resolve="LogicalClause" />
    <node concept="1TJgyj" id="59P$gGfKABq" role="1TKVEi">
      <property role="IQ2ns" value="5941814760080304602" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="item" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="6E2cNiboHlA">
    <property role="EcuMT" value="7674753015762572646" />
    <property role="3GE5qa" value="rule.component" />
    <property role="TrG5h" value="BodyBlock" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6E2cNiboHlB" role="1TKVEi">
      <property role="IQ2ns" value="7674753015762572647" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6p0DfM0a3TO" resolve="Body" />
    </node>
  </node>
  <node concept="PlHQZ" id="5itBwM56wgT">
    <property role="EcuMT" value="6097203247139390521" />
    <property role="3GE5qa" value="macro" />
    <property role="TrG5h" value="MacroTemplate" />
  </node>
  <node concept="1TIwiD" id="5itBwM578SV">
    <property role="EcuMT" value="6097203247139556923" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="CallMacroTemplate" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5itBwM57a68" role="PzmwI">
      <ref role="PrY4T" node="5itBwM56wgT" resolve="MacroTemplate" />
    </node>
    <node concept="PrWs8" id="5itBwM5xp12" role="PzmwI">
      <ref role="PrY4T" node="5itBwM5wMtr" resolve="MacroTemplateBody" />
    </node>
    <node concept="PrWs8" id="5itBwM57bFt" role="PzmwI">
      <ref role="PrY4T" node="7IysFeBd3kI" resolve="ApplicationSessionParticipant" />
    </node>
    <node concept="PrWs8" id="5itBwM57bFu" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
    <node concept="PrWs8" id="5itBwM57bFv" role="PzmwI">
      <ref role="PrY4T" node="1CgWc1Tyjkz" resolve="Commentable" />
    </node>
    <node concept="PrWs8" id="5itBwMaaWqd" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1TJgyj" id="5itBwM5$rCX" role="1TKVEi">
      <property role="IQ2ns" value="6097203247147235901" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7IysFe_ZPXH" resolve="MacroBodyLogicalDeclaration" />
    </node>
    <node concept="1TJgyj" id="5itBwM5irVx" role="1TKVEi">
      <property role="IQ2ns" value="6097203247142518497" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5itBwM5i6X6" resolve="CallMacroParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="5itBwM5dHGo" role="1TKVEi">
      <property role="IQ2ns" value="6097203247141280536" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7IysFe_ZPXH" resolve="MacroBodyLogicalDeclaration" />
    </node>
    <node concept="1TJgyj" id="5itBwM5dCWA" role="1TKVEi">
      <property role="IQ2ns" value="6097203247141261094" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM5i6X6">
    <property role="EcuMT" value="6097203247142432582" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="CallMacroParameterDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5itBwM5ifE5" role="1TKVEi">
      <property role="IQ2ns" value="6097203247142468229" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="PrWs8" id="5itBwM5ie4J" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="5itBwM5ie4K" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="5itBwM5ie4L" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM5kgmv">
    <property role="EcuMT" value="6097203247142995359" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="CallMacroParameterReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="PrWs8" id="5itBwM5klv$" role="PzmwI">
      <ref role="PrY4T" to="tpee:SORzhOp6jM" resolve="IVariableReference" />
    </node>
    <node concept="1TJgyj" id="5itBwM5mdnH" role="1TKVEi">
      <property role="IQ2ns" value="6097203247143507437" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5itBwM5i6X6" resolve="CallMacroParameterDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="5itBwM5wMtr">
    <property role="EcuMT" value="6097203247146280795" />
    <property role="3GE5qa" value="macro" />
    <property role="TrG5h" value="MacroTemplateBody" />
  </node>
  <node concept="1TIwiD" id="5itBwM65AQ4">
    <property role="EcuMT" value="6097203247155932548" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="ExpandMacroTemplate" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5itBwM65IKl" role="PzmwI">
      <ref role="PrY4T" node="5itBwM56wgT" resolve="MacroTemplate" />
    </node>
    <node concept="PrWs8" id="5itBwM65IKm" role="PzmwI">
      <ref role="PrY4T" node="5itBwM5wMtr" resolve="MacroTemplateBody" />
    </node>
    <node concept="PrWs8" id="5itBwM65IKn" role="PzmwI">
      <ref role="PrY4T" node="7IysFeBd3kI" resolve="ApplicationSessionParticipant" />
    </node>
    <node concept="PrWs8" id="5itBwM65IKo" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
    <node concept="PrWs8" id="5itBwM65IKp" role="PzmwI">
      <ref role="PrY4T" node="1CgWc1Tyjkz" resolve="Commentable" />
    </node>
    <node concept="1TJgyj" id="5itBwM9Gou_" role="1TKVEi">
      <property role="IQ2ns" value="6097203247216428965" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7IysFe_ZPXH" resolve="MacroBodyLogicalDeclaration" />
    </node>
    <node concept="1TJgyj" id="5itBwM67n1U" role="1TKVEi">
      <property role="IQ2ns" value="6097203247156392058" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="inputSpec" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5itBwM66cNU" resolve="ExpandMacroInputSpecification" />
    </node>
    <node concept="1TJgyj" id="5itBwM688rM" role="1TKVEi">
      <property role="IQ2ns" value="6097203247156594418" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7IysFe_ZPXH" resolve="MacroBodyLogicalDeclaration" />
    </node>
    <node concept="1TJgyj" id="5itBwM67JAZ" role="1TKVEi">
      <property role="IQ2ns" value="6097203247156492735" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="1TJgyj" id="5itBwM6gb4P" role="1TKVEi">
      <property role="IQ2ns" value="6097203247158702389" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20kJfa" value="prototype" />
      <ref role="20lvS9" node="5itBwM6cWQh" resolve="ExpandMacroPrototype" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM66cNU">
    <property role="EcuMT" value="6097203247156088058" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="ExpandMacroInputSpecification" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5itBwM66fYr" role="1TKVEl">
      <property role="IQ2nx" value="6097203247156101019" />
      <property role="TrG5h" value="exactMatch" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="5itBwM66hzH" role="1TKVEi">
      <property role="IQ2ns" value="6097203247156107501" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="input" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5itBwM66Jqx" resolve="ExpandMacroInputDeclaration" />
    </node>
    <node concept="1TJgyj" id="5itBwM66ULm" role="1TKVEi">
      <property role="IQ2ns" value="6097203247156276310" />
      <property role="20kJfa" value="applicableConcept" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM66Jqx">
    <property role="EcuMT" value="6097203247156229793" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="ExpandMacroInputDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5itBwM66NnE" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="5itBwM66NnF" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="5itBwM66NnG" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM6cWQh">
    <property role="EcuMT" value="6097203247157857681" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="ExpandMacroPrototype" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5itBwM6iJYb" role="1TKVEi">
      <property role="IQ2ns" value="6097203247159377803" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7IysFe_ZPXH" resolve="MacroBodyLogicalDeclaration" />
    </node>
    <node concept="1TJgyj" id="5itBwM6wU6s" role="1TKVEi">
      <property role="IQ2ns" value="6097203247163089308" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5itBwM6wvc4" resolve="ExpandMacroParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="5itBwM6dfdw" role="1TKVEi">
      <property role="IQ2ns" value="6097203247157932896" />
      <property role="20kJfa" value="applicableConcept" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="5itBwM6ur5y" role="PzmwI">
      <ref role="PrY4T" node="5itBwM6ugMI" resolve="MacroPrototype" />
    </node>
    <node concept="PrWs8" id="5itBwM6JnRR" role="PzmwI">
      <ref role="PrY4T" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
  </node>
  <node concept="PlHQZ" id="5itBwM6ugMI">
    <property role="EcuMT" value="6097203247162395822" />
    <property role="3GE5qa" value="macro" />
    <property role="TrG5h" value="MacroPrototype" />
    <node concept="PrWs8" id="5itBwM6vXP4" role="PrDN$">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM6wvc4">
    <property role="EcuMT" value="6097203247162979076" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="ExpandMacroParameterDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5itBwM6wB6D" role="1TKVEi">
      <property role="IQ2ns" value="6097203247163011497" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="5itBwM6zLOl" role="1TKVEi">
      <property role="IQ2ns" value="6097203247163841813" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="init" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="5itBwM6w_7N" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="5itBwM6w_Uw" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="5itBwM6wAjW" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM6_4x3">
    <property role="EcuMT" value="6097203247164180547" />
    <property role="3GE5qa" value="macro.decl" />
    <property role="TrG5h" value="ExpandMacroParameterReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="PrWs8" id="5itBwM6_aQ4" role="PzmwI">
      <ref role="PrY4T" to="tpee:SORzhOp6jM" resolve="IVariableReference" />
    </node>
    <node concept="1TJgyj" id="5itBwM6_hXY" role="1TKVEi">
      <property role="IQ2ns" value="6097203247164235646" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5itBwM6wvc4" resolve="ExpandMacroParameterDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM7GBv1">
    <property role="EcuMT" value="6097203247182936001" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="ExpandMacroConstraint" />
    <ref role="1TJDcQ" node="18kNIl0mxXI" resolve="PseudoConstraint" />
    <node concept="1TJgyj" id="5itBwM7GBLp" role="1TKVEi">
      <property role="IQ2ns" value="6097203247182937177" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5itBwM6cWQh" resolve="ExpandMacroPrototype" />
    </node>
    <node concept="1TJgyj" id="5itBwM7GBKR" role="1TKVEi">
      <property role="IQ2ns" value="6097203247182937143" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
    <node concept="1TJgyj" id="5itBwM7GBKT" role="1TKVEi">
      <property role="IQ2ns" value="6097203247182937145" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="input" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="5itBwM7QPB1" role="1TKVEi">
      <property role="IQ2ns" value="6097203247185615297" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="arglist" />
      <ref role="20lvS9" node="5itBwM7QPtM" resolve="ExpandMacroConstraintArglist" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM7J4Oh">
    <property role="EcuMT" value="6097203247183580433" />
    <property role="3GE5qa" value="macro.code" />
    <property role="TrG5h" value="ExpandMacroInputReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="5itBwM7J4Oi" role="1TKVEi">
      <property role="IQ2ns" value="6097203247183580434" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5itBwM66Jqx" resolve="ExpandMacroInputDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM7LtBf">
    <property role="EcuMT" value="6097203247184206287" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="CallMacroConstraint" />
    <property role="34LRSv" value="call" />
    <ref role="1TJDcQ" node="18kNIl0mxXI" resolve="PseudoConstraint" />
    <node concept="1TJgyj" id="5itBwM7Lv0S" role="1TKVEi">
      <property role="IQ2ns" value="6097203247184212024" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
    <node concept="1TJgyj" id="5itBwM7Pl2b" role="1TKVEi">
      <property role="IQ2ns" value="6097203247185219723" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="5itBwM7LtYS" role="1TKVEi">
      <property role="IQ2ns" value="6097203247184207800" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5itBwM578SV" resolve="CallMacroTemplate" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM7QPtM">
    <property role="EcuMT" value="6097203247185614706" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="ExpandMacroConstraintArglist" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5itBwM7QPw7" role="1TKVEi">
      <property role="IQ2ns" value="6097203247185614855" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="binding" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5itBwM7QPtN" resolve="ExpandMacroConstraintArgBinding" />
    </node>
  </node>
  <node concept="1TIwiD" id="5itBwM7QPtN">
    <property role="EcuMT" value="6097203247185614707" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="ExpandMacroConstraintArgBinding" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5itBwM7QPtQ" role="1TKVEi">
      <property role="IQ2ns" value="6097203247185614710" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5itBwM6wvc4" resolve="ExpandMacroParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="5itBwM7QPtO" role="1TKVEi">
      <property role="IQ2ns" value="6097203247185614708" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxm2z">
    <property role="EcuMT" value="861509610434289827" />
    <property role="TrG5h" value="ChildFeature" />
    <property role="34LRSv" value="child" />
    <property role="3GE5qa" value="term.feature" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="TermFeature" />
    <node concept="t5JxF" id="3MfP0fwg5vf" role="lGtFl">
      <property role="t5JxN" value="Feature declaration of child term." />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxiL_">
    <property role="EcuMT" value="861509610434276453" />
    <property role="TrG5h" value="TermFeature" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="term.feature" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="JOGAOsxiLA" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxmrx" role="1TKVEi">
      <property role="IQ2ns" value="861509610434291425" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="getter" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="t5JxF" id="3MfP0fwg5uK" role="lGtFl">
      <property role="t5JxN" value="Defines a term feature." />
      <node concept="t5JxR" id="3MfP0fwg5vc" role="t5JxU">
        <ref role="t5JxO" node="JOGAOsxiLy" resolve="TermTemplate" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxTDl">
    <property role="EcuMT" value="861509610434435669" />
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="TermFeatureOverride" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="JOGAOsxTDo" role="1TKVEi">
      <property role="IQ2ns" value="861509610434435672" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="JOGAOsxiL_" resolve="TermFeature" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxTDm" role="1TKVEi">
      <property role="IQ2ns" value="861509610434435670" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="getter" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="asaX9" id="ZNYugt4Qqr" role="lGtFl" />
    </node>
    <node concept="1TJgyj" id="ZNYugt4PuX" role="1TKVEi">
      <property role="IQ2ns" value="1149537088045275069" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="item" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="t5JxF" id="3MfP0fwg5uI" role="lGtFl">
      <property role="t5JxN" value="Allows to override default feature value in term constructor" />
      <node concept="t5JxR" id="3MfP0fwg5uX" role="t5JxU">
        <ref role="t5JxO" node="JOGAOsxanH" resolve="TermConstructor" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxpXw">
    <property role="EcuMT" value="861509610434305888" />
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="ListFeature" />
    <property role="34LRSv" value="list" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="TermFeature" />
    <node concept="t5JxF" id="3MfP0fwg5w7" role="lGtFl">
      <property role="t5JxN" value="Feature declaration of a list of child terms." />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxnj6">
    <property role="EcuMT" value="861509610434294982" />
    <property role="TrG5h" value="ValueFeature" />
    <property role="34LRSv" value="value" />
    <property role="3GE5qa" value="term.feature" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="TermFeature" />
    <node concept="t5JxF" id="3MfP0fwg5w9" role="lGtFl">
      <property role="t5JxN" value="Feature declaration of an Object value." />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxanH">
    <property role="EcuMT" value="861509610434242029" />
    <property role="TrG5h" value="TermConstructor" />
    <property role="3GE5qa" value="term" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="JOGAOsxaC6" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243078" />
      <property role="20kJfa" value="decl" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="JOGAOsxaC9" resolve="TermDeclaration" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxaC4" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243076" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="override" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="JOGAOsxTDl" resolve="TermFeatureOverride" />
    </node>
    <node concept="t5JxF" id="3MfP0fwg5uG" role="lGtFl">
      <property role="t5JxN" value="Creates a term using the template. Enables to override features." />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxaC9">
    <property role="EcuMT" value="861509610434243081" />
    <property role="TrG5h" value="TermDeclaration" />
    <property role="3GE5qa" value="term" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4vr5SApqc6O" role="1TKVEl">
      <property role="IQ2nx" value="5177758076344254900" />
      <property role="TrG5h" value="open" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxaCc" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243084" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="JOGAOsxiLy" resolve="TermTemplate" />
    </node>
    <node concept="PrWs8" id="JOGAOsxaCa" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxaCh" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243089" />
      <property role="20kJfa" value="prototype" />
      <ref role="20lvS9" node="JOGAOsxaC9" resolve="TermDeclaration" />
    </node>
    <node concept="t5JxF" id="3MfP0fwg5uQ" role="lGtFl">
      <property role="t5JxN" value="Contains term template. Provides possibility to extend another term declaration." />
      <node concept="t5JxR" id="3MfP0fwg5v7" role="t5JxU">
        <ref role="t5JxO" node="JOGAOsxaCw" resolve="TermTable" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxaCw">
    <property role="EcuMT" value="861509610434243104" />
    <property role="TrG5h" value="TermTable" />
    <property role="34LRSv" value="term table" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="term" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7LI_gNMkNTa" role="1TKVEi">
      <property role="IQ2ns" value="8966267790978924106" />
      <property role="20kJfa" value="extended" />
      <ref role="20lvS9" node="JOGAOsxaCw" resolve="TermTable" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxaCx" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243105" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="JOGAOsxaC9" resolve="TermDeclaration" />
    </node>
    <node concept="PrWs8" id="JOGAOsxfAQ" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="t5JxF" id="3MfP0fwg5uO" role="lGtFl">
      <property role="t5JxN" value="Contains term declarations." />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxiLy">
    <property role="EcuMT" value="861509610434276450" />
    <property role="TrG5h" value="TermTemplate" />
    <property role="3GE5qa" value="term" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="JOGAOsxiLz" role="1TKVEi">
      <property role="IQ2ns" value="861509610434276451" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="JOGAOsxiL_" resolve="TermFeature" />
    </node>
    <node concept="t5JxF" id="3MfP0fwg5uM" role="lGtFl">
      <property role="t5JxN" value="Defines a term structure by enumerating features." />
      <node concept="t5JxR" id="3MfP0fwg5v2" role="t5JxU">
        <ref role="t5JxO" node="JOGAOsxanH" resolve="TermConstructor" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="4nUKN9YPlxw">
    <property role="EcuMT" value="5042557354438383712" />
    <property role="3GE5qa" value="term" />
    <property role="TrG5h" value="TermListType" />
    <property role="34LRSv" value="termlist" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="24ciDNzqIuw">
    <property role="EcuMT" value="2381360340662937504" />
    <property role="3GE5qa" value="term" />
    <property role="TrG5h" value="TermType" />
    <property role="34LRSv" value="term" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="3MfP0fwgGck">
    <property role="EcuMT" value="4363939677057762068" />
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="TermConstructorDataForm" />
    <ref role="1TJDcQ" to="5j4j:5yqFHXo6Ubn" resolve="DataForm" />
    <node concept="t5JxF" id="3MfP0fwgGcl" role="lGtFl">
      <property role="t5JxN" value="Allows to use term constructor as data form." />
    </node>
    <node concept="1TJgyj" id="3MfP0fwgGcw" role="1TKVEi">
      <property role="IQ2ns" value="4363939677057762080" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="constructor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="JOGAOsxanH" resolve="TermConstructor" />
    </node>
  </node>
  <node concept="1TIwiD" id="5EDW3XE0OAL">
    <property role="EcuMT" value="6533016889629821361" />
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="QueryTable" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="query table" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5EDW3XE0PmY" role="1TKVEi">
      <property role="IQ2ns" value="6533016889629824446" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7P_FdVQ_S6B" resolve="QueryTemplate" />
    </node>
    <node concept="PrWs8" id="5EDW3XE0OBD" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="5EDW3XEaQl5">
    <property role="EcuMT" value="6533016889632449861" />
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="QueryParameter" />
    <property role="34LRSv" value="query" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="4boCUQu22Oh">
    <property role="EcuMT" value="4816779767548751121" />
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="MatchConstraint" />
    <property role="34LRSv" value="match" />
    <ref role="1TJDcQ" node="6p0DfM0ajMA" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="4boCUQu22Oi" role="1TKVEi">
      <property role="IQ2ns" value="4816779767548751122" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="instance" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
    <node concept="1TJgyj" id="4boCUQu22Ok" role="1TKVEi">
      <property role="IQ2ns" value="4816779767548751124" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="pattern" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="6mHZizzmqvc">
    <property role="EcuMT" value="7326790520856487884" />
    <property role="TrG5h" value="ProvideFeedbackOperation" />
    <ref role="1TJDcQ" to="tp25:g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="6mHZizzmtL_" role="1TKVEi">
      <property role="IQ2ns" value="7326790520856501349" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="6mHZizzmtLz" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyi" id="6mHZizzmtLB" role="1TKVEl">
      <property role="IQ2nx" value="7326790520856501351" />
      <property role="TrG5h" value="severity" />
      <ref role="AX2Wp" node="3czCaDvmnMw" resolve="FeedbackSeverity" />
    </node>
  </node>
  <node concept="1TIwiD" id="6PWFJfGbjLY">
    <property role="EcuMT" value="7889373009908939902" />
    <property role="TrG5h" value="MemoExpression" />
    <property role="34LRSv" value="memo" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6PWFJfGbjSW" role="1TKVEi">
      <property role="IQ2ns" value="7889373009908940348" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="key" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="6PWFJfGbjSY" role="1TKVEi">
      <property role="IQ2ns" value="7889373009908940350" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="valueProvider" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="ZNYugt1SnT">
    <property role="EcuMT" value="1149537088044500473" />
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="NodeRefFeature" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="TermFeature" />
  </node>
</model>

