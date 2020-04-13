<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:28481291-d2d5-4731-aef9-4e3085be546e(samples.lamdacalc.build)">
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
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="zqd8" ref="r:4f157831-48e7-4c8f-a144-b5bbd1be1539(jetbrains.mps.coderules.build)" />
  </imports>
  <registry>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
        <child id="6593674873639474544" name="options" index="24cAkG" />
      </concept>
      <concept id="4560297596904469362" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModule" flags="nn" index="22LTRM">
        <reference id="4560297596904469363" name="module" index="22LTRN" />
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
      <concept id="6503355885715333289" name="jetbrains.mps.build.mps.structure.BuildMpsAspect" flags="ng" index="2igEWh">
        <property id="6503355885715353788" name="bootstrap" index="2igJW4" />
      </concept>
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
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD" />
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
  <node concept="1l3spW" id="7E7FS_VaSlS">
    <property role="TrG5h" value="lambdacalc" />
    <property role="2DA0ip" value="../.." />
    <node concept="2G$12M" id="7E7FS_VaVAi" role="3989C9">
      <property role="TrG5h" value="lambdacalc" />
      <node concept="1E1JtD" id="7E7FS_VaVAl" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="samples.lambdacalc" />
        <property role="3LESm3" value="af858d84-85f2-42f4-a854-0b3c6b5cd482" />
        <node concept="55IIr" id="7E7FS_VaVAm" role="3LF7KH">
          <node concept="2Ry0Ak" id="7E7FS_VaVAs" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7E7FS_VaVAx" role="2Ry0An">
              <property role="2Ry0Am" value="samples.lambdacalc" />
              <node concept="2Ry0Ak" id="58VeaO3ANGa" role="2Ry0An">
                <property role="2Ry0Am" value="samples.lambdacalc.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7E7FS_VaVAC" role="3bR37C">
          <node concept="3bR9La" id="7E7FS_VaVAD" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7E7FS_VaVAE" role="3bR37C">
          <node concept="3bR9La" id="7E7FS_VaVAF" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7E7FS_VaVAG" role="3bR37C">
          <node concept="3bR9La" id="7E7FS_VaVAH" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7E7FS_VaVAI" role="3bR37C">
          <node concept="3bR9La" id="7E7FS_VaVAJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7E7FS_VaVAK" role="3bR37C">
          <node concept="3bR9La" id="7E7FS_VaVAL" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7E7FS_VaVAM" role="3bR37C">
          <node concept="3bR9La" id="7E7FS_VaVAN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="7E7FS_VaVAO" role="3bR37C">
          <node concept="3bR9La" id="7E7FS_VaVAP" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7E7FS_VaVAQ" role="3bR37C">
          <node concept="3bR9La" id="7E7FS_VaVAR" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges50_" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges50A" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges50B" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges50C" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges50D" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omges50E" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.lambdacalc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7L5omgeILht" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7L5omgeILhu" role="1HemKq">
            <node concept="398BVA" id="7L5omgeILhl" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.lambdacalc_home" />
              <node concept="2Ry0Ak" id="7L5omgeILhm" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7L5omgeILhn" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.lambdacalc" />
                  <node concept="2Ry0Ak" id="7L5omgeILho" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7L5omgeILhv" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7E7FS_VaVB_" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="samples.lambdacalc.demo" />
        <property role="3LESm3" value="05f15741-5274-4aed-a086-84d9a15ab93b" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7E7FS_VaVBC" role="3LF7KH">
          <node concept="2Ry0Ak" id="7E7FS_VaVC3" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="7E7FS_VaVC8" role="2Ry0An">
              <property role="2Ry0Am" value="samples.lambdacalc.demo" />
              <node concept="2Ry0Ak" id="58VeaO3ANG$" role="2Ry0An">
                <property role="2Ry0Am" value="samples.lambdacalc.demo.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6EwjVjWv06c" role="3bR37C">
          <node concept="3bR9La" id="6EwjVjWv06d" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.coderules.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="6EwjVjWvFnZ" role="3bR37C">
          <node concept="3bR9La" id="6EwjVjWvFo0" role="1SiIV1">
            <ref role="3bR37D" node="7E7FS_VaVAl" resolve="samples.lambdacalc" />
          </node>
        </node>
        <node concept="3rtmxn" id="7L5omges50u" role="3bR31x">
          <node concept="3LXTmp" id="7L5omges50v" role="3rtmxm">
            <node concept="3qWCbU" id="7L5omges50w" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7L5omges50x" role="3LXTmr">
              <node concept="2Ry0Ak" id="7L5omges50y" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7L5omges50z" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.lambdacalc.demo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7L5omgeILhC" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7L5omgeILhD" role="1HemKq">
            <node concept="398BVA" id="7L5omgeILhw" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.lambdacalc_home" />
              <node concept="2Ry0Ak" id="7L5omgeILhx" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7L5omgeILhy" role="2Ry0An">
                  <property role="2Ry0Am" value="samples.lambdacalc.demo" />
                  <node concept="2Ry0Ak" id="7L5omgeILhz" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7L5omgeILhE" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7E7FS_VaV_9" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7E7FS_VaV_c" role="2JcizS">
        <ref role="398BVh" node="7E7FS_VaSmi" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7E7FS_VaV_t" role="1l3spa">
      <ref role="1l3spb" to="zqd8:1BDNG5xBZgg" resolve="coderules" />
      <node concept="398BVA" id="7E7FS_VaV_y" role="2JcizS">
        <ref role="398BVh" node="7E7FS_VaSma" resolve="coderules_art" />
      </node>
    </node>
    <node concept="55IIr" id="7E7FS_VaSlT" role="auvoZ" />
    <node concept="1l3spV" id="7E7FS_VaSlU" role="1l3spN">
      <node concept="398223" id="6EwjVjWvKjy" role="39821P">
        <node concept="3_J27D" id="6EwjVjWvKjz" role="Nbhlr">
          <node concept="3Mxwew" id="6EwjVjWvKjA" role="3MwsjC">
            <property role="3MwjfP" value="lambdacalc" />
          </node>
        </node>
        <node concept="L2wRC" id="6EwjVjWvKjC" role="39821P">
          <ref role="L2wRA" node="7E7FS_VaVAl" resolve="samples.lambdacalc" />
        </node>
        <node concept="L2wRC" id="6EwjVjWvKjH" role="39821P">
          <ref role="L2wRA" node="7E7FS_VaVB_" resolve="samples.lambdacalc.demo" />
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="7E7FS_VaSlV" role="10PD9s" />
    <node concept="3b7kt6" id="7E7FS_VaSm0" role="10PD9s" />
    <node concept="1gjT0q" id="6EwjVjWvHKf" role="10PD9s" />
    <node concept="398rNT" id="7E7FS_VaSma" role="1l3spd">
      <property role="TrG5h" value="coderules_art" />
      <node concept="55IIr" id="7E7FS_VaSmc" role="398pKh">
        <node concept="2Ry0Ak" id="7E7FS_VaSn8" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="7E7FS_VaSnb" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="7E7FS_VaV_Z" role="2Ry0An">
              <property role="2Ry0Am" value="build" />
              <node concept="2Ry0Ak" id="7E7FS_VaVA4" role="2Ry0An">
                <property role="2Ry0Am" value="artifacts" />
                <node concept="2Ry0Ak" id="5CiHmuT4DQ6" role="2Ry0An">
                  <property role="2Ry0Am" value="coderules" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="7E7FS_VaSmi" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="7E7FS_VaSms" role="398pKh">
        <node concept="2Ry0Ak" id="7E7FS_VaSmw" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="7E7FS_VaSm_" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="7E7FS_VaSn5" role="2Ry0An">
              <property role="2Ry0Am" value="MPS_HOME" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="46o4wsH3mv_" role="1l3spd">
      <property role="TrG5h" value="mps.macro.lambdacalc_home" />
      <node concept="55IIr" id="46o4wsH3mGg" role="398pKh" />
    </node>
    <node concept="2igEWh" id="7E7FS_Vb3KS" role="1hWBAP">
      <property role="2igJW4" value="true" />
    </node>
    <node concept="22LTRH" id="6EwjVjWvK8W" role="1hWBAP">
      <property role="TrG5h" value="demo" />
      <node concept="22LTRM" id="6EwjVjWvK90" role="22LTRK">
        <ref role="22LTRN" node="7E7FS_VaVB_" resolve="samples.lambdacalc.demo" />
      </node>
      <node concept="24cAiW" id="5NV6AIIsBAT" role="24cAkG">
        <node concept="NbPM2" id="5NV6AIIsBAW" role="24c_eh">
          <node concept="3Mxwew" id="5NV6AIIsBAV" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="3mytCjZmOsb" role="1psgkv">
          <node concept="3Mxwew" id="3mytCjZo1OL" role="3MwsjC">
            <property role="3MwjfP" value="-Xss2048k -Xmx2048m" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

