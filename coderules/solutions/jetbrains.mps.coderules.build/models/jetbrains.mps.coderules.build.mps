<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4f157831-48e7-4c8f-a144-b5bbd1be1539(jetbrains.mps.coderules.build)">
  <persistence version="9" />
  <languages>
    <use id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner" version="-1" />
    <use id="698a8d22-a104-47a0-ba8d-10e3ec237f13" name="jetbrains.mps.build.workflow" version="-1" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="-1" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="-1" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="-1" />
    <use id="9f846aef-4e4a-4a84-828e-7e83fe2697f2" name="jetbrains.mps.build.mps.testManifest" version="-1" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="-1" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="2ogt" ref="r:dc6ee11b-0a41-4208-a099-65b1a11fb3ff(jetbrains.mps.build.workflow.preset.java)" />
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
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="3767587139141066978" name="jetbrains.mps.build.structure.BuildVariableMacro" flags="ng" index="2kB4xC">
        <child id="2755237150521975432" name="initialValue" index="aVJcv" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
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
      <concept id="4903714810883702017" name="jetbrains.mps.build.structure.BuildVarRefStringPart" flags="ng" index="3Mxwey">
        <reference id="4903714810883702018" name="macro" index="3Mxwex" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6503355885715333289" name="jetbrains.mps.build.mps.structure.BuildMpsAspect" flags="ng" index="2igEWh">
        <property id="6503355885715353788" name="bootstrap" index="2igJW4" />
      </concept>
      <concept id="7832771629084799699" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginVendor" flags="ng" index="2iUeEo">
        <property id="7832771629084799702" name="name" index="2iUeEt" />
        <property id="7832771629084799701" name="url" index="2iUeEu" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="7832771629084912518" name="vendor" index="2iVFfd" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
        <child id="2172791612906637490" name="description" index="3s6cr7" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
        <child id="4356762679305730677" name="jarLocations" index="3yL2VB" />
        <child id="3335207478148056905" name="deployedJar" index="3PtcVe" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
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
      <concept id="4356762679305675652" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleXml_CustomJarLocation" flags="ng" index="3yLZsm">
        <property id="4356762679305675654" name="packagedLocation" index="3yLZsk" />
        <child id="4356762679305675653" name="path" index="3yLZsn" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731981027" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleSolutionRuntime" flags="ng" index="1E0d5M">
        <reference id="3189788309731981028" name="solution" index="1E0d5P" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="3189788309731917348" name="runtime" index="1E1XAP" />
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="3335207478148059730" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJarContent" flags="ng" index="3PtdJl" />
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="1BDNG5xBZgg">
    <property role="2DA0ip" value="../../../" />
    <property role="TrG5h" value="coderules" />
    <node concept="2igEWh" id="4PFyrnOi2Za" role="1hWBAP">
      <property role="2igJW4" value="true" />
    </node>
    <node concept="22LTRH" id="7Ant4WkHLti" role="1hWBAP">
      <property role="TrG5h" value="testconfig" />
      <node concept="22LTRF" id="46o4wsHrLsQ" role="22LTRK">
        <ref role="22LTRG" node="7Ant4WkHLpc" resolve="logic-test" />
      </node>
      <node concept="22LTRF" id="5pz4PwHqsv1" role="22LTRK">
        <ref role="22LTRG" node="5pz4PwHqqGu" resolve="typechecking-test" />
      </node>
      <node concept="22LTRF" id="1Lr58WFPiCA" role="22LTRK">
        <ref role="22LTRG" node="1Lr58WFO8Mc" resolve="coderules-test" />
      </node>
      <node concept="24cAiW" id="1GKPrS22Kir" role="24cAkG">
        <node concept="NbPM2" id="5pz4PwHrDMq" role="24c_eh">
          <node concept="3Mxwew" id="5pz4PwHrDMp" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="3mytCjZmOqB" role="1psgkv">
          <node concept="3Mxwew" id="3mytCjZo1OL" role="3MwsjC">
            <property role="3MwjfP" value="-Xss2048k -Xmx2048m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="7BVjoXzUx67" role="3989C9">
      <property role="m$_wk" value="jetbrains.mps.coderules" />
      <node concept="3_J27D" id="7BVjoXzUx68" role="m$_yQ">
        <node concept="3Mxwew" id="7BVjoXzUx6h" role="3MwsjC">
          <property role="3MwjfP" value="Code Rules" />
        </node>
      </node>
      <node concept="3_J27D" id="7BVjoXzUx69" role="m_cZH">
        <node concept="3Mxwew" id="7BVjoXzUx6j" role="3MwsjC">
          <property role="3MwjfP" value="coderules" />
        </node>
      </node>
      <node concept="3_J27D" id="7BVjoXzUx6a" role="m$_w8">
        <node concept="3Mxwew" id="2BiN_P7R7Wi" role="3MwsjC">
          <property role="3MwjfP" value="0.5-b" />
        </node>
        <node concept="3Mxwey" id="2BiN_P7R81m" role="3MwsjC">
          <ref role="3Mxwex" node="2BiN_P7R7jO" resolve="ci.build.num" />
        </node>
      </node>
      <node concept="3_J27D" id="3AC_dXTSEnT" role="3s6cr7">
        <node concept="3Mxwew" id="3AC_dXTSEnV" role="3MwsjC">
          <property role="3MwjfP" value="Code rules and constraint handling (experimental)" />
        </node>
      </node>
      <node concept="2iUeEo" id="3AC_dXTSEsp" role="2iVFfd">
        <property role="2iUeEt" value="JetBrains s.r.o." />
        <property role="2iUeEu" value="jetbrains.com/mps" />
      </node>
    </node>
    <node concept="2G$12M" id="3PhVAH_Wgx6" role="3989C9">
      <property role="TrG5h" value="build" />
      <node concept="1E1JtA" id="3PhVAH_WgTu" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.coderules.build" />
        <property role="3LESm3" value="bc9cd1e7-827b-4d61-b111-d2c896dcae6f" />
        <node concept="55IIr" id="3PhVAH_WgTv" role="3LF7KH">
          <node concept="2Ry0Ak" id="3PhVAH_Wh7D" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="3PhVAH_WhlM" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="3PhVAH_WhzV" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.coderules.build" />
                <node concept="2Ry0Ak" id="6$gg4kBSGvk" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.coderules.build.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3PhVAH_Wi7c" role="3bR37C">
          <node concept="3bR9La" id="3PhVAH_Wi7d" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
          </node>
        </node>
        <node concept="3bR9La" id="7axPyNkluAe" role="3bR37C">
          <ref role="3bR37D" to="ffeo:1WGJoq9Wd0d" resolve="jetbrains.mps.build.workflow.preset" />
        </node>
        <node concept="1BupzO" id="7zIaasjWoOA" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoOB" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoOs" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoOt" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoOu" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoOv" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.build" />
                    <node concept="2Ry0Ak" id="7zIaasjWoOw" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoOC" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervV_" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervVA" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervVB" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervVC" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervVD" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervVE" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervVF" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.build" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7BVjoXzUxju" role="3989C9">
      <property role="TrG5h" value="logic" />
      <node concept="1E1JtA" id="7BVjoXzUxoR" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.logic.reactor" />
        <property role="3LESm3" value="bbf5c548-7111-4a53-a117-cdefc664cf34" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="7BVjoXzUxoU" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUxpK" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7BVjoXzUxqv" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7BVjoXzUxre" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                <node concept="2Ry0Ak" id="7BVjoXzUxsu" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.logic.reactor.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxx1" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxx2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxVl" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxVm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxVn" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxVo" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMp$6" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMp$7" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMp$8" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMp$9" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMp$a" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMp$b" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="3Z6zOnxMp$c" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2telgBuBcy7" role="3bR37C">
          <node concept="1BurEX" id="2telgBuBcy8" role="1SiIV1">
            <node concept="398BVA" id="2telgBuBcxV" role="1BurEY">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="2telgBuBcxW" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="2telgBuBcxX" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="2telgBuBcxY" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="2telgBuBcxZ" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2telgBuBcy0" role="2Ry0An">
                        <property role="2Ry0Am" value="collection-0.7.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2telgBuBcyL" role="3bR37C">
          <node concept="1BurEX" id="2telgBuBcyM" role="1SiIV1">
            <node concept="398BVA" id="2telgBuBcy_" role="1BurEY">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="2telgBuBcyA" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="2telgBuBcyB" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="2telgBuBcyC" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="2telgBuBcyD" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2telgBuBcyE" role="2Ry0An">
                        <property role="2Ry0Am" value="trove4j-3.0.3.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4psz3HH29As" role="3bR37C">
          <node concept="1BurEX" id="4psz3HH29At" role="1SiIV1">
            <node concept="398BVA" id="4psz3HH29Ag" role="1BurEY">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="4psz3HH29Ah" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="4psz3HH29Ai" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="4psz3HH29Aj" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="4psz3HH29Ak" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4psz3HH29Al" role="2Ry0An">
                        <property role="2Ry0Am" value="conreactor-core-0.9.14.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7BVjoXzUx$V" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="3LESm3" value="a5478664-6b44-4c62-a9f7-434f8aa57eee" />
        <property role="TrG5h" value="jetbrains.mps.logic.runtime" />
        <node concept="55IIr" id="7BVjoXzUx$Y" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUxBC" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7BVjoXzUxDN" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7BVjoXzUxI4" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic" />
                <node concept="2Ry0Ak" id="7BVjoXzUxLi" role="2Ry0An">
                  <property role="2Ry0Am" value="runtime" />
                  <node concept="2Ry0Ak" id="7BVjoXzUxNt" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.runtime.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbyNj" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbyNk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbyNn" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbyNo" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMp$u" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMp$v" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMp$w" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMp$x" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMp$y" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMp$z" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3Z6zOnxMp$$" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic" />
                    <node concept="2Ry0Ak" id="3Z6zOnxMp$_" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="70Wv0dJkDFs" role="3bR37C">
          <node concept="3bR9La" id="70Wv0dJkDFt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="70Wv0dJkDFu" role="3bR37C">
          <node concept="3bR9La" id="70Wv0dJkDFv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoPp" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoPq" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoPd" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoPe" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoPf" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7zIaasjWoPg" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic" />
                    <node concept="2Ry0Ak" id="7zIaasjWoPh" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime" />
                      <node concept="2Ry0Ak" id="7zIaasjWoPi" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoPr" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3ca5Bh2cpLY" role="3bR37C">
          <node concept="3bR9La" id="3ca5Bh2cpLZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7BVjoXzUxkQ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.logic" />
        <property role="3LESm3" value="35320f26-77cb-4c55-be9f-a97a27770af1" />
        <node concept="55IIr" id="7BVjoXzUxlc" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUxlM" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7BVjoXzUxmn" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7BVjoXzUxmW" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic" />
                <node concept="2Ry0Ak" id="7BVjoXzUxnx" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.logic.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxU2" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxU3" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxU4" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxU5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1d41uYMTRXo" resolve="jetbrains.mps.baseLanguage.scopes" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxe2" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxe3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxe6" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxe7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxe8" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxe9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxec" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxed" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxeg" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxeh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxei" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxej" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1E0d5M" id="4pNU3yqbxem" role="1E1XAP">
          <ref role="1E0d5P" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxen" role="3bR37C">
          <node concept="1Busua" id="4pNU3yqbxeo" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="4pNU3yqbxer" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.logic#6626732309150416985" />
          <property role="3LESm3" value="85f64970-3326-4ea7-966e-1ac904686424" />
          <node concept="1SiIV0" id="4pNU3yqbxes" role="3bR37C">
            <node concept="3bR9La" id="4pNU3yqbxet" role="1SiIV1">
              <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
            </node>
          </node>
          <node concept="1SiIV0" id="4pNU3yqbxeu" role="3bR37C">
            <node concept="3bR9La" id="4pNU3yqbxev" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="5pIcDR7CeWY" role="3bR37C">
            <node concept="3bR9La" id="5pIcDR7CeWZ" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7YI57w6K09t" resolve="jetbrains.mps.baseLanguage.collections#1151699677197" />
            </node>
          </node>
          <node concept="1SiIV0" id="5yqFHXoyP4J" role="3bR37C">
            <node concept="3bR9La" id="5yqFHXoyP4K" role="1SiIV1">
              <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
            </node>
          </node>
          <node concept="1BupzO" id="7zIaasjWoPR" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7zIaasjWoPS" role="1HemKq">
              <node concept="398BVA" id="7zIaasjWoPF" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                <node concept="2Ry0Ak" id="7zIaasjWoPG" role="iGT6I">
                  <property role="2Ry0Am" value="coderules" />
                  <node concept="2Ry0Ak" id="7zIaasjWoPH" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="7zIaasjWoPI" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.logic" />
                      <node concept="2Ry0Ak" id="7zIaasjWoPJ" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="7zIaasjWoPK" role="2Ry0An">
                          <property role="2Ry0Am" value="template" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7zIaasjWoPT" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMpzt" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMpzu" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMpzv" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMpzw" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMpzx" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMpzy" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3Z6zOnxMpzz" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoPC" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoPD" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoPu" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoPv" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoPw" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7zIaasjWoPx" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic" />
                    <node concept="2Ry0Ak" id="7zIaasjWoPy" role="2Ry0An">
                      <property role="2Ry0Am" value="languageModels" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoPE" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7Ant4WkHLpc" role="3989C9">
      <property role="TrG5h" value="logic-test" />
      <node concept="1E1JtA" id="7Ant4WkHLpd" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.logic.test" />
        <property role="3LESm3" value="b189d6c6-9397-4d64-88af-1ac73760a4f5" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7Ant4WkHLpe" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLpf" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7Ant4WkHLpg" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Ant4WkHLph" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic.test" />
                <node concept="2Ry0Ak" id="7Ant4WkHLpi" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.logic.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpj" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpn" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpo" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMpzP" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMpzQ" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMpzR" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMpzS" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMpzT" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMpzU" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="3Z6zOnxMpzV" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2telgBuBczr" role="3bR37C">
          <node concept="1BurEX" id="2telgBuBczs" role="1SiIV1">
            <node concept="398BVA" id="2telgBuBczf" role="1BurEY">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="2telgBuBczg" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="2telgBuBczh" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="2telgBuBczi" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.test" />
                    <node concept="2Ry0Ak" id="2telgBuBczj" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2telgBuBczk" role="2Ry0An">
                        <property role="2Ry0Am" value="mockito-core-2.0.3-beta.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2telgBuBczD" role="3bR37C">
          <node concept="1BurEX" id="2telgBuBczE" role="1SiIV1">
            <node concept="398BVA" id="2telgBuBczt" role="1BurEY">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="2telgBuBczu" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="2telgBuBczv" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="2telgBuBczw" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.test" />
                    <node concept="2Ry0Ak" id="2telgBuBczx" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2telgBuBczy" role="2Ry0An">
                        <property role="2Ry0Am" value="objenesis-2.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1POzLwzdJ2H" role="3bR37C">
          <node concept="3bR9La" id="1POzLwzdJ2I" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoQs" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoQt" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoQi" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoQj" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoQk" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoQl" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.test" />
                    <node concept="2Ry0Ak" id="7zIaasjWoQm" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoQu" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="65DJywFj0uW" role="3989C9">
      <property role="TrG5h" value="typechecking" />
      <node concept="1E1JtA" id="NKt6yomVLS" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typechecking.runtime" />
        <property role="3LESm3" value="f486b8aa-5b2d-4ec0-8ef5-8f45d773fb84" />
        <node concept="55IIr" id="NKt6yomVLV" role="3LF7KH">
          <node concept="2Ry0Ak" id="NKt6yomW6Z" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="NKt6yomWj8" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="NKt6yomWvh" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typechecking.runtime" />
                <node concept="2Ry0Ak" id="NKt6yomWFq" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typechecking.runtime.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yomWQ4" role="3bR37C">
          <node concept="3bR9La" id="NKt6yomWQ5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yomWQ6" role="3bR37C">
          <node concept="3bR9La" id="NKt6yomWQ7" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoQD" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoQE" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoQv" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoQw" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoQx" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoQy" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.typechecking.runtime" />
                    <node concept="2Ry0Ak" id="7zIaasjWoQz" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoQF" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervVH" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervVI" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervVJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervVK" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervVL" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervVM" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervVN" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.typechecking.runtime" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="NKt6ynvPIP" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typechecking" />
        <property role="3LESm3" value="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" />
        <node concept="55IIr" id="NKt6ynvPIS" role="3LF7KH">
          <node concept="2Ry0Ak" id="NKt6ynvQf3" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="NKt6ynvQwc" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="NKt6ynvQFD" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typechecking" />
                <node concept="2Ry0Ak" id="NKt6ynvQR6" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typechecking.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6ynvR14" role="3bR37C">
          <node concept="1Busua" id="NKt6ynvR15" role="1SiIV1">
            <ref role="1Busuk" node="7BVjoXzUx6U" resolve="jetbrains.mps.lang.coderules" />
          </node>
        </node>
        <node concept="1yeLz9" id="NKt6ynvR16" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.typechecking#01" />
          <property role="3LESm3" value="685b46b0-fc2b-411e-954a-af0eeec1a29a" />
          <node concept="1SiIV0" id="NKt6ynvR17" role="3bR37C">
            <node concept="3bR9La" id="NKt6ynvR18" role="1SiIV1">
              <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
            </node>
          </node>
          <node concept="1SiIV0" id="NKt6ynvR19" role="3bR37C">
            <node concept="3bR9La" id="NKt6ynvR1a" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="7BVjoXzUxWX" resolve="jetbrains.mps.lang.coderules#4578927328670739933" />
            </node>
          </node>
          <node concept="1SiIV0" id="NKt6ynvR1b" role="3bR37C">
            <node concept="3bR9La" id="NKt6ynvR1c" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L8Y" resolve="jetbrains.mps.lang.project" />
            </node>
          </node>
          <node concept="1SiIV0" id="NKt6ynvR1d" role="3bR37C">
            <node concept="3bR9La" id="NKt6ynvR1e" role="1SiIV1">
              <ref role="3bR37D" node="7BVjoXzUx6U" resolve="jetbrains.mps.lang.coderules" />
            </node>
          </node>
          <node concept="1SiIV0" id="NKt6ynQRnI" role="3bR37C">
            <node concept="3bR9La" id="NKt6ynQRnJ" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L68" resolve="jetbrains.mps.lang.descriptor" />
            </node>
          </node>
          <node concept="1SiIV0" id="NKt6ynQRnL" role="3bR37C">
            <node concept="3bR9La" id="NKt6ynQRnK" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7YI57w6K0jH" resolve="jetbrains.mps.lang.descriptor#9020561928507175817" />
            </node>
          </node>
          <node concept="1SiIV0" id="NKt6yomX2i" role="3bR37C">
            <node concept="3bR9La" id="NKt6yomX2j" role="1SiIV1">
              <ref role="3bR37D" node="NKt6yomVLS" resolve="jetbrains.mps.lang.typechecking.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="58VeaO3uZwO" role="3bR37C">
            <node concept="3bR9La" id="58VeaO3uZwP" role="1SiIV1">
              <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
            </node>
          </node>
          <node concept="1SiIV0" id="58VeaO3uZwQ" role="3bR37C">
            <node concept="3bR9La" id="58VeaO3uZwR" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:6zkSwmUIjUj" resolve="jetbrains.mps.lang.aspect#3274906159125927726" />
            </node>
          </node>
          <node concept="1SiIV0" id="58VeaO3uZwS" role="3bR37C">
            <node concept="3bR9La" id="58VeaO3uZwT" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1SiIV0" id="58VeaO3uZwY" role="3bR37C">
            <node concept="3bR9La" id="58VeaO3uZwZ" role="1SiIV1">
              <ref role="3bR37D" node="65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
            </node>
          </node>
          <node concept="1BupzO" id="7zIaasjWoR5" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7zIaasjWoR6" role="1HemKq">
              <node concept="398BVA" id="7zIaasjWoQT" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                <node concept="2Ry0Ak" id="7zIaasjWoQU" role="iGT6I">
                  <property role="2Ry0Am" value="coderules" />
                  <node concept="2Ry0Ak" id="7zIaasjWoQV" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="7zIaasjWoQW" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.typechecking" />
                      <node concept="2Ry0Ak" id="7zIaasjWoQX" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="7zIaasjWoQY" role="2Ry0An">
                          <property role="2Ry0Am" value="template" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7zIaasjWoR7" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6ynF2pv" role="3bR37C">
          <node concept="1Busua" id="NKt6ynF2pw" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L68" resolve="jetbrains.mps.lang.descriptor" />
          </node>
        </node>
        <node concept="1E0d5M" id="NKt6yos4if" role="1E1XAP">
          <ref role="1E0d5P" node="NKt6yomVLS" resolve="jetbrains.mps.lang.typechecking.runtime" />
        </node>
        <node concept="1BupzO" id="7zIaasjWoQQ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoQR" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoQG" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoQH" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoQI" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7zIaasjWoQJ" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.typechecking" />
                    <node concept="2Ry0Ak" id="7zIaasjWoQK" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoQS" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervWP" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervWQ" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervWR" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervWS" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervWT" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervWU" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7L5omgervWV" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.typechecking" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="65DJywFj0Fi" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.coderules.typechecking" />
        <property role="3LESm3" value="6998f568-f0e9-473b-b4a8-9efb6499fc8d" />
        <node concept="55IIr" id="65DJywFj0Fj" role="3LF7KH">
          <node concept="2Ry0Ak" id="65DJywFj0LR" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="65DJywFj0Qg" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="65DJywFj0UD" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking" />
                <node concept="2Ry0Ak" id="6$gg4kBSNyD" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj18g" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj18h" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29y" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29z" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvxay" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvxaz" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Ss4_iXXglt" role="3bR37C">
          <node concept="3bR9La" id="1Ss4_iXXglu" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6IQb_Rx4yBf" role="3bR37C">
          <node concept="3bR9La" id="6IQb_Rx4yBg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="4QPCta1$X6m" role="3bR37C">
          <node concept="3bR9La" id="4QPCta1$X6n" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMp$m" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMp$n" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMp$o" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMp$p" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMp$q" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMp$r" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="2y$Oyixf3PT" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yn9B9x" role="3bR37C">
          <node concept="3bR9La" id="NKt6yn9B9y" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="NKt6yn9_8p" resolve="jetbrains.mps.coderules" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oeMJTi" role="3bR37C">
          <node concept="3bR9La" id="78H58oeMJTj" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="NKt6yomVLS" resolve="jetbrains.mps.lang.typechecking.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1FOQehxTEQO" role="3bR37C">
          <node concept="3bR9La" id="1FOQehxTEQP" role="1SiIV1">
            <ref role="3bR37D" node="46o4wsH5PJF" resolve="jetbrains.mps.typechecking.annotation" />
          </node>
        </node>
        <node concept="1SiIV0" id="2hrSdN9bYck" role="3bR37C">
          <node concept="3bR9La" id="2hrSdN9bYcl" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
        <node concept="1SiIV0" id="4ZGicUZmbRr" role="3bR37C">
          <node concept="3bR9La" id="4ZGicUZmbRs" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1SiIV0" id="3KN3A4vQnFq" role="3bR37C">
          <node concept="3bR9La" id="3KN3A4vQnFr" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="7i3KM7gGRWE" role="3bR37C">
          <node concept="3bR9La" id="7i3KM7gGRWF" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoRi" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoRj" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoR8" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoR9" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoRa" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoRb" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking" />
                    <node concept="2Ry0Ak" id="7zIaasjWoRc" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoRk" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="55Q$YFtvwQY" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.coderules.typechecking.ui" />
        <property role="3LESm3" value="35e2a720-13d8-4eda-88d3-ff9d78d5a3ae" />
        <node concept="55IIr" id="55Q$YFtvwQZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="55Q$YFtvwR0" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="55Q$YFtvwR1" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="55Q$YFtvwR2" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.ui" />
                <node concept="2Ry0Ak" id="6$gg4kBSUBg" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.ui.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvwR6" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvwR7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvwR8" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvwR9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvwRc" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvwRd" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvwRe" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvwRf" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvwRi" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvwRj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvwRm" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvwRn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LgV" resolve="jetbrains.mps.make.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvwRo" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvwRp" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvwRq" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvwRr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvwRs" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvwRt" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lfd" resolve="jetbrains.mps.findUsages.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="55Q$YFtvxjO" role="3bR37C">
          <node concept="3bR9La" id="55Q$YFtvxjP" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="3wxtToDLSLl" role="3bR37C">
          <node concept="3bR9La" id="3wxtToDLSLm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMpzH" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMpzI" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMpzJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMpzK" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMpzL" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMpzM" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="2y$OyixfdGM" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.ui" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yn9Bad" role="3bR37C">
          <node concept="3bR9La" id="NKt6yn9Bae" role="1SiIV1">
            <ref role="3bR37D" node="NKt6yn9_8p" resolve="jetbrains.mps.coderules" />
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yomX3a" role="3bR37C">
          <node concept="3bR9La" id="NKt6yomX3b" role="1SiIV1">
            <ref role="3bR37D" node="NKt6yomVLS" resolve="jetbrains.mps.lang.typechecking.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Yb9hAqybsV" role="3bR37C">
          <node concept="3bR9La" id="6Yb9hAqybsW" role="1SiIV1">
            <ref role="3bR37D" node="6Yb9hAqy9L2" resolve="jetbrains.mps.coderules.ui" />
          </node>
        </node>
        <node concept="1SiIV0" id="3KN3A4vfa3v" role="3bR37C">
          <node concept="3bR9La" id="3KN3A4vfa3w" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoRv" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoRw" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoRl" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoRm" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoRn" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoRo" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.ui" />
                    <node concept="2Ry0Ak" id="7zIaasjWoRp" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoRx" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="46o4wsH5PJF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.typechecking.annotation" />
        <property role="3LESm3" value="0b80a2e8-f9f1-47b3-823f-56eb115bca42" />
        <node concept="55IIr" id="46o4wsH5PJI" role="3LF7KH">
          <node concept="2Ry0Ak" id="46o4wsH5PTX" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="46o4wsH5PYy" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="46o4wsH5Q7B" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.typechecking.annotation" />
                <node concept="2Ry0Ak" id="46o4wsH5QgG" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.typechecking.annotation.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="46o4wsH5Qle" role="3bR37C">
          <node concept="3bR9La" id="46o4wsH5Qlf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="46o4wsH5Qlg" role="3bR37C">
          <node concept="3bR9La" id="46o4wsH5Qlh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMpz5" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMpz6" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMpz7" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMpz8" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMpz9" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMpza" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3Z6zOnxMpzb" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.typechecking.annotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoRG" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoRH" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoRy" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoRz" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoR$" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7zIaasjWoR_" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.typechecking.annotation" />
                    <node concept="2Ry0Ak" id="7zIaasjWoRA" role="2Ry0An">
                      <property role="2Ry0Am" value="languageModels" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoRI" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5pz4PwHqqGu" role="3989C9">
      <property role="TrG5h" value="typechecking-test" />
      <node concept="1E1JtD" id="7mB3viLuogo" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.typechecking.testlang" />
        <property role="3LESm3" value="3a1f0f04-b5e0-43be-884e-b856bfdeca21" />
        <node concept="55IIr" id="7mB3viLuogp" role="3LF7KH">
          <node concept="2Ry0Ak" id="7mB3viLuouJ" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7mB3viLuoH4" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7mB3viLuoVp" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.typechecking.testlang" />
                <node concept="2Ry0Ak" id="7mB3viLupgQ" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.typechecking.testlang.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLupM4" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLupM5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLupM6" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLupM7" role="1SiIV1">
            <ref role="3bR37D" node="65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1yeLz9" id="7mB3viLupM8" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.typechecking.testlang#3575255234175341581" />
          <property role="3LESm3" value="1f130d77-1d29-44cb-bef3-bde05978c2c7" />
          <node concept="1BupzO" id="7zIaasjWoS8" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7zIaasjWoS9" role="1HemKq">
              <node concept="398BVA" id="7zIaasjWoRW" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                <node concept="2Ry0Ak" id="7zIaasjWoRX" role="iGT6I">
                  <property role="2Ry0Am" value="coderules" />
                  <node concept="2Ry0Ak" id="7zIaasjWoRY" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="7zIaasjWoRZ" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.typechecking.testlang" />
                      <node concept="2Ry0Ak" id="7zIaasjWoS0" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="7zIaasjWoS1" role="2Ry0An">
                          <property role="2Ry0Am" value="template" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7zIaasjWoSa" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLurcE" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLurcF" role="1SiIV1">
            <ref role="3bR37D" node="7mB3viLuogo" resolve="jetbrains.mps.typechecking.testlang" />
          </node>
        </node>
        <node concept="1SiIV0" id="72RDgIN6UHs" role="3bR37C">
          <node concept="3bR9La" id="72RDgIN6UHt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoRT" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoRU" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoRJ" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoRK" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoRL" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7zIaasjWoRM" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.typechecking.testlang" />
                    <node concept="2Ry0Ak" id="7zIaasjWoRN" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoRV" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervWX" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervWY" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervWZ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervX0" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervX1" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervX2" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7L5omgervX3" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.typechecking.testlang" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7mB3viLuq51" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.coderules.typechecking.testlang.sandbox" />
        <property role="3LESm3" value="f9bad4b1-59da-4f20-8feb-9f4cc4ad872e" />
        <node concept="55IIr" id="7mB3viLuq54" role="3LF7KH">
          <node concept="2Ry0Ak" id="7mB3viLuqkh" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7mB3viLuqzi" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7mB3viLuqMj" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.testlang.sandbox" />
                <node concept="2Ry0Ak" id="6$gg4kBT1E_" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.testlang.sandbox.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoSl" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoSm" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoSb" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoSc" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoSd" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoSe" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.testlang.sandbox" />
                    <node concept="2Ry0Ak" id="7zIaasjWoSf" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoSn" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervVP" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervVQ" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervVR" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervVS" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervVT" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervVU" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervVV" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.testlang.sandbox" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7mB3viLwG3m" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.coderules.typechecking.test" />
        <property role="3LESm3" value="c9670c16-a215-41fb-8784-04b14329799d" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7mB3viLwG3p" role="3LF7KH">
          <node concept="2Ry0Ak" id="7mB3viLwGj2" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7mB3viLwGyn" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7mB3viLwGLG" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.test" />
                <node concept="2Ry0Ak" id="6$gg4kBT8Jc" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLwHzT" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLwHzU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLwHzV" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLwHzW" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLwHzX" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLwHzY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLwH$1" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLwH$2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLwH$3" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLwH$4" role="1SiIV1">
            <ref role="3bR37D" node="7mB3viLuogo" resolve="jetbrains.mps.typechecking.testlang" />
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLwH$5" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLwH$6" role="1SiIV1">
            <ref role="3bR37D" node="NKt6yomVLS" resolve="jetbrains.mps.lang.typechecking.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLwH$7" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLwH$8" role="1SiIV1">
            <ref role="3bR37D" node="7mB3viLuq51" resolve="jetbrains.mps.coderules.typechecking.testlang.sandbox" />
          </node>
        </node>
        <node concept="1SiIV0" id="7mB3viLwH$9" role="3bR37C">
          <node concept="3bR9La" id="7mB3viLwH$a" role="1SiIV1">
            <ref role="3bR37D" node="65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="2dF51l18cxj" role="3bR37C">
          <node concept="3bR9La" id="2dF51l18cxk" role="1SiIV1">
            <ref role="3bR37D" node="7Ant4WkHLpd" resolve="jetbrains.mps.logic.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="6gZak$ALJS1" role="3bR37C">
          <node concept="3bR9La" id="6gZak$ALJS2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="3czCaDuZESi" role="3bR37C">
          <node concept="3bR9La" id="3czCaDuZESj" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="Jfcwnvu3hk" role="3bR37C">
          <node concept="3bR9La" id="Jfcwnvu3hl" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="Jfcwnvu3hm" role="3bR37C">
          <node concept="3bR9La" id="Jfcwnvu3hn" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUx6U" resolve="jetbrains.mps.lang.coderules" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoSy" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoSz" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoSo" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoSp" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoSq" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoSr" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.test" />
                    <node concept="2Ry0Ak" id="7zIaasjWoSs" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoS$" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervVX" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervVY" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervVZ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervW0" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervW1" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervW2" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervW3" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.typechecking.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="78H58oeeFzd" role="3989C9">
      <property role="TrG5h" value="controlflow" />
      <node concept="1E1JtA" id="78H58oeeH$3" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.controlflow.runtime" />
        <property role="3LESm3" value="ffcd9ef5-e931-4da9-a8d1-eb9bf80d19b4" />
        <node concept="55IIr" id="78H58oeeH$4" role="3LF7KH">
          <node concept="2Ry0Ak" id="78H58oeeH$5" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="78H58oeeH$6" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="78H58oeeH$7" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.controlflow.runtime" />
                <node concept="2Ry0Ak" id="78H58oeeHLb" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.controlflow.runtime.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oeeHVD" role="3bR37C">
          <node concept="3bR9La" id="78H58oeeHVE" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oeeHVF" role="3bR37C">
          <node concept="3bR9La" id="78H58oeeHVG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oeeHVH" role="3bR37C">
          <node concept="3bR9La" id="78H58oeeHVI" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oeeHVJ" role="3bR37C">
          <node concept="3bR9La" id="78H58oeeHVK" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoSJ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoSK" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoS_" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoSA" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoSB" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoSC" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.controlflow.runtime" />
                    <node concept="2Ry0Ak" id="7zIaasjWoSD" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoSL" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervW5" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervW6" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervW7" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervW8" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervW9" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervWa" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervWb" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.controlflow.runtime" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="78H58oeeJaR" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.controlflow" />
        <property role="3LESm3" value="2e120f68-abfb-4980-bb1c-bc70159b1f95" />
        <node concept="55IIr" id="78H58oeeJaU" role="3LF7KH">
          <node concept="2Ry0Ak" id="78H58oeeJoI" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="78H58oeeJA7" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="78H58oeeJNw" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.controlflow" />
                <node concept="2Ry0Ak" id="78H58oeeK0T" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.controlflow.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oeeKbR" role="3bR37C">
          <node concept="1Busua" id="78H58oeeKbS" role="1SiIV1">
            <ref role="1Busuk" node="7BVjoXzUx6U" resolve="jetbrains.mps.lang.coderules" />
          </node>
        </node>
        <node concept="1yeLz9" id="78H58oeeKbT" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.controlflow#01" />
          <property role="3LESm3" value="67306c43-4604-4dad-9b74-7e808a66bee5" />
          <node concept="1SiIV0" id="78H58oeeKbU" role="3bR37C">
            <node concept="3bR9La" id="78H58oeeKbV" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7YI57w6K0jH" resolve="jetbrains.mps.lang.descriptor#9020561928507175817" />
            </node>
          </node>
          <node concept="1SiIV0" id="78H58oeeKbY" role="3bR37C">
            <node concept="3bR9La" id="78H58oeeKbZ" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="7BVjoXzUxWX" resolve="jetbrains.mps.lang.coderules#4578927328670739933" />
            </node>
          </node>
          <node concept="1SiIV0" id="78H58oeeKc0" role="3bR37C">
            <node concept="3bR9La" id="78H58oeeKc1" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L8Y" resolve="jetbrains.mps.lang.project" />
            </node>
          </node>
          <node concept="1SiIV0" id="78H58oeeKc2" role="3bR37C">
            <node concept="3bR9La" id="78H58oeeKc3" role="1SiIV1">
              <ref role="3bR37D" node="78H58oeeH$3" resolve="jetbrains.mps.lang.controlflow.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="72RDgIN6UIi" role="3bR37C">
            <node concept="3bR9La" id="72RDgIN6UIj" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:6zkSwmUIjUj" resolve="jetbrains.mps.lang.aspect#3274906159125927726" />
            </node>
          </node>
          <node concept="1BupzO" id="7zIaasjWoTb" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7zIaasjWoTc" role="1HemKq">
              <node concept="398BVA" id="7zIaasjWoSZ" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                <node concept="2Ry0Ak" id="7zIaasjWoT0" role="iGT6I">
                  <property role="2Ry0Am" value="coderules" />
                  <node concept="2Ry0Ak" id="7zIaasjWoT1" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="7zIaasjWoT2" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.controlflow" />
                      <node concept="2Ry0Ak" id="7zIaasjWoT3" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="7zIaasjWoT4" role="2Ry0An">
                          <property role="2Ry0Am" value="template" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7zIaasjWoTd" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="78H58oewGXf" role="1E1XAP">
          <ref role="1E0d5P" node="78H58oeeH$3" resolve="jetbrains.mps.lang.controlflow.runtime" />
        </node>
        <node concept="1SiIV0" id="78H58oewGXg" role="3bR37C">
          <node concept="1Busua" id="78H58oewGXh" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L68" resolve="jetbrains.mps.lang.descriptor" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoSW" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoSX" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoSM" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoSN" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoSO" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7zIaasjWoSP" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.controlflow" />
                    <node concept="2Ry0Ak" id="7zIaasjWoSQ" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoSY" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervX5" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervX6" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervX7" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervX8" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervX9" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervXa" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7L5omgervXb" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.controlflow" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="78H58oeeGcw" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.controlflow" />
        <property role="3LESm3" value="517911e5-605f-4310-831b-10d44e0f5237" />
        <node concept="55IIr" id="78H58oeeGcx" role="3LF7KH">
          <node concept="2Ry0Ak" id="78H58oeeG_n" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="78H58oeeGLO" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="78H58oeeGYh" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.controlflow" />
                <node concept="2Ry0Ak" id="78H58oeeHgU" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.controlflow.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGWv" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGWw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGWx" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGWy" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGW_" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGWA" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="NKt6yn9_8p" resolve="jetbrains.mps.coderules" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoTo" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoTp" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoTe" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoTf" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoTg" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoTh" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.controlflow" />
                    <node concept="2Ry0Ak" id="7zIaasjWoTi" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoTq" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervWd" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervWe" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervWf" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervWg" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervWh" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervWi" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervWj" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.controlflow" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="78H58oeeI52" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.controlflow.ui" />
        <property role="3LESm3" value="eacb1d2f-fed3-4344-a1dd-143fac2e9c20" />
        <node concept="55IIr" id="78H58oeeI53" role="3LF7KH">
          <node concept="2Ry0Ak" id="78H58oeeI54" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="78H58oeeI55" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="78H58oeeI56" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.controlflow.ui" />
                <node concept="2Ry0Ak" id="78H58oeeIjb" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.controlflow.ui.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGWL" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGWM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGWN" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGWO" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGWP" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGWQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGWR" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGWS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGWT" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGWU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LgV" resolve="jetbrains.mps.make.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGWV" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGWW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGWZ" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGX0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGX1" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGX2" role="1SiIV1">
            <ref role="3bR37D" node="78H58oeeH$3" resolve="jetbrains.mps.lang.controlflow.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="78H58oewGX3" role="3bR37C">
          <node concept="3bR9La" id="78H58oewGX4" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="78H58oeeGcw" resolve="jetbrains.mps.controlflow" />
          </node>
        </node>
        <node concept="1SiIV0" id="2acLaGi2uwt" role="3bR37C">
          <node concept="3bR9La" id="2acLaGi2uwu" role="1SiIV1">
            <ref role="3bR37D" node="6Yb9hAqy9L2" resolve="jetbrains.mps.coderules.ui" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoT_" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoTA" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoTr" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoTs" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoTt" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoTu" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.controlflow.ui" />
                    <node concept="2Ry0Ak" id="7zIaasjWoTv" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoTB" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervWl" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervWm" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervWn" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervWo" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervWp" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervWq" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervWr" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.controlflow.ui" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7BVjoXzUx6$" role="3989C9">
      <property role="TrG5h" value="coderules" />
      <node concept="1E1JtD" id="7BVjoXzUx6U" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.coderules" />
        <property role="3LESm3" value="c4803b19-6d89-4a3b-bf82-390769514add" />
        <node concept="55IIr" id="7BVjoXzUx7_" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUx7F" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7BVjoXzUx7K" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7BVjoXzUx7P" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.coderules" />
                <node concept="2Ry0Ak" id="5RIBdO$kQZz" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.coderules.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWl" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L25" resolve="jetbrains.mps.baseLanguage.jdk7" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWn" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWo" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWp" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWr" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWs" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWt" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWu" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWx" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWy" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWz" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxW$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWD" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWE" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWF" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1E0d5M" id="7BVjoXzUxWL" role="1E1XAP">
          <ref role="1E0d5P" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
        </node>
        <node concept="1E0d5M" id="7BVjoXzUxWM" role="1E1XAP">
          <ref role="1E0d5P" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWN" role="3bR37C">
          <node concept="1Busua" id="7BVjoXzUxWO" role="1SiIV1">
            <ref role="1Busuk" node="7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWP" role="3bR37C">
          <node concept="1Busua" id="7BVjoXzUxWQ" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWR" role="3bR37C">
          <node concept="1Busua" id="7BVjoXzUxWS" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWT" role="3bR37C">
          <node concept="1Busua" id="7BVjoXzUxWU" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWV" role="3bR37C">
          <node concept="1Busua" id="7BVjoXzUxWW" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L68" resolve="jetbrains.mps.lang.descriptor" />
          </node>
        </node>
        <node concept="1yeLz9" id="7BVjoXzUxWX" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.coderules#4578927328670739933" />
          <property role="3LESm3" value="21d5540d-cd6b-44dd-b6ab-6835bf032803" />
          <node concept="1SiIV0" id="7BVjoXzUxWY" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxWZ" role="1SiIV1">
              <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxX0" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxX1" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxX2" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxX3" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxX8" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxX9" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxXa" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxXb" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
            </node>
          </node>
          <node concept="1SiIV0" id="4pNU3yqbxFQ" role="3bR37C">
            <node concept="3bR9La" id="4pNU3yqbxFR" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
            </node>
          </node>
          <node concept="1SiIV0" id="72RDgINuysr" role="3bR37C">
            <node concept="3bR9La" id="72RDgINuyss" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
            </node>
          </node>
          <node concept="1SiIV0" id="3mytCjZ2GFM" role="3bR37C">
            <node concept="3bR9La" id="3mytCjZ2GFN" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
            </node>
          </node>
          <node concept="1BupzO" id="7zIaasjWoU1" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7zIaasjWoU2" role="1HemKq">
              <node concept="398BVA" id="7zIaasjWoTP" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                <node concept="2Ry0Ak" id="7zIaasjWoTQ" role="iGT6I">
                  <property role="2Ry0Am" value="coderules" />
                  <node concept="2Ry0Ak" id="7zIaasjWoTR" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="7zIaasjWoTS" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.coderules" />
                      <node concept="2Ry0Ak" id="7zIaasjWoTT" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="7zIaasjWoTU" role="2Ry0An">
                          <property role="2Ry0Am" value="template" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7zIaasjWoU3" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="wfREvqj2G8" role="3bR37C">
          <node concept="3bR9La" id="wfREvqj2G9" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMpyH" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMpyI" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMpyJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMpyK" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMpyL" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMpyM" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5mkBzAMMrGr" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.coderules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="36tQV5AThR1" role="3bR37C">
          <node concept="3bR9La" id="36tQV5AThR2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="36tQV5ATjSW" role="3bR37C">
          <node concept="3bR9La" id="36tQV5ATjSX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="4uSBgQVvlaV" role="3bR37C">
          <node concept="3bR9La" id="4uSBgQVvlaW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5cCcm$KATVz" resolve="jetbrains.mps.lang.migration.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zsw4w34cZ1" role="3bR37C">
          <node concept="3bR9La" id="5zsw4w34cZ2" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1laj_RSvZGh" role="3bR37C">
          <node concept="3bR9La" id="1laj_RSvZGi" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoTM" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoTN" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoTC" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoTD" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoTE" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7zIaasjWoTF" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.coderules" />
                    <node concept="2Ry0Ak" id="7zIaasjWoTG" role="2Ry0An">
                      <property role="2Ry0Am" value="languageModels" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoTO" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7L5omgeIJmg" role="3bR37C">
          <node concept="3bR9La" id="7L5omgeIJmh" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7L5omgeIJmi" role="3bR37C">
          <node concept="3bR9La" id="7L5omgeIJmj" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7BVjoXzUx9d" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.coderules.template" />
        <property role="3LESm3" value="ff6372a2-2f45-4ec3-952b-02581666015f" />
        <node concept="55IIr" id="7BVjoXzUx9g" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUx9P" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7BVjoXzUxag" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7BVjoXzUxav" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.coderules.template" />
                <node concept="2Ry0Ak" id="5RIBdO$kRiZ" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.coderules.template.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxhM" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxhN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXc" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXd" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXe" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXk" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXl" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMpzd" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMpze" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMpzf" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMpzg" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMpzh" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMpzi" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="5mkBzAMMsjr" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.coderules.template" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4cvvxaYkWvj" role="3bR37C">
          <node concept="3bR9La" id="4cvvxaYkWvk" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Ap6smoezi" role="3bR37C">
          <node concept="3bR9La" id="2Ap6smoezj" role="1SiIV1">
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="2o8vGoPP7lr" role="3bR37C">
          <node concept="3bR9La" id="2o8vGoPP7ls" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoUe" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoUf" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoU4" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoU5" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoU6" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoU7" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.coderules.template" />
                    <node concept="2Ry0Ak" id="7zIaasjWoU8" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoUg" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7BVjoXzUxee" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.coderules.runtime" />
        <property role="3LESm3" value="26e8f4ce-2a35-4f44-8065-e5ba154b18e9" />
        <node concept="55IIr" id="7BVjoXzUxeh" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUxfn" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="7BVjoXzUxfX" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7BVjoXzUxgc" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.coderules" />
                <node concept="2Ry0Ak" id="7BVjoXzUxgN" role="2Ry0An">
                  <property role="2Ry0Am" value="runtime" />
                  <node concept="2Ry0Ak" id="5RIBdO$kR9h" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.coderules.runtime.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxho" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxhp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXt" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXu" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXz" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxX$" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="3u5wJtgkkt" role="3bR37C">
          <node concept="3bR9La" id="3u5wJtgkku" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="4cvjh$8_awU" role="3bR37C">
          <node concept="3bR9La" id="4cvjh$8_awV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="3rtmxn" id="3Z6zOnxMpzX" role="3bR31x">
          <node concept="3LXTmp" id="3Z6zOnxMpzY" role="3rtmxm">
            <node concept="3qWCbU" id="3Z6zOnxMpzZ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3Z6zOnxMp$0" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Z6zOnxMp$1" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="3Z6zOnxMp$2" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3Z6zOnxMp$3" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.coderules" />
                    <node concept="2Ry0Ak" id="3Z6zOnxMp$4" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="79L81qquSg8" role="3bR37C">
          <node concept="3bR9La" id="79L81qquSg9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoUt" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoUu" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoUh" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoUi" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoUj" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7zIaasjWoUk" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.coderules" />
                    <node concept="2Ry0Ak" id="7zIaasjWoUl" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime" />
                      <node concept="2Ry0Ak" id="7zIaasjWoUm" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoUv" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="NKt6yn9_8p" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.coderules" />
        <property role="3LESm3" value="f97d84b2-8bad-4fdd-8ede-da17b3eacf4c" />
        <node concept="55IIr" id="NKt6yn9_8s" role="3LF7KH">
          <node concept="2Ry0Ak" id="NKt6yn9_kF" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="NKt6yn9_uG" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="NKt6yn9_CH" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                <node concept="2Ry0Ak" id="NKt6yn9_MI" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.coderules.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yn9_Ug" role="3bR37C">
          <node concept="3bR9La" id="NKt6yn9_Uh" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yn9_Uk" role="3bR37C">
          <node concept="3bR9La" id="NKt6yn9_Ul" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yn9_Um" role="3bR37C">
          <node concept="3bR9La" id="NKt6yn9_Un" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yn9_Uo" role="3bR37C">
          <node concept="3bR9La" id="NKt6yn9_Up" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="NKt6yn9_UA" role="3bR37C">
          <node concept="1BurEX" id="NKt6yn9_UB" role="1SiIV1">
            <node concept="398BVA" id="NKt6yn9_Uq" role="1BurEY">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="NKt6yn9_Ur" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="NKt6yn9_Us" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="NKt6yn9_Ut" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                    <node concept="2Ry0Ak" id="NKt6yn9_Uu" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="NKt6yn9_Uv" role="2Ry0An">
                        <property role="2Ry0Am" value="reactive-streams-1.0.0.final.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="xaaVXuXWzS" role="3bR37C">
          <node concept="3bR9La" id="xaaVXuXWzT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MaHsBD_MXA" role="3bR37C">
          <node concept="3bR9La" id="4MaHsBD_MXB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoVe" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoVf" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoV4" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoV5" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoV6" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoV7" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                    <node concept="2Ry0Ak" id="7zIaasjWoV8" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoVg" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HLeEcg2$IN" role="3bR37C">
          <node concept="1BurEX" id="5HLeEcg2$IO" role="1SiIV1">
            <node concept="398BVA" id="5HLeEcg2$IB" role="1BurEY">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="5HLeEcg2$IC" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="5HLeEcg2$ID" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="5HLeEcg2$IE" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                    <node concept="2Ry0Ak" id="5HLeEcg2$IF" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="5HLeEcg2$IG" role="2Ry0An">
                        <property role="2Ry0Am" value="rxjava-2.2.18.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HLeEcg2$J1" role="3bR37C">
          <node concept="1BurEX" id="5HLeEcg2$J2" role="1SiIV1">
            <node concept="398BVA" id="5HLeEcg2$IP" role="1BurEY">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="5HLeEcg2$IQ" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="5HLeEcg2$IR" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="5HLeEcg2$IS" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                    <node concept="2Ry0Ak" id="5HLeEcg2$IT" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="5HLeEcg2$IU" role="2Ry0An">
                        <property role="2Ry0Am" value="rxjava2-swing-0.3.7.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervWt" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervWu" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervWv" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervWw" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervWx" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervWy" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervWz" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6Yb9hAqy9L2" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.coderules.ui" />
        <property role="3LESm3" value="4d5d9aa1-7b71-4888-9100-1b793e5328a6" />
        <node concept="55IIr" id="6Yb9hAqy9L5" role="3LF7KH">
          <node concept="2Ry0Ak" id="6Yb9hAqya92" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="6Yb9hAqya_7" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="6Yb9hAqyaNc" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.coderules.ui" />
                <node concept="2Ry0Ak" id="6Yb9hAqyb1h" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.coderules.ui.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6Yb9hAqybbz" role="3bR37C">
          <node concept="3bR9La" id="6Yb9hAqybb$" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Yb9hAqybb_" role="3bR37C">
          <node concept="3bR9La" id="6Yb9hAqybbA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Yb9hAqybbB" role="3bR37C">
          <node concept="3bR9La" id="6Yb9hAqybbC" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Yb9hAqybbD" role="3bR37C">
          <node concept="3bR9La" id="6Yb9hAqybbE" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="NKt6yn9_8p" resolve="jetbrains.mps.coderules" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Yb9hAqybbF" role="3bR37C">
          <node concept="3bR9La" id="6Yb9hAqybbG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6Yb9hAqE1Ea" role="3bR37C">
          <node concept="3bR9La" id="6Yb9hAqE1Eb" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="2acLaGi2utJ" role="3bR37C">
          <node concept="3bR9La" id="2acLaGi2utK" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="2daneBPb4hj" role="3bR37C">
          <node concept="3bR9La" id="2daneBPb4hk" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoVr" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoVs" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoVh" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoVi" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoVj" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoVk" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.ui" />
                    <node concept="2Ry0Ak" id="7zIaasjWoVl" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoVt" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervW_" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervWA" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervWB" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervWC" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervWD" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervWE" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervWF" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.ui" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="1Lr58WFO8Mc" role="3989C9">
      <property role="TrG5h" value="coderules-test" />
      <node concept="1E1JtA" id="1Lr58WFO94R" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.coderules.test" />
        <property role="3LESm3" value="c18711cb-f08b-4fae-81b0-1dd840be9c90" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="1Lr58WFO94S" role="3LF7KH">
          <node concept="2Ry0Ak" id="1Lr58WFO9de" role="iGT6I">
            <property role="2Ry0Am" value="coderules" />
            <node concept="2Ry0Ak" id="1Lr58WFO9hr" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="1Lr58WFO9nG" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.coderules.test" />
                <node concept="2Ry0Ak" id="1Lr58WFO9rT" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.coderules.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1Lr58WFO9w3" role="3bR37C">
          <node concept="3bR9La" id="1Lr58WFO9w4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Lr58WFO9w5" role="3bR37C">
          <node concept="3bR9La" id="1Lr58WFO9w6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Lr58WFO9w7" role="3bR37C">
          <node concept="3bR9La" id="1Lr58WFO9w8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Lr58WFO9w9" role="3bR37C">
          <node concept="3bR9La" id="1Lr58WFO9wa" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Lr58WG3VMd" role="3bR37C">
          <node concept="3bR9La" id="1Lr58WG3VMe" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="3KN3A4w7Shd" role="3bR37C">
          <node concept="3bR9La" id="3KN3A4w7She" role="1SiIV1">
            <ref role="3bR37D" node="65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="xqbf82rN7X" role="3bR37C">
          <node concept="3bR9La" id="xqbf82rN7Y" role="1SiIV1">
            <ref role="3bR37D" node="NKt6yn9_8p" resolve="jetbrains.mps.coderules" />
          </node>
        </node>
        <node concept="1BupzO" id="7zIaasjWoVC" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7zIaasjWoVD" role="1HemKq">
            <node concept="398BVA" id="7zIaasjWoVu" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="7zIaasjWoVv" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7zIaasjWoVw" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7zIaasjWoVx" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.test" />
                    <node concept="2Ry0Ak" id="7zIaasjWoVy" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7zIaasjWoVE" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omgervWH" role="3bR31x">
          <node concept="3LXTmp" id="7L5omgervWI" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omgervWJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omgervWK" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omgervWL" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="7L5omgervWM" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7L5omgervWN" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7Ant4WkHLmd" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7Ant4WkHLme" role="2JcizS">
        <ref role="398BVh" node="7Ant4WkHLn3" resolve="mps_home" />
      </node>
    </node>
    <node concept="2kB4xC" id="2BiN_P7R7jO" role="1l3spd">
      <property role="TrG5h" value="ci.build.num" />
      <node concept="aVJcg" id="2BiN_P7R7Ma" role="aVJcv">
        <node concept="NbPM2" id="2BiN_P7R7M9" role="aVJcq">
          <node concept="3Mxwew" id="2BiN_P7R7M8" role="3MwsjC">
            <property role="3MwjfP" value="9999" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="3mytCjZmOem" role="1l3spd">
      <property role="TrG5h" value="test.jvmargs" />
      <node concept="aVJcg" id="3mytCjZmOnI" role="aVJcv">
        <node concept="NbPM2" id="3mytCjZmOnH" role="aVJcq">
          <node concept="3Mxwew" id="3mytCjZmOnG" role="3MwsjC">
            <property role="3MwjfP" value="-Xss2048k -Xmx2048m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="46o4wsH3mv_" role="1l3spd">
      <property role="TrG5h" value="mps.macro.coderules_home" />
      <node concept="55IIr" id="46o4wsH3mGg" role="398pKh" />
    </node>
    <node concept="398rNT" id="7Ant4WkHLn3" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="7Ant4WkHLn4" role="398pKh">
        <node concept="2Ry0Ak" id="7Ant4WkHLn5" role="iGT6I">
          <property role="2Ry0Am" value="MPS_HOME" />
        </node>
      </node>
    </node>
    <node concept="55IIr" id="1BDNG5xBZgh" role="auvoZ" />
    <node concept="1l3spV" id="1BDNG5xBZgi" role="1l3spN">
      <node concept="398223" id="7Ant4WkHLAp" role="39821P">
        <node concept="L2wRC" id="3PhVAH_Wg7Z" role="39821P">
          <ref role="L2wRA" node="3PhVAH_WgTu" resolve="jetbrains.mps.coderules.build" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmo" role="39821P">
          <ref role="L2wRA" node="7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmw" role="39821P">
          <ref role="L2wRA" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmu" role="39821P">
          <ref role="L2wRA" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmN" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLpd" resolve="jetbrains.mps.logic.test" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmp" role="39821P">
          <ref role="L2wRA" node="7BVjoXzUx6U" resolve="jetbrains.mps.lang.coderules" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmr" role="39821P">
          <ref role="L2wRA" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLms" role="39821P">
          <ref role="L2wRA" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
        </node>
        <node concept="L2wRC" id="NKt6yowV1X" role="39821P">
          <ref role="L2wRA" node="NKt6yn9_8p" resolve="jetbrains.mps.coderules" />
        </node>
        <node concept="L2wRC" id="6Yb9hAqybAz" role="39821P">
          <ref role="L2wRA" node="6Yb9hAqy9L2" resolve="jetbrains.mps.coderules.ui" />
        </node>
        <node concept="L2wRC" id="1Lr58WFPiHz" role="39821P">
          <ref role="L2wRA" node="1Lr58WFO94R" resolve="jetbrains.mps.coderules.test" />
        </node>
        <node concept="L2wRC" id="NKt6yowVlP" role="39821P">
          <ref role="L2wRA" node="NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
        </node>
        <node concept="L2wRC" id="NKt6yowVyS" role="39821P">
          <ref role="L2wRA" node="NKt6yomVLS" resolve="jetbrains.mps.lang.typechecking.runtime" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmq" role="39821P">
          <ref role="L2wRA" node="65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
        </node>
        <node concept="L2wRC" id="55Q$YFtv_$M" role="39821P">
          <ref role="L2wRA" node="55Q$YFtvwQY" resolve="jetbrains.mps.coderules.typechecking.ui" />
        </node>
        <node concept="L2wRC" id="5pz4PwHqt4r" role="39821P">
          <ref role="L2wRA" node="7mB3viLuogo" resolve="jetbrains.mps.typechecking.testlang" />
        </node>
        <node concept="L2wRC" id="7mB3viLurvO" role="39821P">
          <ref role="L2wRA" node="7mB3viLuq51" resolve="jetbrains.mps.coderules.typechecking.testlang.sandbox" />
        </node>
        <node concept="L2wRC" id="7mB3viLwHSf" role="39821P">
          <ref role="L2wRA" node="7mB3viLwG3m" resolve="jetbrains.mps.coderules.typechecking.test" />
        </node>
        <node concept="L2wRC" id="5s5QomKFkZS" role="39821P">
          <ref role="L2wRA" node="46o4wsH5PJF" resolve="jetbrains.mps.typechecking.annotation" />
        </node>
        <node concept="L2wRC" id="78H58oeeKZj" role="39821P">
          <ref role="L2wRA" node="78H58oeeGcw" resolve="jetbrains.mps.controlflow" />
        </node>
        <node concept="L2wRC" id="78H58oeeLe0" role="39821P">
          <ref role="L2wRA" node="78H58oeeI52" resolve="jetbrains.mps.controlflow.ui" />
        </node>
        <node concept="L2wRC" id="78H58oeeLsH" role="39821P">
          <ref role="L2wRA" node="78H58oeeJaR" resolve="jetbrains.mps.lang.controlflow" />
        </node>
        <node concept="L2wRC" id="78H58oeeLFr" role="39821P">
          <ref role="L2wRA" node="78H58oeeH$3" resolve="jetbrains.mps.lang.controlflow.runtime" />
        </node>
        <node concept="3_J27D" id="7Ant4WkHLAr" role="Nbhlr">
          <node concept="3Mxwew" id="7Ant4WkHLDj" role="3MwsjC">
            <property role="3MwjfP" value="deploy" />
          </node>
        </node>
        <node concept="L2wRC" id="46o4wsHrP6K" role="39821P">
          <ref role="L2wRA" node="46o4wsH5PJF" resolve="jetbrains.mps.typechecking.annotation" />
        </node>
        <node concept="398223" id="7Ant4WkHLmR" role="39821P">
          <node concept="3_J27D" id="7Ant4WkHLmS" role="Nbhlr">
            <node concept="3Mxwew" id="7Ant4WkHLmT" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="2HvfSZ" id="7Ant4WkHLmU" role="39821P">
            <node concept="398BVA" id="46o4wsH3plp" role="2HvfZ0">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="46o4wsH3plv" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="46o4wsH3plw" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="46o4wsH3plx" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.test" />
                    <node concept="2Ry0Ak" id="46o4wsH3ply" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2HvfSZ" id="46o4wsHoMT0" role="39821P">
            <node concept="398BVA" id="46o4wsHoMT1" role="2HvfZ0">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="46o4wsHoMT2" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="46o4wsHoMT3" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="46o4wsHoMT4" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="46o4wsHoMT5" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2HvfSZ" id="NKt6yoyOIy" role="39821P">
            <node concept="398BVA" id="NKt6yoyOIz" role="2HvfZ0">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
              <node concept="2Ry0Ak" id="NKt6yoyOI$" role="iGT6I">
                <property role="2Ry0Am" value="coderules" />
                <node concept="2Ry0Ak" id="NKt6yoyOI_" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="NKt6yoyOIA" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                    <node concept="2Ry0Ak" id="NKt6yoyOIB" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3981dG" id="65DJywFjdtY" role="39821P">
        <node concept="3_J27D" id="65DJywFjdtZ" role="Nbhlr">
          <node concept="3Mxwew" id="65DJywFjdwr" role="3MwsjC">
            <property role="3MwjfP" value="coderules-0.5.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="65DJywFjdwt" role="39821P">
          <ref role="m_rDy" node="7BVjoXzUx67" resolve="jetbrains.mps.coderules" />
          <node concept="398223" id="65DJywFkEum" role="39821P">
            <node concept="3_J27D" id="65DJywFkEuo" role="Nbhlr">
              <node concept="3Mxwew" id="65DJywFkExe" role="3MwsjC">
                <property role="3MwjfP" value="languages" />
              </node>
            </node>
            <node concept="L2wRC" id="3PhVAH_Wi_w" role="39821P">
              <ref role="L2wRA" node="3PhVAH_WgTu" resolve="jetbrains.mps.coderules.build" />
            </node>
            <node concept="L2wRC" id="65DJywFk8Gh" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
            </node>
            <node concept="L2wRC" id="65DJywFk9cZ" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
              <node concept="3yLZsm" id="4EvsDTBGxZc" role="3yL2VB">
                <property role="3yLZsk" value="../lib/collection-0.7.jar" />
                <node concept="398BVA" id="4EvsDTBGxZd" role="3yLZsn">
                  <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                  <node concept="2Ry0Ak" id="4EvsDTBGxZe" role="iGT6I">
                    <property role="2Ry0Am" value="coderules" />
                    <node concept="2Ry0Ak" id="4EvsDTBGxZf" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="4EvsDTBGxZg" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                        <node concept="2Ry0Ak" id="4EvsDTBGxZh" role="2Ry0An">
                          <property role="2Ry0Am" value="lib" />
                          <node concept="2Ry0Ak" id="4EvsDTBGxZi" role="2Ry0An">
                            <property role="2Ry0Am" value="collection-0.7.jar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3yLZsm" id="4EvsDTBGxZq" role="3yL2VB">
                <property role="3yLZsk" value="../lib/conreactor-core-0.9.14.jar" />
                <node concept="398BVA" id="4EvsDTBGxZr" role="3yLZsn">
                  <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                  <node concept="2Ry0Ak" id="4EvsDTBGxZs" role="iGT6I">
                    <property role="2Ry0Am" value="coderules" />
                    <node concept="2Ry0Ak" id="4EvsDTBGxZt" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="4EvsDTBGxZu" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                        <node concept="2Ry0Ak" id="4EvsDTBGxZv" role="2Ry0An">
                          <property role="2Ry0Am" value="lib" />
                          <node concept="2Ry0Ak" id="4psz3HH29HS" role="2Ry0An">
                            <property role="2Ry0Am" value="conreactor-core-0.9.14.jar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3PtdJl" id="4EvsDTBFrfm" role="3PtcVe" />
            </node>
            <node concept="L2wRC" id="65DJywFk8NI" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
            </node>
            <node concept="L2wRC" id="65DJywFk8jS" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUx6U" resolve="jetbrains.mps.lang.coderules" />
            </node>
            <node concept="L2wRC" id="65DJywFk8r8" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
            </node>
            <node concept="L2wRC" id="65DJywFk8vZ" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
            </node>
            <node concept="L2wRC" id="NKt6yn9AaW" role="39821P">
              <ref role="L2wRA" node="NKt6yn9_8p" resolve="jetbrains.mps.coderules" />
              <node concept="3yLZsm" id="NKt6yn9Anr" role="3yL2VB">
                <property role="3yLZsk" value="../lib/reactive-streams-1.0.0.final-0.7.jar" />
                <node concept="398BVA" id="NKt6yn9Ans" role="3yLZsn">
                  <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                  <node concept="2Ry0Ak" id="NKt6yn9Ant" role="iGT6I">
                    <property role="2Ry0Am" value="coderules" />
                    <node concept="2Ry0Ak" id="NKt6yn9Anu" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="NKt6yn9Anv" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                        <node concept="2Ry0Ak" id="NKt6yn9Anw" role="2Ry0An">
                          <property role="2Ry0Am" value="lib" />
                          <node concept="2Ry0Ak" id="NKt6yn9Anx" role="2Ry0An">
                            <property role="2Ry0Am" value="reactive-streams-1.0.0.final.jar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3yLZsm" id="NKt6yn9Any" role="3yL2VB">
                <property role="3yLZsk" value="../lib/rxjava-2.2.1.8jar" />
                <node concept="398BVA" id="NKt6yn9Anz" role="3yLZsn">
                  <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                  <node concept="2Ry0Ak" id="NKt6yn9An$" role="iGT6I">
                    <property role="2Ry0Am" value="coderules" />
                    <node concept="2Ry0Ak" id="NKt6yn9An_" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="NKt6yn9AnA" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                        <node concept="2Ry0Ak" id="NKt6yn9AnB" role="2Ry0An">
                          <property role="2Ry0Am" value="lib" />
                          <node concept="2Ry0Ak" id="5HLeEcg2$L_" role="2Ry0An">
                            <property role="2Ry0Am" value="rxjava-2.2.18.jar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3yLZsm" id="NKt6yn9AnD" role="3yL2VB">
                <property role="3yLZsk" value="../lib/rxjava2-swing-0.3.7.jar" />
                <node concept="398BVA" id="NKt6yn9AnE" role="3yLZsn">
                  <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.coderules_home" />
                  <node concept="2Ry0Ak" id="NKt6yn9AnF" role="iGT6I">
                    <property role="2Ry0Am" value="coderules" />
                    <node concept="2Ry0Ak" id="NKt6yn9AnG" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="NKt6yn9AnH" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                        <node concept="2Ry0Ak" id="NKt6yn9AnI" role="2Ry0An">
                          <property role="2Ry0Am" value="lib" />
                          <node concept="2Ry0Ak" id="5HLeEcg2$OB" role="2Ry0An">
                            <property role="2Ry0Am" value="rxjava2-swing-0.3.7.jar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="L2wRC" id="6Yb9hAqybPB" role="39821P">
              <ref role="L2wRA" node="6Yb9hAqy9L2" resolve="jetbrains.mps.coderules.ui" />
            </node>
            <node concept="L2wRC" id="NKt6yowW84" role="39821P">
              <ref role="L2wRA" node="NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
            </node>
            <node concept="L2wRC" id="NKt6yowWlA" role="39821P">
              <ref role="L2wRA" node="NKt6yomVLS" resolve="jetbrains.mps.lang.typechecking.runtime" />
            </node>
            <node concept="L2wRC" id="65DJywFj_1R" role="39821P">
              <ref role="L2wRA" node="65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
            </node>
            <node concept="L2wRC" id="55Q$YFtwDpa" role="39821P">
              <ref role="L2wRA" node="55Q$YFtvwQY" resolve="jetbrains.mps.coderules.typechecking.ui" />
            </node>
            <node concept="L2wRC" id="NKt6yomXjf" role="39821P">
              <ref role="L2wRA" node="NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
            </node>
            <node concept="L2wRC" id="NKt6yomXwJ" role="39821P">
              <ref role="L2wRA" node="NKt6yomVLS" resolve="jetbrains.mps.lang.typechecking.runtime" />
            </node>
            <node concept="L2wRC" id="5s5QomKFkTc" role="39821P">
              <ref role="L2wRA" node="46o4wsH5PJF" resolve="jetbrains.mps.typechecking.annotation" />
            </node>
            <node concept="L2wRC" id="78H58oeeM2l" role="39821P">
              <ref role="L2wRA" node="78H58oeeGcw" resolve="jetbrains.mps.controlflow" />
            </node>
            <node concept="L2wRC" id="78H58oeeMhx" role="39821P">
              <ref role="L2wRA" node="78H58oeeI52" resolve="jetbrains.mps.controlflow.ui" />
            </node>
            <node concept="L2wRC" id="78H58oeeMJU" role="39821P">
              <ref role="L2wRA" node="78H58oeeJaR" resolve="jetbrains.mps.lang.controlflow" />
            </node>
            <node concept="L2wRC" id="78H58oeeMwH" role="39821P">
              <ref role="L2wRA" node="78H58oeeH$3" resolve="jetbrains.mps.lang.controlflow.runtime" />
            </node>
          </node>
          <node concept="398223" id="65DJywFkElN" role="39821P">
            <node concept="2HvfSZ" id="65DJywFkaRZ" role="39821P">
              <node concept="55IIr" id="65DJywFkaS1" role="2HvfZ0">
                <node concept="2Ry0Ak" id="65DJywFkaUD" role="iGT6I">
                  <property role="2Ry0Am" value="coderules" />
                  <node concept="2Ry0Ak" id="65DJywFkaUK" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="65DJywFkaUU" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                      <node concept="2Ry0Ak" id="65DJywFkaUZ" role="2Ry0An">
                        <property role="2Ry0Am" value="lib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="3NqN4u$_rD_" role="39821P">
              <node concept="55IIr" id="3NqN4u$_rDA" role="2HvfZ0">
                <node concept="2Ry0Ak" id="3NqN4u$_rDB" role="iGT6I">
                  <property role="2Ry0Am" value="coderules" />
                  <node concept="2Ry0Ak" id="3NqN4u$_rDC" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="3NqN4u$_rDD" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.coderules" />
                      <node concept="2Ry0Ak" id="3NqN4u$_rDE" role="2Ry0An">
                        <property role="2Ry0Am" value="lib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="65DJywFkElP" role="Nbhlr">
              <node concept="3Mxwew" id="65DJywFkEoC" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
          </node>
          <node concept="pUk6x" id="7L5omgervXd" role="pUk7w" />
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="1BDNG5xBZhR" role="10PD9s" />
    <node concept="3b7kt6" id="1BDNG5xBZhW" role="10PD9s" />
    <node concept="1gjT0q" id="1BDNG5xBZi4" role="10PD9s" />
  </node>
</model>

