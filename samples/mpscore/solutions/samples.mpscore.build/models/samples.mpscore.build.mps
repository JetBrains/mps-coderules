<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:249acb2d-9b26-41a4-8655-23aafe76a717(samples.mpscore.build)">
  <persistence version="9" />
  <languages>
    <use id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner" version="0" />
    <use id="698a8d22-a104-47a0-ba8d-10e3ec237f13" name="jetbrains.mps.build.workflow" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="9f846aef-4e4a-4a84-828e-7e83fe2697f2" name="jetbrains.mps.build.mps.testManifest" version="0" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="1" />
  </languages>
  <imports>
    <import index="zqd8" ref="r:4f157831-48e7-4c8f-a144-b5bbd1be1539(jetbrains.mps.coderules.build)" />
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469355" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModuleGroup" flags="ng" index="22LTRF">
        <reference id="4560297596904469356" name="group" index="22LTRG" />
      </concept>
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
        <child id="6593674873639474544" name="options" index="24cAkG" />
      </concept>
      <concept id="6593674873639474400" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModules_Options" flags="ng" index="24cAiW">
        <child id="6593674873639478221" name="haltonfailure" index="24c_eh" />
        <child id="3609768169816292377" name="jvmArgs" index="1psgkv" />
      </concept>
      <concept id="4005526075820600484" name="jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin" flags="ng" index="1gjT0q" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
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
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
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
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
      </concept>
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
  <node concept="1l3spW" id="5nRGIxgpOuU">
    <property role="2DA0ip" value="../../" />
    <property role="TrG5h" value="mpscore" />
    <node concept="398rNT" id="7Ant4WkHLn3" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="7Ant4WkHLn4" role="398pKh">
        <node concept="2Ry0Ak" id="69UmpDmJW1O" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="69UmpDmJW1T" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="69UmpDmJW1Y" role="2Ry0An">
              <property role="2Ry0Am" value="MPS_HOME" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5VQ8Sex_oaS" role="1l3spd">
      <property role="TrG5h" value="coderules_art" />
      <node concept="55IIr" id="5VQ8Sex_odz" role="398pKh">
        <node concept="2Ry0Ak" id="5VQ8Sex_odA" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="5VQ8Sex_oep" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="5VQ8Sex_oeY" role="2Ry0An">
              <property role="2Ry0Am" value="build" />
              <node concept="2Ry0Ak" id="5VQ8Sex_og3" role="2Ry0An">
                <property role="2Ry0Am" value="artifacts" />
                <node concept="2Ry0Ak" id="5CiHmuT4vvj" role="2Ry0An">
                  <property role="2Ry0Am" value="coderules" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="46o4wsH3mv_" role="1l3spd">
      <property role="TrG5h" value="mps.macro.mpscore_home" />
      <node concept="55IIr" id="46o4wsH3mGg" role="398pKh" />
    </node>
    <node concept="10PD9b" id="1BDNG5xBZhR" role="10PD9s" />
    <node concept="3b7kt6" id="1BDNG5xBZhW" role="10PD9s" />
    <node concept="1gjT0q" id="1BDNG5xBZi4" role="10PD9s" />
    <node concept="55IIr" id="5nRGIxgpOuV" role="auvoZ" />
    <node concept="1l3spV" id="5nRGIxgpOuW" role="1l3spN">
      <node concept="398223" id="69UmpDmJWbU" role="39821P">
        <node concept="3_J27D" id="69UmpDmJWbV" role="Nbhlr">
          <node concept="3Mxwew" id="69UmpDmJWce" role="3MwsjC">
            <property role="3MwjfP" value="deploy" />
          </node>
        </node>
        <node concept="L2wRC" id="69UmpDmJWcg" role="39821P">
          <ref role="L2wRA" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
        </node>
        <node concept="L2wRC" id="3DveV8qz3S7" role="39821P">
          <ref role="L2wRA" node="3DveV8qz3Qm" resolve="jetbrains.mps.baseLanguage.javadocExt" />
        </node>
        <node concept="L2wRC" id="3mSr9E0buPq" role="39821P">
          <ref role="L2wRA" node="3mSr9E04JuF" resolve="jetbrains.mps.baseLanguage.tuplesExt" />
        </node>
        <node concept="L2wRC" id="4NtT$ZxGU0L" role="39821P">
          <ref role="L2wRA" node="4NtT$ZxGT_H" resolve="jetbrains.mps.baseLanguage.sequence" />
        </node>
        <node concept="L2wRC" id="2MpDLe9rUuf" role="39821P">
          <ref role="L2wRA" node="6BFOg89KVoY" resolve="jetbrains.mps.baseLanguage.function" />
        </node>
        <node concept="L2wRC" id="4NtT$ZxGU0v" role="39821P">
          <ref role="L2wRA" node="4NtT$ZxGTIW" resolve="jetbrains.mps.baseLanguage.collectionsExt" />
        </node>
        <node concept="L2wRC" id="18PHVsOH2td" role="39821P">
          <ref role="L2wRA" node="6$MmqWflyOZ" resolve="jetbrains.mps.baseLanguage.closuresExt" />
        </node>
        <node concept="L2wRC" id="69UmpDmJWcM" role="39821P">
          <ref role="L2wRA" node="69UmpDmJW8I" resolve="jetbrains.mps.baseLanguageExt.test" />
        </node>
        <node concept="L2wRC" id="3mSr9E0buPC" role="39821P">
          <ref role="L2wRA" node="3mSr9E04JGq" resolve="jetbrains.mps.baseLanguage.tuplesExt.test" />
        </node>
        <node concept="L2wRC" id="4NtT$ZxGU15" role="39821P">
          <ref role="L2wRA" node="4NtT$ZxGTTL" resolve="jetbrains.mps.baseLanguage.collectionsExt.test" />
        </node>
        <node concept="L2wRC" id="18PHVsOH2tT" role="39821P">
          <ref role="L2wRA" node="6$MmqWflz4E" resolve="jetbrains.mps.baseLanguage.closuresExt.test" />
        </node>
        <node concept="L2wRC" id="6Dg__VJQ4z2" role="39821P">
          <ref role="L2wRA" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
        </node>
        <node concept="L2wRC" id="6Dg__VJQ6D5" role="39821P">
          <ref role="L2wRA" node="6Dg__VJQ2NZ" resolve="jetbrains.mps.lang.smodelExt.test" />
        </node>
        <node concept="L2wRC" id="69UmpDmJWdl" role="39821P">
          <ref role="L2wRA" node="69UmpDmJW3w" resolve="typechecking.samples.baseLanguage" />
        </node>
        <node concept="L2wRC" id="7LI_gNMBoJc" role="39821P">
          <ref role="L2wRA" node="7LI_gNMBoG$" resolve="jetbrains.mps.logicExt" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7Ant4WkHLmd" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7Ant4WkHLme" role="2JcizS">
        <ref role="398BVh" node="7Ant4WkHLn3" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="69UmpDmJQIZ" role="1l3spa">
      <ref role="1l3spb" to="zqd8:1BDNG5xBZgg" resolve="coderules" />
      <node concept="398BVA" id="5VQ8Sex_oug" role="2JcizS">
        <ref role="398BVh" node="5VQ8Sex_oaS" resolve="coderules_art" />
      </node>
    </node>
    <node concept="2G$12M" id="69UmpDmJW20" role="3989C9">
      <property role="TrG5h" value="baseLanguageExt" />
      <node concept="1E1JtD" id="69UmpDmJW26" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguageExt" />
        <property role="3LESm3" value="0fda14cc-a416-4c81-869a-2175d8b3325d" />
        <node concept="55IIr" id="69UmpDmJW29" role="3LF7KH">
          <node concept="2Ry0Ak" id="69UmpDmJW2f" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="69UmpDmJW2k" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt" />
              <node concept="2Ry0Ak" id="69UmpDmJW2p" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2r" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2s" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2t" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2u" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2v" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2w" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="zqd8:7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2x" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2y" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2z" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2$" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2_" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2A" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:78H58oeeGcw" resolve="jetbrains.mps.controlflow" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2B" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2C" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2D" role="3bR37C">
          <node concept="1Busua" id="69UmpDmJW2E" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="70Wv0dJlji0" role="3bR37C">
          <node concept="3bR9La" id="70Wv0dJlji1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="1mUB3w53Gjz" role="3bR37C">
          <node concept="3bR9La" id="1mUB3w53Gj$" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="1GAclsBfDrD" role="3bR37C">
          <node concept="3bR9La" id="1GAclsBfDrE" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYK" resolve="jetbrains.mps.baseLanguage.util" />
          </node>
        </node>
        <node concept="1BupzO" id="1GAclsBfDrN" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1GAclsBfDrO" role="1HemKq">
            <node concept="398BVA" id="1GAclsBfDrF" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="1GAclsBfDrG" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="1GAclsBfDrH" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt" />
                  <node concept="2Ry0Ak" id="1GAclsBfDrI" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1GAclsBfDrP" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges55K" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges55L" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges55M" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges55N" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges55O" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omges55P" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5wYq9r5EEul" role="3bR37C">
          <node concept="3bR9La" id="5wYq9r5EEum" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:5wYq9r5EBDN" resolve="jetbrains.mps.coderules.runtime" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3DveV8qz3Qm" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.javadocExt" />
        <property role="3LESm3" value="42d031fd-ccb3-45db-91ef-f9621eb0549e" />
        <property role="BnDLt" value="true" />
        <node concept="55IIr" id="3DveV8qz3Qp" role="3LF7KH">
          <node concept="2Ry0Ak" id="3DveV8qz3RI" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3DveV8qz3RN" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.javadocExt" />
              <node concept="2Ry0Ak" id="3DveV8qz3RS" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.javadocExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3DveV8qz3RU" role="3bR37C">
          <node concept="3bR9La" id="3DveV8qz3RV" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="3DveV8qz3RW" role="3bR37C">
          <node concept="1Busua" id="3DveV8qz3RX" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L1S" resolve="jetbrains.mps.baseLanguage.javadoc" />
          </node>
        </node>
        <node concept="3rtmxn" id="1AiIZK4TVmT" role="3bR31x">
          <node concept="3LXTmp" id="1AiIZK4TVmU" role="3rtmxm">
            <node concept="55IIr" id="1AiIZK4TVmV" role="3LXTmr">
              <node concept="2Ry0Ak" id="1AiIZK4TVmW" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7JcykvErIRM" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.javadocExt" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1AiIZK4TVmZ" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1AiIZK4TVnf" role="3bR37C">
          <node concept="3bR9La" id="1AiIZK4TVng" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1AiIZK4TVnh" role="3bR37C">
          <node concept="3bR9La" id="1AiIZK4TVni" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1AiIZK4TVnj" role="3bR37C">
          <node concept="3bR9La" id="1AiIZK4TVnk" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1AiIZK4TVnl" role="3bR37C">
          <node concept="3bR9La" id="1AiIZK4TVnm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1AiIZK4TVnn" role="3bR37C">
          <node concept="3bR9La" id="1AiIZK4TVno" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="1AiIZK4TVnp" role="3bR37C">
          <node concept="3bR9La" id="1AiIZK4TVnq" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="1AiIZK4TVnr" role="3bR37C">
          <node concept="3bR9La" id="1AiIZK4TVns" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:78H58oeeGcw" resolve="jetbrains.mps.controlflow" />
          </node>
        </node>
        <node concept="1SiIV0" id="7ynRPH4kk8F" role="3bR37C">
          <node concept="3bR9La" id="7ynRPH4kk8G" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:NKt6yomVLS" resolve="jetbrains.mps.lang.typechecking.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="1GAclsBfDrY" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1GAclsBfDrZ" role="1HemKq">
            <node concept="398BVA" id="1GAclsBfDrQ" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="1GAclsBfDrR" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="1GAclsBfDrS" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.javadocExt" />
                  <node concept="2Ry0Ak" id="1GAclsBfDrT" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1GAclsBfDs0" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="69UmpDmJW8I" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguageExt.test" />
        <property role="3LESm3" value="e44e7802-2e40-482b-9b1c-6d42660a6a11" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="69UmpDmJW8L" role="3LF7KH">
          <node concept="2Ry0Ak" id="69UmpDmJW9Q" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="69UmpDmJWaj" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt.test" />
              <node concept="2Ry0Ak" id="69UmpDmJWaK" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt.test.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWb2" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWb3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWb4" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWb5" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWb6" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWb7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWb8" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWb9" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWba" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWbb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZ0" resolve="jetbrains.mps.baseLanguageInternal" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWbc" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWbd" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7Ant4WkHLpd" resolve="jetbrains.mps.logic.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWbe" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWbf" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="3KN3A4uIMBU" role="3bR37C">
          <node concept="3bR9La" id="3KN3A4uIMBV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="3KN3A4uIMBW" role="3bR37C">
          <node concept="3bR9La" id="3KN3A4uIMBX" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW3w" resolve="typechecking.samples.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="3KN3A4uIMBY" role="3bR37C">
          <node concept="3bR9La" id="3KN3A4uIMBZ" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="1TH_SRmm_ca" role="3bR37C">
          <node concept="3bR9La" id="1TH_SRmm_cb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
        <node concept="1SiIV0" id="1TH_SRmm_cc" role="3bR37C">
          <node concept="3bR9La" id="1TH_SRmm_cd" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7mB3viLwG3m" resolve="jetbrains.mps.coderules.typechecking.test" />
          </node>
        </node>
        <node concept="1BupzO" id="1GAclsBfDs9" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1GAclsBfDsa" role="1HemKq">
            <node concept="398BVA" id="1GAclsBfDs1" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="1GAclsBfDs2" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="1GAclsBfDs3" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt.test" />
                  <node concept="2Ry0Ak" id="1GAclsBfDs4" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1GAclsBfDsb" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges55y" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges55z" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges55$" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges55_" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges55A" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7L5omges55B" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt.test" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4JBuioHwxSr" role="3bR37C">
          <node concept="3bR9La" id="4JBuioHwxSs" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="69UmpDmJW3w" role="2G$12L">
        <property role="TrG5h" value="typechecking.samples.baseLanguage" />
        <property role="3LESm3" value="3ddddf69-9ff0-426b-9365-51ae7356fb82" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <property role="BnDLt" value="true" />
        <node concept="55IIr" id="69UmpDmJW3z" role="3LF7KH">
          <node concept="2Ry0Ak" id="69UmpDmJW46" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="69UmpDmJW4j" role="2Ry0An">
              <property role="2Ry0Am" value="typechecking.samples.baseLanguage" />
              <node concept="2Ry0Ak" id="58VeaO3BgQU" role="2Ry0An">
                <property role="2Ry0Am" value="typechecking.samples.baseLanguage.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW4E" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW4F" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="58VeaO3BgR$" role="3bR37C">
          <node concept="3bR9La" id="58VeaO3BgR_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="58VeaO3BgRA" role="3bR37C">
          <node concept="3bR9La" id="58VeaO3BgRB" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="70Wv0dJljii" role="3bR37C">
          <node concept="3bR9La" id="70Wv0dJljij" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="RcfYz8YTv$" role="3bR37C">
          <node concept="3bR9La" id="RcfYz8YTv_" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7mB3viLwG3m" resolve="jetbrains.mps.coderules.typechecking.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="RcfYz8YTvA" role="3bR37C">
          <node concept="3bR9La" id="RcfYz8YTvB" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="3o9wrC3UQPJ" role="3bR37C">
          <node concept="3bR9La" id="3o9wrC3UQPK" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1CCT1$0M$TP" role="3bR37C">
          <node concept="3bR9La" id="1CCT1$0M$TQ" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx6U" resolve="jetbrains.mps.lang.coderules" />
          </node>
        </node>
        <node concept="1SiIV0" id="5gVsyvESSIZ" role="3bR37C">
          <node concept="3bR9La" id="5gVsyvESSJ0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
        <node concept="1SiIV0" id="1TH_SRmm_ce" role="3bR37C">
          <node concept="3bR9La" id="1TH_SRmm_cf" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW8I" resolve="jetbrains.mps.baseLanguageExt.test" />
          </node>
        </node>
        <node concept="1BupzO" id="1GAclsBfDsk" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1GAclsBfDsl" role="1HemKq">
            <node concept="398BVA" id="1GAclsBfDsc" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="1GAclsBfDsd" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="1GAclsBfDse" role="2Ry0An">
                  <property role="2Ry0Am" value="typechecking.samples.baseLanguage" />
                  <node concept="2Ry0Ak" id="1GAclsBfDsf" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1GAclsBfDsm" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3mSr9E04JuF" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.tuplesExt" />
        <property role="BnDLt" value="true" />
        <property role="3LESm3" value="d351f235-67ad-4737-a13e-ec0ea46c55e2" />
        <node concept="55IIr" id="3mSr9E04JuI" role="3LF7KH">
          <node concept="2Ry0Ak" id="3mSr9E04J_u" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3mSr9E04J_z" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.tuplesExt" />
              <node concept="2Ry0Ak" id="3mSr9E04JAq" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.tuplesExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="3mSr9E04JA5" role="3bR31x">
          <node concept="3LXTmp" id="3mSr9E04JA6" role="3rtmxm">
            <node concept="55IIr" id="3mSr9E04JA7" role="3LXTmr">
              <node concept="2Ry0Ak" id="3mSr9E04JA8" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
              </node>
            </node>
            <node concept="3qWCbU" id="3mSr9E04JAa" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3mSr9E04JAW" role="3bR37C">
          <node concept="3bR9La" id="3mSr9E04JAX" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1BupzO" id="3mSr9E04JB6" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3mSr9E04JB7" role="1HemKq">
            <node concept="398BVA" id="3mSr9E04JAY" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="3mSr9E04JAZ" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3mSr9E04JB0" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.tuplesExt" />
                  <node concept="2Ry0Ak" id="3mSr9E04JB1" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3mSr9E04JB8" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3mSr9E04JB9" role="3bR37C">
          <node concept="1Busua" id="3mSr9E04JBa" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L2F" resolve="jetbrains.mps.baseLanguage.tuples" />
          </node>
        </node>
        <node concept="1SiIV0" id="3mSr9E04JBb" role="3bR37C">
          <node concept="1Busua" id="3mSr9E04JBc" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1yeLz9" id="3mSr9E04JCY" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.baseLanguage.tuplesExt#01" />
          <property role="3LESm3" value="ace469a9-6553-48ac-a150-309eed646aff" />
          <node concept="1BupzO" id="3mSr9E04JD9" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3mSr9E04JDa" role="1HemKq">
              <node concept="398BVA" id="3mSr9E04JCZ" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="3mSr9E04JD0" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3mSr9E04JD1" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.tuplesExt" />
                    <node concept="2Ry0Ak" id="3mSr9E04JD2" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="3mSr9E04JD3" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3mSr9E04JDb" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3mSr9E04JGq" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.tuplesExt.test" />
        <property role="3LESm3" value="efa67f60-d99d-4b1a-b11e-e4510234e52d" />
        <node concept="55IIr" id="3mSr9E04JGt" role="3LF7KH">
          <node concept="2Ry0Ak" id="3mSr9E04JJd" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3mSr9E04KlM" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.tuplesExt.test" />
              <node concept="2Ry0Ak" id="3mSr9E04KlR" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.tuplesExt.test.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3mSr9E04KmF" role="3bR37C">
          <node concept="3bR9La" id="3mSr9E04KmG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="3mSr9E04KmH" role="3bR37C">
          <node concept="3bR9La" id="3mSr9E04KmI" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="3mSr9E04KmJ" role="3bR37C">
          <node concept="3bR9La" id="3mSr9E04KmK" role="1SiIV1">
            <ref role="3bR37D" node="3mSr9E04JuF" resolve="jetbrains.mps.baseLanguage.tuplesExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="3mSr9E04KmL" role="3bR37C">
          <node concept="3bR9La" id="3mSr9E04KmM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L2F" resolve="jetbrains.mps.baseLanguage.tuples" />
          </node>
        </node>
        <node concept="1SiIV0" id="3mSr9E04KmN" role="3bR37C">
          <node concept="3bR9La" id="3mSr9E04KmO" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1BupzO" id="3mSr9E04KmX" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3mSr9E04KmY" role="1HemKq">
            <node concept="398BVA" id="3mSr9E04KmP" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="3mSr9E04KmQ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3mSr9E04KmR" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.tuplesExt.test" />
                  <node concept="2Ry0Ak" id="3mSr9E04KmS" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3mSr9E04KmZ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges55D" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges55E" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges55F" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges55G" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges55H" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7L5omges55I" role="2Ry0An">
                  <property role="2Ry0Am" value="typechecking.samples.baseLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4NtT$ZxGT_H" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.sequence" />
        <property role="3LESm3" value="88dcbb14-19c3-4776-8f81-33611ca4d87c" />
        <node concept="55IIr" id="4NtT$ZxGT_K" role="3LF7KH">
          <node concept="2Ry0Ak" id="4NtT$ZxGTD8" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4NtT$ZxGTDd" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.sequence" />
              <node concept="2Ry0Ak" id="4NtT$ZxGTDi" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.sequence.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4NtT$ZxGTHF" role="3bR37C">
          <node concept="3bR9La" id="4NtT$ZxGTHG" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
          </node>
        </node>
        <node concept="1BupzO" id="4NtT$ZxGTHP" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4NtT$ZxGTHQ" role="1HemKq">
            <node concept="398BVA" id="4NtT$ZxGTHH" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="4NtT$ZxGTHI" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4NtT$ZxGTHJ" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.sequence" />
                  <node concept="2Ry0Ak" id="4NtT$ZxGTHK" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4NtT$ZxGTHR" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4NtT$ZxGTHS" role="3bR37C">
          <node concept="1Busua" id="4NtT$ZxGTHT" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1yeLz9" id="4NtT$ZxGTHU" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.baseLanguage.sequence#01" />
          <property role="3LESm3" value="18f0ad19-9c94-44a5-ac04-e7bc4a283586" />
          <node concept="1BupzO" id="4NtT$ZxGTI5" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="4NtT$ZxGTI6" role="1HemKq">
              <node concept="398BVA" id="4NtT$ZxGTHV" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="4NtT$ZxGTHW" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="4NtT$ZxGTHX" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.sequence" />
                    <node concept="2Ry0Ak" id="4NtT$ZxGTHY" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="4NtT$ZxGTHZ" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4NtT$ZxGTI7" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6BFOg89KVoY" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.function" />
        <property role="3LESm3" value="96eeb076-cd7e-4797-9c2a-348e3f826e65" />
        <node concept="55IIr" id="6BFOg89KVp1" role="3LF7KH">
          <node concept="2Ry0Ak" id="6BFOg89KVuk" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="2MpDLe9rUo0" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.function" />
              <node concept="2Ry0Ak" id="2MpDLe9rUo5" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.function.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2MpDLe9rUpj" role="3bR37C">
          <node concept="3bR9La" id="2MpDLe9rUpk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="2MpDLe9rUpt" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2MpDLe9rUpu" role="1HemKq">
            <node concept="398BVA" id="2MpDLe9rUpl" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="2MpDLe9rUpm" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="2MpDLe9rUpn" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.function" />
                  <node concept="2Ry0Ak" id="2MpDLe9rUpo" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2MpDLe9rUpv" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2MpDLe9rUpw" role="3bR37C">
          <node concept="1Busua" id="2MpDLe9rUpx" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1yeLz9" id="2MpDLe9rUpy" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.baseLanguage.function#01" />
          <property role="3LESm3" value="8c873268-fbf2-400d-a542-6d12ccebc30b" />
          <node concept="1BupzO" id="2MpDLe9rUpH" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="2MpDLe9rUpI" role="1HemKq">
              <node concept="398BVA" id="2MpDLe9rUpz" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="2MpDLe9rUp$" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2MpDLe9rUp_" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.function" />
                    <node concept="2Ry0Ak" id="2MpDLe9rUpA" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="2MpDLe9rUpB" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="2MpDLe9rUpJ" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4NtT$ZxGTIW" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.collectionsExt" />
        <property role="3LESm3" value="c1f5ad88-21f4-4e0e-927c-48b1ca0c2334" />
        <node concept="55IIr" id="4NtT$ZxGTIZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="4NtT$ZxGTMM" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4NtT$ZxGTMR" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.collectionsExt" />
              <node concept="2Ry0Ak" id="4NtT$ZxGTMW" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.collectionsExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4NtT$ZxGTOa" role="3bR37C">
          <node concept="3bR9La" id="4NtT$ZxGTOb" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1BupzO" id="4NtT$ZxGTOk" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4NtT$ZxGTOl" role="1HemKq">
            <node concept="398BVA" id="4NtT$ZxGTOc" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="4NtT$ZxGTOd" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4NtT$ZxGTOe" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.collectionsExt" />
                  <node concept="2Ry0Ak" id="4NtT$ZxGTOf" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4NtT$ZxGTOm" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4NtT$ZxGTOn" role="3bR37C">
          <node concept="1Busua" id="4NtT$ZxGTOo" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1SiIV0" id="4NtT$ZxGTOp" role="3bR37C">
          <node concept="1Busua" id="4NtT$ZxGTOq" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="4NtT$ZxGTOr" role="3bR37C">
          <node concept="1Busua" id="4NtT$ZxGTOs" role="1SiIV1">
            <ref role="1Busuk" node="4NtT$ZxGT_H" resolve="jetbrains.mps.baseLanguage.sequence" />
          </node>
        </node>
        <node concept="1yeLz9" id="4NtT$ZxGTOt" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.baseLanguage.collectionsExt#01" />
          <property role="3LESm3" value="16bb0310-b3c9-4a1a-9a50-71bc986ac00d" />
          <node concept="1BupzO" id="4NtT$ZxGTOC" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="4NtT$ZxGTOD" role="1HemKq">
              <node concept="398BVA" id="4NtT$ZxGTOu" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="4NtT$ZxGTOv" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="4NtT$ZxGTOw" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.collectionsExt" />
                    <node concept="2Ry0Ak" id="4NtT$ZxGTOx" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="4NtT$ZxGTOy" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4NtT$ZxGTOE" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2MpDLe9rUsY" role="3bR37C">
          <node concept="1Busua" id="2MpDLe9rUsZ" role="1SiIV1">
            <ref role="1Busuk" node="6BFOg89KVoY" resolve="jetbrains.mps.baseLanguage.function" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4NtT$ZxGTTL" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.collectionsExt.test" />
        <property role="3LESm3" value="870c1633-db58-4b8b-ad9c-26e0ca320d3d" />
        <node concept="55IIr" id="4NtT$ZxGTTO" role="3LF7KH">
          <node concept="2Ry0Ak" id="4NtT$ZxGTY4" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="4NtT$ZxGTY9" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.collectionsExt.test" />
              <node concept="2Ry0Ak" id="4NtT$ZxGTYe" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.collectionsExt.test.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4NtT$ZxGTZI" role="3bR37C">
          <node concept="3bR9La" id="4NtT$ZxGTZJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="4NtT$ZxGTZK" role="3bR37C">
          <node concept="3bR9La" id="4NtT$ZxGTZL" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4NtT$ZxGTZM" role="3bR37C">
          <node concept="3bR9La" id="4NtT$ZxGTZN" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1BupzO" id="4NtT$ZxGTZW" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4NtT$ZxGTZX" role="1HemKq">
            <node concept="398BVA" id="4NtT$ZxGTZO" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="4NtT$ZxGTZP" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="4NtT$ZxGTZQ" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.collectionsExt.test" />
                  <node concept="2Ry0Ak" id="4NtT$ZxGTZR" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4NtT$ZxGTZY" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4slYS4eagWd" role="3bR37C">
          <node concept="3bR9La" id="4slYS4eagWe" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7TC1XcdAYb9" role="3bR37C">
          <node concept="3bR9La" id="7TC1XcdAYba" role="1SiIV1">
            <ref role="3bR37D" node="6$MmqWflyOZ" resolve="jetbrains.mps.baseLanguage.closuresExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="7TC1XcdAYbb" role="3bR37C">
          <node concept="3bR9La" id="7TC1XcdAYbc" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="7TC1XcdAYbd" role="3bR37C">
          <node concept="3bR9La" id="7TC1XcdAYbe" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGTIW" resolve="jetbrains.mps.baseLanguage.collectionsExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="5BtuWK4F$zT" role="3bR37C">
          <node concept="3bR9La" id="5BtuWK4F$zU" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7mB3viLwG3m" resolve="jetbrains.mps.coderules.typechecking.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="5BtuWK4F$zV" role="3bR37C">
          <node concept="3bR9La" id="5BtuWK4F$zW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZG" resolve="jetbrains.mps.baseLanguage.closures" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6$MmqWflyOZ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.closuresExt" />
        <property role="3LESm3" value="9e36d2ee-c59c-4580-9e81-646748d0614b" />
        <node concept="55IIr" id="6$MmqWflyP2" role="3LF7KH">
          <node concept="2Ry0Ak" id="6$MmqWflySE" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="6$MmqWflySJ" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt" />
              <node concept="2Ry0Ak" id="6$MmqWflySO" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6$MmqWflyTK" role="3bR37C">
          <node concept="3bR9La" id="6$MmqWflyTL" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1BupzO" id="6$MmqWflzdc" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6$MmqWflzdd" role="1HemKq">
            <node concept="398BVA" id="6$MmqWflzd4" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="6$MmqWflzd5" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6$MmqWflzd6" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt" />
                  <node concept="2Ry0Ak" id="6$MmqWflzd7" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6$MmqWflzde" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6$MmqWflzdf" role="3bR37C">
          <node concept="1Busua" id="6$MmqWflzdg" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KZG" resolve="jetbrains.mps.baseLanguage.closures" />
          </node>
        </node>
        <node concept="1SiIV0" id="6$MmqWflzdh" role="3bR37C">
          <node concept="1Busua" id="6$MmqWflzdi" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1yeLz9" id="6$MmqWflzdj" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.baseLanguage.closuresExt#1312156863939371938" />
          <property role="3LESm3" value="5064bfcb-4adb-4ea6-b644-94114ec81c29" />
          <node concept="1BupzO" id="6$MmqWflzdu" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="6$MmqWflzdv" role="1HemKq">
              <node concept="398BVA" id="6$MmqWflzdk" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="6$MmqWflzdl" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6$MmqWflzdm" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt" />
                    <node concept="2Ry0Ak" id="6$MmqWflzdn" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="6$MmqWflzdo" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="6$MmqWflzdw" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4p2fwws5Fjn" role="3bR37C">
          <node concept="1Busua" id="4p2fwws5Fjo" role="1SiIV1">
            <ref role="1Busuk" node="4NtT$ZxGT_H" resolve="jetbrains.mps.baseLanguage.sequence" />
          </node>
        </node>
        <node concept="1SiIV0" id="2MpDLe9rUtq" role="3bR37C">
          <node concept="1Busua" id="2MpDLe9rUtr" role="1SiIV1">
            <ref role="1Busuk" node="6BFOg89KVoY" resolve="jetbrains.mps.baseLanguage.function" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6$MmqWflz4E" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.closuresExt.test" />
        <property role="3LESm3" value="3c682bda-3c05-41c1-b4bb-e321b08cbff0" />
        <node concept="55IIr" id="6$MmqWflz4H" role="3LF7KH">
          <node concept="2Ry0Ak" id="6$MmqWflz8e" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="6$MmqWflz8j" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt.test" />
              <node concept="2Ry0Ak" id="6$MmqWflz8o" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt.test.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6$MmqWflzdx" role="3bR37C">
          <node concept="3bR9La" id="6$MmqWflzdy" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="6$MmqWflzdz" role="3bR37C">
          <node concept="3bR9La" id="6$MmqWflzd$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZG" resolve="jetbrains.mps.baseLanguage.closures" />
          </node>
        </node>
        <node concept="1SiIV0" id="6$MmqWflzd_" role="3bR37C">
          <node concept="3bR9La" id="6$MmqWflzdA" role="1SiIV1">
            <ref role="3bR37D" node="6$MmqWflyOZ" resolve="jetbrains.mps.baseLanguage.closuresExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="6$MmqWflzdB" role="3bR37C">
          <node concept="3bR9La" id="6$MmqWflzdC" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6$MmqWflzdD" role="3bR37C">
          <node concept="3bR9La" id="6$MmqWflzdE" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1BupzO" id="6$MmqWflzdN" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6$MmqWflzdO" role="1HemKq">
            <node concept="398BVA" id="6$MmqWflzdF" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="6$MmqWflzdG" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6$MmqWflzdH" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt.test" />
                  <node concept="2Ry0Ak" id="6$MmqWflzdI" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6$MmqWflzdP" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7TC1XcdAYbD" role="3bR37C">
          <node concept="3bR9La" id="7TC1XcdAYbE" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="7TC1XcdAYbF" role="3bR37C">
          <node concept="3bR9La" id="7TC1XcdAYbG" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGTIW" resolve="jetbrains.mps.baseLanguage.collectionsExt" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6Dg__VJQ3B2" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.smodelExt" />
        <property role="3LESm3" value="65e59b42-e7f3-45ec-8692-6c7829780afe" />
        <node concept="55IIr" id="6Dg__VJQ3B3" role="3LF7KH">
          <node concept="2Ry0Ak" id="6Dg__VJQ3B4" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="6Dg__VJQ3B5" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.smodelExt" />
              <node concept="2Ry0Ak" id="6Dg__VJQ47E" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.smodelExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="6Dg__VJQ3B9" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6Dg__VJQ3Ba" role="1HemKq">
            <node concept="398BVA" id="6Dg__VJQ3Bb" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="6Dg__VJQ3Bc" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6Dg__VJQ3Bd" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt" />
                  <node concept="2Ry0Ak" id="6Dg__VJQ3Be" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6Dg__VJQ3Bf" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
          <node concept="3LXTmp" id="6Dg__VJQ4ao" role="1HemKq">
            <node concept="398BVA" id="6Dg__VJQ4ag" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="6Dg__VJQ4ah" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6Dg__VJQ4ai" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.smodelExt" />
                  <node concept="2Ry0Ak" id="6Dg__VJQ4aj" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6Dg__VJQ4ap" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ3Bi" role="3bR37C">
          <node concept="1Busua" id="6Dg__VJQ3Bj" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1yeLz9" id="6Dg__VJQ3Bk" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.smodelExt#01" />
          <property role="3LESm3" value="e761bfc5-0af4-4b24-a59d-4f36ad43153c" />
          <node concept="1BupzO" id="6Dg__VJQ3Bl" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="6Dg__VJQ3Bm" role="1HemKq">
              <node concept="398BVA" id="6Dg__VJQ3Bn" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="6Dg__VJQ3Bo" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6Dg__VJQ3Bp" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt" />
                    <node concept="2Ry0Ak" id="6Dg__VJQ3Bq" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="6Dg__VJQ3Br" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="6Dg__VJQ3Bs" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
            <node concept="3LXTmp" id="6Dg__VJQ4aA" role="1HemKq">
              <node concept="398BVA" id="6Dg__VJQ4as" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="6Dg__VJQ4at" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6Dg__VJQ4au" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.smodelExt" />
                    <node concept="2Ry0Ak" id="6Dg__VJQ4av" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="6Dg__VJQ4aw" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="6Dg__VJQ4aB" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ49Y" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ49Z" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4a0" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ4a1" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4a2" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ4a3" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGT_H" resolve="jetbrains.mps.baseLanguage.sequence" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4a4" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ4a5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:4SM2EuqHUPF" resolve="jetbrains.mps.lang.modelapi" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4a6" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ4a7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4a8" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ4a9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L8Y" resolve="jetbrains.mps.lang.project" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4aa" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ4ab" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4ac" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ4ad" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGTIW" resolve="jetbrains.mps.baseLanguage.collectionsExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4ae" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ4af" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:5wYq9r5EBDN" resolve="jetbrains.mps.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4aq" role="3bR37C">
          <node concept="1Busua" id="6Dg__VJQ4ar" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6Dg__VJQ2NZ" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.lang.smodelExt.test" />
        <property role="3LESm3" value="52e84caa-b118-4876-a544-5ed0b6603a79" />
        <property role="BnDLt" value="true" />
        <node concept="55IIr" id="6Dg__VJQ2O0" role="3LF7KH">
          <node concept="2Ry0Ak" id="6Dg__VJQ2O1" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="6Dg__VJQ2O2" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.smodelExt" />
              <node concept="2Ry0Ak" id="6Dg__VJQ37Y" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.smodelExt.test.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ2O4" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ2O5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ2Oc" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ2Od" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1BupzO" id="6Dg__VJQ2Oe" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6Dg__VJQ2Of" role="1HemKq">
            <node concept="398BVA" id="6Dg__VJQ2Og" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="6Dg__VJQ2Oh" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6Dg__VJQ2Oi" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt.test" />
                  <node concept="2Ry0Ak" id="6Dg__VJQ2Oj" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6Dg__VJQ2Ok" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
          <node concept="3LXTmp" id="6Dg__VJQ3eu" role="1HemKq">
            <node concept="398BVA" id="6Dg__VJQ3em" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="6Dg__VJQ3en" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6Dg__VJQ3eo" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.smodelExt" />
                  <node concept="2Ry0Ak" id="6Dg__VJQ3ep" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6Dg__VJQ3ev" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ3e8" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ3e9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ3ea" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ3eb" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ3ec" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ3ed" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ3ee" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ3ef" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ3eg" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ3eh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ3ei" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ3ej" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ3ek" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ3el" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="3rtmxn" id="6Dg__VJQ4jD" role="3bR31x">
          <node concept="3LXTmp" id="6Dg__VJQ4jE" role="3rtmxm">
            <node concept="55IIr" id="6Dg__VJQ4jF" role="3LXTmr">
              <node concept="2Ry0Ak" id="6Dg__VJQ4jG" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6Dg__VJQ4jH" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.smodelExt" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6Dg__VJQ4jJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6Dg__VJQ4qA" role="3bR37C">
          <node concept="3bR9La" id="6Dg__VJQ4qB" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
      </node>
    </node>
    <node concept="22LTRH" id="69UmpDmJWeu" role="1hWBAP">
      <property role="TrG5h" value="testconfig" />
      <node concept="22LTRF" id="69UmpDmJWgM" role="22LTRK">
        <ref role="22LTRG" node="69UmpDmJW20" resolve="baseLanguageExt" />
      </node>
      <node concept="24cAiW" id="1GKPrS22Kix" role="24cAkG">
        <node concept="NbPM2" id="5NV6AIIsBBg" role="24c_eh">
          <node concept="3Mxwew" id="5NV6AIIsBBf" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="3mytCjZmOcC" role="1psgkv">
          <node concept="3Mxwew" id="3mytCjZo1OL" role="3MwsjC">
            <property role="3MwjfP" value="-Xss2048k -Xmx2048m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7LI_gNMBoD8" role="3989C9">
      <property role="TrG5h" value="coderulesExt" />
      <node concept="1E1JtD" id="7LI_gNMBoG$" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.logicExt" />
        <property role="3LESm3" value="ad4d7d30-3da5-4d56-8273-c9d815b12234" />
        <property role="BnDLt" value="true" />
        <node concept="55IIr" id="7LI_gNMBoGB" role="3LF7KH">
          <node concept="2Ry0Ak" id="7LI_gNMBoGH" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7LI_gNMBoGM" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.logicExt" />
              <node concept="2Ry0Ak" id="7LI_gNMBoGR" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logicExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7LI_gNMBoHP" role="3bR37C">
          <node concept="3bR9La" id="7LI_gNMBoHQ" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1BupzO" id="7LI_gNMBoHZ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7LI_gNMBoI0" role="1HemKq">
            <node concept="398BVA" id="7LI_gNMBoHR" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="7LI_gNMBoHS" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7LI_gNMBoHT" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.logicExt" />
                  <node concept="2Ry0Ak" id="7LI_gNMBoHU" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7LI_gNMBoI1" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7LI_gNMBoI2" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.logicExt#01" />
          <property role="3LESm3" value="c9a9f252-ba9f-42ef-9c9b-1996350f8a84" />
          <node concept="1BupzO" id="7LI_gNMBoId" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7LI_gNMBoIe" role="1HemKq">
              <node concept="398BVA" id="7LI_gNMBoI3" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="7LI_gNMBoI4" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7LI_gNMBoI5" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logicExt" />
                    <node concept="2Ry0Ak" id="7LI_gNMBoI6" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="7LI_gNMBoI7" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7LI_gNMBoIf" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="_tf6vzPojy" role="3bR37C">
          <node concept="1Busua" id="_tf6vzPojz" role="1SiIV1">
            <ref role="1Busuk" to="zqd8:7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

