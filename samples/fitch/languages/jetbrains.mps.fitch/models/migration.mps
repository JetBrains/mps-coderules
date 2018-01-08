<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b0d68e87-c19f-44c1-8fed-3b2c58e7ac98(jetbrains.mps.fitch.migration)">
  <persistence version="9" />
  <languages>
    <use id="90746344-04fd-4286-97d5-b46ae6a81709" name="jetbrains.mps.lang.migration" version="0" />
    <use id="9882f4ad-1955-46fe-8269-94189e5dbbf2" name="jetbrains.mps.lang.migration.util" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports />
  <registry>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="6911370362349121511" name="jetbrains.mps.lang.smodel.structure.ConceptId" flags="nn" index="2x4n5u">
        <property id="6911370362349122519" name="conceptName" index="2x4mPI" />
        <property id="6911370362349121516" name="conceptId" index="2x4n5l" />
        <property id="6911370362349133804" name="isInterface" index="2x4o5l" />
        <child id="6911370362349121514" name="languageIdentity" index="2x4n5j" />
      </concept>
      <concept id="8415841354032330471" name="jetbrains.mps.lang.smodel.structure.ContainmentLinkId" flags="ng" index="HUanS">
        <property id="8415841354032330474" name="linkName" index="HUanP" />
        <property id="8415841354032330473" name="linkId" index="HUanQ" />
        <child id="8415841354032330472" name="conceptIdentity" index="HUanR" />
      </concept>
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
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
    <language id="90746344-04fd-4286-97d5-b46ae6a81709" name="jetbrains.mps.lang.migration">
      <concept id="3116305438947623354" name="jetbrains.mps.lang.migration.structure.MoveContainmentLink" flags="ng" index="7a1rN">
        <child id="8415841354033040054" name="targetId" index="HTpAD" />
        <child id="8415841354033040053" name="sourceId" index="HTpAE" />
      </concept>
      <concept id="3116305438947623350" name="jetbrains.mps.lang.migration.structure.MoveConcept" flags="ng" index="7a1rZ">
        <child id="8415841354030700269" name="targetId" index="HKsnM" />
        <child id="8415841354030700266" name="sourceId" index="HKsnP" />
      </concept>
      <concept id="3116305438947553624" name="jetbrains.mps.lang.migration.structure.RefactoringPart" flags="ng" index="7amoh">
        <property id="3628660716136424362" name="participant" index="hSBgo" />
        <child id="3628660716136424366" name="finalState" index="hSBgs" />
        <child id="3628660716136424364" name="initialState" index="hSBgu" />
      </concept>
      <concept id="2864063292004102367" name="jetbrains.mps.lang.migration.structure.ReflectionNodeReference" flags="ng" index="2pBcaW">
        <property id="2864063292004102809" name="nodeName" index="2pBc3U" />
        <property id="2864063292004103235" name="modelRef" index="2pBcow" />
        <property id="2864063292004103247" name="nodeId" index="2pBcoG" />
      </concept>
      <concept id="7417095922908675018" name="jetbrains.mps.lang.migration.structure.MigrationScriptReference" flags="ng" index="2z5IEV">
        <property id="7417095922909370996" name="module" index="2wV0G5" />
        <property id="7417095922908725794" name="fromVersion" index="2z5Xdj" />
      </concept>
      <concept id="2015900981881695631" name="jetbrains.mps.lang.migration.structure.RefactoringLog" flags="ng" index="W$Crc">
        <property id="2015900981881695633" name="fromVersion" index="W$Cri" />
        <child id="2015900981881695634" name="part" index="W$Crh" />
        <child id="3597905718825595708" name="options" index="1w76sc" />
      </concept>
      <concept id="7431903976166007326" name="jetbrains.mps.lang.migration.structure.MoveNodeMigrationPart" flags="ng" index="Z4OXk">
        <child id="3116305438947564633" name="specialization" index="7agGg" />
        <child id="7431903976166276375" name="toNode" index="Z5P1t" />
        <child id="7431903976166276373" name="fromNode" index="Z5P1v" />
      </concept>
      <concept id="7431903976166443707" name="jetbrains.mps.lang.migration.structure.PureMigrationScript" flags="ng" index="Z5qvL">
        <property id="7431903976166443708" name="fromVersion" index="Z5qvQ" />
        <child id="7431903976166447091" name="part" index="Z5rET" />
      </concept>
      <concept id="3897914186547825813" name="jetbrains.mps.lang.migration.structure.ConceptMigrationReference" flags="ng" index="30eU3p">
        <child id="3897914186547825817" name="oldConcept" index="30eU3l" />
        <child id="3897914186547825814" name="migrationScript" index="30eU3q" />
      </concept>
      <concept id="3597905718825595712" name="jetbrains.mps.lang.migration.structure.RefactoringOptions" flags="ng" index="1w76tK">
        <child id="3597905718825595718" name="options" index="1w76tQ" />
      </concept>
      <concept id="3597905718825595715" name="jetbrains.mps.lang.migration.structure.RefactoringOption" flags="ng" index="1w76tN">
        <property id="3597905718825595716" name="optionId" index="1w76tO" />
        <property id="3597905718825650036" name="description" index="1w7ld4" />
      </concept>
    </language>
  </registry>
  <node concept="W$Crc" id="4LBPYGUYJw4">
    <property role="3GE5qa" value="refactoring" />
    <property role="W$Cri" value="0" />
    <property role="TrG5h" value="RefactoringLog_0" />
    <node concept="1w76tK" id="4LBPYGUYJw5" role="1w76sc">
      <node concept="1w76tN" id="4LBPYGUYJw6" role="1w76tQ">
        <property role="1w76tO" value="moveNode.options.handleSubconcepts" />
        <property role="1w7ld4" value="Handle subconcepts" />
      </node>
      <node concept="1w76tN" id="4LBPYGUYJw7" role="1w76tQ">
        <property role="1w76tO" value="moveNode.options.moveConceptAspects" />
        <property role="1w7ld4" value="Move concept aspects" />
      </node>
      <node concept="1w76tN" id="4LBPYGUYJw8" role="1w76tQ">
        <property role="1w76tO" value="moveNode.options.updateLocalInstances" />
        <property role="1w7ld4" value="Update instances in current project" />
      </node>
      <node concept="1w76tN" id="4LBPYGUYJw9" role="1w76tQ">
        <property role="1w76tO" value="moveNode.options.updateModelImports" />
        <property role="1w7ld4" value="Update model imports" />
      </node>
      <node concept="1w76tN" id="4LBPYGUYJwa" role="1w76tQ">
        <property role="1w76tO" value="moveNode.options.updateReferencesParticipant" />
        <property role="1w7ld4" value="Update references" />
      </node>
      <node concept="1w76tN" id="4LBPYGUYJwb" role="1w76tQ">
        <property role="1w76tO" value="moveNode.options.writeMigrationScript" />
        <property role="1w7ld4" value="Write migration script" />
      </node>
      <node concept="1w76tN" id="4LBPYGUYJwc" role="1w76tQ">
        <property role="1w76tO" value="moveNode.options.writeRefactoringLog" />
        <property role="1w7ld4" value="Write refactoring log" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwe" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo0" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817726" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="And_Editor" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwd" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817726" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="And_Editor" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwg" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo1" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817728" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@48404" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwf" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817728" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@48404" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwi" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo2" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817735" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48409" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwh" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817735" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48409" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwk" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo3" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817745" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48419" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwj" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817745" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48419" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwm" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo4" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817755" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_RefNodeList@48429" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwl" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817755" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_RefNodeList@48429" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwo" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo5" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817757" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48431" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwn" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817757" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48431" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwq" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo6" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817764" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48376" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwp" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817764" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48376" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJws" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo7" role="hSBgu">
        <property role="2pBcoG" value="4322786184247982261" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="InlineStyleDeclaration@80768" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwr" role="hSBgs">
        <property role="2pBcoG" value="4322786184247982261" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="InlineStyleDeclaration@80768" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwu" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo8" role="hSBgu">
        <property role="2pBcoG" value="4322786184249058111" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SelectableStyleSheetItem@53242" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwt" role="hSBgs">
        <property role="2pBcoG" value="4322786184249058111" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SelectableStyleSheetItem@53242" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJww" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo9" role="hSBgu">
        <property role="2pBcoG" value="4322786184247982262" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@80771" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwv" role="hSBgs">
        <property role="2pBcoG" value="4322786184247982262" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@80771" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwy" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoa" role="hSBgu">
        <property role="2pBcoG" value="4322786184247982263" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@80770" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwx" role="hSBgs">
        <property role="2pBcoG" value="4322786184247982263" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@80770" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJw$" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJob" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817741" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48415" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwz" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817741" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48415" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwA" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoc" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817747" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@48421" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJw_" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817747" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@48421" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJwC" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJod" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817731" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48405" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJwB" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817731" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48405" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJx7" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoe" role="hSBgu">
        <property role="2pBcoG" value="4322786184249162647" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="And_Actions" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJx6" role="hSBgs">
        <property role="2pBcoG" value="4322786184249162647" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="And_Actions" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJx9" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJof" role="hSBgu">
        <property role="2pBcoG" value="4322786184249162648" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJx8" role="hSBgs">
        <property role="2pBcoG" value="4322786184249162648" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxb" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJog" role="hSBgu">
        <property role="2pBcoG" value="4322786184249162649" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@80022" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxa" role="hSBgs">
        <property role="2pBcoG" value="4322786184249162649" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@80022" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxd" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoh" role="hSBgu">
        <property role="2pBcoG" value="4322786184249162650" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@80025" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxc" role="hSBgs">
        <property role="2pBcoG" value="4322786184249162650" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@80025" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxf" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoi" role="hSBgu">
        <property role="2pBcoG" value="4322786184249207682" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@67713" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxe" role="hSBgs">
        <property role="2pBcoG" value="4322786184249207682" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@67713" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxh" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoj" role="hSBgu">
        <property role="2pBcoG" value="4322786184249207683" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="target" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxg" role="hSBgs">
        <property role="2pBcoG" value="4322786184249207683" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="target" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxj" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJok" role="hSBgu">
        <property role="2pBcoG" value="4322786184249207677" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@67642" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxi" role="hSBgs">
        <property role="2pBcoG" value="4322786184249207677" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@67642" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxl" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJol" role="hSBgu">
        <property role="2pBcoG" value="4322786184249207684" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@67715" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxk" role="hSBgs">
        <property role="2pBcoG" value="4322786184249207684" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@67715" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxn" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJom" role="hSBgu">
        <property role="2pBcoG" value="4322786184249207685" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@67714" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxm" role="hSBgs">
        <property role="2pBcoG" value="4322786184249207685" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@67714" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxp" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJon" role="hSBgu">
        <property role="2pBcoG" value="4322786184249207686" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@67717" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxo" role="hSBgs">
        <property role="2pBcoG" value="4322786184249207686" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@67717" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxr" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoo" role="hSBgu">
        <property role="2pBcoG" value="4322786184249207687" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@67716" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxq" role="hSBgs">
        <property role="2pBcoG" value="4322786184249207687" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@67716" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxt" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJop" role="hSBgu">
        <property role="2pBcoG" value="4322786184249207688" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="GetFirstOperation@67719" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxs" role="hSBgs">
        <property role="2pBcoG" value="4322786184249207688" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="GetFirstOperation@67719" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxv" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoq" role="hSBgu">
        <property role="2pBcoG" value="4322786184249208571" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@67000" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxu" role="hSBgs">
        <property role="2pBcoG" value="4322786184249208571" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@67000" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxx" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJor" role="hSBgu">
        <property role="2pBcoG" value="4322786184249209086" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@66493" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxw" role="hSBgs">
        <property role="2pBcoG" value="4322786184249209086" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@66493" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxz" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJos" role="hSBgu">
        <property role="2pBcoG" value="4322786184249208569" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@66998" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxy" role="hSBgs">
        <property role="2pBcoG" value="4322786184249208569" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@66998" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJx_" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJot" role="hSBgu">
        <property role="2pBcoG" value="4322786184249212067" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@63328" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJx$" role="hSBgs">
        <property role="2pBcoG" value="4322786184249212067" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@63328" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxB" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJou" role="hSBgu">
        <property role="2pBcoG" value="4322786184249212710" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@62437" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxA" role="hSBgs">
        <property role="2pBcoG" value="4322786184249212710" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@62437" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxD" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJov" role="hSBgu">
        <property role="2pBcoG" value="4322786184249212205" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@62954" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxC" role="hSBgs">
        <property role="2pBcoG" value="4322786184249212205" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@62954" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxF" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJow" role="hSBgu">
        <property role="2pBcoG" value="4322786184249213437" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_DetachOperation@78517" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxE" role="hSBgs">
        <property role="2pBcoG" value="4322786184249213437" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_DetachOperation@78517" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxH" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJox" role="hSBgu">
        <property role="2pBcoG" value="4322786184249162662" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_CanExecuteFunction@79973" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxG" role="hSBgs">
        <property role="2pBcoG" value="4322786184249162662" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_CanExecuteFunction@79973" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxJ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoy" role="hSBgu">
        <property role="2pBcoG" value="4322786184249162663" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@79972" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxI" role="hSBgs">
        <property role="2pBcoG" value="4322786184249162663" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@79972" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxL" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoz" role="hSBgu">
        <property role="2pBcoG" value="4322786184249163120" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@79407" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxK" role="hSBgs">
        <property role="2pBcoG" value="4322786184249163120" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@79407" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxN" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo$" role="hSBgu">
        <property role="2pBcoG" value="4322786184249192871" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="EqualsExpression@49764" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxM" role="hSBgs">
        <property role="2pBcoG" value="4322786184249192871" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="EqualsExpression@49764" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxP" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJo_" role="hSBgu">
        <property role="2pBcoG" value="4322786184249192889" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="IntegerConstant@49782" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxO" role="hSBgs">
        <property role="2pBcoG" value="4322786184249192889" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="IntegerConstant@49782" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxR" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoA" role="hSBgu">
        <property role="2pBcoG" value="4322786184249171634" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@87409" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxQ" role="hSBgs">
        <property role="2pBcoG" value="4322786184249171634" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@87409" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxT" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoB" role="hSBgu">
        <property role="2pBcoG" value="4322786184249163953" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@95086" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxS" role="hSBgs">
        <property role="2pBcoG" value="4322786184249163953" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@95086" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxV" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoC" role="hSBgu">
        <property role="2pBcoG" value="4322786184249163119" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@79404" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxU" role="hSBgs">
        <property role="2pBcoG" value="4322786184249163119" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@79404" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxX" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoD" role="hSBgu">
        <property role="2pBcoG" value="4322786184249165131" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@93768" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxW" role="hSBgs">
        <property role="2pBcoG" value="4322786184249165131" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@93768" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJxZ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoE" role="hSBgu">
        <property role="2pBcoG" value="4322786184249183424" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="GetSizeOperation@42943" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJxY" role="hSBgs">
        <property role="2pBcoG" value="4322786184249183424" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="GetSizeOperation@42943" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyf" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoF" role="hSBgu">
        <property role="2pBcoG" value="4322786184248730299" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="Constant_Constraints" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJye" role="hSBgs">
        <property role="2pBcoG" value="4322786184248730299" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="Constant_Constraints" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyh" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoG" role="hSBgu">
        <property role="2pBcoG" value="4322786184248730300" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="NodePropertyConstraint@53630" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyg" role="hSBgs">
        <property role="2pBcoG" value="4322786184248730300" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="NodePropertyConstraint@53630" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyj" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoH" role="hSBgu">
        <property role="2pBcoG" value="4322786184248730302" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="ConstraintFunction_PropertyValidator@53632" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyi" role="hSBgs">
        <property role="2pBcoG" value="4322786184248730302" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="ConstraintFunction_PropertyValidator@53632" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyl" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoI" role="hSBgu">
        <property role="2pBcoG" value="4322786184248730303" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="StatementList@53631" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyk" role="hSBgs">
        <property role="2pBcoG" value="4322786184248730303" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="StatementList@53631" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyn" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoJ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248730759" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="MatchRegexpStatement@53127" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJym" role="hSBgs">
        <property role="2pBcoG" value="4322786184248730759" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="MatchRegexpStatement@53127" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyp" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoK" role="hSBgu">
        <property role="2pBcoG" value="4322786184248730760" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="InlineRegexpExpression@53130" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyo" role="hSBgs">
        <property role="2pBcoG" value="4322786184248730760" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="InlineRegexpExpression@53130" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyr" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoL" role="hSBgu">
        <property role="2pBcoG" value="4322786184248746921" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="PlusRegexp@69737" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyq" role="hSBgs">
        <property role="2pBcoG" value="4322786184248746921" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="PlusRegexp@69737" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyt" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoM" role="hSBgu">
        <property role="2pBcoG" value="4322786184248747408" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="PredefinedSymbolClassRegexp@69266" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJys" role="hSBgs">
        <property role="2pBcoG" value="4322786184248747408" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="PredefinedSymbolClassRegexp@69266" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyv" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoN" role="hSBgu">
        <property role="2pBcoG" value="4322786184248730762" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="StatementList@53132" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyu" role="hSBgs">
        <property role="2pBcoG" value="4322786184248730762" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="StatementList@53132" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyx" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoO" role="hSBgu">
        <property role="2pBcoG" value="4322786184248732158" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="ReturnStatement@51904" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyw" role="hSBgs">
        <property role="2pBcoG" value="4322786184248732158" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="ReturnStatement@51904" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyz" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoP" role="hSBgu">
        <property role="2pBcoG" value="4322786184248732626" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="BooleanConstant@51412" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyy" role="hSBgs">
        <property role="2pBcoG" value="4322786184248732626" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="BooleanConstant@51412" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJy_" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoQ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248731231" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="ConstraintsFunctionParameter_propertyValue@52575" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJy$" role="hSBgs">
        <property role="2pBcoG" value="4322786184248731231" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="ConstraintsFunctionParameter_propertyValue@52575" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyB" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoR" role="hSBgu">
        <property role="2pBcoG" value="4322786184248733579" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="ReturnStatement@50315" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyA" role="hSBgs">
        <property role="2pBcoG" value="4322786184248733579" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="ReturnStatement@50315" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyD" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoS" role="hSBgu">
        <property role="2pBcoG" value="4322786184248734544" />
        <property role="2pBcow" value="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)" />
        <property role="2pBc3U" value="BooleanConstant@49234" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyC" role="hSBgs">
        <property role="2pBcoG" value="4322786184248734544" />
        <property role="2pBcow" value="r:8ccc0587-6cb2-4342-adfa-b9156d0d1eeb(jetbrains.mps.logic.propositional.constraints)" />
        <property role="2pBc3U" value="BooleanConstant@49234" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyJ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoT" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805387" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Constant_Editor" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyI" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805387" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Constant_Editor" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyL" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoU" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805389" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@44767" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyK" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805389" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@44767" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyN" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoV" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805396" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyM" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805396" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJyP" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoW" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805392" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@44772" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJyO" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805392" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@44772" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzn" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoX" role="hSBgu">
        <property role="2pBcoG" value="4322786184248684582" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Constant_SubstituteMenu" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzm" role="hSBgs">
        <property role="2pBcoG" value="4322786184248684582" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Constant_SubstituteMenu" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzp" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoY" role="hSBgu">
        <property role="2pBcoG" value="4322786184248684583" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SubstituteMenuPart_Action@66284" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzo" role="hSBgs">
        <property role="2pBcoG" value="4322786184248684583" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SubstituteMenuPart_Action@66284" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzr" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJoZ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248684584" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_SubstituteMenu_Substitute@66287" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzq" role="hSBgs">
        <property role="2pBcoG" value="4322786184248684584" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_SubstituteMenu_Substitute@66287" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzt" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp0" role="hSBgu">
        <property role="2pBcoG" value="4322786184248684585" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@66286" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzs" role="hSBgs">
        <property role="2pBcoG" value="4322786184248684585" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@66286" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzv" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp1" role="hSBgu">
        <property role="2pBcoG" value="4322786184248710568" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@89706" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzu" role="hSBgs">
        <property role="2pBcoG" value="4322786184248710568" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@89706" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzx" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp2" role="hSBgu">
        <property role="2pBcoG" value="4322786184248710569" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="cst" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzw" role="hSBgs">
        <property role="2pBcoG" value="4322786184248710569" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="cst" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzz" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp3" role="hSBgu">
        <property role="2pBcoG" value="4322786184248710566" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@89704" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzy" role="hSBgs">
        <property role="2pBcoG" value="4322786184248710566" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@89704" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJz_" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp4" role="hSBgu">
        <property role="2pBcoG" value="4322786184248710570" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="GenericNewExpression@89708" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJz$" role="hSBgs">
        <property role="2pBcoG" value="4322786184248710570" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="GenericNewExpression@89708" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzB" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp5" role="hSBgu">
        <property role="2pBcoG" value="4322786184248710571" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeCreator@89707" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzA" role="hSBgs">
        <property role="2pBcoG" value="4322786184248710571" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeCreator@89707" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzD" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp6" role="hSBgu">
        <property role="2pBcoG" value="4322786184248710572" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@89710" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzC" role="hSBgs">
        <property role="2pBcoG" value="4322786184248710572" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@89710" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzF" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp7" role="hSBgu">
        <property role="2pBcoG" value="4322786184248708946" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@91220" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzE" role="hSBgs">
        <property role="2pBcoG" value="4322786184248708946" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@91220" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzH" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp8" role="hSBgu">
        <property role="2pBcoG" value="4322786184248715562" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@100844" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzG" role="hSBgs">
        <property role="2pBcoG" value="4322786184248715562" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@100844" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzJ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp9" role="hSBgu">
        <property role="2pBcoG" value="4322786184248711929" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@88505" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzI" role="hSBgs">
        <property role="2pBcoG" value="4322786184248711929" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@88505" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzL" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpa" role="hSBgu">
        <property role="2pBcoG" value="4322786184248710573" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@89709" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzK" role="hSBgs">
        <property role="2pBcoG" value="4322786184248710573" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@89709" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzN" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpb" role="hSBgu">
        <property role="2pBcoG" value="4322786184248713010" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SPropertyAccess@87028" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzM" role="hSBgs">
        <property role="2pBcoG" value="4322786184248713010" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SPropertyAccess@87028" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzP" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpc" role="hSBgu">
        <property role="2pBcoG" value="4322786184248717396" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Property_SetOperation@99158" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzO" role="hSBgs">
        <property role="2pBcoG" value="4322786184248717396" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Property_SetOperation@99158" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzR" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpd" role="hSBgu">
        <property role="2pBcoG" value="4322786184248719172" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_pattern@97350" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzQ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248719172" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_pattern@97350" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzT" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpe" role="hSBgu">
        <property role="2pBcoG" value="4322786184248719678" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@96768" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzS" role="hSBgs">
        <property role="2pBcoG" value="4322786184248719678" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@96768" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzV" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpf" role="hSBgu">
        <property role="2pBcoG" value="4322786184248719676" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@96766" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzU" role="hSBgs">
        <property role="2pBcoG" value="4322786184248719676" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@96766" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzX" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpg" role="hSBgu">
        <property role="2pBcoG" value="4322786184248684846" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SubstituteFeature_MatchingText@66037" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzW" role="hSBgs">
        <property role="2pBcoG" value="4322786184248684846" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SubstituteFeature_MatchingText@66037" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJzZ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJph" role="hSBgu">
        <property role="2pBcoG" value="4322786184248685107" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_SubstituteMenu_SubstituteString@65784" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJzY" role="hSBgs">
        <property role="2pBcoG" value="4322786184248685107" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_SubstituteMenu_SubstituteString@65784" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$1" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpi" role="hSBgu">
        <property role="2pBcoG" value="4322786184248685109" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@65786" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$0" role="hSBgs">
        <property role="2pBcoG" value="4322786184248685109" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@65786" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$3" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpj" role="hSBgu">
        <property role="2pBcoG" value="4322786184248686053" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="MatchRegexpStatement@65194" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$2" role="hSBgs">
        <property role="2pBcoG" value="4322786184248686053" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="MatchRegexpStatement@65194" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$5" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpk" role="hSBgu">
        <property role="2pBcoG" value="4322786184248686054" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="InlineRegexpExpression@65197" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$4" role="hSBgs">
        <property role="2pBcoG" value="4322786184248686054" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="InlineRegexpExpression@65197" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$7" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpl" role="hSBgu">
        <property role="2pBcoG" value="4322786184248760790" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PlusRegexp@72407" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$6" role="hSBgs">
        <property role="2pBcoG" value="4322786184248760790" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PlusRegexp@72407" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$9" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpm" role="hSBgu">
        <property role="2pBcoG" value="4322786184248761352" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PredefinedSymbolClassRegexp@71433" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$8" role="hSBgs">
        <property role="2pBcoG" value="4322786184248761352" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PredefinedSymbolClassRegexp@71433" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$b" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpn" role="hSBgu">
        <property role="2pBcoG" value="4322786184248686056" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@65199" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$a" role="hSBgs">
        <property role="2pBcoG" value="4322786184248686056" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@65199" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$d" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpo" role="hSBgu">
        <property role="2pBcoG" value="4322786184248687686" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ReturnStatement@63309" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$c" role="hSBgs">
        <property role="2pBcoG" value="4322786184248687686" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ReturnStatement@63309" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$f" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpp" role="hSBgu">
        <property role="2pBcoG" value="4322786184248694589" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_pattern@72701" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$e" role="hSBgs">
        <property role="2pBcoG" value="4322786184248694589" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_pattern@72701" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$h" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpq" role="hSBgu">
        <property role="2pBcoG" value="4322786184248686605" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_pattern@64274" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$g" role="hSBgs">
        <property role="2pBcoG" value="4322786184248686605" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_pattern@64274" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$j" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpr" role="hSBgu">
        <property role="2pBcoG" value="4322786184248697950" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@85856" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$i" role="hSBgs">
        <property role="2pBcoG" value="4322786184248697950" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@85856" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$l" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJps" role="hSBgu">
        <property role="2pBcoG" value="4322786184248697949" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$k" role="hSBgs">
        <property role="2pBcoG" value="4322786184248697949" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$x" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpt" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817815" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="If_Editor" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$w" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817815" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="If_Editor" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$z" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpu" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817817" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@48491" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$y" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817817" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@48491" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$_" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpv" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817916" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48528" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$$" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817916" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48528" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$B" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpw" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817922" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48598" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$A" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817922" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48598" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$D" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpx" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817824" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$C" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817824" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$F" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpy" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817830" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48442" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$E" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817830" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48442" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$H" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpz" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817843" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$G" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817843" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$J" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp$" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817943" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48617" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$I" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817943" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48617" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$L" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJp_" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817951" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@48625" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$K" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817951" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@48625" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ$N" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpA" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817820" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48496" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ$M" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817820" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48496" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_9" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpB" role="hSBgu">
        <property role="2pBcoG" value="4322786184249255285" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="If_Actions" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_8" role="hSBgs">
        <property role="2pBcoG" value="4322786184249255285" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="If_Actions" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_b" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpC" role="hSBgu">
        <property role="2pBcoG" value="4322786184249255286" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_a" role="hSBgs">
        <property role="2pBcoG" value="4322786184249255286" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_d" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpD" role="hSBgu">
        <property role="2pBcoG" value="4322786184249255287" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@52783" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_c" role="hSBgs">
        <property role="2pBcoG" value="4322786184249255287" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@52783" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_f" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpE" role="hSBgu">
        <property role="2pBcoG" value="4322786184249255288" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@52786" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_e" role="hSBgs">
        <property role="2pBcoG" value="4322786184249255288" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@52786" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_h" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpF" role="hSBgu">
        <property role="2pBcoG" value="4322786184249262256" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@62314" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_g" role="hSBgs">
        <property role="2pBcoG" value="4322786184249262256" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@62314" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_j" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpG" role="hSBgu">
        <property role="2pBcoG" value="4322786184249262744" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@61842" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_i" role="hSBgs">
        <property role="2pBcoG" value="4322786184249262744" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@61842" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_l" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpH" role="hSBgu">
        <property role="2pBcoG" value="4322786184249262255" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@62311" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_k" role="hSBgs">
        <property role="2pBcoG" value="4322786184249262255" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@62311" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_n" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpI" role="hSBgu">
        <property role="2pBcoG" value="4322786184249264171" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@60131" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_m" role="hSBgs">
        <property role="2pBcoG" value="4322786184249264171" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@60131" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_p" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpJ" role="hSBgu">
        <property role="2pBcoG" value="4322786184249267661" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@57029" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_o" role="hSBgs">
        <property role="2pBcoG" value="4322786184249267661" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@57029" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_r" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpK" role="hSBgu">
        <property role="2pBcoG" value="4322786184249264775" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@59775" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_q" role="hSBgs">
        <property role="2pBcoG" value="4322786184249264775" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@59775" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_t" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpL" role="hSBgu">
        <property role="2pBcoG" value="4322786184249264213" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@60237" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_s" role="hSBgs">
        <property role="2pBcoG" value="4322786184249264213" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@60237" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_v" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpM" role="hSBgu">
        <property role="2pBcoG" value="4322786184249266318" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkAccess@58248" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_u" role="hSBgs">
        <property role="2pBcoG" value="4322786184249266318" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkAccess@58248" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_x" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpN" role="hSBgu">
        <property role="2pBcoG" value="4322786184249269273" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_DetachOperation@55057" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_w" role="hSBgs">
        <property role="2pBcoG" value="4322786184249269273" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_DetachOperation@55057" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_z" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpO" role="hSBgu">
        <property role="2pBcoG" value="4322786184249255300" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_CanExecuteFunction@52862" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_y" role="hSBgs">
        <property role="2pBcoG" value="4322786184249255300" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_CanExecuteFunction@52862" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ__" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpP" role="hSBgu">
        <property role="2pBcoG" value="4322786184249255301" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@52861" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_$" role="hSBgs">
        <property role="2pBcoG" value="4322786184249255301" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@52861" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_B" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpQ" role="hSBgu">
        <property role="2pBcoG" value="4322786184249390567" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@48801" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_A" role="hSBgs">
        <property role="2pBcoG" value="4322786184249390567" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@48801" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_D" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpR" role="hSBgu">
        <property role="2pBcoG" value="4322786184249391400" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@47588" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_C" role="hSBgs">
        <property role="2pBcoG" value="4322786184249391400" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@47588" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_F" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpS" role="hSBgu">
        <property role="2pBcoG" value="4322786184249390566" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@48802" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_E" role="hSBgs">
        <property role="2pBcoG" value="4322786184249390566" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@48802" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_H" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpT" role="hSBgu">
        <property role="2pBcoG" value="4322786184249408233" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ApproveDelete_Operation@63907" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_G" role="hSBgs">
        <property role="2pBcoG" value="4322786184249408233" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ApproveDelete_Operation@63907" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_J" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpU" role="hSBgu">
        <property role="2pBcoG" value="4322786184249408722" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ConceptFunctionParameter_editorContext@63438" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_I" role="hSBgs">
        <property role="2pBcoG" value="4322786184249408722" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ConceptFunctionParameter_editorContext@63438" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_V" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpV" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817954" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Iff_Editor" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_U" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817954" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Iff_Editor" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_X" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpW" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817985" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@48147" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_W" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817985" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@48147" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJ_Z" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpX" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817986" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48150" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJ_Y" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817986" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48150" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJA1" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpY" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817987" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48149" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJA0" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817987" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48149" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJA3" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJpZ" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817988" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJA2" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817988" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJA5" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq0" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817989" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48151" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJA4" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817989" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48151" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJA7" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq1" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817990" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJA6" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817990" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJA9" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq2" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817991" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48153" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJA8" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817991" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48153" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAb" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq3" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817992" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@48156" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAa" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817992" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@48156" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAd" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq4" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817993" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48155" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAc" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817993" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48155" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAx" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq5" role="hSBgu">
        <property role="2pBcoG" value="4322786184249269652" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Iff_Actions" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAw" role="hSBgs">
        <property role="2pBcoG" value="4322786184249269652" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Iff_Actions" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAz" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq6" role="hSBgu">
        <property role="2pBcoG" value="4322786184249269653" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAy" role="hSBgs">
        <property role="2pBcoG" value="4322786184249269653" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJA_" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq7" role="hSBgu">
        <property role="2pBcoG" value="4322786184249269654" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@54928" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJA$" role="hSBgs">
        <property role="2pBcoG" value="4322786184249269654" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@54928" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAB" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq8" role="hSBgu">
        <property role="2pBcoG" value="4322786184249269655" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@54927" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAA" role="hSBgs">
        <property role="2pBcoG" value="4322786184249269655" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@54927" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAD" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq9" role="hSBgu">
        <property role="2pBcoG" value="4322786184249276727" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@63983" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAC" role="hSBgs">
        <property role="2pBcoG" value="4322786184249276727" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@63983" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAF" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqa" role="hSBgu">
        <property role="2pBcoG" value="4322786184249277215" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@63511" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAE" role="hSBgs">
        <property role="2pBcoG" value="4322786184249277215" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@63511" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAH" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqb" role="hSBgu">
        <property role="2pBcoG" value="4322786184249276726" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@63984" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAG" role="hSBgs">
        <property role="2pBcoG" value="4322786184249276726" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@63984" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAJ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqc" role="hSBgu">
        <property role="2pBcoG" value="4322786184249278642" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@78699" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAI" role="hSBgs">
        <property role="2pBcoG" value="4322786184249278642" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@78699" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAL" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqd" role="hSBgu">
        <property role="2pBcoG" value="4322786184249279246" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@77831" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAK" role="hSBgs">
        <property role="2pBcoG" value="4322786184249279246" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@77831" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAN" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqe" role="hSBgu">
        <property role="2pBcoG" value="4322786184249278684" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@78805" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAM" role="hSBgs">
        <property role="2pBcoG" value="4322786184249278684" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@78805" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAP" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqf" role="hSBgu">
        <property role="2pBcoG" value="4322786184249280092" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkAccess@77141" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAO" role="hSBgs">
        <property role="2pBcoG" value="4322786184249280092" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkAccess@77141" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAR" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqg" role="hSBgu">
        <property role="2pBcoG" value="4322786184249269667" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_CanExecuteFunction@54875" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAQ" role="hSBgs">
        <property role="2pBcoG" value="4322786184249269667" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_CanExecuteFunction@54875" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAT" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqh" role="hSBgu">
        <property role="2pBcoG" value="4322786184249269668" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@54878" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAS" role="hSBgs">
        <property role="2pBcoG" value="4322786184249269668" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@54878" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAV" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqi" role="hSBgu">
        <property role="2pBcoG" value="4322786184249431203" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@89948" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAU" role="hSBgs">
        <property role="2pBcoG" value="4322786184249431203" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@89948" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAX" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqj" role="hSBgu">
        <property role="2pBcoG" value="4322786184249431204" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@89951" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAW" role="hSBgs">
        <property role="2pBcoG" value="4322786184249431204" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@89951" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJAZ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqk" role="hSBgu">
        <property role="2pBcoG" value="4322786184249431205" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@89950" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJAY" role="hSBgs">
        <property role="2pBcoG" value="4322786184249431205" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@89950" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJB1" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJql" role="hSBgu">
        <property role="2pBcoG" value="4322786184249431206" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ApproveDelete_Operation@89953" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJB0" role="hSBgs">
        <property role="2pBcoG" value="4322786184249431206" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ApproveDelete_Operation@89953" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJB3" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqm" role="hSBgu">
        <property role="2pBcoG" value="4322786184249431207" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ConceptFunctionParameter_editorContext@89952" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJB2" role="hSBgs">
        <property role="2pBcoG" value="4322786184249431207" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ConceptFunctionParameter_editorContext@89952" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBb" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqn" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805403" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Not_Editor" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBa" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805403" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Not_Editor" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBd" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqo" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805405" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@44783" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBc" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805405" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@44783" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBf" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqp" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805412" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@44728" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBe" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805412" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@44728" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBh" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqq" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817721" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48843" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBg" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817721" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48843" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBj" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqr" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805418" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBi" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805418" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBl" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqs" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805408" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@44724" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBk" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805408" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@44724" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBx" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqt" role="hSBgu">
        <property role="2pBcoG" value="4322786184248938696" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Not_SubstituteMenu" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBw" role="hSBgs">
        <property role="2pBcoG" value="4322786184248938696" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Not_SubstituteMenu" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBz" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqu" role="hSBgu">
        <property role="2pBcoG" value="4322786184248938697" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SubstituteMenuPart_Action@58314" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBy" role="hSBgs">
        <property role="2pBcoG" value="4322786184248938697" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SubstituteMenuPart_Action@58314" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJB_" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqv" role="hSBgu">
        <property role="2pBcoG" value="4322786184248938698" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_SubstituteMenu_Substitute@58317" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJB$" role="hSBgs">
        <property role="2pBcoG" value="4322786184248938698" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_SubstituteMenu_Substitute@58317" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBB" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqw" role="hSBgu">
        <property role="2pBcoG" value="4322786184248938699" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@58316" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBA" role="hSBgs">
        <property role="2pBcoG" value="4322786184248938699" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@58316" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBD" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqx" role="hSBgu">
        <property role="2pBcoG" value="4322786184248938946" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@58053" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBC" role="hSBgs">
        <property role="2pBcoG" value="4322786184248938946" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@58053" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBF" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqy" role="hSBgu">
        <property role="2pBcoG" value="4322786184248938944" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="GenericNewExpression@58051" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBE" role="hSBgs">
        <property role="2pBcoG" value="4322786184248938944" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="GenericNewExpression@58051" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBH" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqz" role="hSBgu">
        <property role="2pBcoG" value="4322786184248939733" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeCreator@57302" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBG" role="hSBgs">
        <property role="2pBcoG" value="4322786184248939733" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeCreator@57302" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBJ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq$" role="hSBgu">
        <property role="2pBcoG" value="4322786184248939735" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@57304" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBI" role="hSBgs">
        <property role="2pBcoG" value="4322786184248939735" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@57304" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBL" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJq_" role="hSBgu">
        <property role="2pBcoG" value="4322786184248940764" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SubstituteFeature_MatchingText@56287" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBK" role="hSBgs">
        <property role="2pBcoG" value="4322786184248940764" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SubstituteFeature_MatchingText@56287" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJBN" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqA" role="hSBgu">
        <property role="2pBcoG" value="4322786184248941022" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="~" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBM" role="hSBgs">
        <property role="2pBcoG" value="4322786184248941022" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="~" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJC0" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqB" role="hSBgu">
        <property role="2pBcoG" value="4322786184248976531" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Not_Actions" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJBZ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248976531" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Not_Actions" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJC2" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqC" role="hSBgu">
        <property role="2pBcoG" value="4322786184248976532" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJC1" role="hSBgs">
        <property role="2pBcoG" value="4322786184248976532" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJC4" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqD" role="hSBgu">
        <property role="2pBcoG" value="4322786184248976533" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@102289" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJC3" role="hSBgs">
        <property role="2pBcoG" value="4322786184248976533" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@102289" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJC6" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqE" role="hSBgu">
        <property role="2pBcoG" value="4322786184248976534" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@102292" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJC5" role="hSBgs">
        <property role="2pBcoG" value="4322786184248976534" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@102292" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJC8" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqF" role="hSBgu">
        <property role="2pBcoG" value="4322786184248976547" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@102239" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJC7" role="hSBgs">
        <property role="2pBcoG" value="4322786184248976547" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@102239" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCa" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqG" role="hSBgu">
        <property role="2pBcoG" value="4322786184248977035" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@101767" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJC9" role="hSBgs">
        <property role="2pBcoG" value="4322786184248977035" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@101767" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCc" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqH" role="hSBgu">
        <property role="2pBcoG" value="4322786184248976546" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@102240" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCb" role="hSBgs">
        <property role="2pBcoG" value="4322786184248976546" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@102240" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCe" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqI" role="hSBgu">
        <property role="2pBcoG" value="4322786184248978462" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@100124" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCd" role="hSBgs">
        <property role="2pBcoG" value="4322786184248978462" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@100124" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCg" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqJ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248979162" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@99800" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCf" role="hSBgs">
        <property role="2pBcoG" value="4322786184248979162" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@99800" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCi" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqK" role="hSBgu">
        <property role="2pBcoG" value="4322786184248978600" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@100198" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCh" role="hSBgs">
        <property role="2pBcoG" value="4322786184248978600" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@100198" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCk" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqL" role="hSBgu">
        <property role="2pBcoG" value="4322786184248980609" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkAccess@98173" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCj" role="hSBgs">
        <property role="2pBcoG" value="4322786184248980609" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkAccess@98173" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJC$" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqM" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817767" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Or_Editor" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCz" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817767" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Or_Editor" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCA" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqN" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817769" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@48379" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJC_" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817769" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Collection@48379" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCC" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqO" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817776" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48388" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCB" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817776" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48388" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCE" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqP" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817786" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48398" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCD" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817786" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@48398" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCG" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqQ" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817798" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_RefNodeList@48474" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCF" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817798" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_RefNodeList@48474" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCI" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqR" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817800" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48476" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCH" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817800" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48476" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCK" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqS" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817807" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48481" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCJ" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817807" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48481" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCM" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqT" role="hSBgu">
        <property role="2pBcoG" value="4322786184247982250" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="InlineStyleDeclaration@80759" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCL" role="hSBgs">
        <property role="2pBcoG" value="4322786184247982250" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="InlineStyleDeclaration@80759" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCO" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqU" role="hSBgu">
        <property role="2pBcoG" value="4322786184249058120" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SelectableStyleSheetItem@53317" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCN" role="hSBgs">
        <property role="2pBcoG" value="4322786184249058120" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SelectableStyleSheetItem@53317" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCQ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqV" role="hSBgu">
        <property role="2pBcoG" value="4322786184247982252" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@80761" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCP" role="hSBgs">
        <property role="2pBcoG" value="4322786184247982252" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@80761" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCS" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqW" role="hSBgu">
        <property role="2pBcoG" value="4322786184247982257" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@80764" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCR" role="hSBgs">
        <property role="2pBcoG" value="4322786184247982257" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationRightStyleClassItem@80764" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCU" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqX" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817782" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48394" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCT" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817782" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellModel_Constant@48394" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCW" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqY" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817788" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@48400" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCV" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817788" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="PunctuationLeftStyleClassItem@48400" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJCY" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJqZ" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817772" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48384" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJCX" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817772" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellLayout_Indent@48384" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDt" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr0" role="hSBgu">
        <property role="2pBcoG" value="4322786184249075016" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Or_Actions" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDs" role="hSBgs">
        <property role="2pBcoG" value="4322786184249075016" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Or_Actions" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDv" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr1" role="hSBgu">
        <property role="2pBcoG" value="4322786184249075017" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDu" role="hSBgs">
        <property role="2pBcoG" value="4322786184249075017" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDx" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr2" role="hSBgu">
        <property role="2pBcoG" value="4322786184249075018" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@69191" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDw" role="hSBgs">
        <property role="2pBcoG" value="4322786184249075018" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_ExecuteFunction@69191" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDz" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr3" role="hSBgu">
        <property role="2pBcoG" value="4322786184249075019" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@69190" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDy" role="hSBgs">
        <property role="2pBcoG" value="4322786184249075019" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@69190" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJD_" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr4" role="hSBgu">
        <property role="2pBcoG" value="4322786184249135863" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@57781" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJD$" role="hSBgs">
        <property role="2pBcoG" value="4322786184249135863" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@57781" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDB" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr5" role="hSBgu">
        <property role="2pBcoG" value="4322786184249135864" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="target" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDA" role="hSBgs">
        <property role="2pBcoG" value="4322786184249135864" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="target" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDD" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr6" role="hSBgu">
        <property role="2pBcoG" value="4322786184249135860" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@57780" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDC" role="hSBgs">
        <property role="2pBcoG" value="4322786184249135860" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@57780" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDF" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr7" role="hSBgu">
        <property role="2pBcoG" value="4322786184249135865" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@57783" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDE" role="hSBgs">
        <property role="2pBcoG" value="4322786184249135865" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@57783" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDH" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr8" role="hSBgu">
        <property role="2pBcoG" value="4322786184249135866" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@57786" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDG" role="hSBgs">
        <property role="2pBcoG" value="4322786184249135866" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@57786" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDJ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr9" role="hSBgu">
        <property role="2pBcoG" value="4322786184249135867" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@57785" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDI" role="hSBgs">
        <property role="2pBcoG" value="4322786184249135867" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@57785" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDL" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJra" role="hSBgu">
        <property role="2pBcoG" value="4322786184249135868" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@57788" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDK" role="hSBgs">
        <property role="2pBcoG" value="4322786184249135868" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@57788" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDN" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrb" role="hSBgu">
        <property role="2pBcoG" value="4322786184249135869" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="GetFirstOperation@57787" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDM" role="hSBgs">
        <property role="2pBcoG" value="4322786184249135869" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="GetFirstOperation@57787" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDP" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrc" role="hSBgu">
        <property role="2pBcoG" value="4322786184249136750" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@56622" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDO" role="hSBgs">
        <property role="2pBcoG" value="4322786184249136750" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@56622" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDR" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrd" role="hSBgu">
        <property role="2pBcoG" value="4322786184249137267" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@56113" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDQ" role="hSBgs">
        <property role="2pBcoG" value="4322786184249137267" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@56113" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDT" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJre" role="hSBgu">
        <property role="2pBcoG" value="4322786184249136748" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@56620" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDS" role="hSBgs">
        <property role="2pBcoG" value="4322786184249136748" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@56620" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDV" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrf" role="hSBgu">
        <property role="2pBcoG" value="4322786184249138854" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@54630" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDU" role="hSBgs">
        <property role="2pBcoG" value="4322786184249138854" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithAnotherOperation@54630" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDX" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrg" role="hSBgu">
        <property role="2pBcoG" value="4322786184249139497" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@70119" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDW" role="hSBgs">
        <property role="2pBcoG" value="4322786184249139497" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@70119" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJDZ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrh" role="hSBgu">
        <property role="2pBcoG" value="4322786184249138992" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@54256" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJDY" role="hSBgs">
        <property role="2pBcoG" value="4322786184249138992" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@54256" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJE1" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJri" role="hSBgu">
        <property role="2pBcoG" value="4322786184249140803" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_DetachOperation@68929" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJE0" role="hSBgs">
        <property role="2pBcoG" value="4322786184249140803" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_DetachOperation@68929" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJE3" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrj" role="hSBgu">
        <property role="2pBcoG" value="4322786184249075051" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_CanExecuteFunction@69158" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJE2" role="hSBgs">
        <property role="2pBcoG" value="4322786184249075051" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_CanExecuteFunction@69158" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJE5" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrk" role="hSBgu">
        <property role="2pBcoG" value="4322786184249075052" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@69161" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJE4" role="hSBgs">
        <property role="2pBcoG" value="4322786184249075052" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@69161" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJE7" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrl" role="hSBgu">
        <property role="2pBcoG" value="4322786184249075509" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@68592" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJE6" role="hSBgs">
        <property role="2pBcoG" value="4322786184249075509" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@68592" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJE9" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrm" role="hSBgu">
        <property role="2pBcoG" value="4322786184249106025" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="EqualsExpression@87335" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJE8" role="hSBgs">
        <property role="2pBcoG" value="4322786184249106025" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="EqualsExpression@87335" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJEb" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrn" role="hSBgu">
        <property role="2pBcoG" value="4322786184249107753" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="IntegerConstant@101863" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJEa" role="hSBgs">
        <property role="2pBcoG" value="4322786184249107753" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="IntegerConstant@101863" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJEd" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJro" role="hSBgu">
        <property role="2pBcoG" value="4322786184249084252" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@76380" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJEc" role="hSBgs">
        <property role="2pBcoG" value="4322786184249084252" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@76380" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJEf" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrp" role="hSBgu">
        <property role="2pBcoG" value="4322786184249076575" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@67674" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJEe" role="hSBgs">
        <property role="2pBcoG" value="4322786184249076575" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@67674" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJEh" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrq" role="hSBgu">
        <property role="2pBcoG" value="4322786184249075508" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@68593" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJEg" role="hSBgs">
        <property role="2pBcoG" value="4322786184249075508" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="CellActionMap_FunctionParm_selectedNode@68593" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJEj" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrr" role="hSBgu">
        <property role="2pBcoG" value="4322786184249077749" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@66736" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJEi" role="hSBgs">
        <property role="2pBcoG" value="4322786184249077749" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@66736" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJEl" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrs" role="hSBgu">
        <property role="2pBcoG" value="4322786184249096042" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="GetSizeOperation@80938" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJEk" role="hSBgs">
        <property role="2pBcoG" value="4322786184249096042" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="GetSizeOperation@80938" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHE" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrt" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773245" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Sentence_TransformationMenu" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHD" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773245" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Sentence_TransformationMenu" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHG" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJru" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773246" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationMenuSection@92479" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHF" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773246" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationMenuSection@92479" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHI" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrv" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773258" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@92555" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHH" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773258" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@92555" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHK" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrw" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773260" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@92557" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHJ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773260" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@92557" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHM" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrx" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773262" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@92559" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHL" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773262" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@92559" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHO" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJry" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773815" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@92022" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHN" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773815" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@92022" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHQ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrz" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773814" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="&amp;" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHP" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773814" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="&amp;" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHS" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr$" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773264" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@92561" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHR" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773264" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@92561" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHU" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJr_" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773266" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@92563" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHT" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773266" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@92563" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHW" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrA" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779412" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@102805" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHV" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779412" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@102805" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJHY" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrB" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779413" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHX" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779413" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJI0" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrC" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779411" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@102802" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJHZ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779411" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@102802" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJI2" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrD" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779414" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@102807" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJI1" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779414" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@102807" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJI4" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrE" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779770" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@102587" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJI3" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779770" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@102587" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJI6" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrF" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779771" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="and" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJI5" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779771" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="and" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJI8" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrG" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779767" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@102582" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJI7" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779767" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@102582" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIa" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrH" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779772" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@102589" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJI9" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779772" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@102589" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIc" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrI" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779773" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@102588" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIb" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779773" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@102588" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIe" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrJ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779774" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@102591" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJId" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779774" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@102591" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIg" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrK" role="hSBgu">
        <property role="2pBcoG" value="4322786184248776765" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@88828" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIf" role="hSBgs">
        <property role="2pBcoG" value="4322786184248776765" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@88828" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIi" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrL" role="hSBgu">
        <property role="2pBcoG" value="4322786184248786398" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@95967" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIh" role="hSBgs">
        <property role="2pBcoG" value="4322786184248786398" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@95967" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIk" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrM" role="hSBgu">
        <property role="2pBcoG" value="4322786184248780476" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@101757" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIj" role="hSBgs">
        <property role="2pBcoG" value="4322786184248780476" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@101757" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIm" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrN" role="hSBgu">
        <property role="2pBcoG" value="4322786184248779775" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@102590" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIl" role="hSBgs">
        <property role="2pBcoG" value="4322786184248779775" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@102590" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIo" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrO" role="hSBgu">
        <property role="2pBcoG" value="4322786184248781203" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@101010" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIn" role="hSBgs">
        <property role="2pBcoG" value="4322786184248781203" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@101010" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIq" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrP" role="hSBgu">
        <property role="2pBcoG" value="4322786184248797739" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="AddElementOperation@51434" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIp" role="hSBgs">
        <property role="2pBcoG" value="4322786184248797739" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="AddElementOperation@51434" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIs" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrQ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248798344" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@51081" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIr" role="hSBgs">
        <property role="2pBcoG" value="4322786184248798344" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@51081" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIu" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrR" role="hSBgu">
        <property role="2pBcoG" value="4322786184248831609" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@83259" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIt" role="hSBgs">
        <property role="2pBcoG" value="4322786184248831609" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@83259" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIw" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrS" role="hSBgu">
        <property role="2pBcoG" value="4322786184248840358" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@90986" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIv" role="hSBgs">
        <property role="2pBcoG" value="4322786184248840358" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@90986" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIy" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrT" role="hSBgu">
        <property role="2pBcoG" value="4322786184248832618" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@82222" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIx" role="hSBgs">
        <property role="2pBcoG" value="4322786184248832618" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@82222" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJI$" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrU" role="hSBgu">
        <property role="2pBcoG" value="4322786184248831607" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@83257" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIz" role="hSBgs">
        <property role="2pBcoG" value="4322786184248831607" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@83257" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIA" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrV" role="hSBgu">
        <property role="2pBcoG" value="4322786184248834238" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@80770" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJI_" role="hSBgs">
        <property role="2pBcoG" value="4322786184248834238" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@80770" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIC" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrW" role="hSBgu">
        <property role="2pBcoG" value="4322786184248857992" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LinkList_AddNewChildOperation@40588" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIB" role="hSBgs">
        <property role="2pBcoG" value="4322786184248857992" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LinkList_AddNewChildOperation@40588" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIE" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrX" role="hSBgu">
        <property role="2pBcoG" value="4322786184248893510" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@86857" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJID" role="hSBgs">
        <property role="2pBcoG" value="4322786184248893510" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@86857" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIG" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrY" role="hSBgu">
        <property role="2pBcoG" value="4322786184248893512" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@86859" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIF" role="hSBgs">
        <property role="2pBcoG" value="4322786184248893512" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@86859" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJII" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJrZ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248893514" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@86861" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIH" role="hSBgs">
        <property role="2pBcoG" value="4322786184248893514" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@86861" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIK" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs0" role="hSBgu">
        <property role="2pBcoG" value="4322786184248894067" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@86324" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIJ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248894067" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@86324" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIM" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs1" role="hSBgu">
        <property role="2pBcoG" value="4322786184248894066" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="|" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIL" role="hSBgs">
        <property role="2pBcoG" value="4322786184248894066" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="|" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIO" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs2" role="hSBgu">
        <property role="2pBcoG" value="4322786184248893516" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@86863" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIN" role="hSBgs">
        <property role="2pBcoG" value="4322786184248893516" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@86863" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIQ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs3" role="hSBgu">
        <property role="2pBcoG" value="4322786184248893518" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@86865" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIP" role="hSBgs">
        <property role="2pBcoG" value="4322786184248893518" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@86865" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIS" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs4" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902415" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@94224" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIR" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902415" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@94224" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIU" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs5" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902416" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIT" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902416" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIW" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs6" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902417" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@94226" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIV" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902417" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@94226" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJIY" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs7" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902418" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@94229" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIX" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902418" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@94229" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJ0" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs8" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902419" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@94228" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJIZ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902419" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@94228" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJ2" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs9" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902420" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="or" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJ1" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902420" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="or" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJ4" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsa" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902421" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@94230" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJ3" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902421" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@94230" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJ6" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsb" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902422" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@94233" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJ5" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902422" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@94233" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJ8" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsc" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902423" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@94232" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJ7" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902423" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@94232" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJa" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsd" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902424" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@94235" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJ9" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902424" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@94235" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJc" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJse" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902425" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@94234" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJb" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902425" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@94234" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJe" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsf" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902426" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@94237" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJd" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902426" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@94237" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJg" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsg" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902427" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@94236" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJf" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902427" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@94236" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJi" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsh" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902428" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@94239" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJh" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902428" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@94239" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJk" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsi" role="hSBgu">
        <property role="2pBcoG" value="4322786184248913071" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@100208" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJj" role="hSBgs">
        <property role="2pBcoG" value="4322786184248913071" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@100208" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJm" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsj" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902430" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="AddElementOperation@94241" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJl" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902430" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="AddElementOperation@94241" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJo" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsk" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902431" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@94240" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJn" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902431" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@94240" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJq" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsl" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902432" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@94179" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJp" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902432" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@94179" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJs" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsm" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902433" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@94178" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJr" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902433" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@94178" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJu" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsn" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902434" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@94181" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJt" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902434" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@94181" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJw" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJso" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902435" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@94180" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJv" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902435" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@94180" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJy" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsp" role="hSBgu">
        <property role="2pBcoG" value="4322786184248914557" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@98622" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJx" role="hSBgs">
        <property role="2pBcoG" value="4322786184248914557" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@98622" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJ$" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsq" role="hSBgu">
        <property role="2pBcoG" value="4322786184248902437" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LinkList_AddNewChildOperation@94182" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJz" role="hSBgs">
        <property role="2pBcoG" value="4322786184248902437" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LinkList_AddNewChildOperation@94182" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJA" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsr" role="hSBgu">
        <property role="2pBcoG" value="4322786184248997906" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@47888" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJ_" role="hSBgs">
        <property role="2pBcoG" value="4322786184248997906" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@47888" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJC" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJss" role="hSBgu">
        <property role="2pBcoG" value="4322786184248997908" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@47890" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJB" role="hSBgs">
        <property role="2pBcoG" value="4322786184248997908" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@47890" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJE" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJst" role="hSBgu">
        <property role="2pBcoG" value="4322786184248997910" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@47892" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJD" role="hSBgs">
        <property role="2pBcoG" value="4322786184248997910" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@47892" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJG" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsu" role="hSBgu">
        <property role="2pBcoG" value="4322786184249001623" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@60819" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJF" role="hSBgs">
        <property role="2pBcoG" value="4322786184249001623" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@60819" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJI" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsv" role="hSBgu">
        <property role="2pBcoG" value="4322786184249001622" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="=&gt;" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJH" role="hSBgs">
        <property role="2pBcoG" value="4322786184249001622" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="=&gt;" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJK" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsw" role="hSBgu">
        <property role="2pBcoG" value="4322786184248997912" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@47894" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJJ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248997912" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@47894" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJM" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsx" role="hSBgu">
        <property role="2pBcoG" value="4322786184248997914" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@47896" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJL" role="hSBgs">
        <property role="2pBcoG" value="4322786184248997914" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@47896" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJO" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsy" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002716" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@59866" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJN" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002716" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@59866" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJQ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsz" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002717" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJP" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002717" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJS" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs$" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002718" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@59868" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJR" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002718" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@59868" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJU" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJs_" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002719" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@59867" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJT" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002719" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@59867" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJW" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsA" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002720" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@59806" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJV" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002720" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@59806" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJJY" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsB" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002721" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="_if" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJX" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002721" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="_if" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJK0" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsC" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002722" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@59808" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJJZ" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002722" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@59808" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJK2" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsD" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002723" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@59807" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJK1" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002723" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@59807" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJK4" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsE" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002724" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@59810" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJK3" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002724" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@59810" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJK6" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsF" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002725" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@59809" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJK5" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002725" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@59809" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJK8" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsG" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002726" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@59812" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJK7" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002726" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@59812" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKa" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsH" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002727" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@59811" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJK9" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002727" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@59811" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKc" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsI" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002728" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@59814" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKb" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002728" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@59814" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKe" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsJ" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002729" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@59813" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKd" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002729" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@59813" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKg" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsK" role="hSBgu">
        <property role="2pBcoG" value="4322786184249011310" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkAccess@67372" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKf" role="hSBgs">
        <property role="2pBcoG" value="4322786184249011310" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkAccess@67372" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKi" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsL" role="hSBgu">
        <property role="2pBcoG" value="4322786184249012697" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Link_SetTargetOperation@66261" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKh" role="hSBgs">
        <property role="2pBcoG" value="4322786184249012697" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Link_SetTargetOperation@66261" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKk" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsM" role="hSBgu">
        <property role="2pBcoG" value="4322786184249012867" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@65919" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKj" role="hSBgs">
        <property role="2pBcoG" value="4322786184249012867" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@65919" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKm" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsN" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002733" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@59817" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKl" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002733" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@59817" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKo" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsO" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002734" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@59820" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKn" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002734" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@59820" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKq" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsP" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002735" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@59819" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKp" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002735" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@59819" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKs" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsQ" role="hSBgu">
        <property role="2pBcoG" value="4322786184249002736" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@59822" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKr" role="hSBgs">
        <property role="2pBcoG" value="4322786184249002736" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@59822" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKu" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsR" role="hSBgu">
        <property role="2pBcoG" value="4322786184249014429" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkAccess@64409" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKt" role="hSBgs">
        <property role="2pBcoG" value="4322786184249014429" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkAccess@64409" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKw" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsS" role="hSBgu">
        <property role="2pBcoG" value="4322786184249014817" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Link_SetNewChildOperation@63709" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKv" role="hSBgs">
        <property role="2pBcoG" value="4322786184249014817" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Link_SetNewChildOperation@63709" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKy" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsT" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032569" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@78900" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKx" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032569" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@78900" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJK$" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsU" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032570" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@78903" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKz" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032570" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@78903" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKA" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsV" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032571" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@78902" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJK_" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032571" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@78902" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKC" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsW" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032572" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@78905" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKB" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032572" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@78905" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKE" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsX" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032573" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="&lt;=&gt;" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKD" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032573" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="&lt;=&gt;" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKG" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsY" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032574" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@78907" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKF" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032574" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@78907" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKI" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJsZ" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032575" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@78906" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKH" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032575" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@78906" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKK" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt0" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032576" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@78973" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKJ" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032576" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@78973" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKM" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt1" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032577" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKL" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032577" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKO" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt2" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032578" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@78975" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKN" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032578" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@78975" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKQ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt3" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032579" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@78974" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKP" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032579" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@78974" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKS" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt4" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032580" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@78977" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKR" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032580" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@78977" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKU" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt5" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032581" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="iff" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKT" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032581" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="iff" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKW" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt6" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032582" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@78979" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKV" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032582" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@78979" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJKY" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt7" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032583" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@78978" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKX" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032583" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@78978" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJL0" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt8" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032584" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@78981" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJKZ" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032584" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@78981" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJL2" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt9" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032585" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@78980" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJL1" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032585" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@78980" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJL4" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJta" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032586" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@78983" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJL3" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032586" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@78983" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJL6" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtb" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032587" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@78982" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJL5" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032587" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@78982" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJL8" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtc" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032588" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@78985" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJL7" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032588" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@78985" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLa" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtd" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032589" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@78984" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJL9" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032589" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@78984" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLc" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJte" role="hSBgu">
        <property role="2pBcoG" value="4322786184249038480" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkAccess@89485" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLb" role="hSBgs">
        <property role="2pBcoG" value="4322786184249038480" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkAccess@89485" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLe" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtf" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032591" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Link_SetTargetOperation@78986" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLd" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032591" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Link_SetTargetOperation@78986" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLg" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtg" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032592" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@78989" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLf" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032592" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@78989" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLi" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJth" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032593" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@78988" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLh" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032593" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@78988" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLk" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJti" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032594" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@78991" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLj" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032594" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@78991" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLm" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtj" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032595" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@78990" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLl" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032595" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@78990" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLo" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtk" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032596" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@78993" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLn" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032596" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@78993" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLq" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtl" role="hSBgu">
        <property role="2pBcoG" value="4322786184249039346" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkAccess@88751" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLp" role="hSBgs">
        <property role="2pBcoG" value="4322786184249039346" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkAccess@88751" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLs" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtm" role="hSBgu">
        <property role="2pBcoG" value="4322786184249032598" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Link_SetNewChildOperation@78995" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLr" role="hSBgs">
        <property role="2pBcoG" value="4322786184249032598" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Link_SetNewChildOperation@78995" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLu" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtn" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773250" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationLocation_SideTransform@92547" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLt" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773250" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationLocation_SideTransform@92547" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLw" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJto" role="hSBgu">
        <property role="2pBcoG" value="4322786184248773252" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationLocation_SideTransform_PlaceInCellHolder@92549" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLv" role="hSBgs">
        <property role="2pBcoG" value="4322786184248773252" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationLocation_SideTransform_PlaceInCellHolder@92549" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLy" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtp" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872920" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationMenuSection@58588" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLx" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872920" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationMenuSection@58588" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJL$" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtq" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872921" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@58587" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLz" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872921" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@58587" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLA" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtr" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872922" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@58590" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJL_" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872922" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@58590" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLC" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJts" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872923" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@58589" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLB" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872923" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@58589" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLE" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtt" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872924" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@58592" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLD" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872924" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@58592" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLG" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtu" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872925" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="&amp;" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLF" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872925" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="&amp;" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLI" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtv" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872926" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@58594" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLH" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872926" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@58594" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLK" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtw" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872927" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@58593" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLJ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872927" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@58593" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLM" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtx" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872928" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@58532" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLL" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872928" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@58532" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLO" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJty" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872929" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLN" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872929" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLQ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtz" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872930" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@58534" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLP" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872930" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@58534" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLS" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt$" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872931" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@58533" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLR" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872931" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@58533" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLU" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJt_" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872932" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@58536" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLT" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872932" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@58536" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLW" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtA" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872933" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="and" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLV" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872933" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="and" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJLY" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtB" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872934" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@58538" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLX" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872934" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@58538" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJM0" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtC" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872935" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@58537" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJLZ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872935" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@58537" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJM2" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtD" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872936" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@58540" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJM1" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872936" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@58540" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJM4" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtE" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872937" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@58539" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJM3" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872937" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@58539" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJM6" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtF" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872945" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@58547" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJM5" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872945" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@58547" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJM8" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtG" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872946" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@58550" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJM7" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872946" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@58550" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMa" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtH" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872947" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@58549" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJM9" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872947" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@58549" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMc" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtI" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872948" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@58552" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMb" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872948" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@58552" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMe" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtJ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872949" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@58551" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMd" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872949" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@58551" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMg" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtK" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872950" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LinkList_AddNewChildOperation@58554" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMf" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872950" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LinkList_AddNewChildOperation@58554" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMi" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtL" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872938" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@58542" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMh" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872938" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@58542" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMk" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtM" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872939" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@58541" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMj" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872939" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@58541" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMm" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtN" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872940" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@58544" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMl" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872940" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@58544" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMo" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtO" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872941" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@58543" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMn" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872941" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@58543" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMq" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtP" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872942" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@58546" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMp" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872942" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@58546" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMs" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtQ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872943" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="AddElementOperation@58545" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMr" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872943" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="AddElementOperation@58545" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMu" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtR" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872944" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@58548" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMt" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872944" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@58548" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMw" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtS" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917185" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@96194" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMv" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917185" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@96194" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMy" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtT" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917186" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@96197" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMx" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917186" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@96197" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJM$" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtU" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917187" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@96196" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMz" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917187" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@96196" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMA" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtV" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917188" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@96199" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJM_" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917188" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@96199" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMC" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtW" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917189" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="|" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMB" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917189" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="|" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJME" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtX" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917190" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@96201" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMD" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917190" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@96201" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMG" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtY" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917191" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@96200" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMF" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917191" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@96200" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMI" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJtZ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917192" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@96203" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMH" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917192" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@96203" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMK" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu0" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917193" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMJ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917193" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMM" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu1" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917194" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@96205" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJML" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917194" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@96205" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMO" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu2" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917195" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@96204" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMN" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917195" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@96204" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMQ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu3" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917196" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@96207" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMP" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917196" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@96207" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMS" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu4" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917197" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="or" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMR" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917197" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="or" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMU" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu5" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917198" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@96209" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMT" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917198" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@96209" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMW" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu6" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917199" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@96208" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMV" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917199" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@96208" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJMY" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu7" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917200" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@96211" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMX" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917200" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@96211" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJN0" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu8" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917201" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@96210" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJMZ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917201" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@96210" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJN2" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu9" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917209" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@96218" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJN1" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917209" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@96218" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJN4" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJua" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917210" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@96221" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJN3" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917210" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@96221" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJN6" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJub" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917211" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@96220" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJN5" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917211" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@96220" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJN8" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuc" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917212" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@96223" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJN7" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917212" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@96223" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNa" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJud" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917213" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@96222" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJN9" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917213" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@96222" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNc" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJue" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917214" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LinkList_AddNewChildOperation@96225" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNb" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917214" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LinkList_AddNewChildOperation@96225" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNe" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuf" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917202" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@96213" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNd" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917202" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@96213" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNg" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJug" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917203" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@96212" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNf" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917203" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@96212" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNi" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuh" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917204" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@96215" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNh" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917204" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@96215" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNk" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJui" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917205" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@96214" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNj" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917205" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@96214" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNm" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuj" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917206" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@96217" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNl" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917206" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkListAccess@96217" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNo" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuk" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917207" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="AddElementOperation@96216" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNn" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917207" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="AddElementOperation@96216" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNq" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJul" role="hSBgu">
        <property role="2pBcoG" value="4322786184248917208" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@96219" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNp" role="hSBgs">
        <property role="2pBcoG" value="4322786184248917208" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@96219" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNs" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJum" role="hSBgu">
        <property role="2pBcoG" value="4322786184248950352" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@62803" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNr" role="hSBgs">
        <property role="2pBcoG" value="4322786184248950352" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationMenuPart_Action@62803" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNu" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJun" role="hSBgu">
        <property role="2pBcoG" value="4322786184248950354" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@62805" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNt" role="hSBgs">
        <property role="2pBcoG" value="4322786184248950354" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_ActionLabelText@62805" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNw" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuo" role="hSBgu">
        <property role="2pBcoG" value="4322786184248950356" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@62807" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNv" role="hSBgs">
        <property role="2pBcoG" value="4322786184248950356" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@62807" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNy" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJup" role="hSBgu">
        <property role="2pBcoG" value="4322786184248954061" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@75721" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNx" role="hSBgs">
        <property role="2pBcoG" value="4322786184248954061" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@75721" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJN$" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuq" role="hSBgu">
        <property role="2pBcoG" value="4322786184248954060" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="~" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNz" role="hSBgs">
        <property role="2pBcoG" value="4322786184248954060" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="~" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNA" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJur" role="hSBgu">
        <property role="2pBcoG" value="4322786184248950358" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@62809" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJN_" role="hSBgs">
        <property role="2pBcoG" value="4322786184248950358" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunction_TransformationMenu_Execute@62809" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNC" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJus" role="hSBgu">
        <property role="2pBcoG" value="4322786184248950360" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="StatementList@62811" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNB" role="hSBgs">
        <property role="2pBcoG" value="4322786184248950360" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="StatementList@62811" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNE" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJut" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955154" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@74256" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJND" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955154" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@74256" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNG" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuu" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955155" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNF" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955155" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="orig" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNI" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuv" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955156" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@74258" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNH" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955156" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@74258" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNK" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuw" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955157" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@74257" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNJ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955157" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@74257" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNM" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJux" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955158" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@74260" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNL" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955158" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="LocalVariableDeclarationStatement@74260" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNO" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuy" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955159" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="not" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNN" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955159" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="not" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNQ" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuz" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955160" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SNodeType@74262" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNP" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955160" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SNodeType@74262" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNS" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu$" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955161" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@74261" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNR" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955161" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@74261" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNU" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJu_" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955162" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@74264" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNT" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955162" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="QueryFunctionParameter_TransformationMenu_node@74264" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNW" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuA" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955163" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@74263" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNV" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955163" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Node_ReplaceWithNewOperation@74263" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJNY" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuB" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955561" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@74085" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNX" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955561" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="ExpressionStatement@74085" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJO0" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuC" role="hSBgu">
        <property role="2pBcoG" value="4322786184248958088" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@71558" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJNZ" role="hSBgs">
        <property role="2pBcoG" value="4322786184248958088" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@71558" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJO2" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuD" role="hSBgu">
        <property role="2pBcoG" value="4322786184248956076" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="DotExpression@73578" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJO1" role="hSBgs">
        <property role="2pBcoG" value="4322786184248956076" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="DotExpression@73578" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJO4" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuE" role="hSBgu">
        <property role="2pBcoG" value="4322786184248955559" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@74083" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJO3" role="hSBgs">
        <property role="2pBcoG" value="4322786184248955559" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@74083" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJO6" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuF" role="hSBgu">
        <property role="2pBcoG" value="4322786184248956812" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="SLinkAccess@72842" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJO5" role="hSBgs">
        <property role="2pBcoG" value="4322786184248956812" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="SLinkAccess@72842" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJO8" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuG" role="hSBgu">
        <property role="2pBcoG" value="4322786184248959593" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="Link_SetTargetOperation@86309" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJO7" role="hSBgs">
        <property role="2pBcoG" value="4322786184248959593" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="Link_SetTargetOperation@86309" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJOa" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuH" role="hSBgu">
        <property role="2pBcoG" value="4322786184248959633" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="VariableReference@86413" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJO9" role="hSBgs">
        <property role="2pBcoG" value="4322786184248959633" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="VariableReference@86413" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJOc" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuI" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872951" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationLocation_SideTransform@58553" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJOb" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872951" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationLocation_SideTransform@58553" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJOe" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuJ" role="hSBgu">
        <property role="2pBcoG" value="4322786184248872952" />
        <property role="2pBcow" value="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)" />
        <property role="2pBc3U" value="TransformationLocation_SideTransform_PlaceInCellHolder@58556" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJOd" role="hSBgs">
        <property role="2pBcoG" value="4322786184248872952" />
        <property role="2pBcow" value="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)" />
        <property role="2pBc3U" value="TransformationLocation_SideTransform_PlaceInCellHolder@58556" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQ_" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuK" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817723" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="And" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQ$" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817723" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="And" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQA" role="W$Crh">
      <property role="hSBgo" value="moveNode.writeSubconceptMigration" />
      <node concept="30eU3p" id="4LBPYGUYJuM" role="hSBgu">
        <node concept="2z5IEV" id="4LBPYGUYJuN" role="30eU3q">
          <property role="2z5Xdj" value="0" />
          <property role="2wV0G5" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39(jetbrains.mps.fitch)" />
        </node>
        <node concept="2pBcaW" id="4LBPYGUYJuL" role="30eU3l">
          <property role="2pBcoG" value="4322786184247817723" />
          <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
          <property role="2pBc3U" value="And" />
        </node>
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQC" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateConceptReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuO" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817723" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="And" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQB" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817723" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="And" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQE" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuP" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817724" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="conjunct" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQD" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817724" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="conjunct" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQG" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuQ" role="hSBgu">
        <property role="2pBcoG" value="4322786184247818003" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48165" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQF" role="hSBgs">
        <property role="2pBcoG" value="4322786184247818003" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48165" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQI" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuR" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805384" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Constant" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQH" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805384" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Constant" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQJ" role="W$Crh">
      <property role="hSBgo" value="moveNode.writeSubconceptMigration" />
      <node concept="30eU3p" id="4LBPYGUYJuT" role="hSBgu">
        <node concept="2z5IEV" id="4LBPYGUYJuU" role="30eU3q">
          <property role="2z5Xdj" value="0" />
          <property role="2wV0G5" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39(jetbrains.mps.fitch)" />
        </node>
        <node concept="2pBcaW" id="4LBPYGUYJuS" role="30eU3l">
          <property role="2pBcoG" value="4322786184247805384" />
          <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
          <property role="2pBc3U" value="Constant" />
        </node>
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQL" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateConceptReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuV" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805384" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Constant" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQK" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805384" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Constant" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQN" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuW" role="hSBgu">
        <property role="2pBcoG" value="4322786184247818008" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48172" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQM" role="hSBgs">
        <property role="2pBcoG" value="4322786184247818008" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48172" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQP" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuX" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805385" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@44763" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQO" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805385" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@44763" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQR" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJuY" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817809" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="If" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQQ" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817809" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="If" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQS" role="W$Crh">
      <property role="hSBgo" value="moveNode.writeSubconceptMigration" />
      <node concept="30eU3p" id="4LBPYGUYJv0" role="hSBgu">
        <node concept="2z5IEV" id="4LBPYGUYJv1" role="30eU3q">
          <property role="2z5Xdj" value="0" />
          <property role="2wV0G5" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39(jetbrains.mps.fitch)" />
        </node>
        <node concept="2pBcaW" id="4LBPYGUYJuZ" role="30eU3l">
          <property role="2pBcoG" value="4322786184247817809" />
          <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
          <property role="2pBc3U" value="If" />
        </node>
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQU" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateConceptReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJv2" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817809" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="If" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQT" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817809" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="If" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQW" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJv3" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817810" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="antecedent" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQV" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817810" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="antecedent" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJQY" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJv4" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817812" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="consequent" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQX" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817812" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="consequent" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJR0" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJv5" role="hSBgu">
        <property role="2pBcoG" value="4322786184247818012" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48176" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQZ" role="hSBgs">
        <property role="2pBcoG" value="4322786184247818012" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48176" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJR2" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJv6" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817953" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Iff" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJR1" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817953" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Iff" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJR3" role="W$Crh">
      <property role="hSBgo" value="moveNode.writeSubconceptMigration" />
      <node concept="30eU3p" id="4LBPYGUYJv8" role="hSBgu">
        <node concept="2z5IEV" id="4LBPYGUYJv9" role="30eU3q">
          <property role="2z5Xdj" value="0" />
          <property role="2wV0G5" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39(jetbrains.mps.fitch)" />
        </node>
        <node concept="2pBcaW" id="4LBPYGUYJv7" role="30eU3l">
          <property role="2pBcoG" value="4322786184247817953" />
          <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
          <property role="2pBc3U" value="Iff" />
        </node>
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJR5" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateConceptReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJva" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817953" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Iff" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJR4" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817953" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Iff" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJR7" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvb" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817963" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="antecedent" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJR6" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817963" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="antecedent" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJR9" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvc" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817964" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="consequent" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJR8" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817964" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="consequent" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRb" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvd" role="hSBgu">
        <property role="2pBcoG" value="4322786184247818014" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48178" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRa" role="hSBgs">
        <property role="2pBcoG" value="4322786184247818014" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48178" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRd" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJve" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805399" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Not" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRc" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805399" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Not" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRe" role="W$Crh">
      <property role="hSBgo" value="moveNode.writeSubconceptMigration" />
      <node concept="30eU3p" id="4LBPYGUYJvg" role="hSBgu">
        <node concept="2z5IEV" id="4LBPYGUYJvh" role="30eU3q">
          <property role="2z5Xdj" value="0" />
          <property role="2wV0G5" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39(jetbrains.mps.fitch)" />
        </node>
        <node concept="2pBcaW" id="4LBPYGUYJvf" role="30eU3l">
          <property role="2pBcoG" value="4322786184247805399" />
          <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
          <property role="2pBc3U" value="Not" />
        </node>
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRg" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateConceptReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvi" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805399" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Not" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRf" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805399" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Not" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRi" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvj" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805400" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="target" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRh" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805400" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="target" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRk" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvk" role="hSBgu">
        <property role="2pBcoG" value="4322786184247818016" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48116" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRj" role="hSBgs">
        <property role="2pBcoG" value="4322786184247818016" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48116" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRm" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvl" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817766" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Or" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRl" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817766" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Or" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRn" role="W$Crh">
      <property role="hSBgo" value="moveNode.writeSubconceptMigration" />
      <node concept="30eU3p" id="4LBPYGUYJvn" role="hSBgu">
        <node concept="2z5IEV" id="4LBPYGUYJvo" role="30eU3q">
          <property role="2z5Xdj" value="0" />
          <property role="2wV0G5" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39(jetbrains.mps.fitch)" />
        </node>
        <node concept="2pBcaW" id="4LBPYGUYJvm" role="30eU3l">
          <property role="2pBcoG" value="4322786184247817766" />
          <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
          <property role="2pBc3U" value="Or" />
        </node>
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRp" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateConceptReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvp" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817766" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Or" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRo" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817766" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Or" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRr" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvq" role="hSBgu">
        <property role="2pBcoG" value="4322786184247817796" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="disjunct" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRq" role="hSBgs">
        <property role="2pBcoG" value="4322786184247817796" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="disjunct" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRt" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvr" role="hSBgu">
        <property role="2pBcoG" value="4322786184247818018" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48118" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRs" role="hSBgs">
        <property role="2pBcoG" value="4322786184247818018" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="InterfaceConceptReference@48118" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRv" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvs" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805402" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Sentence" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRu" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805402" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Sentence" />
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRw" role="W$Crh">
      <property role="hSBgo" value="moveNode.writeSubconceptMigration" />
      <node concept="30eU3p" id="4LBPYGUYJvu" role="hSBgu">
        <node concept="2z5IEV" id="4LBPYGUYJvv" role="30eU3q">
          <property role="2z5Xdj" value="0" />
          <property role="2wV0G5" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39(jetbrains.mps.fitch)" />
        </node>
        <node concept="2pBcaW" id="4LBPYGUYJvt" role="30eU3l">
          <property role="2pBcoG" value="4322786184247805402" />
          <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
          <property role="2pBc3U" value="Sentence" />
        </node>
      </node>
    </node>
    <node concept="7amoh" id="4LBPYGUYJRy" role="W$Crh">
      <property role="hSBgo" value="moveNode.updateConceptReferences" />
      <node concept="2pBcaW" id="4LBPYGUYJvw" role="hSBgu">
        <property role="2pBcoG" value="4322786184247805402" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Sentence" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJRx" role="hSBgs">
        <property role="2pBcoG" value="4322786184247805402" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Sentence" />
      </node>
    </node>
  </node>
  <node concept="Z5qvL" id="4LBPYGUYJOf">
    <property role="Z5qvQ" value="0" />
    <property role="TrG5h" value="MigrationScript_0" />
    <node concept="Z4OXk" id="4LBPYGUYJOp" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJOn" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817723" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="And_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJOo" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817723" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="And" />
      </node>
      <node concept="7a1rZ" id="4LBPYGUYJOm" role="7agGg">
        <node concept="2x4n5u" id="4LBPYGUYJOi" role="HKsnP">
          <property role="2x4mPI" value="And" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cs1n" />
          <node concept="2V$Bhx" id="4LBPYGUYJOj" role="2x4n5j">
            <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
            <property role="2V$B1Q" value="jetbrains.mps.fitch" />
          </node>
        </node>
        <node concept="2x4n5u" id="4LBPYGUYJOk" role="HKsnM">
          <property role="2x4mPI" value="And" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cs1n" />
          <node concept="2V$Bhx" id="4LBPYGUYJOl" role="2x4n5j">
            <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
            <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJOz" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJOx" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247805384" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Constant_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJOy" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247805384" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Constant" />
      </node>
      <node concept="7a1rZ" id="4LBPYGUYJOw" role="7agGg">
        <node concept="2x4n5u" id="4LBPYGUYJOs" role="HKsnP">
          <property role="2x4mPI" value="Constant" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9ciiw" />
          <node concept="2V$Bhx" id="4LBPYGUYJOt" role="2x4n5j">
            <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
            <property role="2V$B1Q" value="jetbrains.mps.fitch" />
          </node>
        </node>
        <node concept="2x4n5u" id="4LBPYGUYJOu" role="HKsnM">
          <property role="2x4mPI" value="Constant" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9ciiw" />
          <node concept="2V$Bhx" id="4LBPYGUYJOv" role="2x4n5j">
            <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
            <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJOH" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJOF" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817809" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="If_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJOG" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817809" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="If" />
      </node>
      <node concept="7a1rZ" id="4LBPYGUYJOE" role="7agGg">
        <node concept="2x4n5u" id="4LBPYGUYJOA" role="HKsnP">
          <property role="2x4mPI" value="If" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cs41" />
          <node concept="2V$Bhx" id="4LBPYGUYJOB" role="2x4n5j">
            <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
            <property role="2V$B1Q" value="jetbrains.mps.fitch" />
          </node>
        </node>
        <node concept="2x4n5u" id="4LBPYGUYJOC" role="HKsnM">
          <property role="2x4mPI" value="If" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cs41" />
          <node concept="2V$Bhx" id="4LBPYGUYJOD" role="2x4n5j">
            <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
            <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJOR" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJOP" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817953" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Iff_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJOQ" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817953" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Iff" />
      </node>
      <node concept="7a1rZ" id="4LBPYGUYJOO" role="7agGg">
        <node concept="2x4n5u" id="4LBPYGUYJOK" role="HKsnP">
          <property role="2x4mPI" value="Iff" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cs81" />
          <node concept="2V$Bhx" id="4LBPYGUYJOL" role="2x4n5j">
            <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
            <property role="2V$B1Q" value="jetbrains.mps.fitch" />
          </node>
        </node>
        <node concept="2x4n5u" id="4LBPYGUYJOM" role="HKsnM">
          <property role="2x4mPI" value="Iff" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cs81" />
          <node concept="2V$Bhx" id="4LBPYGUYJON" role="2x4n5j">
            <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
            <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJP1" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJOZ" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247805399" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Not_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJP0" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247805399" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Not" />
      </node>
      <node concept="7a1rZ" id="4LBPYGUYJOY" role="7agGg">
        <node concept="2x4n5u" id="4LBPYGUYJOU" role="HKsnP">
          <property role="2x4mPI" value="Not" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cijb" />
          <node concept="2V$Bhx" id="4LBPYGUYJOV" role="2x4n5j">
            <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
            <property role="2V$B1Q" value="jetbrains.mps.fitch" />
          </node>
        </node>
        <node concept="2x4n5u" id="4LBPYGUYJOW" role="HKsnM">
          <property role="2x4mPI" value="Not" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cijb" />
          <node concept="2V$Bhx" id="4LBPYGUYJOX" role="2x4n5j">
            <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
            <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJPb" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJP9" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817766" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Or_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJPa" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817766" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Or" />
      </node>
      <node concept="7a1rZ" id="4LBPYGUYJP8" role="7agGg">
        <node concept="2x4n5u" id="4LBPYGUYJP4" role="HKsnP">
          <property role="2x4mPI" value="Or" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cs2u" />
          <node concept="2V$Bhx" id="4LBPYGUYJP5" role="2x4n5j">
            <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
            <property role="2V$B1Q" value="jetbrains.mps.fitch" />
          </node>
        </node>
        <node concept="2x4n5u" id="4LBPYGUYJP6" role="HKsnM">
          <property role="2x4mPI" value="Or" />
          <property role="2x4o5l" value="false" />
          <property role="2x4n5l" value="wubvt9x9cs2u" />
          <node concept="2V$Bhx" id="4LBPYGUYJP7" role="2x4n5j">
            <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
            <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJPm" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJPk" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247805402" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="Sentence_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJPl" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247805402" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="Sentence" />
      </node>
      <node concept="7a1rZ" id="4LBPYGUYJPj" role="7agGg">
        <node concept="2x4n5u" id="4LBPYGUYJPf" role="HKsnP">
          <property role="2x4mPI" value="Sentence" />
          <property role="2x4o5l" value="true" />
          <property role="2x4n5l" value="wubvt9x9cije" />
          <node concept="2V$Bhx" id="4LBPYGUYJPg" role="2x4n5j">
            <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
            <property role="2V$B1Q" value="jetbrains.mps.fitch" />
          </node>
        </node>
        <node concept="2x4n5u" id="4LBPYGUYJPh" role="HKsnM">
          <property role="2x4mPI" value="Sentence" />
          <property role="2x4o5l" value="true" />
          <property role="2x4n5l" value="wubvt9x9cije" />
          <node concept="2V$Bhx" id="4LBPYGUYJPi" role="2x4n5j">
            <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
            <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJPx" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJPv" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817724" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="conjunct_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJPw" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817724" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="conjunct" />
      </node>
      <node concept="7a1rN" id="4LBPYGUYJPu" role="7agGg">
        <node concept="HUanS" id="4LBPYGUYJPo" role="HTpAE">
          <property role="HUanP" value="conjunct" />
          <property role="HUanQ" value="wubvt9x9cs1o" />
          <node concept="2x4n5u" id="4LBPYGUYJPp" role="HUanR">
            <property role="2x4mPI" value="And" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs1n" />
            <node concept="2V$Bhx" id="4LBPYGUYJPq" role="2x4n5j">
              <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
              <property role="2V$B1Q" value="jetbrains.mps.fitch" />
            </node>
          </node>
        </node>
        <node concept="HUanS" id="4LBPYGUYJPr" role="HTpAD">
          <property role="HUanP" value="conjunct" />
          <property role="HUanQ" value="wubvt9x9cs1o" />
          <node concept="2x4n5u" id="4LBPYGUYJPs" role="HUanR">
            <property role="2x4mPI" value="And" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs1n" />
            <node concept="2V$Bhx" id="4LBPYGUYJPt" role="2x4n5j">
              <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
              <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJPG" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJPE" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817810" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="antecedent_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJPF" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817810" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="antecedent" />
      </node>
      <node concept="7a1rN" id="4LBPYGUYJPD" role="7agGg">
        <node concept="HUanS" id="4LBPYGUYJPz" role="HTpAE">
          <property role="HUanP" value="antecedent" />
          <property role="HUanQ" value="wubvt9x9cs42" />
          <node concept="2x4n5u" id="4LBPYGUYJP$" role="HUanR">
            <property role="2x4mPI" value="If" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs41" />
            <node concept="2V$Bhx" id="4LBPYGUYJP_" role="2x4n5j">
              <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
              <property role="2V$B1Q" value="jetbrains.mps.fitch" />
            </node>
          </node>
        </node>
        <node concept="HUanS" id="4LBPYGUYJPA" role="HTpAD">
          <property role="HUanP" value="antecedent" />
          <property role="HUanQ" value="wubvt9x9cs42" />
          <node concept="2x4n5u" id="4LBPYGUYJPB" role="HUanR">
            <property role="2x4mPI" value="If" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs41" />
            <node concept="2V$Bhx" id="4LBPYGUYJPC" role="2x4n5j">
              <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
              <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJPR" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJPP" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817812" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="consequent_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJPQ" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817812" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="consequent" />
      </node>
      <node concept="7a1rN" id="4LBPYGUYJPO" role="7agGg">
        <node concept="HUanS" id="4LBPYGUYJPI" role="HTpAE">
          <property role="HUanP" value="consequent" />
          <property role="HUanQ" value="wubvt9x9cs44" />
          <node concept="2x4n5u" id="4LBPYGUYJPJ" role="HUanR">
            <property role="2x4mPI" value="If" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs41" />
            <node concept="2V$Bhx" id="4LBPYGUYJPK" role="2x4n5j">
              <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
              <property role="2V$B1Q" value="jetbrains.mps.fitch" />
            </node>
          </node>
        </node>
        <node concept="HUanS" id="4LBPYGUYJPL" role="HTpAD">
          <property role="HUanP" value="consequent" />
          <property role="HUanQ" value="wubvt9x9cs44" />
          <node concept="2x4n5u" id="4LBPYGUYJPM" role="HUanR">
            <property role="2x4mPI" value="If" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs41" />
            <node concept="2V$Bhx" id="4LBPYGUYJPN" role="2x4n5j">
              <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
              <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJQ2" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJQ0" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817963" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="antecedent_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQ1" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817963" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="antecedent" />
      </node>
      <node concept="7a1rN" id="4LBPYGUYJPZ" role="7agGg">
        <node concept="HUanS" id="4LBPYGUYJPT" role="HTpAE">
          <property role="HUanP" value="antecedent" />
          <property role="HUanQ" value="wubvt9x9cs8b" />
          <node concept="2x4n5u" id="4LBPYGUYJPU" role="HUanR">
            <property role="2x4mPI" value="Iff" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs81" />
            <node concept="2V$Bhx" id="4LBPYGUYJPV" role="2x4n5j">
              <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
              <property role="2V$B1Q" value="jetbrains.mps.fitch" />
            </node>
          </node>
        </node>
        <node concept="HUanS" id="4LBPYGUYJPW" role="HTpAD">
          <property role="HUanP" value="antecedent" />
          <property role="HUanQ" value="wubvt9x9cs8b" />
          <node concept="2x4n5u" id="4LBPYGUYJPX" role="HUanR">
            <property role="2x4mPI" value="Iff" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs81" />
            <node concept="2V$Bhx" id="4LBPYGUYJPY" role="2x4n5j">
              <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
              <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJQd" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJQb" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817964" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="consequent_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQc" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817964" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="consequent" />
      </node>
      <node concept="7a1rN" id="4LBPYGUYJQa" role="7agGg">
        <node concept="HUanS" id="4LBPYGUYJQ4" role="HTpAE">
          <property role="HUanP" value="consequent" />
          <property role="HUanQ" value="wubvt9x9cs8c" />
          <node concept="2x4n5u" id="4LBPYGUYJQ5" role="HUanR">
            <property role="2x4mPI" value="Iff" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs81" />
            <node concept="2V$Bhx" id="4LBPYGUYJQ6" role="2x4n5j">
              <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
              <property role="2V$B1Q" value="jetbrains.mps.fitch" />
            </node>
          </node>
        </node>
        <node concept="HUanS" id="4LBPYGUYJQ7" role="HTpAD">
          <property role="HUanP" value="consequent" />
          <property role="HUanQ" value="wubvt9x9cs8c" />
          <node concept="2x4n5u" id="4LBPYGUYJQ8" role="HUanR">
            <property role="2x4mPI" value="Iff" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs81" />
            <node concept="2V$Bhx" id="4LBPYGUYJQ9" role="2x4n5j">
              <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
              <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJQo" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJQm" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247805400" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="target_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQn" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247805400" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="target" />
      </node>
      <node concept="7a1rN" id="4LBPYGUYJQl" role="7agGg">
        <node concept="HUanS" id="4LBPYGUYJQf" role="HTpAE">
          <property role="HUanP" value="target" />
          <property role="HUanQ" value="wubvt9x9cijc" />
          <node concept="2x4n5u" id="4LBPYGUYJQg" role="HUanR">
            <property role="2x4mPI" value="Not" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cijb" />
            <node concept="2V$Bhx" id="4LBPYGUYJQh" role="2x4n5j">
              <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
              <property role="2V$B1Q" value="jetbrains.mps.fitch" />
            </node>
          </node>
        </node>
        <node concept="HUanS" id="4LBPYGUYJQi" role="HTpAD">
          <property role="HUanP" value="target" />
          <property role="HUanQ" value="wubvt9x9cijc" />
          <node concept="2x4n5u" id="4LBPYGUYJQj" role="HUanR">
            <property role="2x4mPI" value="Not" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cijb" />
            <node concept="2V$Bhx" id="4LBPYGUYJQk" role="2x4n5j">
              <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
              <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Z4OXk" id="4LBPYGUYJQz" role="Z5rET">
      <node concept="2pBcaW" id="4LBPYGUYJQx" role="Z5P1v">
        <property role="2pBcoG" value="4322786184247817796" />
        <property role="2pBcow" value="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
        <property role="2pBc3U" value="disjunct_old" />
      </node>
      <node concept="2pBcaW" id="4LBPYGUYJQy" role="Z5P1t">
        <property role="2pBcoG" value="4322786184247817796" />
        <property role="2pBcow" value="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
        <property role="2pBc3U" value="disjunct" />
      </node>
      <node concept="7a1rN" id="4LBPYGUYJQw" role="7agGg">
        <node concept="HUanS" id="4LBPYGUYJQq" role="HTpAE">
          <property role="HUanP" value="disjunct" />
          <property role="HUanQ" value="wubvt9x9cs3o" />
          <node concept="2x4n5u" id="4LBPYGUYJQr" role="HUanR">
            <property role="2x4mPI" value="Or" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs2u" />
            <node concept="2V$Bhx" id="4LBPYGUYJQs" role="2x4n5j">
              <property role="2V$B1T" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
              <property role="2V$B1Q" value="jetbrains.mps.fitch" />
            </node>
          </node>
        </node>
        <node concept="HUanS" id="4LBPYGUYJQt" role="HTpAD">
          <property role="HUanP" value="disjunct" />
          <property role="HUanQ" value="wubvt9x9cs3o" />
          <node concept="2x4n5u" id="4LBPYGUYJQu" role="HUanR">
            <property role="2x4mPI" value="Or" />
            <property role="2x4o5l" value="false" />
            <property role="2x4n5l" value="wubvt9x9cs2u" />
            <node concept="2V$Bhx" id="4LBPYGUYJQv" role="2x4n5j">
              <property role="2V$B1T" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
              <property role="2V$B1Q" value="jetbrains.mps.logic.propositional" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

