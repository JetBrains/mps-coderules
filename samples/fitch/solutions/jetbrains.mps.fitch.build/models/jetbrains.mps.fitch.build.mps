<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0601aae4-0981-4217-9b8a-f73ee0df159c(jetbrains.mps.fitch.build)">
  <persistence version="9" />
  <languages>
    <use id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner" version="0" />
    <use id="698a8d22-a104-47a0-ba8d-10e3ec237f13" name="jetbrains.mps.build.workflow" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="5" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="9f846aef-4e4a-4a84-828e-7e83fe2697f2" name="jetbrains.mps.build.mps.testManifest" version="0" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="zqd8" ref="r:4f157831-48e7-4c8f-a144-b5bbd1be1539(jetbrains.mps.typechecking.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="4$bYnYI$RBW">
    <property role="2DA0ip" value="./../../" />
    <property role="TrG5h" value="fitch" />
    <node concept="2G$12M" id="4$bYnYI$URr" role="3989C9">
      <property role="TrG5h" value="fitch" />
      <node concept="1E1JtD" id="4$bYnYI$URy" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.fitch" />
        <property role="3LESm3" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="4$bYnYI$UR_" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$URF" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4$bYnYI$URK" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.fitch" />
              <node concept="2Ry0Ak" id="4$bYnYI$URP" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.fitch.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$URR" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$URS" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.typechecking" />
          </node>
        </node>
        <node concept="1yeLz9" id="4$bYnYI$URT" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.fitch#4322786184247805322" />
          <property role="3LESm3" value="65b2d9d2-5a92-4dd0-abf5-f3a1bd399bec" />
          <property role="2GAjPV" value="false" />
        </node>
      </node>
      <node concept="1E1JtD" id="4$bYnYI$UVm" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.logic.propositional" />
        <property role="3LESm3" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="4$bYnYI$UVn" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$UVo" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4$bYnYI$UVp" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.logic.propositional" />
              <node concept="2Ry0Ak" id="4$bYnYI$UXb" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic.propositional.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="4$bYnYI$UVr" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.logic.propositional#5505606474790531941" />
          <property role="3LESm3" value="53b8ab24-cc4a-4fe2-b461-11a91d798670" />
          <property role="2GAjPV" value="false" />
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UVu" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$UVv" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1YAozCvot2i" resolve="jetbrains.mps.baseLanguage.regexp" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UXC" role="3bR37C">
          <node concept="1Busua" id="4$bYnYI$UXD" role="1SiIV1">
            <ref role="1Busuk" node="4$bYnYI$URy" resolve="jetbrains.mps.fitch" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4$bYnYI$UTN" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.logic.herbrand" />
        <property role="3LESm3" value="748b3ba1-2791-4ee8-b985-a5598baa7112" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="4$bYnYI$UTO" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$UTP" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4$bYnYI$UTQ" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.logic.herbrand" />
              <node concept="2Ry0Ak" id="4$bYnYI$UU_" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic.herbrand.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="4$bYnYI$UTS" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.logic.herbrand#3059457401298723545" />
          <property role="3LESm3" value="8efed383-9c82-409e-81c8-4bd2a012c164" />
          <property role="2GAjPV" value="false" />
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UTT" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$UTU" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UUX" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$UUY" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1YAozCvot2i" resolve="jetbrains.mps.baseLanguage.regexp" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UUZ" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$UV0" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="4$bYnYI$URy" resolve="jetbrains.mps.fitch" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$V36" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$V37" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="4$bYnYI$UTN" resolve="jetbrains.mps.logic.herbrand" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$V38" role="3bR37C">
          <node concept="1Busua" id="4$bYnYI$V39" role="1SiIV1">
            <ref role="1Busuk" node="4$bYnYI$UVm" resolve="jetbrains.mps.logic.propositional" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4$bYnYI$USZ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.logic.firstOrder" />
        <property role="3LESm3" value="ddb01c98-e78e-4c79-b11a-aeba193668d4" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="4$bYnYI$UT0" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$UT1" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4$bYnYI$UT2" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.logic.firstOrder" />
              <node concept="2Ry0Ak" id="4$bYnYI$UTn" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic.firstOrder.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="4$bYnYI$UT6" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.logic.firstOrder#4035326440039985569" />
          <property role="3LESm3" value="467b3222-f5a8-48be-9fe1-6c009ed73049" />
          <property role="2GAjPV" value="false" />
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UTy" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$UTz" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UUM" role="3bR37C">
          <node concept="1Busua" id="4$bYnYI$UUN" role="1SiIV1">
            <ref role="1Busuk" node="4$bYnYI$URy" resolve="jetbrains.mps.fitch" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UWz" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$UW$" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="4$bYnYI$USZ" resolve="jetbrains.mps.logic.firstOrder" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$V3j" role="3bR37C">
          <node concept="1Busua" id="4$bYnYI$V3k" role="1SiIV1">
            <ref role="1Busuk" node="4$bYnYI$UTN" resolve="jetbrains.mps.logic.herbrand" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4$bYnYI$ZFL" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.fitch.sandbox" />
        <property role="3LESm3" value="86925f4e-7856-4553-a261-c86fbf09bb52" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="4$bYnYI$ZFO" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$ZGE" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="4$bYnYI$ZGJ" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.fitch.sandbox" />
              <node concept="2Ry0Ak" id="4$bYnYI$ZGO" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.fitch.sandbox.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="4$bYnYI$RBX" role="auvoZ" />
    <node concept="1l3spV" id="4$bYnYI$RBY" role="1l3spN" />
    <node concept="3b7kt6" id="4$bYnYI$RBZ" role="10PD9s" />
    <node concept="10PD9b" id="4$bYnYI$RC4" role="10PD9s" />
    <node concept="398rNT" id="4$bYnYI$RCy" role="1l3spd">
      <property role="TrG5h" value="coderules_art" />
      <node concept="55IIr" id="4$bYnYI$RCE" role="398pKh">
        <node concept="2Ry0Ak" id="4$bYnYI$RCJ" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="4$bYnYI$RCO" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="4$bYnYI$RCW" role="2Ry0An">
              <property role="2Ry0Am" value="build" />
              <node concept="2Ry0Ak" id="4$bYnYI$RD1" role="2Ry0An">
                <property role="2Ry0Am" value="artifacts" />
                <node concept="2Ry0Ak" id="5CiHmuT4_6V" role="2Ry0An">
                  <property role="2Ry0Am" value="coderules" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="4$bYnYI$RC8" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="4$bYnYI$RCa" role="398pKh">
        <node concept="2Ry0Ak" id="4$bYnYI$RCf" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="4$bYnYI$RCk" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="4$bYnYI$RCp" role="2Ry0An">
              <property role="2Ry0Am" value="MPS_HOME" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="4$bYnYI$UQZ" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4$bYnYI$UR1" role="2JcizS">
        <ref role="398BVh" node="4$bYnYI$RC8" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="4$bYnYI$URi" role="1l3spa">
      <ref role="1l3spb" to="zqd8:1BDNG5xBZgg" resolve="coderules" />
      <node concept="398BVA" id="4$bYnYI$URn" role="2JcizS">
        <ref role="398BVh" node="4$bYnYI$RCy" resolve="coderules_art" />
      </node>
    </node>
  </node>
</model>

