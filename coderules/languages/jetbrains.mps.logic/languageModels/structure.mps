<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6$jH9oLmUCq">
    <property role="TrG5h" value="DataNodeExpression" />
    <property role="EcuMT" value="7571593955706120730" />
    <property role="3GE5qa" value="dataform.expression" />
    <property role="34LRSv" value="dataform" />
    <property role="R4oN_" value="data form literal expression" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6$jH9oLmVNm" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="root" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7571593955706125526" />
      <ref role="20lvS9" node="5yqFHXo6Ubn" resolve="DataForm" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYC_">
    <property role="TrG5h" value="TermNode" />
    <property role="3GE5qa" value="dataform" />
    <property role="EcuMT" value="7571593955706137125" />
    <property role="34LRSv" value="term" />
    <property role="R4oN_" value="term node" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="DataNode" />
    <node concept="1TJgyj" id="6$jH9oLnyAp" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="role" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="7571593955706284441" />
      <ref role="20lvS9" node="6$jH9oLmYD_" resolve="RoleNode" />
    </node>
    <node concept="t5JxF" id="3MfP0fwfWy8" role="lGtFl">
      <property role="t5JxN" value="!!FIXME rename to ForkNode!! A data node that contains other nodes separated by roles." />
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYD_">
    <property role="TrG5h" value="RoleNode" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="dataform.role" />
    <property role="EcuMT" value="7571593955706137189" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="DataNode" />
    <node concept="PrWs8" id="6$jH9oLmYEr" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYEJ">
    <property role="TrG5h" value="ChildRole" />
    <property role="3GE5qa" value="dataform.role" />
    <property role="EcuMT" value="7571593955706137263" />
    <property role="34LRSv" value="childRole" />
    <property role="R4oN_" value="child role node" />
    <ref role="1TJDcQ" node="6$jH9oLmYD_" resolve="RoleNode" />
    <node concept="1TJgyj" id="6$jH9oLmYFB" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="7571593955706137319" />
      <ref role="20lvS9" node="5yqFHXo6Ubn" resolve="DataForm" />
      <node concept="t5JxF" id="3MfP0fwg5wn" role="lGtFl">
        <property role="t5JxN" value="!!FIXME should be single containment!!" />
      </node>
    </node>
    <node concept="t5JxF" id="3MfP0fwg5wd" role="lGtFl">
      <property role="t5JxN" value="Implements role that can only contain child node." />
      <node concept="t5JxR" id="3MfP0fwg7BL" role="t5JxU">
        <ref role="t5JxO" node="6$jH9oLmYC_" resolve="TermNode" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYI0">
    <property role="TrG5h" value="ValueRole" />
    <property role="3GE5qa" value="dataform.role" />
    <property role="EcuMT" value="7571593955706137472" />
    <property role="34LRSv" value="valueRole" />
    <property role="R4oN_" value="value role node" />
    <ref role="1TJDcQ" node="6$jH9oLmYD_" resolve="RoleNode" />
    <node concept="1TJgyj" id="6$jH9oLmYL8" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="7571593955706137672" />
      <ref role="20lvS9" node="5yqFHXo6Ubn" resolve="DataForm" />
      <node concept="t5JxF" id="3MfP0fwg5ws" role="lGtFl">
        <property role="t5JxN" value="!!FIXME should be single containment!!" />
      </node>
    </node>
    <node concept="t5JxF" id="3MfP0fwg7BE" role="lGtFl">
      <property role="t5JxN" value="Implements role that can only contain value node." />
      <node concept="t5JxR" id="3MfP0fwg7BT" role="t5JxU">
        <ref role="t5JxO" node="6$jH9oLmYJ_" resolve="Value" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="6$jH9oLmYJ_">
    <property role="TrG5h" value="Value" />
    <property role="3GE5qa" value="dataform" />
    <property role="EcuMT" value="7571593955706137573" />
    <property role="34LRSv" value="value" />
    <property role="R4oN_" value="value node" />
    <ref role="1TJDcQ" node="5yqFHXo6Ubn" resolve="DataForm" />
    <node concept="1TJgyi" id="6$jH9oLmYKA" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="7571593955706137638" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="t5JxF" id="3MfP0fwg89n" role="lGtFl">
      <property role="t5JxN" value="Data form that wraps an Object value. Only String can be directly specified." />
      <node concept="t5JxR" id="3MfP0fwg9GW" role="t5JxU">
        <ref role="t5JxO" node="dfChU1zo4B" resolve="Splice" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="5lJXKARS0">
    <property role="TrG5h" value="DataNode" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="dataform" />
    <property role="EcuMT" value="1503029989441024" />
    <ref role="1TJDcQ" node="5yqFHXo6Ubn" resolve="DataForm" />
    <node concept="t5JxF" id="3MfP0fwg5wb" role="lGtFl">
      <property role="t5JxN" value="An abstraction of any &quot;node&quot; that builds up a term. " />
    </node>
  </node>
  <node concept="1TIwiD" id="2q_78a8W4yS">
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="Wildcard" />
    <property role="34LRSv" value="wildcard" />
    <property role="EcuMT" value="2784663291567294648" />
    <property role="R4oN_" value="wildcard node" />
    <ref role="1TJDcQ" node="5yqFHXo6Ubn" resolve="DataForm" />
  </node>
  <node concept="1TIwiD" id="7E86$tKsl45">
    <property role="TrG5h" value="LogicalItem" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="logical.item" />
    <property role="EcuMT" value="8829335963591332101" />
    <node concept="t5JxF" id="3MfP0fwfWyc" role="lGtFl">
      <property role="t5JxN" value="An abstraction of any construct acceptable in a logical context." />
    </node>
  </node>
  <node concept="1TIwiD" id="7E86$tKtfM3">
    <property role="3GE5qa" value="logical.variable" />
    <property role="TrG5h" value="LogicalVariableDeclaration" />
    <property role="EcuMT" value="8829335963591572611" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5f6wxQ3ychO" role="1TKVEi">
      <property role="IQ2ns" value="6036655413809169524" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cardinalityExpr" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="7E86$tKtid6" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="7E86$tK$Rgo">
    <property role="3GE5qa" value="logical.variable" />
    <property role="TrG5h" value="LogicalVariableScope" />
    <property role="EcuMT" value="8829335963593569304" />
  </node>
  <node concept="1TIwiD" id="7E86$tK_OxQ">
    <property role="3GE5qa" value="logical.variable" />
    <property role="TrG5h" value="LogicalVariable" />
    <property role="EcuMT" value="8829335963593820278" />
    <ref role="1TJDcQ" node="7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="7E86$tK_PaH" role="1TKVEi">
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8829335963593822893" />
      <ref role="20lvS9" node="7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    </node>
    <node concept="1TJgyj" id="5f6wxQ3pnWr" role="1TKVEi">
      <property role="IQ2ns" value="6036655413806858011" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="indexExpr" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="1mP5b6jNC0S">
    <property role="3GE5qa" value="logical.type" />
    <property role="TrG5h" value="LogicalType" />
    <property role="34LRSv" value="logical" />
    <property role="EcuMT" value="1564179198502666296" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="5zfvpQ71CIE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dataType" />
      <property role="IQ2ns" value="6399471711045454762" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="dfChU1zo4B">
    <property role="TrG5h" value="Splice" />
    <property role="3GE5qa" value="dataform.attribute" />
    <property role="34LRSv" value="splice" />
    <property role="EcuMT" value="238586457668550951" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyj" id="dfChU1zo4I" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="238586457668550958" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="M6xJ_" id="dfChU1zo4C" role="lGtFl">
      <property role="Hh88m" value="splice" />
      <node concept="trNpa" id="74q$MmS8dM9" role="EQaZv">
        <ref role="trN6q" node="5yqFHXo6Ubn" resolve="DataForm" />
      </node>
      <node concept="tn0Fv" id="dfChU1zo4G" role="HhnKV">
        <property role="tnX3d" value="false" />
      </node>
    </node>
    <node concept="t5JxF" id="3MfP0fwgajx" role="lGtFl">
      <property role="t5JxN" value="Provides a way to substitute data form at runtime by evaluating the enclosed expresison." />
    </node>
  </node>
  <node concept="1TIwiD" id="1OShD0HAY6y">
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="ListNode" />
    <property role="EcuMT" value="2105510410850132386" />
    <property role="R4oN_" value="list node" />
    <property role="34LRSv" value="list" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="DataNode" />
    <node concept="1TJgyj" id="1OShD0HAZ38" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="2105510410850136264" />
      <ref role="20lvS9" node="5yqFHXo6Ubn" resolve="DataForm" />
    </node>
  </node>
  <node concept="PlHQZ" id="75vUFrS_9Sg">
    <property role="3GE5qa" value="logical.variable" />
    <property role="TrG5h" value="LogicalVariableDeclarationContainer" />
    <property role="EcuMT" value="8169506320648805904" />
    <node concept="1TJgyj" id="2E5lcNn8k3O" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <property role="IQ2ns" value="3063948360254832884" />
      <ref role="20lvS9" node="7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    </node>
    <node concept="1TJgyj" id="5zfvpQ72gqq" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dataType" />
      <property role="IQ2ns" value="6399471711045617306" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="PrWs8" id="2vhmmFtwaxm" role="PrDN$">
      <ref role="PrY4T" node="7E86$tK$Rgo" resolve="LogicalVariableScope" />
    </node>
  </node>
  <node concept="1TIwiD" id="7HUwyZb1HXL">
    <property role="3GE5qa" value="logical.type" />
    <property role="TrG5h" value="MultiLogicalType" />
    <property role="34LRSv" value="logical[]" />
    <property role="EcuMT" value="8897567155605135217" />
    <ref role="1TJDcQ" node="1mP5b6jNC0S" resolve="LogicalType" />
    <node concept="t5JxF" id="4nUKN9YNYro" role="lGtFl">
      <property role="t5JxN" value="!!FIXME rename to LogicalArrayType!!" />
    </node>
  </node>
  <node concept="1TIwiD" id="5WBVN_MESCN">
    <property role="EcuMT" value="6856711987710888499" />
    <property role="3GE5qa" value="logical.item" />
    <property role="TrG5h" value="DataNodeLiteral" />
    <property role="34LRSv" value="dataform" />
    <property role="R4oN_" value="data form literal" />
    <ref role="1TJDcQ" node="7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="5WBVN_MESCO" role="1TKVEi">
      <property role="IQ2ns" value="6856711987710888500" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="root" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5yqFHXo6Ubn" resolve="DataForm" />
    </node>
    <node concept="t5JxF" id="3MfP0fwgak1" role="lGtFl">
      <property role="t5JxN" value="Allows to use data form in a logical context." />
    </node>
  </node>
  <node concept="1TIwiD" id="49obaclcan7">
    <property role="EcuMT" value="4780620083400582599" />
    <property role="TrG5h" value="LogicalItemExpression" />
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="49obaclcanY" role="1TKVEi">
      <property role="IQ2ns" value="4780620083400582654" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <ref role="20lvS9" node="7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="5yqFHXo6Ubn">
    <property role="EcuMT" value="6384607696030245591" />
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="DataForm" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="t5JxF" id="3MfP0fwfWy6" role="lGtFl">
      <property role="t5JxN" value="An abstraction of data nodes and variables." />
    </node>
  </node>
  <node concept="PlHQZ" id="JOGAOsIRhm">
    <property role="EcuMT" value="861509610437833814" />
    <property role="TrG5h" value="Capture" />
    <property role="3GE5qa" value="logical" />
    <node concept="asaX9" id="4boCUQu3iqv" role="lGtFl" />
  </node>
  <node concept="1TIwiD" id="7lt0LtQg3tE">
    <property role="EcuMT" value="8456919074574710634" />
    <property role="TrG5h" value="ExpressionItem" />
    <property role="34LRSv" value="expression" />
    <property role="3GE5qa" value="logical.item" />
    <ref role="1TJDcQ" node="7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="7lt0LtQg3vl" role="1TKVEi">
      <property role="IQ2ns" value="8456919074574710741" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="t5JxF" id="3MfP0fwgak3" role="lGtFl">
      <property role="t5JxN" value="Bridges baseLanguage's Expression and logical item." />
    </node>
  </node>
  <node concept="1TIwiD" id="2L$SfAAUQEl">
    <property role="EcuMT" value="3198928998191819413" />
    <property role="3GE5qa" value="dataform.attribute" />
    <property role="TrG5h" value="NewLineAttribute" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="M6xJ_" id="2L$SfAAUS3M" role="lGtFl">
      <property role="Hh88m" value="newline" />
      <node concept="trNpa" id="2L$SfAAVlhr" role="EQaZv">
        <ref role="trN6q" node="5yqFHXo6Ubn" resolve="DataForm" />
      </node>
      <node concept="tn0Fv" id="2L$SfAAV6TP" role="HhnKV" />
    </node>
  </node>
  <node concept="1TIwiD" id="PltxfHNb9C">
    <property role="EcuMT" value="960803923479540328" />
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="LogicalVariableDataForm" />
    <property role="34LRSv" value="logical" />
    <property role="R4oN_" value="logical variable" />
    <ref role="1TJDcQ" node="5yqFHXo6Ubn" resolve="DataForm" />
    <node concept="1TJgyj" id="PltxfHNdqi" role="1TKVEi">
      <property role="IQ2ns" value="960803923479549586" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
    <node concept="t5JxF" id="3MfP0fwg9H8" role="lGtFl">
      <property role="t5JxN" value="Allows to use a logical variable that represents a data form." />
    </node>
  </node>
  <node concept="1TIwiD" id="7zIaasjAAux">
    <property role="EcuMT" value="8713947027062024097" />
    <property role="3GE5qa" value="logical.item.expression" />
    <property role="TrG5h" value="LogicalItemValueExpression" />
    <property role="R4oN_" value="evaluate logical" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="7zIaasjAKqg" role="1TKVEi">
      <property role="IQ2ns" value="8713947027062064784" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
  </node>
  <node concept="PlHQZ" id="7zIaasjACyh">
    <property role="EcuMT" value="8713947027062032529" />
    <property role="3GE5qa" value="logical.item.expression" />
    <property role="TrG5h" value="EvaluationSubject" />
  </node>
  <node concept="1TIwiD" id="hYA4REbm1C">
    <property role="EcuMT" value="323863683626000488" />
    <property role="3GE5qa" value="logical.item.expression" />
    <property role="TrG5h" value="LogicalVariableRefExpression" />
    <property role="34LRSv" value="&amp;" />
    <property role="R4oN_" value="reference logical variable" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="hYA4REb_WC" role="1TKVEi">
      <property role="IQ2ns" value="323863683626065704" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
  </node>
  <node concept="PlHQZ" id="hYA4RE$stU">
    <property role="EcuMT" value="323863683632580474" />
    <property role="3GE5qa" value="logical.item.expression" />
    <property role="TrG5h" value="EvaluationSetting" />
  </node>
  <node concept="1TIwiD" id="1fvYCPAmuWc">
    <property role="EcuMT" value="1432138691741609740" />
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="ConsListNode" />
    <property role="34LRSv" value="cons list" />
    <ref role="1TJDcQ" node="5lJXKARS0" resolve="DataNode" />
    <node concept="1TJgyj" id="1fvYCPAmuWd" role="1TKVEi">
      <property role="IQ2ns" value="1432138691741609741" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="head" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5yqFHXo6Ubn" resolve="DataForm" />
    </node>
    <node concept="1TJgyj" id="1fvYCPAmuWf" role="1TKVEi">
      <property role="IQ2ns" value="1432138691741609743" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="tail" />
      <ref role="20lvS9" node="5yqFHXo6Ubn" resolve="DataForm" />
    </node>
  </node>
</model>

