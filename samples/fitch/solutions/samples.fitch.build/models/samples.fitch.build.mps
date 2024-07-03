<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0601aae4-0981-4217-9b8a-f73ee0df159c(samples.fitch.build)">
  <persistence version="9" />
  <languages>
    <use id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner" version="0" />
    <use id="698a8d22-a104-47a0-ba8d-10e3ec237f13" name="jetbrains.mps.build.workflow" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="8" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="9f846aef-4e4a-4a84-828e-7e83fe2697f2" name="jetbrains.mps.build.mps.testManifest" version="0" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="1" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="zqd8" ref="r:4f157831-48e7-4c8f-a144-b5bbd1be1539(jetbrains.mps.coderules.build)" />
  </imports>
  <registry>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildAspect_MpsTestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
        <child id="6593674873639474544" name="options" index="24cAkG" />
      </concept>
      <concept id="4560297596904469362" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModule" flags="nn" index="22LTRM">
        <reference id="4560297596904469363" name="module" index="22LTRN" />
      </concept>
      <concept id="6593674873639474400" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModules_Options" flags="ng" index="24cAiW">
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
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ngI" index="1y1bJS">
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
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
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="4297162197620964123" name="jetbrains.mps.build.mps.structure.BuildMps_GeneratorOptions" flags="ng" index="1wNqPr" />
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
  <node concept="1l3spW" id="4$bYnYI$RBW">
    <property role="2DA0ip" value="./../../" />
    <property role="TrG5h" value="fitch" />
    <node concept="2G$12M" id="4$bYnYI$URr" role="3989C9">
      <property role="TrG5h" value="fitch" />
      <node concept="1E1JtD" id="4$bYnYI$URy" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="samples.fitch" />
        <property role="3LESm3" value="06b7c5c7-e359-4f4b-a581-5d0c9323af39" />
        <node concept="55IIr" id="4$bYnYI$UR_" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$URF" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4$bYnYI$URK" role="2Ry0An">
              <property role="2Ry0Am" value="samples.fitch" />
              <node concept="2Ry0Ak" id="58VeaO3ARTE" role="2Ry0An">
                <property role="2Ry0Am" value="samples.fitch.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="4$bYnYI$URT" role="1TViLv">
          <property role="TrG5h" value="samples.fitch#4322786184247805322" />
          <property role="3LESm3" value="65b2d9d2-5a92-4dd0-abf5-f3a1bd399bec" />
          <node concept="1BupzO" id="7L5omgeILcN" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7L5omgeILcO" role="1HemKq">
              <node concept="398BVA" id="7L5omgeILcD" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.fitch_home" />
                <node concept="2Ry0Ak" id="7L5omgeILcE" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7L5omgeILcF" role="2Ry0An">
                    <property role="2Ry0Am" value="samples.fitch" />
                    <node concept="2Ry0Ak" id="7L5omgeILcG" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="7L5omgeILcH" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7L5omgeILcP" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5p9vXslHrSF" role="3bR37C">
          <node concept="3bR9La" id="5p9vXslHrSG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5p9vXslHrSH" role="3bR37C">
          <node concept="3bR9La" id="5p9vXslHrSI" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges4XA" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges4XB" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges4XC" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges4XD" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges4XE" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omges4XF" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7L5omgeILcA" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7L5omgeILcB" role="1HemKq">
            <node concept="398BVA" id="7L5omgeILcu" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.fitch_home" />
              <node concept="2Ry0Ak" id="7L5omgeILcv" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omgeILcw" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch" />
                  <node concept="2Ry0Ak" id="7L5omgeILcx" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7L5omgeILcC" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="74$3PKnBSeu" role="3bR37C">
          <node concept="3bR9La" id="74$3PKnBSev" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:74$3PKm_L$v" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="74$3PKnDhyp" role="3bR37C">
          <node concept="3bR9La" id="74$3PKnDhyq" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:2CPBoDB0Mtg" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4$bYnYI$UVm" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="samples.fitch.propositionalLogic" />
        <property role="3LESm3" value="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" />
        <node concept="55IIr" id="4$bYnYI$UVn" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$UVo" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4$bYnYI$UVp" role="2Ry0An">
              <property role="2Ry0Am" value="samples.fitch.propositionalLogic" />
              <node concept="2Ry0Ak" id="58VeaO3ARU6" role="2Ry0An">
                <property role="2Ry0Am" value="samples.fitch.propositionalLogic.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="4$bYnYI$UVr" role="1TViLv">
          <property role="TrG5h" value="samples.fitch.propositionalLogic#5505606474790531941" />
          <property role="3LESm3" value="53b8ab24-cc4a-4fe2-b461-11a91d798670" />
          <node concept="1BupzO" id="7L5omgeILdb" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7L5omgeILdc" role="1HemKq">
              <node concept="398BVA" id="7L5omgeILd1" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.fitch_home" />
                <node concept="2Ry0Ak" id="7L5omgeILd2" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7L5omgeILd3" role="2Ry0An">
                    <property role="2Ry0Am" value="samples.fitch.propositionalLogic" />
                    <node concept="2Ry0Ak" id="7L5omgeILd4" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="7L5omgeILd5" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7L5omgeILdd" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UVu" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$UVv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1YAozCvot2i" resolve="jetbrains.mps.baseLanguage.regexp" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UXC" role="3bR37C">
          <node concept="1Busua" id="4$bYnYI$UXD" role="1SiIV1">
            <ref role="1Busuk" node="4$bYnYI$URy" resolve="samples.fitch" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Bpms61QXYW" role="3bR37C">
          <node concept="3bR9La" id="2Bpms61QXYX" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Bpms61Tj7o" role="3bR37C">
          <node concept="3bR9La" id="2Bpms61Tj7p" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges4XH" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges4XI" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges4XJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges4XK" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges4XL" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omges4XM" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch.propositionalLogic" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7L5omgeILcY" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7L5omgeILcZ" role="1HemKq">
            <node concept="398BVA" id="7L5omgeILcQ" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.fitch_home" />
              <node concept="2Ry0Ak" id="7L5omgeILcR" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omgeILcS" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch.propositionalLogic" />
                  <node concept="2Ry0Ak" id="7L5omgeILcT" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7L5omgeILd0" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2CPBoDB7hko" role="3bR37C">
          <node concept="3bR9La" id="2CPBoDB7hkp" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:2CPBoDB0Mtg" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4$bYnYI$UTN" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="samples.fitch.herbrandLogic" />
        <property role="3LESm3" value="748b3ba1-2791-4ee8-b985-a5598baa7112" />
        <node concept="55IIr" id="4$bYnYI$UTO" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$UTP" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4$bYnYI$UTQ" role="2Ry0An">
              <property role="2Ry0Am" value="samples.fitch.herbrandLogic" />
              <node concept="2Ry0Ak" id="58VeaO3ARV6" role="2Ry0An">
                <property role="2Ry0Am" value="samples.fitch.herbrandLogic.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="4$bYnYI$UTS" role="1TViLv">
          <property role="TrG5h" value="samples.fitch.herbrandLogic#3059457401298723545" />
          <property role="3LESm3" value="8efed383-9c82-409e-81c8-4bd2a012c164" />
          <node concept="1BupzO" id="7L5omgeILdz" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7L5omgeILd$" role="1HemKq">
              <node concept="398BVA" id="7L5omgeILdp" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.fitch_home" />
                <node concept="2Ry0Ak" id="7L5omgeILdq" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7L5omgeILdr" role="2Ry0An">
                    <property role="2Ry0Am" value="samples.fitch.herbrandLogic" />
                    <node concept="2Ry0Ak" id="7L5omgeILds" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="7L5omgeILdt" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7L5omgeILd_" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UTT" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$UTU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$bYnYI$UUX" role="3bR37C">
          <node concept="3bR9La" id="4$bYnYI$UUY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1YAozCvot2i" resolve="jetbrains.mps.baseLanguage.regexp" />
          </node>
        </node>
        <node concept="1SiIV0" id="58VeaO3B65o" role="3bR37C">
          <node concept="1Busua" id="58VeaO3B65p" role="1SiIV1">
            <ref role="1Busuk" node="4$bYnYI$UVm" resolve="samples.fitch.propositionalLogic" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Bpms61QXYY" role="3bR37C">
          <node concept="3bR9La" id="2Bpms61QXYZ" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Bpms61Tthh" role="3bR37C">
          <node concept="3bR9La" id="2Bpms61Tthi" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges4XO" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges4XP" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges4XQ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges4XR" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges4XS" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omges4XT" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch.herbrandLogic" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7L5omgeILdm" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7L5omgeILdn" role="1HemKq">
            <node concept="398BVA" id="7L5omgeILde" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.fitch_home" />
              <node concept="2Ry0Ak" id="7L5omgeILdf" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omgeILdg" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch.herbrandLogic" />
                  <node concept="2Ry0Ak" id="7L5omgeILdh" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7L5omgeILdo" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2CPBoDB7hkG" role="3bR37C">
          <node concept="3bR9La" id="2CPBoDB7hkH" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:2CPBoDB0Mtg" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4$bYnYI$USZ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="samples.fitch.firstOrderLogic" />
        <property role="3LESm3" value="ddb01c98-e78e-4c79-b11a-aeba193668d4" />
        <node concept="55IIr" id="4$bYnYI$UT0" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$UT1" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4$bYnYI$UT2" role="2Ry0An">
              <property role="2Ry0Am" value="samples.fitch.firstOrderLogic" />
              <node concept="2Ry0Ak" id="58VeaO3B63i" role="2Ry0An">
                <property role="2Ry0Am" value="samples.fitch.firstOrderLogic.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="4$bYnYI$UT6" role="1TViLv">
          <property role="TrG5h" value="samples.fitch.firstOrderLogic#4035326440039985569" />
          <property role="3LESm3" value="467b3222-f5a8-48be-9fe1-6c009ed73049" />
          <node concept="1BupzO" id="7L5omgeILdV" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7L5omgeILdW" role="1HemKq">
              <node concept="398BVA" id="7L5omgeILdL" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.fitch_home" />
                <node concept="2Ry0Ak" id="7L5omgeILdM" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7L5omgeILdN" role="2Ry0An">
                    <property role="2Ry0Am" value="samples.fitch.firstOrderLogic" />
                    <node concept="2Ry0Ak" id="7L5omgeILdO" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="7L5omgeILdP" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7L5omgeILdX" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="58VeaO3B64d" role="3bR37C">
          <node concept="3bR9La" id="58VeaO3B64e" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="58VeaO3B64f" role="3bR37C">
          <node concept="1Busua" id="58VeaO3B64g" role="1SiIV1">
            <ref role="1Busuk" node="4$bYnYI$UTN" resolve="samples.fitch.herbrandLogic" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Bpms61QXZ0" role="3bR37C">
          <node concept="3bR9La" id="2Bpms61QXZ1" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Bpms61Tthj" role="3bR37C">
          <node concept="3bR9La" id="2Bpms61Tthk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges4XV" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges4XW" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges4XX" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges4XY" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges4XZ" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omges4Y0" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch.firstOrderLogic" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7L5omgeILdI" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7L5omgeILdJ" role="1HemKq">
            <node concept="398BVA" id="7L5omgeILdA" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.fitch_home" />
              <node concept="2Ry0Ak" id="7L5omgeILdB" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omgeILdC" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch.firstOrderLogic" />
                  <node concept="2Ry0Ak" id="7L5omgeILdD" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7L5omgeILdK" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2CPBoDB7hl0" role="3bR37C">
          <node concept="3bR9La" id="2CPBoDB7hl1" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:2CPBoDB0Mtg" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4$bYnYI$ZFL" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="samples.fitch.demo" />
        <property role="3LESm3" value="86925f4e-7856-4553-a261-c86fbf09bb52" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="4$bYnYI$ZFO" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$bYnYI$ZGE" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="4$bYnYI$ZGJ" role="2Ry0An">
              <property role="2Ry0Am" value="samples.fitch.demo" />
              <node concept="2Ry0Ak" id="58VeaO3ARYO" role="2Ry0An">
                <property role="2Ry0Am" value="samples.fitch.demo.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RH_cL_a8yW" role="3bR37C">
          <node concept="3bR9La" id="5RH_cL_a8yX" role="1SiIV1">
            <ref role="3bR37D" node="4$bYnYI$UVm" resolve="samples.fitch.propositionalLogic" />
          </node>
        </node>
        <node concept="1SiIV0" id="5RH_cL_a8yY" role="3bR37C">
          <node concept="3bR9La" id="5RH_cL_a8yZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5RH_cL_a8z0" role="3bR37C">
          <node concept="3bR9La" id="5RH_cL_a8z1" role="1SiIV1">
            <ref role="3bR37D" node="4$bYnYI$USZ" resolve="samples.fitch.firstOrderLogic" />
          </node>
        </node>
        <node concept="1SiIV0" id="5RH_cL_a8z2" role="3bR37C">
          <node concept="3bR9La" id="5RH_cL_a8z3" role="1SiIV1">
            <ref role="3bR37D" node="4$bYnYI$UTN" resolve="samples.fitch.herbrandLogic" />
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges4Xv" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges4Xw" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges4Xx" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges4Xy" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges4Xz" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7L5omges4X$" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch.demo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7L5omgeILe6" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7L5omgeILe7" role="1HemKq">
            <node concept="398BVA" id="7L5omgeILdY" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.fitch_home" />
              <node concept="2Ry0Ak" id="7L5omgeILdZ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7L5omgeILe0" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.fitch.demo" />
                  <node concept="2Ry0Ak" id="7L5omgeILe1" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7L5omgeILe8" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2CPBoDB7hlk" role="3bR37C">
          <node concept="3bR9La" id="2CPBoDB7hll" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:2CPBoDB0Mtg" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="4$bYnYI$RBX" role="auvoZ" />
    <node concept="1l3spV" id="4$bYnYI$RBY" role="1l3spN">
      <node concept="398223" id="5RH_cL_bDA6" role="39821P">
        <node concept="3_J27D" id="5RH_cL_bDA7" role="Nbhlr">
          <node concept="3Mxwew" id="5RH_cL_bDAa" role="3MwsjC">
            <property role="3MwjfP" value="modules" />
          </node>
        </node>
        <node concept="L2wRC" id="5RH_cL_bDAc" role="39821P">
          <ref role="L2wRA" node="4$bYnYI$URy" resolve="samples.fitch" />
        </node>
        <node concept="L2wRC" id="5RH_cL_bDAh" role="39821P">
          <ref role="L2wRA" node="4$bYnYI$USZ" resolve="samples.fitch.firstOrderLogic" />
        </node>
        <node concept="L2wRC" id="5RH_cL_bDAl" role="39821P">
          <ref role="L2wRA" node="4$bYnYI$UTN" resolve="samples.fitch.herbrandLogic" />
        </node>
        <node concept="L2wRC" id="5RH_cL_bDAq" role="39821P">
          <ref role="L2wRA" node="4$bYnYI$UVm" resolve="samples.fitch.propositionalLogic" />
        </node>
        <node concept="L2wRC" id="5RH_cL_bDAe" role="39821P">
          <ref role="L2wRA" node="4$bYnYI$ZFL" resolve="samples.fitch.demo" />
        </node>
      </node>
    </node>
    <node concept="3b7kt6" id="4$bYnYI$RBZ" role="10PD9s" />
    <node concept="10PD9b" id="4$bYnYI$RC4" role="10PD9s" />
    <node concept="1gjT0q" id="5RH_cL_bDnc" role="10PD9s" />
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
    <node concept="398rNT" id="46o4wsH3mv_" role="1l3spd">
      <property role="TrG5h" value="mps.macro.fitch_home" />
      <node concept="55IIr" id="46o4wsH3mGg" role="398pKh" />
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
    <node concept="22LTRH" id="5RH_cL_bDnh" role="1hWBAP">
      <property role="TrG5h" value="check" />
      <node concept="22LTRM" id="5RH_cL_bDnl" role="22LTRK">
        <ref role="22LTRN" node="4$bYnYI$ZFL" resolve="samples.fitch.demo" />
      </node>
      <node concept="24cAiW" id="5NV6AIIsBB9" role="24cAkG">
        <node concept="NbPM2" id="5NV6AIIsBBc" role="24c_eh">
          <node concept="3Mxwew" id="5NV6AIIsBBb" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="3mytCjZmOsf" role="1psgkv">
          <node concept="3Mxwew" id="3mytCjZo1OL" role="3MwsjC">
            <property role="3MwjfP" value="-Xss2048k -Xmx2048m --add-opens=java.desktop/com.apple.laf=ALL-UNNAMED --add-opens=java.desktop/com.apple.eawt=ALL-UNNAMED --add-opens=java.desktop/com.apple.eawt.event=ALL-UNNAMED" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1wNqPr" id="7lmP5gB1xg7" role="3989C9" />
  </node>
</model>

