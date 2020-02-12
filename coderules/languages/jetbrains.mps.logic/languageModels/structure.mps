<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
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
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9" />
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
  </node>
  <node concept="1TIwiD" id="5lJXKARS0">
    <property role="TrG5h" value="DataNode" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="dataform" />
    <property role="EcuMT" value="1503029989441024" />
    <ref role="1TJDcQ" node="5yqFHXo6Ubn" resolve="DataForm" />
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
  </node>
  <node concept="1TIwiD" id="7E86$tKt5sV">
    <property role="3GE5qa" value="logical.item" />
    <property role="TrG5h" value="ExpressionLogicalVariable" />
    <property role="EcuMT" value="8829335963591530299" />
    <ref role="1TJDcQ" node="7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="7E86$tKt5BI" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8829335963591530990" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
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
    <property role="3GE5qa" value="dataform.expression" />
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
    <node concept="PrWs8" id="PltxfHM3cd" role="PzmwI">
      <ref role="PrY4T" node="PltxfHKvEb" resolve="LogicalUnwrapContext" />
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
    <property role="34LRSv" value="multiLogical" />
    <property role="EcuMT" value="8897567155605135217" />
    <ref role="1TJDcQ" node="1mP5b6jNC0S" resolve="LogicalType" />
  </node>
  <node concept="1TIwiD" id="5NAQwIkRIXT">
    <property role="EcuMT" value="6694277639409954681" />
    <property role="3GE5qa" value="dataform.role" />
    <property role="TrG5h" value="ListRole" />
    <ref role="1TJDcQ" node="6$jH9oLmYD_" resolve="RoleNode" />
    <node concept="1TJgyj" id="5NAQwIkRIYU" role="1TKVEi">
      <property role="IQ2ns" value="6694277639409954746" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="list" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1OShD0HAY6y" resolve="ListNode" />
    </node>
    <node concept="asaX9" id="2L$SfABkf0J" role="lGtFl" />
  </node>
  <node concept="1TIwiD" id="428_4iYhwbR">
    <property role="EcuMT" value="4650129638230983415" />
    <property role="TrG5h" value="ListExpression" />
    <property role="34LRSv" value="list" />
    <property role="3GE5qa" value="dataform.expression" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="5WBVN_MJ9$7" role="1TKVEi">
      <property role="IQ2ns" value="6856711987712006407" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="literal" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5WBVN_MJ50y" resolve="ListLiteral" />
    </node>
    <node concept="asaX9" id="27bTNFdTRnM" role="lGtFl" />
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
  </node>
  <node concept="1TIwiD" id="5WBVN_MJ50y">
    <property role="EcuMT" value="6856711987711987746" />
    <property role="TrG5h" value="ListLiteral" />
    <property role="34LRSv" value="list" />
    <property role="3GE5qa" value="logical.item" />
    <ref role="1TJDcQ" node="7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="5WBVN_MJ50Y" role="1TKVEi">
      <property role="IQ2ns" value="6856711987711987774" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5yqFHXo6Ubn" resolve="DataForm" />
    </node>
    <node concept="asaX9" id="27bTNFeNrZK" role="lGtFl" />
  </node>
  <node concept="1TIwiD" id="28ktUhrjnwn">
    <property role="EcuMT" value="2455719244613908503" />
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="ValueOfExpression" />
    <property role="34LRSv" value="valueOf" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="28ktUhrjrp0" role="1TKVEi">
      <property role="IQ2ns" value="2455719244613924416" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="asaX9" id="7zIaasjAAuv" role="lGtFl" />
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
  </node>
  <node concept="1TIwiD" id="JOGAOsxm2z">
    <property role="EcuMT" value="861509610434289827" />
    <property role="TrG5h" value="ChildFeature" />
    <property role="34LRSv" value="child" />
    <property role="3GE5qa" value="dataform.constructor.feature" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="DataFormFeature" />
  </node>
  <node concept="1TIwiD" id="JOGAOsxiL_">
    <property role="EcuMT" value="861509610434276453" />
    <property role="TrG5h" value="DataFormFeature" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="dataform.constructor.feature" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="JOGAOsxiLC" role="1TKVEl">
      <property role="IQ2nx" value="861509610434276456" />
      <property role="TrG5h" value="final" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="JOGAOsxiLA" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxmrx" role="1TKVEi">
      <property role="IQ2ns" value="861509610434291425" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="getter" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxTDl">
    <property role="EcuMT" value="861509610434435669" />
    <property role="3GE5qa" value="dataform.constructor.feature" />
    <property role="TrG5h" value="DataFormFeatureOverride" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="JOGAOsxTDo" role="1TKVEi">
      <property role="IQ2ns" value="861509610434435672" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="JOGAOsxiL_" resolve="DataFormFeature" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxTDm" role="1TKVEi">
      <property role="IQ2ns" value="861509610434435670" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="getter" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxpXw">
    <property role="EcuMT" value="861509610434305888" />
    <property role="3GE5qa" value="dataform.constructor.feature" />
    <property role="TrG5h" value="ListFeature" />
    <property role="34LRSv" value="list" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="DataFormFeature" />
  </node>
  <node concept="1TIwiD" id="JOGAOsxnj6">
    <property role="EcuMT" value="861509610434294982" />
    <property role="TrG5h" value="ValueFeature" />
    <property role="34LRSv" value="value" />
    <property role="3GE5qa" value="dataform.constructor.feature" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="DataFormFeature" />
  </node>
  <node concept="PlHQZ" id="JOGAOsIRhm">
    <property role="EcuMT" value="861509610437833814" />
    <property role="TrG5h" value="Capture" />
    <property role="3GE5qa" value="logical" />
  </node>
  <node concept="1TIwiD" id="JOGAOsxanH">
    <property role="EcuMT" value="861509610434242029" />
    <property role="TrG5h" value="DataFormConstructor" />
    <property role="3GE5qa" value="dataform.constructor" />
    <ref role="1TJDcQ" node="7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="JOGAOsxaC6" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243078" />
      <property role="20kJfa" value="decl" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="JOGAOsxaC9" resolve="DataFormDeclaration" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxaC4" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243076" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="override" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="JOGAOsxTDl" resolve="DataFormFeatureOverride" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxaC9">
    <property role="EcuMT" value="861509610434243081" />
    <property role="TrG5h" value="DataFormDeclaration" />
    <property role="3GE5qa" value="dataform.constructor" />
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
      <ref role="20lvS9" node="JOGAOsxiLy" resolve="DataFormTemplate" />
    </node>
    <node concept="PrWs8" id="JOGAOsxaCa" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxaCh" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243089" />
      <property role="20kJfa" value="prototype" />
      <ref role="20lvS9" node="JOGAOsxaC9" resolve="DataFormDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxaCw">
    <property role="EcuMT" value="861509610434243104" />
    <property role="TrG5h" value="DataFormTable" />
    <property role="34LRSv" value="DataForm Table" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="dataform.constructor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="JOGAOsxaCx" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243105" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="JOGAOsxaC9" resolve="DataFormDeclaration" />
    </node>
    <node concept="PrWs8" id="JOGAOsxfAQ" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxiLy">
    <property role="EcuMT" value="861509610434276450" />
    <property role="TrG5h" value="DataFormTemplate" />
    <property role="3GE5qa" value="dataform.constructor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="JOGAOsxiLz" role="1TKVEi">
      <property role="IQ2ns" value="861509610434276451" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="JOGAOsxiL_" resolve="DataFormFeature" />
    </node>
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
  </node>
  <node concept="1TIwiD" id="2L$SfAAUQEl">
    <property role="EcuMT" value="3198928998191819413" />
    <property role="3GE5qa" value="dataform" />
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
  <node concept="25R3W" id="3czCaDvmnN5">
    <property role="TrG5h" value="NodeKind" />
    <property role="3GE5qa" value="dataform" />
    <property role="3F6X1D" value="7166797808989207678" />
    <ref role="1H5jkz" node="3czCaDvmnN7" resolve="inherit" />
    <node concept="2JgGob" id="3czCaDvmnN6" role="lGtFl">
      <property role="3scbB" value="5CkWgdpp3fo/by_custom_methods" />
      <property role="3sfsH" value="5CkWgdpp0p2/by_presentation" />
      <node concept="AxPO7" id="6dP_abdQnLY" role="3lCyv">
        <property role="TrG5h" value="NodeKind" />
        <property role="3GE5qa" value="dataform" />
        <property role="3F6X1D" value="7166797808989207678" />
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
    </node>
    <node concept="25R33" id="3czCaDvmnN7" role="25R1y">
      <property role="TrG5h" value="inherit" />
      <property role="3tVfz5" value="1401813893797580614" />
      <ref role="2wpffI" node="1dOf$WH0KX6" />
    </node>
    <node concept="25R33" id="3czCaDvmnN8" role="25R1y">
      <property role="TrG5h" value="the_default" />
      <property role="1L1pqM" value="the default" />
      <property role="3tVfz5" value="4706691208486840226" />
      <ref role="2wpffI" node="45hxFudjYuy" />
    </node>
    <node concept="25R33" id="3czCaDvmnN9" role="25R1y">
      <property role="TrG5h" value="concept_instance" />
      <property role="1L1pqM" value="concept instance" />
      <property role="3tVfz5" value="7166797808990134416" />
      <ref role="2wpffI" node="6dP_abdTU2g" />
    </node>
    <node concept="25R33" id="3czCaDvmnNa" role="25R1y">
      <property role="TrG5h" value="classifier_type" />
      <property role="1L1pqM" value="classifier type" />
      <property role="3tVfz5" value="7166797808989208714" />
      <ref role="2wpffI" node="6dP_abdQo2a" />
    </node>
  </node>
  <node concept="PlHQZ" id="PltxfHKvEb">
    <property role="EcuMT" value="960803923478837899" />
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="LogicalUnwrapContext" />
  </node>
  <node concept="1TIwiD" id="PltxfHNb9C">
    <property role="EcuMT" value="960803923479540328" />
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="LogicalDataForm" />
    <property role="34LRSv" value="logical" />
    <property role="R4oN_" value="logical variable" />
    <ref role="1TJDcQ" node="5yqFHXo6Ubn" resolve="DataForm" />
    <node concept="1TJgyj" id="PltxfHNdqi" role="1TKVEi">
      <property role="IQ2ns" value="960803923479549586" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7E86$tK_OxQ" resolve="LogicalVariable" />
    </node>
  </node>
  <node concept="1TIwiD" id="PltxfHULAb">
    <property role="EcuMT" value="960803923481532811" />
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="ListNodeCons" />
    <property role="34LRSv" value="cons list" />
    <property role="R4oN_" value="cons list node" />
    <ref role="1TJDcQ" node="1OShD0HAY6y" resolve="ListNode" />
    <node concept="1TJgyj" id="PltxfHVVwQ" role="1TKVEi">
      <property role="IQ2ns" value="960803923481835574" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="tail" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5yqFHXo6Ubn" resolve="DataForm" />
    </node>
  </node>
  <node concept="1TIwiD" id="24ciDNzqIuw">
    <property role="EcuMT" value="2381360340662937504" />
    <property role="3GE5qa" value="dataform" />
    <property role="TrG5h" value="TermType" />
    <property role="34LRSv" value="term" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="7zIaasjAAux">
    <property role="EcuMT" value="8713947027062024097" />
    <property role="3GE5qa" value="logical.item.expression" />
    <property role="TrG5h" value="LogicalItemValueExpression" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="7zIaasjAKqg" role="1TKVEi">
      <property role="IQ2ns" value="8713947027062064784" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logical" />
      <ref role="20lvS9" node="7E86$tKsl45" resolve="LogicalItem" />
    </node>
  </node>
  <node concept="PlHQZ" id="7zIaasjACyh">
    <property role="EcuMT" value="8713947027062032529" />
    <property role="3GE5qa" value="logical.item.expression" />
    <property role="TrG5h" value="EvaluationSubject" />
  </node>
</model>

