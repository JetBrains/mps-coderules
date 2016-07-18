<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="3" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9" />
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="pmDhvH6q87">
    <property role="TrG5h" value="Handler" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="handler" />
    <property role="EcuMT" value="456733934405394951" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
    <node concept="1TJgyi" id="5lJXKmiM$" role="1TKVEl">
      <property role="TrG5h" value="classname" />
      <property role="IQ2nx" value="1503029985094820" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="pmDhvH6AYm" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6SkxsMzHbfs" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="solver" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="7932111957672637404" />
      <ref role="20lvS9" node="6SkxsMzH1tK" resolve="SolverDeclaration" />
    </node>
    <node concept="1TJgyj" id="pmDhvH7Q5D" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="456733934405771625" />
      <ref role="20lvS9" node="pmDhvH6MQk" resolve="ConstraintDeclaration" />
    </node>
    <node concept="1TJgyj" id="6SkxsM$4Isc" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="local" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="7932111957678810892" />
      <ref role="20lvS9" node="6SkxsM$4Idg" resolve="LocalDeclaration" />
    </node>
    <node concept="1TJgyj" id="pmDhvH7QwP" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="456733934405773365" />
      <ref role="20lvS9" node="pmDhvH6AYs" resolve="Rule" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH6uQ2">
    <property role="TrG5h" value="UserConstraint" />
    <property role="3GE5qa" value="handler.constraints" />
    <property role="EcuMT" value="456733934405414274" />
    <ref role="1TJDcQ" node="5dz6b540Jzm" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="pmDhvH6MRr" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="456733934405496283" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="pmDhvH6MRb" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="456733934405496267" />
      <ref role="20lvS9" node="pmDhvH6MQk" resolve="ConstraintDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH6AYs">
    <property role="TrG5h" value="Rule" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="handler.rules" />
    <property role="EcuMT" value="456733934405447580" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="pmDhvH7GDW" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="guard" />
      <property role="20lbJX" value="0..1" />
      <property role="IQ2ns" value="456733934405732988" />
      <ref role="20lvS9" node="pmDhvH7ECa" resolve="Guard" />
    </node>
    <node concept="1TJgyj" id="pmDhvH7GDY" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="456733934405732990" />
      <ref role="20lvS9" node="pmDhvH7EBt" resolve="Body" />
    </node>
    <node concept="1TJgyi" id="pmDhvH6BuW" role="1TKVEl">
      <property role="TrG5h" value="tag" />
      <property role="IQ2nx" value="456733934405449660" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH6BuV">
    <property role="TrG5h" value="PropagationRule" />
    <property role="34LRSv" value="==&gt;" />
    <property role="R4oN_" value="propagation rule" />
    <property role="3GE5qa" value="handler.rules" />
    <property role="EcuMT" value="456733934405449659" />
    <ref role="1TJDcQ" node="pmDhvH6AYs" resolve="Rule" />
    <node concept="1TJgyj" id="pmDhvH7EB6" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="keptHead" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="456733934405724614" />
      <ref role="20lvS9" node="pmDhvH7E_m" resolve="Head" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH6Bv5">
    <property role="TrG5h" value="SimplificationRule" />
    <property role="34LRSv" value="&lt;=&gt;" />
    <property role="R4oN_" value="simplification rule" />
    <property role="3GE5qa" value="handler.rules" />
    <property role="EcuMT" value="456733934405449669" />
    <ref role="1TJDcQ" node="pmDhvH6AYs" resolve="Rule" />
    <node concept="1TJgyj" id="pmDhvH7GEp" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="keptHead" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="456733934405733017" />
      <ref role="20lvS9" node="pmDhvH7E_m" resolve="Head" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH6Bve">
    <property role="TrG5h" value="SimpagationRule" />
    <property role="34LRSv" value="&lt;=&gt;" />
    <property role="R4oN_" value="simpagation rule" />
    <property role="3GE5qa" value="handler.rules" />
    <property role="EcuMT" value="456733934405449678" />
    <ref role="1TJDcQ" node="pmDhvH6AYs" resolve="Rule" />
    <node concept="1TJgyj" id="pmDhvH7GFm" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="keptHead" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="456733934405733078" />
      <ref role="20lvS9" node="pmDhvH7E_m" resolve="Head" />
    </node>
    <node concept="1TJgyj" id="pmDhvH7GFo" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="replacedHead" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="456733934405733080" />
      <ref role="20lvS9" node="pmDhvH7E_m" resolve="Head" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH6BD8">
    <property role="TrG5h" value="LogicVariable" />
    <property role="3GE5qa" value="handler.rules" />
    <property role="EcuMT" value="456733934405450312" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="PrWs8" id="pmDhvH6MQ7" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="$WpHqBpRF" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH6MQk">
    <property role="TrG5h" value="ConstraintDeclaration" />
    <property role="3GE5qa" value="handler" />
    <property role="EcuMT" value="456733934405496212" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="pmDhvH6MQJ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argumentType" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="456733934405496239" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="PrWs8" id="pmDhvH6MQw" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH7E_m">
    <property role="TrG5h" value="Head" />
    <property role="3GE5qa" value="handler.rules" />
    <property role="EcuMT" value="456733934405724502" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="pmDhvH7E_n" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="456733934405724503" />
      <ref role="20lvS9" node="pmDhvH6uQ2" resolve="UserConstraint" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH7EBt">
    <property role="TrG5h" value="Body" />
    <property role="3GE5qa" value="handler.rules" />
    <property role="EcuMT" value="456733934405724637" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="pmDhvH7EBu" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="456733934405724638" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="pmDhvH7ECa">
    <property role="TrG5h" value="Guard" />
    <property role="3GE5qa" value="handler.rules" />
    <property role="EcuMT" value="456733934405724682" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="pmDhvH7GBk" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="456733934405732820" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6SkxsMzH1tK">
    <property role="TrG5h" value="SolverDeclaration" />
    <property role="3GE5qa" value="handler" />
    <property role="EcuMT" value="7932111957672597360" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6SkxsMzH1PB" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7932111957672598887" />
      <ref role="20lvS9" to="tpee:g7uibYu" resolve="ClassifierType" />
    </node>
  </node>
  <node concept="1TIwiD" id="6SkxsMzMUMd">
    <property role="TrG5h" value="BuiltinConstraint" />
    <property role="3GE5qa" value="handler.constraints" />
    <property role="EcuMT" value="7932111957674142861" />
    <ref role="1TJDcQ" node="5dz6b540Jzm" resolve="AbstractConstraint" />
    <node concept="1TJgyi" id="6SkxsMzN4ze" role="1TKVEl">
      <property role="TrG5h" value="index" />
      <property role="IQ2nx" value="7932111957674182862" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="6SkxsMzMXFf" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="7932111957674154703" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="6SkxsMzMXz4" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="solver" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7932111957674154180" />
      <ref role="20lvS9" node="6SkxsMzH1tK" resolve="SolverDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6SkxsM$4Idg">
    <property role="TrG5h" value="LocalDeclaration" />
    <property role="3GE5qa" value="handler.rules" />
    <property role="EcuMT" value="7932111957678809936" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6SkxsM$4Kd4" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="7932111957678818116" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="6SkxsM$4JZE" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="7932111957678817258" />
      <ref role="20lvS9" node="pmDhvH6BD8" resolve="LogicVariable" />
    </node>
  </node>
  <node concept="1TIwiD" id="35Lj3Tj7dO2">
    <property role="TrG5h" value="InfixBuitinConstraint" />
    <property role="3GE5qa" value="handler.constraints" />
    <property role="EcuMT" value="3562712610792856834" />
    <ref role="1TJDcQ" node="5dz6b540Jzm" resolve="AbstractConstraint" />
    <node concept="1TJgyi" id="35Lj3Tj7nqC" role="1TKVEl">
      <property role="TrG5h" value="index" />
      <property role="IQ2nx" value="3562712610792896168" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="35Lj3Tj7ed0" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="solver" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="3562712610792858432" />
      <ref role="20lvS9" node="6SkxsMzH1tK" resolve="SolverDeclaration" />
    </node>
    <node concept="1TJgyj" id="35Lj3Tj7e3F" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="3562712610792857835" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="35Lj3Tj7e7Z" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="3562712610792858111" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lJXKamzq">
    <property role="TrG5h" value="HandlerType" />
    <property role="3GE5qa" value="handlerType" />
    <property role="EcuMT" value="1503029981964506" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="5lJXKb74G" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="handler" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="1503029982163244" />
      <ref role="20lvS9" node="pmDhvH6q87" resolve="Handler" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lJXKanVr">
    <property role="TrG5h" value="ParameterizedConstraintOperation" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="handlerType.operations" />
    <property role="EcuMT" value="1503029981970139" />
    <ref role="1TJDcQ" node="5lJXKhI_g" resolve="ConstraintOperation" />
    <node concept="1TJgyj" id="5lJXKd_HC" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="1503029982813032" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lJXKaBO1">
    <property role="TrG5h" value="HandlerCreator" />
    <property role="34LRSv" value="handler" />
    <property role="3GE5qa" value="handlerType.operations" />
    <property role="EcuMT" value="1503029982035201" />
    <ref role="1TJDcQ" to="tpee:gEShaYr" resolve="AbstractCreator" />
    <node concept="1TJgyj" id="5lJXKlBV_" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="solver" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="1503029984919269" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="5lJXKb68G" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="handler" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="1503029982159404" />
      <ref role="20lvS9" node="pmDhvH6q87" resolve="Handler" />
    </node>
    <node concept="PrWs8" id="5lJXKcssG" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lJXKdQMz">
    <property role="TrG5h" value="TellConstraintOperation" />
    <property role="34LRSv" value="tell" />
    <property role="3GE5qa" value="handlerType.operations" />
    <property role="EcuMT" value="1503029982882979" />
    <ref role="1TJDcQ" node="5lJXKanVr" resolve="ParameterizedConstraintOperation" />
  </node>
  <node concept="1TIwiD" id="5lJXKhB3b">
    <property role="TrG5h" value="AllConstraintsOperation" />
    <property role="34LRSv" value="all" />
    <property role="3GE5qa" value="handlerType.operations" />
    <property role="EcuMT" value="1503029983867083" />
    <ref role="1TJDcQ" node="5lJXKhI_g" resolve="ConstraintOperation" />
  </node>
  <node concept="1TIwiD" id="5lJXKhI_g">
    <property role="TrG5h" value="ConstraintOperation" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="handlerType.operations" />
    <property role="EcuMT" value="1503029983897936" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5lJXKhIHH" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="PrWs8" id="5lJXKl1jM" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
    <node concept="1TJgyj" id="5lJXKhNAq" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="1503029983918490" />
      <ref role="20lvS9" node="pmDhvH6MQk" resolve="ConstraintDeclaration" />
    </node>
    <node concept="1TJgyi" id="5lJXKhNI7" role="1TKVEl">
      <property role="TrG5h" value="operation" />
      <property role="IQ2nx" value="1503029983918983" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5lJXKqzDG" role="1TKVEl">
      <property role="TrG5h" value="methodname" />
      <property role="IQ2nx" value="1503029986212460" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5dz6b540Jzm">
    <property role="3GE5qa" value="handler.constraints" />
    <property role="TrG5h" value="AbstractConstraint" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="6008673477471697110" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="2q_78a8P9a7">
    <property role="3GE5qa" value="handler.rules" />
    <property role="TrG5h" value="WildcardLogicVariable" />
    <property role="34LRSv" value="_" />
    <property role="EcuMT" value="2784663291565478535" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="asaX9" id="6r6omRlnrom" role="lGtFl" />
  </node>
  <node concept="1TIwiD" id="4EfgX2EshHC">
    <property role="3GE5qa" value="handler.constraints" />
    <property role="TrG5h" value="StaticMethodCallConstraint" />
    <property role="EcuMT" value="5372587443968088936" />
    <ref role="1TJDcQ" node="5dz6b540Jzm" resolve="AbstractConstraint" />
    <node concept="1TJgyj" id="hHp56YpiWP" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="actualArgument" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="319021450862604085" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyi" id="h5npUzI" role="1TKVEl">
      <property role="TrG5h" value="fqClassName" />
      <property role="IQ2nx" value="1173992483054" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="h5npL2N" role="1TKVEl">
      <property role="TrG5h" value="methodName" />
      <property role="IQ2nx" value="1173992444083" />
      <ref role="AX2Wp" to="tpee:fKFJPy9" resolve="_Identifier_String" />
    </node>
  </node>
  <node concept="1TIwiD" id="2KSgAgVcjDm">
    <property role="3GE5qa" value="handler.constraints" />
    <property role="TrG5h" value="JavaExpressionConstraint" />
    <property role="EcuMT" value="3186369734621870678" />
    <ref role="1TJDcQ" node="5dz6b540Jzm" resolve="AbstractConstraint" />
    <node concept="1TJgyi" id="2KSgAgVcjDt" role="1TKVEl">
      <property role="TrG5h" value="expressionId" />
      <property role="IQ2nx" value="3186369734621870685" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2KSgAgVcjDp" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="actualArgument" />
      <property role="20lbJX" value="0..n" />
      <property role="IQ2ns" value="3186369734621870681" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
</model>

