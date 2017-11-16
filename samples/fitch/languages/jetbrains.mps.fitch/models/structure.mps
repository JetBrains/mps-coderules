<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
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
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3JXBM6C3Cn8">
    <property role="EcuMT" value="4322786184247805384" />
    <property role="TrG5h" value="Constant" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Constant" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3JXBM6C3Fso" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Cn9" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3Cnn">
    <property role="EcuMT" value="4322786184247805399" />
    <property role="TrG5h" value="Not" />
    <property role="34LRSv" value="not" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Negation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3JXBM6C3Cno" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247805400" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fsw" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="PlHQZ" id="3JXBM6C3Cnq">
    <property role="EcuMT" value="4322786184247805402" />
    <property role="TrG5h" value="Sentence" />
    <property role="3GE5qa" value="sentence" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3FnV">
    <property role="EcuMT" value="4322786184247817723" />
    <property role="TrG5h" value="And" />
    <property role="34LRSv" value="and" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Conjunction" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3JXBM6C3FnW" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817724" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="conjunct" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fsj" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3FoA">
    <property role="EcuMT" value="4322786184247817766" />
    <property role="TrG5h" value="Or" />
    <property role="34LRSv" value="or" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Disjunction" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3JXBM6C3Fp4" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817796" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="disjunct" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fsy" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3Fph">
    <property role="EcuMT" value="4322786184247817809" />
    <property role="TrG5h" value="If" />
    <property role="34LRSv" value="if" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Implication" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3JXBM6C3Fpi" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817810" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="antecedent" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="1TJgyj" id="3JXBM6C3Fpk" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817812" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="consequent" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fss" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3Frx">
    <property role="EcuMT" value="4322786184247817953" />
    <property role="TrG5h" value="Iff" />
    <property role="34LRSv" value="iff" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Biconditional" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3JXBM6C3FrF" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817963" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="antecedent" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="1TJgyj" id="3JXBM6C3FrG" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817964" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="consequent" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fsu" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3Fs$">
    <property role="EcuMT" value="4322786184247818020" />
    <property role="TrG5h" value="Proof" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="proof" />
    <property role="3GE5qa" value="proof" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2AfSc6Jvjow" role="1TKVEl">
      <property role="IQ2nx" value="2994859399702197792" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="$u9BK__SAr" role="1TKVEi">
      <property role="IQ2ns" value="657004910291159451" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="goal" />
      <ref role="20lvS9" node="$u9BK__SA8" resolve="Goal" />
    </node>
    <node concept="1TJgyj" id="3JXBM6C4wQA" role="1TKVEi">
      <property role="IQ2ns" value="4322786184248036774" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="content" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3JXBM6C3UQB" resolve="Node" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3URC" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="3JXBM6C5v8v" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C5urr" resolve="Root" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3FsA">
    <property role="EcuMT" value="4322786184247818022" />
    <property role="TrG5h" value="Judgement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3JXBM6C3MQ0" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247848320" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="premise" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3JXBM6C3FsN" resolve="Basis" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Pwg" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3OtS" resolve="Reasoning" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3FsN">
    <property role="EcuMT" value="4322786184247818035" />
    <property role="TrG5h" value="Basis" />
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3JXBM6C3FuH" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247818157" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="reasoning" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3UQB" resolve="Node" />
    </node>
  </node>
  <node concept="PlHQZ" id="3JXBM6C3OtS">
    <property role="EcuMT" value="4322786184247854968" />
    <property role="TrG5h" value="Reasoning" />
    <property role="3GE5qa" value="proof.reasoning" />
    <node concept="1TJgyj" id="2aBGSFggvpT" role="1TKVEi">
      <property role="IQ2ns" value="2497161927181071993" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="conclusion" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C4o1Q" role="PrDN$">
      <ref role="PrY4T" node="3JXBM6C4ntZ" resolve="Leaf" />
    </node>
    <node concept="PrWs8" id="5jVx7S23jt3" role="PrDN$">
      <ref role="PrY4T" node="5jVx7S23jsE" resolve="Proposition" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3Pwi">
    <property role="EcuMT" value="4322786184247859218" />
    <property role="TrG5h" value="Assumption" />
    <property role="34LRSv" value="assumption" />
    <property role="3GE5qa" value="proof.reasoning" />
    <property role="R4oN_" value="Assumption" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3JXBM6C3Pwj" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3OtS" resolve="Reasoning" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3UQ$">
    <property role="EcuMT" value="4322786184247881124" />
    <property role="TrG5h" value="SubProof" />
    <property role="3GE5qa" value="proof" />
    <property role="34LRSv" value="subproof" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3JXBM6C3UQ_" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247881125" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="content" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3JXBM6C3UQB" resolve="Node" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3UQC" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3UQB" resolve="Node" />
    </node>
    <node concept="PrWs8" id="5jVx7S23jsM" role="PzmwI">
      <ref role="PrY4T" node="5jVx7S23jsE" resolve="Proposition" />
    </node>
  </node>
  <node concept="PlHQZ" id="3JXBM6C3UQB">
    <property role="EcuMT" value="4322786184247881127" />
    <property role="TrG5h" value="Node" />
    <property role="3GE5qa" value="proof" />
    <node concept="1TJgyi" id="3JXBM6C4nuA" role="1TKVEl">
      <property role="IQ2nx" value="4322786184247998374" />
      <property role="TrG5h" value="contentSize" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3JXBM6C54BE" role="1TKVEl">
      <property role="IQ2nx" value="4322786184248183274" />
      <property role="TrG5h" value="sequenceNum" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3URE">
    <property role="EcuMT" value="4322786184247881194" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="AndIntro" />
    <property role="34LRSv" value="&amp;I" />
    <property role="R4oN_" value="And Introduction" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3UTz">
    <property role="EcuMT" value="4322786184247881315" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="AndElim" />
    <property role="34LRSv" value="&amp;E" />
    <property role="R4oN_" value="And Elimination" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3UT$">
    <property role="EcuMT" value="4322786184247881316" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="OrIntro" />
    <property role="34LRSv" value="|I" />
    <property role="R4oN_" value="OrIntroduction" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3UT_">
    <property role="EcuMT" value="4322786184247881317" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="OrElim" />
    <property role="34LRSv" value="|E" />
    <property role="R4oN_" value="Or Elimination" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3UTA">
    <property role="EcuMT" value="4322786184247881318" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="NotIntro" />
    <property role="34LRSv" value="~I" />
    <property role="R4oN_" value="Negation Introduction" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3ZJ8">
    <property role="EcuMT" value="4322786184247901128" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="NotElim" />
    <property role="34LRSv" value="~E" />
    <property role="R4oN_" value="Negation Elimination" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3ZJ9">
    <property role="EcuMT" value="4322786184247901129" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="IfIntro" />
    <property role="34LRSv" value="=&gt;I" />
    <property role="R4oN_" value="Implication Introduction" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3ZJm">
    <property role="EcuMT" value="4322786184247901142" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="IfElim" />
    <property role="34LRSv" value="=&gt;E" />
    <property role="R4oN_" value="Implication Elimination" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3ZJn">
    <property role="EcuMT" value="4322786184247901143" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="IffIntro" />
    <property role="34LRSv" value="&lt;=&gt;I" />
    <property role="R4oN_" value="Biconditional Introduction" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="1TIwiD" id="3JXBM6C3ZJo">
    <property role="EcuMT" value="4322786184247901144" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="IffElim" />
    <property role="34LRSv" value="&lt;=&gt;E" />
    <property role="R4oN_" value="Biconditional Elimination" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="PlHQZ" id="3JXBM6C4ntZ">
    <property role="EcuMT" value="4322786184247998335" />
    <property role="3GE5qa" value="proof" />
    <property role="TrG5h" value="Leaf" />
    <node concept="PrWs8" id="3JXBM6C4nu0" role="PrDN$">
      <ref role="PrY4T" node="3JXBM6C3UQB" resolve="Node" />
    </node>
  </node>
  <node concept="PlHQZ" id="3JXBM6C5urr">
    <property role="EcuMT" value="4322786184248288987" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="Root" />
    <node concept="PrWs8" id="3JXBM6C5urs" role="PrDN$">
      <ref role="PrY4T" node="3JXBM6C3UQB" resolve="Node" />
    </node>
  </node>
  <node concept="1TIwiD" id="$u9BK__JRe">
    <property role="EcuMT" value="657004910291123662" />
    <property role="3GE5qa" value="proof.reasoning" />
    <property role="TrG5h" value="Premise" />
    <property role="34LRSv" value="premise" />
    <property role="R4oN_" value="Premise" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="$u9BK__JRf" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3OtS" resolve="Reasoning" />
    </node>
  </node>
  <node concept="1TIwiD" id="$u9BK__SA8">
    <property role="EcuMT" value="657004910291159432" />
    <property role="3GE5qa" value="proof" />
    <property role="TrG5h" value="Goal" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="$u9BK__SA9" role="1TKVEi">
      <property role="IQ2ns" value="657004910291159433" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="sentence" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="2aBGSFge6pw">
    <property role="EcuMT" value="2497161927180445280" />
    <property role="TrG5h" value="Ok" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5jVx7S1Yau5">
    <property role="EcuMT" value="6123633795074140037" />
    <property role="3GE5qa" value="proof.reasoning" />
    <property role="TrG5h" value="Reiteration" />
    <property role="34LRSv" value="R" />
    <property role="R4oN_" value="Reiteration" />
    <ref role="1TJDcQ" node="3JXBM6C3FsA" resolve="Judgement" />
  </node>
  <node concept="PlHQZ" id="5jVx7S23jsE">
    <property role="EcuMT" value="6123633795075487530" />
    <property role="3GE5qa" value="proof" />
    <property role="TrG5h" value="Proposition" />
  </node>
</model>
