<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
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
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6$jH9oLmUCq">
    <property role="TrG5h" value="Ast" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6$jH9oLmVNm" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="root" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5lJXKARS0" resolve="AbstractNode" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYC_">
    <property role="TrG5h" value="Node" />
    <property role="3GE5qa" value="node" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="AbstractNode" />
    <node concept="1TJgyi" id="6dP_abdQoiG" role="1TKVEl">
      <property role="TrG5h" value="kind" />
      <ref role="AX2Wp" node="6dP_abdQnLY" resolve="NodeKind" />
    </node>
    <node concept="1TJgyj" id="6$jH9oLnyAp" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="role" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6$jH9oLmYD_" resolve="Role" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYD_">
    <property role="TrG5h" value="Role" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="role" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="AbstractNode" />
    <node concept="1TJgyi" id="6$jH9oLmYHk" role="1TKVEl">
      <property role="TrG5h" value="cardinality" />
      <ref role="AX2Wp" node="6$jH9oLmYG0" resolve="Cardinality" />
    </node>
    <node concept="PrWs8" id="6$jH9oLmYEr" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYEJ">
    <property role="TrG5h" value="ChildRole" />
    <property role="3GE5qa" value="role" />
    <ref role="1TJDcQ" node="6$jH9oLmYD_" resolve="Role" />
    <node concept="1TJgyj" id="6$jH9oLmYFB" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5lJXKARS0" resolve="AbstractNode" />
    </node>
  </node>
  <node concept="AxPO7" id="6$jH9oLmYG0">
    <property role="TrG5h" value="Cardinality" />
    <property role="3GE5qa" value="role" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="6$jH9oLmYG1" role="M5hS2">
      <property role="1uS6qv" value="single" />
      <property role="1uS6qo" value="single" />
    </node>
    <node concept="M4N5e" id="6$jH9oLmYGZ" role="M5hS2">
      <property role="1uS6qv" value="multiple" />
      <property role="1uS6qo" value="multiple" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYI0">
    <property role="TrG5h" value="ValueRole" />
    <property role="3GE5qa" value="role" />
    <ref role="1TJDcQ" node="6$jH9oLmYD_" resolve="Role" />
    <node concept="1TJgyj" id="6$jH9oLmYL8" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5lJXKARS0" resolve="AbstractNode" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYJ_">
    <property role="TrG5h" value="ValueHolder" />
    <property role="3GE5qa" value="node.value" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="AbstractNode" />
    <node concept="1TJgyi" id="6$jH9oLmYKA" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLnyB1">
    <property role="TrG5h" value="Symbol" />
    <property role="3GE5qa" value="node" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6$jH9oLnyBN" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pt0VTMEFI$">
    <property role="TrG5h" value="Variable" />
    <property role="3GE5qa" value="node.variable" />
    <ref role="1TJDcQ" node="6SkxsM$4k7r" resolve="AbstractVariable" />
    <node concept="PrWs8" id="1pt0VTMEFI_" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6SkxsM$4k7r">
    <property role="TrG5h" value="AbstractVariable" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="node.variable" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="AbstractNode" />
  </node>
  <node concept="AxPO7" id="6dP_abdQnLY">
    <property role="TrG5h" value="NodeKind" />
    <property role="3lZH7k" value="derive_from_presentation" />
    <property role="3GE5qa" value="node" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="1dOf$WH0KX6" role="M5hS2">
      <property role="1uS6qo" value="inherit" />
    </node>
    <node concept="M4N5e" id="45hxFudjYuy" role="M5hS2">
      <property role="1uS6qo" value="the default" />
      <property role="1uS6qv" value="DEFAULT" />
    </node>
    <node concept="M4N5e" id="6dP_abdTU2g" role="M5hS2">
      <property role="1uS6qv" value="CONCEPT_INSTANCE" />
      <property role="1uS6qo" value="concept instance" />
    </node>
    <node concept="M4N5e" id="6dP_abdQo2a" role="M5hS2">
      <property role="1uS6qv" value="CLASSIFIER_TYPE" />
      <property role="1uS6qo" value="classifier type" />
    </node>
  </node>
  <node concept="AxPO7" id="6dP_abdUiHO">
    <property role="TrG5h" value="StandardRole" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="6dP_abdUiHP" role="M5hS2">
      <property role="1uS6qv" value="concept" />
      <property role="1uS6qo" value="concept" />
    </node>
    <node concept="M4N5e" id="25SygBrhNIm" role="M5hS2">
      <property role="1uS6qv" value="classifier" />
      <property role="1uS6qo" value="classifier" />
    </node>
    <node concept="M4N5e" id="6MozwwzUqt8" role="M5hS2">
      <property role="1uS6qv" value="parameter" />
      <property role="1uS6qo" value="parameter" />
    </node>
  </node>
  <node concept="AxPO7" id="5A$IBX$fPei">
    <property role="TrG5h" value="StandardValue" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="5A$IBX$fPej" role="M5hS2">
      <property role="1uS6qv" value="ClassifierType" />
      <property role="1uS6qo" value="ClassifierType" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lJXKARS0">
    <property role="TrG5h" value="AbstractNode" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="node" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5PpdwMfQ1CZ">
    <property role="TrG5h" value="ValueExpression" />
    <property role="3GE5qa" value="node.value" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="AbstractNode" />
    <node concept="1TJgyj" id="5PpdwMfQ2z_" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="asaX9" id="677NV56sTmy" role="lGtFl" />
  </node>
  <node concept="1TIwiD" id="2q_78a8W4yS">
    <property role="3GE5qa" value="node.variable" />
    <property role="TrG5h" value="WildcardTreeVariable" />
    <property role="34LRSv" value="_" />
    <ref role="1TJDcQ" node="6SkxsM$4k7r" resolve="AbstractVariable" />
  </node>
  <node concept="1TIwiD" id="7E86$tKskWj">
    <property role="TrG5h" value="LogicalValue" />
    <property role="3GE5qa" value="logical" />
    <ref role="1TJDcQ" node="7E86$tKsl45" resolve="LogicalExpression" />
    <node concept="1TJgyj" id="7E86$tKsqnr" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="7E86$tKsl45">
    <property role="TrG5h" value="LogicalExpression" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="logical" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="7E86$tKsHeX">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="AbstractLogicalVariable" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="7E86$tKsl45" resolve="LogicalExpression" />
    <node concept="1TJgyj" id="7E86$tKsJfa" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="index" />
      <ref role="20lvS9" node="7E86$tKskWj" resolve="LogicalValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="7E86$tKt5sV">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="ExpressionLogicalVariable" />
    <ref role="1TJDcQ" node="7E86$tKsHeX" resolve="AbstractLogicalVariable" />
    <node concept="1TJgyj" id="7E86$tKt5BI" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="7E86$tKtfM3">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalVariableDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7E86$tKtioV" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="cardinality" />
      <ref role="20lvS9" node="7E86$tKskWj" resolve="LogicalValue" />
    </node>
    <node concept="1TJgyi" id="7E86$tKtijQ" role="1TKVEl">
      <property role="TrG5h" value="isMulti" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="7E86$tKtid6" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="7E86$tK$Rgo">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalVariableScope" />
  </node>
  <node concept="1TIwiD" id="7E86$tK_OxQ">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalVariableReference" />
    <ref role="1TJDcQ" node="7E86$tKsHeX" resolve="AbstractLogicalVariable" />
    <node concept="1TJgyj" id="7E86$tK_PaH" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="1mP5b6jNC0S">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalType" />
    <property role="34LRSv" value="logical" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="dfChU1zo4B">
    <property role="TrG5h" value="LogicalSubstitution" />
    <property role="3GE5qa" value="node" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyj" id="dfChU1zo4I" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="M6xJ_" id="dfChU1zo4C" role="lGtFl">
      <property role="Hh88m" value="substitute" />
      <node concept="trNpa" id="dfChU1zo4E" role="EQaZv">
        <ref role="trN6q" node="5lJXKARS0" resolve="AbstractNode" />
      </node>
      <node concept="tn0Fv" id="dfChU1zo4G" role="HhnKV">
        <property role="tnX3d" value="false" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="1OShD0HAY6y">
    <property role="3GE5qa" value="node" />
    <property role="TrG5h" value="ListNode" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="AbstractNode" />
    <node concept="1TJgyj" id="1OShD0HAZ38" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5lJXKARS0" resolve="AbstractNode" />
    </node>
  </node>
</model>

