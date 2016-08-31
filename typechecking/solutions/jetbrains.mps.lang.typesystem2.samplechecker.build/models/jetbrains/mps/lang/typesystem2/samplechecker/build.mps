<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b80f9c7c-9e9c-4b49-9648-09a9a8aa03c9(jetbrains.mps.lang.typesystem2.samplechecker.build)">
  <persistence version="9" />
  <languages>
    <use id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner" version="0" />
    <use id="698a8d22-a104-47a0-ba8d-10e3ec237f13" name="jetbrains.mps.build.workflow" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="2" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="9f846aef-4e4a-4a84-828e-7e83fe2697f2" name="jetbrains.mps.build.mps.testManifest" version="0" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
      </concept>
      <concept id="4560297596904469362" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModule" flags="nn" index="22LTRM">
        <reference id="4560297596904469363" name="module" index="22LTRN" />
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
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
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
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
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
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="4hh0cTRkaUf">
    <property role="2DA0ip" value="../../../" />
    <property role="TrG5h" value="samplechecker" />
    <node concept="2sgV4H" id="7BVjoXzUx60" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7BVjoXzUx63" role="2JcizS">
        <ref role="398BVh" node="4hh0cTRkaVm" resolve="mps_home" />
      </node>
    </node>
    <node concept="55IIr" id="4hh0cTRkaUg" role="auvoZ" />
    <node concept="1l3spV" id="4hh0cTRkaUh" role="1l3spN">
      <node concept="3981dG" id="65DJywFjdtY" role="39821P">
        <node concept="3_J27D" id="65DJywFjdtZ" role="Nbhlr">
          <node concept="3Mxwew" id="65DJywFjdwr" role="3MwsjC">
            <property role="3MwjfP" value="samplechecker.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="65DJywFjdwt" role="39821P">
          <ref role="m_rDy" node="7BVjoXzUx67" resolve="jetbrains.mps.lang.typesystem2.samplechecker" />
          <node concept="398223" id="65DJywFkEum" role="39821P">
            <node concept="3_J27D" id="65DJywFkEuo" role="Nbhlr">
              <node concept="3Mxwew" id="65DJywFkExe" role="3MwsjC">
                <property role="3MwjfP" value="languages" />
              </node>
            </node>
            <node concept="L2wRC" id="65DJywFk8Gh" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
            </node>
            <node concept="L2wRC" id="65DJywFk8jS" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUx6U" resolve="jetbrains.mps.lang.typesystem2" />
            </node>
            <node concept="L2wRC" id="65DJywFj_1R" role="39821P">
              <ref role="L2wRA" node="65DJywFj0Fi" resolve="jetbrains.mps.lang.typesystem2.sampleplugin" />
            </node>
            <node concept="L2wRC" id="65DJywFk8r8" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.typesystem2.runtime" />
            </node>
            <node concept="L2wRC" id="65DJywFk8vZ" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.typesystem2.template" />
            </node>
            <node concept="L2wRC" id="65DJywFk8$R" role="39821P">
              <ref role="L2wRA" node="7Ant4Wk$48A" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
            </node>
            <node concept="L2wRC" id="65DJywFk8NI" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
            </node>
            <node concept="L2wRC" id="65DJywFk9cZ" role="39821P">
              <ref role="L2wRA" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
            </node>
          </node>
          <node concept="398223" id="65DJywFkElN" role="39821P">
            <node concept="2HvfSZ" id="65DJywFkaRZ" role="39821P">
              <node concept="55IIr" id="65DJywFkaS1" role="2HvfZ0">
                <node concept="2Ry0Ak" id="65DJywFkaUD" role="iGT6I">
                  <property role="2Ry0Am" value="logic" />
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
            <node concept="3_J27D" id="65DJywFkElP" role="Nbhlr">
              <node concept="3Mxwew" id="65DJywFkEoC" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="4hh0cTRkaUi" role="10PD9s" />
    <node concept="3b7kt6" id="4hh0cTRkaUn" role="10PD9s" />
    <node concept="398rNT" id="4hh0cTRkaVm" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="4hh0cTRkaVz" role="398pKh">
        <node concept="2Ry0Ak" id="4hh0cTRkaVA" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="4hh0cTRkaVF" role="2Ry0An">
            <property role="2Ry0Am" value="MPS_HOME" />
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="7BVjoXzUx67" role="3989C9">
      <property role="m$_wk" value="jetbrains.mps.lang.typesystem2.samplechecker" />
      <node concept="3_J27D" id="7BVjoXzUx68" role="m$_yQ">
        <node concept="3Mxwew" id="7BVjoXzUx6h" role="3MwsjC">
          <property role="3MwjfP" value="Sample Typechecker" />
        </node>
      </node>
      <node concept="3_J27D" id="7BVjoXzUx69" role="m_cZH">
        <node concept="3Mxwew" id="7BVjoXzUx6j" role="3MwsjC">
          <property role="3MwjfP" value="samplechecker" />
        </node>
      </node>
      <node concept="3_J27D" id="7BVjoXzUx6a" role="m$_w8">
        <node concept="3Mxwew" id="7BVjoXzUx6l" role="3MwsjC">
          <property role="3MwjfP" value="0.1" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7BVjoXzUxju" role="3989C9">
      <property role="TrG5h" value="logic" />
      <node concept="1E1JtD" id="7BVjoXzUxkQ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.logic" />
        <property role="3LESm3" value="35320f26-77cb-4c55-be9f-a97a27770af1" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7BVjoXzUxlc" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUxlM" role="iGT6I">
            <property role="2Ry0Am" value="logic" />
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
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxU4" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxU5" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1d41uYMTRXo" resolve="jetbrains.mps.baseLanguage.scopes" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxe2" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxe3" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxe4" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxe5" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxe6" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxe7" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxe8" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxe9" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxea" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxeb" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxec" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxed" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxee" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxef" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxeg" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxeh" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbxei" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbxej" role="1SiIV1">
            <property role="3bR36h" value="false" />
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
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="4pNU3yqbxes" role="3bR37C">
            <node concept="3bR9La" id="4pNU3yqbxet" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
            </node>
          </node>
          <node concept="1SiIV0" id="4pNU3yqbxeu" role="3bR37C">
            <node concept="3bR9La" id="4pNU3yqbxev" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7BVjoXzUx$V" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="3LESm3" value="a5478664-6b44-4c62-a9f7-434f8aa57eee" />
        <property role="TrG5h" value="jetbrains.mps.logic.runtime" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7BVjoXzUx$Y" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUxBC" role="iGT6I">
            <property role="2Ry0Am" value="logic" />
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
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4pNU3yqbyNn" role="3bR37C">
          <node concept="3bR9La" id="4pNU3yqbyNo" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7BVjoXzUxoR" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.logic.reactor" />
        <property role="3LESm3" value="bbf5c548-7111-4a53-a117-cdefc664cf34" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7BVjoXzUxoU" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUxpK" role="iGT6I">
            <property role="2Ry0Am" value="logic" />
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
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxVl" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxVm" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxVn" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxVo" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxVx" role="3bR37C">
          <node concept="1BurEX" id="7BVjoXzUxVy" role="1SiIV1">
            <node concept="55IIr" id="7BVjoXzUxVr" role="1BurEY">
              <node concept="2Ry0Ak" id="7BVjoXzUxVs" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7BVjoXzUxVt" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7BVjoXzUxVu" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7BVjoXzUxVv" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7BVjoXzUxVw" role="2Ry0An">
                        <property role="2Ry0Am" value="memreactor-core-0.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxVD" role="3bR37C">
          <node concept="1BurEX" id="7BVjoXzUxVE" role="1SiIV1">
            <node concept="55IIr" id="7BVjoXzUxVz" role="1BurEY">
              <node concept="2Ry0Ak" id="7BVjoXzUxV$" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7BVjoXzUxV_" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7BVjoXzUxVA" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7BVjoXzUxVB" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7BVjoXzUxVC" role="2Ry0An">
                        <property role="2Ry0Am" value="dexx-collections-0.2.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxVL" role="3bR37C">
          <node concept="1BurEX" id="7BVjoXzUxVM" role="1SiIV1">
            <node concept="55IIr" id="7BVjoXzUxVF" role="1BurEY">
              <node concept="2Ry0Ak" id="7BVjoXzUxVG" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7BVjoXzUxVH" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7BVjoXzUxVI" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7BVjoXzUxVJ" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7BVjoXzUxVK" role="2Ry0An">
                        <property role="2Ry0Am" value="google-collections-1.0.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxVT" role="3bR37C">
          <node concept="1BurEX" id="7BVjoXzUxVU" role="1SiIV1">
            <node concept="55IIr" id="7BVjoXzUxVN" role="1BurEY">
              <node concept="2Ry0Ak" id="7BVjoXzUxVO" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7BVjoXzUxVP" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7BVjoXzUxVQ" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7BVjoXzUxVR" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7BVjoXzUxVS" role="2Ry0An">
                        <property role="2Ry0Am" value="kotlin-runtime-1.0.0-rc-1050.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxW1" role="3bR37C">
          <node concept="1BurEX" id="7BVjoXzUxW2" role="1SiIV1">
            <node concept="55IIr" id="7BVjoXzUxVV" role="1BurEY">
              <node concept="2Ry0Ak" id="7BVjoXzUxVW" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7BVjoXzUxVX" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7BVjoXzUxVY" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7BVjoXzUxVZ" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7BVjoXzUxW0" role="2Ry0An">
                        <property role="2Ry0Am" value="kotlin-stdlib-1.0.0-rc-1050.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1xxR4J9fX3K" role="3bR37C">
          <node concept="1BurEX" id="1xxR4J9fX3L" role="1SiIV1">
            <node concept="55IIr" id="1xxR4J9fX3E" role="1BurEY">
              <node concept="2Ry0Ak" id="1xxR4J9fX3F" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="1xxR4J9fX3G" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="1xxR4J9fX3H" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="1xxR4J9fX3I" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="1xxR4J9fX3J" role="2Ry0An">
                        <property role="2Ry0Am" value="unification-lib-1.0.2.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1wCqu1rzjdE" role="3bR37C">
          <node concept="1BurEX" id="1wCqu1rzjdF" role="1SiIV1">
            <node concept="55IIr" id="1wCqu1rzjd$" role="1BurEY">
              <node concept="2Ry0Ak" id="1wCqu1rzjd_" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="1wCqu1rzjdA" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="1wCqu1rzjdB" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="1wCqu1rzjdC" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="1wCqu1rzjdD" role="2Ry0An">
                        <property role="2Ry0Am" value="memreactor-api-0.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7BVjoXzUx6$" role="3989C9">
      <property role="TrG5h" value="typesystem2" />
      <node concept="1E1JtD" id="7BVjoXzUx6U" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2" />
        <property role="3LESm3" value="c4803b19-6d89-4a3b-bf82-390769514add" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7BVjoXzUx7_" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUx7F" role="iGT6I">
            <property role="2Ry0Am" value="typesystem2" />
            <node concept="2Ry0Ak" id="7BVjoXzUx7K" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7BVjoXzUx7P" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2" />
                <node concept="2Ry0Ak" id="7BVjoXzUx7U" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWj" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWk" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWl" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWm" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L25" resolve="jetbrains.mps.baseLanguage.jdk7" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWn" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWo" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.typesystem2.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWp" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWq" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWr" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWs" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWt" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWu" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWv" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWw" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.typesystem2.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWx" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWy" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWz" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxW$" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxW_" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWA" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWB" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWC" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWD" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWE" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWF" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWG" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxWJ" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxWK" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L2F" resolve="jetbrains.mps.baseLanguage.tuples" />
          </node>
        </node>
        <node concept="1E0d5M" id="7BVjoXzUxWL" role="1E1XAP">
          <ref role="1E0d5P" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.typesystem2.runtime" />
        </node>
        <node concept="1E0d5M" id="7BVjoXzUxWM" role="1E1XAP">
          <ref role="1E0d5P" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.typesystem2.template" />
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
          <property role="TrG5h" value="jetbrains.mps.lang.typesystem2#4578927328670739933" />
          <property role="3LESm3" value="21d5540d-cd6b-44dd-b6ab-6835bf032803" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="7BVjoXzUxWY" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxWZ" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxX0" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxX1" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxX2" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxX3" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxX4" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxX5" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KZ0" resolve="jetbrains.mps.baseLanguageInternal" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxX6" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxX7" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L25" resolve="jetbrains.mps.baseLanguage.jdk7" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxX8" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxX9" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.typesystem2.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="7BVjoXzUxXa" role="3bR37C">
            <node concept="3bR9La" id="7BVjoXzUxXb" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
            </node>
          </node>
          <node concept="1SiIV0" id="4pNU3yqbxFQ" role="3bR37C">
            <node concept="3bR9La" id="4pNU3yqbxFR" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.typesystem2.template" />
            </node>
          </node>
          <node concept="1SiIV0" id="4pNU3yqbxFS" role="3bR37C">
            <node concept="3bR9La" id="4pNU3yqbxFT" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L2F" resolve="jetbrains.mps.baseLanguage.tuples" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4Wk$kD1" role="3bR37C">
            <node concept="3bR9La" id="7Ant4Wk$kD2" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="7Ant4Wk$48A" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7BVjoXzUx9d" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.template" />
        <property role="3LESm3" value="ff6372a2-2f45-4ec3-952b-02581666015f" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7BVjoXzUx9g" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUx9P" role="iGT6I">
            <property role="2Ry0Am" value="typesystem2" />
            <node concept="2Ry0Ak" id="7BVjoXzUxag" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7BVjoXzUxav" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.template" />
                <node concept="2Ry0Ak" id="7BVjoXzUxaI" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.template.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxhM" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxhN" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxhO" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxhP" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.typesystem2.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXc" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXd" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXe" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXf" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXg" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXh" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXi" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXj" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXk" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXl" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7BVjoXzUxee" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.runtime" />
        <property role="3LESm3" value="26e8f4ce-2a35-4f44-8065-e5ba154b18e9" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7BVjoXzUxeh" role="3LF7KH">
          <node concept="2Ry0Ak" id="7BVjoXzUxfn" role="iGT6I">
            <property role="2Ry0Am" value="typesystem2" />
            <node concept="2Ry0Ak" id="7BVjoXzUxfX" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7BVjoXzUxgc" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2" />
                <node concept="2Ry0Ak" id="7BVjoXzUxgN" role="2Ry0An">
                  <property role="2Ry0Am" value="runtime" />
                  <node concept="2Ry0Ak" id="7BVjoXzUxh2" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.runtime.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxho" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxhp" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXt" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXu" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXx" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXy" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxXz" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxX$" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.typesystem2.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BVjoXzUxX_" role="3bR37C">
          <node concept="3bR9La" id="7BVjoXzUxXA" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="159_25MoE_0" role="3bR37C">
          <node concept="3bR9La" id="159_25MoE_1" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Ant4Wk$48A" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="65DJywFj0uW" role="3989C9">
      <property role="TrG5h" value="samplechecker" />
      <node concept="1E1JtA" id="65DJywFj0Fi" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.sampleplugin" />
        <property role="3LESm3" value="35e2a720-13d8-4eda-88d3-ff9d78d5a3ae" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="65DJywFj0Fj" role="3LF7KH">
          <node concept="2Ry0Ak" id="65DJywFj0LR" role="iGT6I">
            <property role="2Ry0Am" value="typechecking" />
            <node concept="2Ry0Ak" id="65DJywFj0Qg" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="65DJywFj0UD" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.sampleplugin" />
                <node concept="2Ry0Ak" id="65DJywFj164" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.sampleplugin.msd" />
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
        <node concept="1SiIV0" id="65DJywFj290" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj291" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj292" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj293" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj294" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj295" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUx9d" resolve="jetbrains.mps.lang.typesystem2.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj298" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj299" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29a" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29b" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29e" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29f" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg2" resolve="jetbrains.mps.smodel.resources" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29g" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29h" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29i" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29j" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29k" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29l" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29m" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29n" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUxkQ" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29q" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29r" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29s" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29t" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LgV" resolve="jetbrains.mps.make.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29u" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29v" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7BVjoXzUxee" resolve="jetbrains.mps.lang.typesystem2.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="65DJywFj29y" role="3bR37C">
          <node concept="3bR9La" id="65DJywFj29z" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4Wk$kAj" role="3bR37C">
          <node concept="3bR9La" id="7Ant4Wk$kAk" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4Wk$48A" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7Ant4Wk$48A" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
        <property role="3LESm3" value="9c4ae21e-62e0-4110-95b7-191b357a42d2" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4Wk$48D" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4Wk$4cR" role="iGT6I">
            <property role="2Ry0Am" value="typechecking" />
            <node concept="2Ry0Ak" id="7Ant4Wk$4gs" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Ant4Wk$4k1" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
                <node concept="2Ry0Ak" id="7Ant4Wk$4nA" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.samplechecker.handler.util.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4Wk$4pq" role="3bR37C">
          <node concept="3bR9La" id="7Ant4Wk$4pr" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4Wk$4ps" role="3bR37C">
          <node concept="3bR9La" id="7Ant4Wk$4pt" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4Wk$4pu" role="3bR37C">
          <node concept="3bR9La" id="7Ant4Wk$4pv" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4Wk$4py" role="3bR37C">
          <node concept="3bR9La" id="7Ant4Wk$4pz" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="7Ant4WkHLmc">
    <property role="2DA0ip" value="../../../" />
    <property role="TrG5h" value="samplechecker-test" />
    <property role="turDy" value="test.xml" />
    <node concept="2sgV4H" id="7Ant4WkHLmd" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7Ant4WkHLme" role="2JcizS">
        <ref role="398BVh" node="7Ant4WkHLn3" resolve="mps_home" />
      </node>
    </node>
    <node concept="55IIr" id="7Ant4WkHLmf" role="auvoZ" />
    <node concept="1l3spV" id="7Ant4WkHLmg" role="1l3spN">
      <node concept="398223" id="7Ant4WkHLAp" role="39821P">
        <node concept="L2wRC" id="7Ant4WkHLmo" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLnf" resolve="jetbrains.mps.logic" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmp" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLpI" resolve="jetbrains.mps.lang.typesystem2" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmq" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLrI" resolve="jetbrains.mps.lang.typesystem2.sampleplugin" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmr" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLr9" resolve="jetbrains.mps.lang.typesystem2.runtime" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLms" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLqN" resolve="jetbrains.mps.lang.typesystem2.template" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmt" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLsm" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmu" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmw" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLo4" resolve="jetbrains.mps.logic.reactor" />
        </node>
        <node concept="3_J27D" id="7Ant4WkHLAr" role="Nbhlr">
          <node concept="3Mxwew" id="7Ant4WkHLDj" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmN" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLpd" resolve="jetbrains.mps.logic.test" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmO" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLrt" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.test" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmP" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLsY" resolve="jetbrains.mps.lang.typesystem2.samplechecker.test" />
        </node>
        <node concept="L2wRC" id="7Ant4WkHLmQ" role="39821P">
          <ref role="L2wRA" node="7Ant4WkHLsF" resolve="jetbrains.mps.lang.typesystem2.sampleLang" />
        </node>
        <node concept="398223" id="7Ant4WkHLmR" role="39821P">
          <node concept="2HvfSZ" id="7Ant4WkHLmB" role="39821P">
            <node concept="55IIr" id="7Ant4WkHLmC" role="2HvfZ0">
              <node concept="2Ry0Ak" id="7Ant4WkHLmD" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLmE" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLmF" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7Ant4WkHLmG" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="7Ant4WkHLmS" role="Nbhlr">
            <node concept="3Mxwew" id="7Ant4WkHLmT" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="2HvfSZ" id="7Ant4WkHLmU" role="39821P">
            <node concept="55IIr" id="7Ant4WkHLmV" role="2HvfZ0">
              <node concept="2Ry0Ak" id="7Ant4WkHLmW" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLmX" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLmY" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.test" />
                    <node concept="2Ry0Ak" id="7Ant4WkHLmZ" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="7Ant4WkHLn0" role="10PD9s" />
    <node concept="3b7kt6" id="7Ant4WkHLn1" role="10PD9s" />
    <node concept="1gjT0q" id="7Ant4WkHLn2" role="10PD9s" />
    <node concept="398rNT" id="7Ant4WkHLn3" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="7Ant4WkHLn4" role="398pKh">
        <node concept="2Ry0Ak" id="7Ant4WkHLn5" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="7Ant4WkHLn6" role="2Ry0An">
            <property role="2Ry0Am" value="MPS_HOME" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7Ant4WkHLne" role="3989C9">
      <property role="TrG5h" value="logic" />
      <node concept="1E1JtD" id="7Ant4WkHLnf" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.logic" />
        <property role="3LESm3" value="35320f26-77cb-4c55-be9f-a97a27770af1" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4WkHLng" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLnh" role="iGT6I">
            <property role="2Ry0Am" value="logic" />
            <node concept="2Ry0Ak" id="7Ant4WkHLni" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7Ant4WkHLnj" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLnk" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.logic.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnl" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLnm" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnn" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLno" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1d41uYMTRXo" resolve="jetbrains.mps.baseLanguage.scopes" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnp" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLnq" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnr" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLns" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLo4" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnt" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLnu" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnv" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLnw" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnx" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLny" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnf" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnz" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLn$" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLn_" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLnA" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnB" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLnC" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnD" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLnE" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1E0d5M" id="7Ant4WkHLnH" role="1E1XAP">
          <ref role="1E0d5P" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnI" role="3bR37C">
          <node concept="1Busua" id="7Ant4WkHLnJ" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="7Ant4WkHLnK" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.logic#6626732309150416985" />
          <property role="3LESm3" value="85f64970-3326-4ea7-966e-1ac904686424" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="7Ant4WkHLnL" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLnM" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="7Ant4WkHLo4" resolve="jetbrains.mps.logic.reactor" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLnN" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLnO" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7Ant4WkHLnR" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="3LESm3" value="a5478664-6b44-4c62-a9f7-434f8aa57eee" />
        <property role="TrG5h" value="jetbrains.mps.logic.runtime" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4WkHLnS" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLnT" role="iGT6I">
            <property role="2Ry0Am" value="logic" />
            <node concept="2Ry0Ak" id="7Ant4WkHLnU" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7Ant4WkHLnV" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLnW" role="2Ry0An">
                  <property role="2Ry0Am" value="runtime" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLnX" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.runtime.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLnY" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLnZ" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLo2" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLo3" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Ant4WkHLo4" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7Ant4WkHLo4" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.logic.reactor" />
        <property role="3LESm3" value="bbf5c548-7111-4a53-a117-cdefc664cf34" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4WkHLo5" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLo6" role="iGT6I">
            <property role="2Ry0Am" value="logic" />
            <node concept="2Ry0Ak" id="7Ant4WkHLo7" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Ant4WkHLo8" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                <node concept="2Ry0Ak" id="7Ant4WkHLo9" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.logic.reactor.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLoa" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLob" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLoe" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLof" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLog" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLoh" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLok" role="3bR37C">
          <node concept="1BurEX" id="7Ant4WkHLol" role="1SiIV1">
            <node concept="55IIr" id="7Ant4WkHLom" role="1BurEY">
              <node concept="2Ry0Ak" id="7Ant4WkHLon" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLoo" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLop" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7Ant4WkHLoq" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7Ant4WkHLor" role="2Ry0An">
                        <property role="2Ry0Am" value="memreactor-core-0.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLos" role="3bR37C">
          <node concept="1BurEX" id="7Ant4WkHLot" role="1SiIV1">
            <node concept="55IIr" id="7Ant4WkHLou" role="1BurEY">
              <node concept="2Ry0Ak" id="7Ant4WkHLov" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLow" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLox" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7Ant4WkHLoy" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7Ant4WkHLoz" role="2Ry0An">
                        <property role="2Ry0Am" value="dexx-collections-0.2.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLo$" role="3bR37C">
          <node concept="1BurEX" id="7Ant4WkHLo_" role="1SiIV1">
            <node concept="55IIr" id="7Ant4WkHLoA" role="1BurEY">
              <node concept="2Ry0Ak" id="7Ant4WkHLoB" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLoC" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLoD" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7Ant4WkHLoE" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7Ant4WkHLoF" role="2Ry0An">
                        <property role="2Ry0Am" value="google-collections-1.0.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLoG" role="3bR37C">
          <node concept="1BurEX" id="7Ant4WkHLoH" role="1SiIV1">
            <node concept="55IIr" id="7Ant4WkHLoI" role="1BurEY">
              <node concept="2Ry0Ak" id="7Ant4WkHLoJ" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLoK" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLoL" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7Ant4WkHLoM" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7Ant4WkHLoN" role="2Ry0An">
                        <property role="2Ry0Am" value="kotlin-runtime-1.0.0-rc-1050.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLoO" role="3bR37C">
          <node concept="1BurEX" id="7Ant4WkHLoP" role="1SiIV1">
            <node concept="55IIr" id="7Ant4WkHLoQ" role="1BurEY">
              <node concept="2Ry0Ak" id="7Ant4WkHLoR" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLoS" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLoT" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="7Ant4WkHLoU" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7Ant4WkHLoV" role="2Ry0An">
                        <property role="2Ry0Am" value="kotlin-stdlib-1.0.0-rc-1050.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1xxR4J9fX9L" role="3bR37C">
          <node concept="1BurEX" id="1xxR4J9fX9M" role="1SiIV1">
            <node concept="55IIr" id="1xxR4J9fX9F" role="1BurEY">
              <node concept="2Ry0Ak" id="1xxR4J9fX9G" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="1xxR4J9fX9H" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="1xxR4J9fX9I" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="1xxR4J9fX9J" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="1xxR4J9fX9K" role="2Ry0An">
                        <property role="2Ry0Am" value="unification-lib-1.0.2.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1wCqu1rzjjK" role="3bR37C">
          <node concept="1BurEX" id="1wCqu1rzjjL" role="1SiIV1">
            <node concept="55IIr" id="1wCqu1rzjjE" role="1BurEY">
              <node concept="2Ry0Ak" id="1wCqu1rzjjF" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="1wCqu1rzjjG" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="1wCqu1rzjjH" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.reactor" />
                    <node concept="2Ry0Ak" id="1wCqu1rzjjI" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="1wCqu1rzjjJ" role="2Ry0An">
                        <property role="2Ry0Am" value="memreactor-api-0.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
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
        <property role="2GAjPV" value="false" />
        <property role="aoJFB" value="sources and tests" />
        <node concept="55IIr" id="7Ant4WkHLpe" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLpf" role="iGT6I">
            <property role="2Ry0Am" value="logic" />
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
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpl" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpm" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLrt" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpn" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpo" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpp" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpq" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnf" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpr" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLps" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Ant4WkHLo4" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpt" role="3bR37C">
          <node concept="1BurEX" id="7Ant4WkHLpu" role="1SiIV1">
            <node concept="55IIr" id="7Ant4WkHLpv" role="1BurEY">
              <node concept="2Ry0Ak" id="7Ant4WkHLpw" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLpx" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLpy" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.test" />
                    <node concept="2Ry0Ak" id="7Ant4WkHLpz" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7Ant4WkHLp$" role="2Ry0An">
                        <property role="2Ry0Am" value="mockito-core-2.0.3-beta.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLp_" role="3bR37C">
          <node concept="1BurEX" id="7Ant4WkHLpA" role="1SiIV1">
            <node concept="55IIr" id="7Ant4WkHLpB" role="1BurEY">
              <node concept="2Ry0Ak" id="7Ant4WkHLpC" role="iGT6I">
                <property role="2Ry0Am" value="logic" />
                <node concept="2Ry0Ak" id="7Ant4WkHLpD" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLpE" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.logic.test" />
                    <node concept="2Ry0Ak" id="7Ant4WkHLpF" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7Ant4WkHLpG" role="2Ry0An">
                        <property role="2Ry0Am" value="objenesis-2.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7Ant4WkHLpH" role="3989C9">
      <property role="TrG5h" value="typesystem2" />
      <node concept="1E1JtD" id="7Ant4WkHLpI" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2" />
        <property role="3LESm3" value="c4803b19-6d89-4a3b-bf82-390769514add" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4WkHLpJ" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLpK" role="iGT6I">
            <property role="2Ry0Am" value="typesystem2" />
            <node concept="2Ry0Ak" id="7Ant4WkHLpL" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7Ant4WkHLpM" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2" />
                <node concept="2Ry0Ak" id="7Ant4WkHLpN" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpO" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpP" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpQ" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpR" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L25" resolve="jetbrains.mps.baseLanguage.jdk7" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpS" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpT" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLqN" resolve="jetbrains.mps.lang.typesystem2.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpU" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpV" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpW" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpX" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLpY" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLpZ" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLq0" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLq1" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLr9" resolve="jetbrains.mps.lang.typesystem2.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLq2" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLq3" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLq4" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLq5" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLq6" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLq7" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnf" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLq8" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLq9" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqa" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLqb" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqc" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLqd" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqg" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLqh" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L2F" resolve="jetbrains.mps.baseLanguage.tuples" />
          </node>
        </node>
        <node concept="1E0d5M" id="7Ant4WkHLqi" role="1E1XAP">
          <ref role="1E0d5P" node="7Ant4WkHLr9" resolve="jetbrains.mps.lang.typesystem2.runtime" />
        </node>
        <node concept="1E0d5M" id="7Ant4WkHLqj" role="1E1XAP">
          <ref role="1E0d5P" node="7Ant4WkHLqN" resolve="jetbrains.mps.lang.typesystem2.template" />
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqk" role="3bR37C">
          <node concept="1Busua" id="7Ant4WkHLql" role="1SiIV1">
            <ref role="1Busuk" node="7Ant4WkHLnf" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqm" role="3bR37C">
          <node concept="1Busua" id="7Ant4WkHLqn" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqo" role="3bR37C">
          <node concept="1Busua" id="7Ant4WkHLqp" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqq" role="3bR37C">
          <node concept="1Busua" id="7Ant4WkHLqr" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqs" role="3bR37C">
          <node concept="1Busua" id="7Ant4WkHLqt" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L68" resolve="jetbrains.mps.lang.descriptor" />
          </node>
        </node>
        <node concept="1yeLz9" id="7Ant4WkHLqu" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.typesystem2#4578927328670739933" />
          <property role="3LESm3" value="21d5540d-cd6b-44dd-b6ab-6835bf032803" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="7Ant4WkHLqv" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLqw" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLqx" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLqy" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLqz" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLq$" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="7Ant4WkHLo4" resolve="jetbrains.mps.logic.reactor" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLq_" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLqA" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KZ0" resolve="jetbrains.mps.baseLanguageInternal" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLqB" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLqC" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L25" resolve="jetbrains.mps.baseLanguage.jdk7" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLqD" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLqE" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="7Ant4WkHLr9" resolve="jetbrains.mps.lang.typesystem2.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLqF" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLqG" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLqH" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLqI" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="7Ant4WkHLqN" resolve="jetbrains.mps.lang.typesystem2.template" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLqJ" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLqK" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L2F" resolve="jetbrains.mps.baseLanguage.tuples" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ant4WkHLqL" role="3bR37C">
            <node concept="3bR9La" id="7Ant4WkHLqM" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="7Ant4WkHLsm" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7Ant4WkHLqN" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.template" />
        <property role="3LESm3" value="ff6372a2-2f45-4ec3-952b-02581666015f" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4WkHLqO" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLqP" role="iGT6I">
            <property role="2Ry0Am" value="typesystem2" />
            <node concept="2Ry0Ak" id="7Ant4WkHLqQ" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Ant4WkHLqR" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.template" />
                <node concept="2Ry0Ak" id="7Ant4WkHLqS" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.template.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqT" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLqU" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqV" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLqW" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLr9" resolve="jetbrains.mps.lang.typesystem2.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqX" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLqY" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLqZ" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLr0" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLr1" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLr2" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLr3" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLr4" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLr5" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLr6" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7Ant4WkHLr9" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.runtime" />
        <property role="3LESm3" value="26e8f4ce-2a35-4f44-8065-e5ba154b18e9" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4WkHLra" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLrb" role="iGT6I">
            <property role="2Ry0Am" value="typesystem2" />
            <node concept="2Ry0Ak" id="7Ant4WkHLrc" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7Ant4WkHLrd" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2" />
                <node concept="2Ry0Ak" id="7Ant4WkHLre" role="2Ry0An">
                  <property role="2Ry0Am" value="runtime" />
                  <node concept="2Ry0Ak" id="7Ant4WkHLrf" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.runtime.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrg" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrh" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLri" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrj" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrm" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrn" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Ant4WkHLo4" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLro" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrp" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLqN" resolve="jetbrains.mps.lang.typesystem2.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrq" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrr" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="159_25MoEEI" role="3bR37C">
          <node concept="3bR9La" id="159_25MoEEJ" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Ant4WkHLsm" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7Ant4WkHLrs" role="3989C9">
      <property role="TrG5h" value="typesystem2-test" />
      <node concept="1E1JtA" id="7Ant4WkHLrt" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.samplechecker.handler.test" />
        <property role="3LESm3" value="e4a4c488-aaf8-4c5b-bc98-e65c5dd9acb9" />
        <property role="2GAjPV" value="false" />
        <property role="aoJFB" value="sources and tests" />
        <node concept="55IIr" id="7Ant4WkHLru" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLrv" role="iGT6I">
            <property role="2Ry0Am" value="typechecking" />
            <node concept="2Ry0Ak" id="7Ant4WkHLrw" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Ant4WkHLrx" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.samplechecker.handler.test" />
                <node concept="2Ry0Ak" id="7Ant4WkHLry" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.samplechecker.handler.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrz" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLr$" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrB" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrC" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Ant4WkHLo4" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrD" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrE" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLsm" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrF" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrG" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLpd" resolve="jetbrains.mps.logic.test" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7Ant4WkHLrH" role="3989C9">
      <property role="TrG5h" value="samplechecker" />
      <node concept="1E1JtA" id="7Ant4WkHLrI" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.sampleplugin" />
        <property role="3LESm3" value="35e2a720-13d8-4eda-88d3-ff9d78d5a3ae" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4WkHLrJ" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLrK" role="iGT6I">
            <property role="2Ry0Am" value="typechecking" />
            <node concept="2Ry0Ak" id="7Ant4WkHLrL" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Ant4WkHLrM" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.sampleplugin" />
                <node concept="2Ry0Ak" id="7Ant4WkHLrN" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.sampleplugin.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrO" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrP" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrQ" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrR" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrS" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrT" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrU" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrV" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLqN" resolve="jetbrains.mps.lang.typesystem2.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrW" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrX" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLrY" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLrZ" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLs0" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLs1" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg2" resolve="jetbrains.mps.smodel.resources" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLs2" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLs3" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLo4" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLs4" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLs5" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLs6" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLs7" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLs8" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLs9" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnf" resolve="jetbrains.mps.logic" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsa" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsb" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsc" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsd" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LgV" resolve="jetbrains.mps.make.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLse" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsf" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Ant4WkHLr9" resolve="jetbrains.mps.lang.typesystem2.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsg" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsh" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsk" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsl" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLsm" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7Ant4WkHLsm" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
        <property role="3LESm3" value="9c4ae21e-62e0-4110-95b7-191b357a42d2" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4WkHLsn" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLso" role="iGT6I">
            <property role="2Ry0Am" value="typechecking" />
            <node concept="2Ry0Ak" id="7Ant4WkHLsp" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Ant4WkHLsq" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
                <node concept="2Ry0Ak" id="7Ant4WkHLsr" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.samplechecker.handler.util.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsu" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsv" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsw" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsx" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsy" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsz" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsA" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsB" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7Ant4WkHLsE" role="3989C9">
      <property role="TrG5h" value="samplechecker-test" />
      <node concept="1E1JtD" id="7Ant4WkHLsF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.sampleLang" />
        <property role="3LESm3" value="0fda14cc-a416-4c81-869a-2175d8b3325d" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="7Ant4WkHLsG" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLsH" role="iGT6I">
            <property role="2Ry0Am" value="typechecking" />
            <node concept="2Ry0Ak" id="7Ant4WkHLsI" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7Ant4WkHLsJ" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.sampleLang" />
                <node concept="2Ry0Ak" id="7Ant4WkHLsK" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.sampleLang.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsL" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsM" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLr9" resolve="jetbrains.mps.lang.typesystem2.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsN" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsO" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsP" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsQ" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLqN" resolve="jetbrains.mps.lang.typesystem2.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsR" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLsS" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLsm" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLsV" role="3bR37C">
          <node concept="1Busua" id="7Ant4WkHLsW" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="7Ant4WkHLsX" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.sampleLang#8436953480441303409" />
          <property role="3LESm3" value="3128d3e3-76dc-4d6d-b958-99599e4307fa" />
          <property role="2GAjPV" value="false" />
        </node>
      </node>
      <node concept="1E1JtA" id="7Ant4WkHLsY" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typesystem2.samplechecker.test" />
        <property role="3LESm3" value="fec0c515-766a-48ae-a50a-45de7ad21bd9" />
        <property role="2GAjPV" value="false" />
        <property role="aoJFB" value="sources and tests" />
        <node concept="55IIr" id="7Ant4WkHLsZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Ant4WkHLt0" role="iGT6I">
            <property role="2Ry0Am" value="typechecking" />
            <node concept="2Ry0Ak" id="7Ant4WkHLt1" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Ant4WkHLt2" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.samplechecker.test" />
                <node concept="2Ry0Ak" id="7Ant4WkHLt3" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem2.samplechecker.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLt4" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLt5" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLnR" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLt6" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLt7" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLt8" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLt9" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLtc" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLtd" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZ0" resolve="jetbrains.mps.baseLanguageInternal" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLte" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLtf" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLsm" resolve="jetbrains.mps.lang.typesystem2.samplechecker.handler.util" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ant4WkHLtg" role="3bR37C">
          <node concept="3bR9La" id="7Ant4WkHLth" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="7Ant4WkHLsF" resolve="jetbrains.mps.lang.typesystem2.sampleLang" />
          </node>
        </node>
      </node>
    </node>
    <node concept="22LTRH" id="7Ant4WkHLti" role="1hWBAP">
      <property role="TrG5h" value="testconfig" />
      <node concept="22LTRM" id="7Ant4WkHLtj" role="22LTRK">
        <ref role="22LTRN" node="7Ant4WkHLsY" resolve="jetbrains.mps.lang.typesystem2.samplechecker.test" />
      </node>
    </node>
  </node>
</model>

