<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ec0979fb-ae37-4823-9eaa-8550d9f5c6fd(jetbrains.mps.typechecking.testlang.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7lt0LtPHOlU">
    <property role="EcuMT" value="8456919074565735802" />
    <property role="TrG5h" value="Root" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="root" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7lt0LtPHOme" role="1TKVEi">
      <property role="IQ2ns" value="8456919074565735822" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="stmt" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7mB3viLb8nE" resolve="Stmt" />
    </node>
    <node concept="PrWs8" id="7mB3viLaATe" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7lt0LtPHOm6">
    <property role="EcuMT" value="8456919074565735814" />
    <property role="TrG5h" value="ExprStmt" />
    <ref role="1TJDcQ" node="7mB3viLb8nE" resolve="Stmt" />
    <node concept="1TJgyj" id="7lt0LtPHOmo" role="1TKVEi">
      <property role="IQ2ns" value="8456919074565735832" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expr" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7lt0LtPHOmg" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="7lt0LtPHOmg">
    <property role="EcuMT" value="8456919074565735824" />
    <property role="TrG5h" value="Expr" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="7mB3viLb8nE">
    <property role="EcuMT" value="8477760168143914474" />
    <property role="TrG5h" value="Stmt" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="7mB3viLbaW$">
    <property role="EcuMT" value="8477760168143925028" />
    <property role="TrG5h" value="VarDeclStmt" />
    <ref role="1TJDcQ" node="7mB3viLb8nE" resolve="Stmt" />
    <node concept="1TJgyj" id="7mB3viLbaWO" role="1TKVEi">
      <property role="IQ2ns" value="8477760168143925044" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="decl" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7mB3viLbaW_" resolve="VarDecl" />
    </node>
    <node concept="1TJgyj" id="7mB3viLbaWQ" role="1TKVEi">
      <property role="IQ2ns" value="8477760168143925046" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="init" />
      <ref role="20lvS9" node="7lt0LtPHOmg" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mB3viLbaW_">
    <property role="EcuMT" value="8477760168143925029" />
    <property role="TrG5h" value="VarDecl" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7mB3viLbaWA" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mB3viLbp2X">
    <property role="EcuMT" value="8477760168143982781" />
    <property role="TrG5h" value="Int" />
    <ref role="1TJDcQ" node="7lt0LtPHOmg" resolve="Expr" />
    <node concept="1TJgyi" id="7mB3viLbp2Y" role="1TKVEl">
      <property role="IQ2nx" value="8477760168143982782" />
      <property role="TrG5h" value="val" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mB3viLbCL0">
    <property role="EcuMT" value="8477760168144047168" />
    <property role="TrG5h" value="Type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7mB3viLbCL1" role="1TKVEl">
      <property role="IQ2nx" value="8477760168144047169" />
      <property role="TrG5h" value="name" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7mB3viLggsO" role="1TKVEl">
      <property role="IQ2nx" value="8477760168145258292" />
      <property role="TrG5h" value="val" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mB3viLdltS">
    <property role="EcuMT" value="8477760168144492408" />
    <property role="TrG5h" value="StrConst" />
    <ref role="1TJDcQ" node="7lt0LtPHOmg" resolve="Expr" />
    <node concept="1TJgyi" id="7mB3viLdltT" role="1TKVEl">
      <property role="IQ2nx" value="8477760168144492409" />
      <property role="TrG5h" value="val" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

