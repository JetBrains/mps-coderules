<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599698500" name="specializedLink" index="20ksaX" />
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
  <node concept="1TIwiD" id="7lmP5gALJri">
    <property role="EcuMT" value="8455178808327599826" />
    <property role="TrG5h" value="TypecheckingQueries" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="typechecking queries" />
    <property role="3GE5qa" value="typecheckingQuery" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7lmP5gALKoA" role="1TKVEi">
      <property role="IQ2ns" value="8455178808327603750" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
    </node>
  </node>
  <node concept="1TIwiD" id="7lmP5gALJP$">
    <property role="EcuMT" value="8455178808327601508" />
    <property role="TrG5h" value="TypecheckingQueryTemplate" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="typecheckingQuery" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7lmP5gALJP_" role="1TKVEi">
      <property role="IQ2ns" value="8455178808327601509" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="7lmP5gALJQ1">
    <property role="EcuMT" value="8455178808327601537" />
    <property role="TrG5h" value="CheckQueryTemplate" />
    <property role="34LRSv" value="check" />
    <property role="3GE5qa" value="typecheckingQuery" />
    <ref role="1TJDcQ" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
  </node>
  <node concept="1TIwiD" id="7lmP5gALKDQ">
    <property role="EcuMT" value="8455178808327604854" />
    <property role="TrG5h" value="TypeofQueryTemplate" />
    <property role="34LRSv" value="typeOf" />
    <property role="3GE5qa" value="typecheckingQuery" />
    <ref role="1TJDcQ" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
  </node>
  <node concept="1TIwiD" id="7lmP5gAYc5S">
    <property role="EcuMT" value="8455178808330862968" />
    <property role="TrG5h" value="TypecheckingQueryParameter" />
    <property role="34LRSv" value="query" />
    <property role="3GE5qa" value="typecheckingQuery" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="7lmP5gAYIZq">
    <property role="EcuMT" value="8455178808331005914" />
    <property role="TrG5h" value="ConvertsQueryTemplate" />
    <property role="34LRSv" value="convertsTo" />
    <property role="3GE5qa" value="typecheckingQuery" />
    <ref role="1TJDcQ" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
  </node>
  <node concept="1TIwiD" id="7lmP5gAYJev">
    <property role="EcuMT" value="8455178808331006879" />
    <property role="TrG5h" value="CoerceToQueryTemplate" />
    <property role="34LRSv" value="coerceTo" />
    <property role="3GE5qa" value="typecheckingQuery" />
    <ref role="1TJDcQ" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
  </node>
  <node concept="1TIwiD" id="6wBZuQUF2vT">
    <property role="EcuMT" value="7505246501517142009" />
    <property role="TrG5h" value="TypeTermTable" />
    <property role="34LRSv" value="typechecking terms" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="typeTerm" />
    <ref role="1TJDcQ" to="wq2x:JOGAOsxaCw" resolve="TermTable" />
    <node concept="1TJgyj" id="6wBZuQUF99Q" role="1TKVEi">
      <property role="IQ2ns" value="7505246501517169270" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
      <ref role="20ksaX" to="wq2x:JOGAOsxaCx" resolve="contents" />
      <ref role="20lvS9" node="6wBZuQUFd0b" resolve="TypeTermDeclaration" />
    </node>
    <node concept="1TJgyj" id="6wBZuQUF9QY" role="1TKVEi">
      <property role="IQ2ns" value="7505246501517172158" />
      <property role="20kJfa" value="extended" />
      <ref role="20ksaX" to="wq2x:7LI_gNMkNTa" resolve="extended" />
      <ref role="20lvS9" node="6wBZuQUF2vT" resolve="TypeTermTable" />
    </node>
  </node>
  <node concept="1TIwiD" id="6wBZuQUFd0b">
    <property role="EcuMT" value="7505246501517185035" />
    <property role="TrG5h" value="TypeTermDeclaration" />
    <property role="3GE5qa" value="typeTerm" />
    <ref role="1TJDcQ" to="wq2x:JOGAOsxaC9" resolve="TermDeclaration" />
    <node concept="1TJgyj" id="6wBZuQUG3fi" role="1TKVEi">
      <property role="IQ2ns" value="7505246501517407186" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="builder" />
      <ref role="20lvS9" node="6wBZuQUG1yn" resolve="TypeNodeBuilder" />
    </node>
  </node>
  <node concept="1TIwiD" id="6wBZuQUG1yn">
    <property role="EcuMT" value="7505246501517400215" />
    <property role="TrG5h" value="TypeNodeBuilder" />
    <property role="3GE5qa" value="typeTerm" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="6wBZuQUG57q" role="1TKVEi">
      <property role="IQ2ns" value="7505246501517414874" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="1vAI4X$MkW8">
    <property role="EcuMT" value="1722266558648635144" />
    <property role="3GE5qa" value="typeTerm" />
    <property role="TrG5h" value="FeatureReferenceExpression" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="1vAI4X$MlAp" role="1TKVEi">
      <property role="IQ2ns" value="1722266558648637849" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="wq2x:JOGAOsxiL_" resolve="TermFeature" />
    </node>
  </node>
  <node concept="1TIwiD" id="4qGA5WCG3z$">
    <property role="EcuMT" value="5092612813121140964" />
    <property role="TrG5h" value="AssignTypePseudoConstraint" />
    <property role="34LRSv" value="assign type" />
    <ref role="1TJDcQ" to="wq2x:18kNIl0mxXI" resolve="PseudoConstraint" />
    <node concept="1TJgyj" id="4qGA5WCG8eX" role="1TKVEi">
      <property role="IQ2ns" value="5092612813121160125" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="location" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="4qGA5WCG9BX" role="1TKVEi">
      <property role="IQ2ns" value="5092612813121165821" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4LE1vMPhxmj">
    <property role="EcuMT" value="5506220077345019283" />
    <property role="TrG5h" value="RecoverType" />
    <property role="34LRSv" value="recover" />
    <ref role="1TJDcQ" to="wq2x:18kNIl0mxXI" resolve="PseudoConstraint" />
    <node concept="1TJgyj" id="4LE1vMPhyby" role="1TKVEi">
      <property role="IQ2ns" value="5506220077345022690" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="term" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
    <node concept="1TJgyj" id="4LE1vMPhyzS" role="1TKVEi">
      <property role="IQ2ns" value="5506220077345024248" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
  </node>
</model>

