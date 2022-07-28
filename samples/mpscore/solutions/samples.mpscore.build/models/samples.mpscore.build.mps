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
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681299066" name="jetbrains.mps.core.xml.structure.XmlCDATA" flags="ng" index="2pNm8S">
        <property id="1622293396948985395" name="content" index="3o6aOc" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
    </language>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469355" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModuleGroup" flags="ng" index="22LTRF">
        <reference id="4560297596904469356" name="group" index="22LTRG" />
      </concept>
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildAspect_MpsTestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
        <child id="6593674873639474544" name="options" index="24cAkG" />
      </concept>
      <concept id="6593674873639474400" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModules_Options" flags="ng" index="24cAiW">
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
      <concept id="7832771629084799699" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginVendor" flags="ng" index="2iUeEo">
        <property id="7832771629084799702" name="name" index="2iUeEt" />
        <property id="7832771629084799701" name="url" index="2iUeEu" />
      </concept>
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="1359186315025500371" name="xml" index="20twgj" />
        <child id="7832771629084912518" name="vendor" index="2iVFfd" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
        <child id="2172791612906637490" name="description" index="3s6cr7" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868064" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ManualPluginLayoutType" flags="ng" index="pUk6w" />
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
  <node concept="1l3spW" id="5nRGIxgpOuU">
    <property role="2DA0ip" value="../../" />
    <property role="TrG5h" value="mpscore" />
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
    <node concept="2kB4xC" id="C1f6iDxxIR" role="1l3spd">
      <property role="TrG5h" value="ci.build.tag" />
      <node concept="aVJcg" id="C1f6iDxxJm" role="aVJcv">
        <node concept="NbPM2" id="C1f6iDxxJl" role="aVJcq">
          <node concept="3Mxwew" id="C1f6iDxxJk" role="3MwsjC">
            <property role="3MwjfP" value="SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="5Hdh9$IhmQ$" role="1l3spd">
      <property role="TrG5h" value="ci.mps.release" />
      <node concept="aVJcg" id="5Hdh9$IhmQ_" role="aVJcv">
        <node concept="NbPM2" id="5Hdh9$IhmQA" role="aVJcq">
          <node concept="3Mxwew" id="5Hdh9$IhmQB" role="3MwsjC">
            <property role="3MwjfP" value="222" />
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
    <node concept="m$_wf" id="7BVjoXzUx67" role="3989C9">
      <property role="m$_wk" value="jetbrains.mps.core.types" />
      <node concept="m$_yC" id="3cBtKDs8BhF" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="3_J27D" id="7BVjoXzUx68" role="m$_yQ">
        <node concept="3Mxwew" id="7BVjoXzUx6h" role="3MwsjC">
          <property role="3MwjfP" value="MPS Coderules Core Types" />
        </node>
      </node>
      <node concept="3_J27D" id="7BVjoXzUx69" role="m_cZH">
        <node concept="3Mxwew" id="7BVjoXzUx6j" role="3MwsjC">
          <property role="3MwjfP" value="jetbrains.mps.core.types" />
        </node>
      </node>
      <node concept="3_J27D" id="7BVjoXzUx6a" role="m$_w8">
        <node concept="3Mxwey" id="4XsNDZX0EoU" role="3MwsjC">
          <ref role="3Mxwex" node="5Hdh9$IhmQ$" resolve="ci.mps.release" />
        </node>
        <node concept="3Mxwew" id="2BiN_P7R7Wi" role="3MwsjC">
          <property role="3MwjfP" value="-0.9.3-b" />
        </node>
        <node concept="3Mxwey" id="2BiN_P7R81m" role="3MwsjC">
          <ref role="3Mxwex" node="2BiN_P7R7jO" resolve="ci.build.num" />
        </node>
      </node>
      <node concept="3_J27D" id="3AC_dXTSEnT" role="3s6cr7">
        <node concept="3Mxwew" id="3AC_dXTSEnV" role="3MwsjC">
          <property role="3MwjfP" value="Types for core MPS languages with Coderules (experimental)" />
        </node>
      </node>
      <node concept="2iUeEo" id="3AC_dXTSEsp" role="2iVFfd">
        <property role="2iUeEt" value="JetBrains s.r.o." />
        <property role="2iUeEu" value="jetbrains.com/mps" />
      </node>
      <node concept="2pNNFK" id="5GCTx2jx5$m" role="20twgj">
        <property role="2pNNFO" value="depends" />
        <node concept="3o6iSG" id="5GCTx2jx5AH" role="3o6s8t">
          <property role="3o6i5n" value="com.intellij.modules.platform" />
        </node>
      </node>
      <node concept="2pNNFK" id="5Hdh9$IhmUh" role="20twgj">
        <property role="2pNNFO" value="idea-version" />
        <node concept="2pNUuL" id="5Hdh9$IhmW_" role="2pNNFR">
          <property role="2pNUuO" value="since-build" />
          <node concept="2pMdtt" id="5Hdh9$IhnkA" role="2pMdts">
            <property role="2pMdty" value="222.1" />
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="2fVm_54SZ$e" role="20twgj">
        <property role="2pNNFO" value="change-notes" />
        <node concept="2pNm8S" id="2p5jUSWfCr8" role="3o6s8t">
          <property role="3o6aOc" value="&lt;ul&gt;&lt;li&gt;Compatible with upcoming 2022 release of MPS&lt;/li&gt;&lt;li&gt;Bugfixes and optimizations&lt;/li&gt;&lt;/ul&gt;" />
        </node>
      </node>
      <node concept="m$_yC" id="77GimjbRIwv" role="m$_yJ">
        <ref role="m$_y1" to="zqd8:7BVjoXzUx67" resolve="jetbrains.mps.coderules" />
      </node>
      <node concept="m$_yC" id="3cBtKDs8Bns" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5HVSRHdVm9a" resolve="jetbrains.mps.build" />
      </node>
      <node concept="m$f5U" id="2fVm_54UfKS" role="m$_yh">
        <ref role="m$f5T" node="61G6TdEeKRG" resolve="lang" />
      </node>
      <node concept="m$f5U" id="2fVm_54UfJU" role="m$_yh">
        <ref role="m$f5T" node="69UmpDmJW20" resolve="baseLanguageExt" />
      </node>
      <node concept="m$f5U" id="2fVm_54UfLS" role="m$_yh">
        <ref role="m$f5T" node="7LI_gNMBoD8" resolve="coderulesExt" />
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
        <node concept="L2wRC" id="51ek2rS3Vr4" role="39821P">
          <ref role="L2wRA" node="2n$L_Zi7QGo" resolve="jetbrains.mps.baseLanguage.blTypesExt" />
        </node>
        <node concept="L2wRC" id="69UmpDmJWcg" role="39821P">
          <ref role="L2wRA" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
        </node>
        <node concept="L2wRC" id="7gMIJIxVuUl" role="39821P">
          <ref role="L2wRA" node="7gMIJIxVu2L" resolve="jetbrains.mps.baseLanguageInternalExt" />
        </node>
        <node concept="L2wRC" id="1PN9XOH12Mo" role="39821P">
          <ref role="L2wRA" node="1PN9XOH0Fva" resolve="jetbrains.mps.baseLanguage.classifiersExt" />
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
        <node concept="L2wRC" id="61G6TdEeN5y" role="39821P">
          <ref role="L2wRA" node="61G6TdEeMYr" resolve="jetbrains.mps.lang.typesystemExt" />
        </node>
        <node concept="L2wRC" id="5c7SrrUYKbv" role="39821P">
          <ref role="L2wRA" node="5c7SrrUYK2Y" resolve="jetbrains.mps.lang.quotationExt" />
        </node>
        <node concept="L2wRC" id="3ZfjIHtDgcu" role="39821P">
          <ref role="L2wRA" node="3ZfjIHtDg2T" resolve="jetbrains.mps.lang.constraintsExt" />
        </node>
        <node concept="L2wRC" id="3ZfjIHumNFz" role="39821P">
          <ref role="L2wRA" node="3ZfjIHumNxk" resolve="jetbrains.mps.lang.generatorExt" />
        </node>
        <node concept="L2wRC" id="3ZfjIHuwEM7" role="39821P">
          <ref role="L2wRA" node="3ZfjIHuwEAU" resolve="jetbrains.mps.lang.generator.generationContextExt" />
        </node>
        <node concept="L2wRC" id="69UmpDmJWdl" role="39821P">
          <ref role="L2wRA" node="69UmpDmJW3w" resolve="typechecking.samples.baseLanguage" />
        </node>
        <node concept="L2wRC" id="7LI_gNMBoJc" role="39821P">
          <ref role="L2wRA" node="7LI_gNMBoG$" resolve="jetbrains.mps.logicExt" />
        </node>
        <node concept="L2wRC" id="C1f6iDm0l$" role="39821P">
          <ref role="L2wRA" node="C1f6iDkSr$" resolve="jetbrains.mps.lang.coderulesExt" />
        </node>
        <node concept="L2wRC" id="3vih5252CYh" role="39821P">
          <ref role="L2wRA" node="3vih5251pFW" resolve="jetbrains.mps.lang.typecheckingExt" />
        </node>
      </node>
      <node concept="3981dG" id="53G0zZLgOeZ" role="39821P">
        <node concept="3_J27D" id="53G0zZLgOf1" role="Nbhlr">
          <node concept="3Mxwew" id="53G0zZLgOfw" role="3MwsjC">
            <property role="3MwjfP" value="jetbrains.mps.core.types-" />
          </node>
          <node concept="3Mxwey" id="C1f6iDzol1" role="3MwsjC">
            <ref role="3Mxwex" node="5Hdh9$IhmQ$" resolve="ci.mps.release" />
          </node>
          <node concept="3Mxwew" id="C1f6iDzol0" role="3MwsjC">
            <property role="3MwjfP" value="-0.9-b" />
          </node>
          <node concept="3Mxwey" id="C1f6iDxxPK" role="3MwsjC">
            <ref role="3Mxwex" node="C1f6iDxxIR" resolve="ci.build.tag" />
          </node>
          <node concept="3Mxwew" id="C1f6iDxxPJ" role="3MwsjC">
            <property role="3MwjfP" value=".zip" />
          </node>
        </node>
        <node concept="m$_wl" id="53G0zZLgOfy" role="39821P">
          <ref role="m_rDy" node="7BVjoXzUx67" resolve="jetbrains.mps.core.types" />
          <node concept="398223" id="C1f6iDuYoR" role="39821P">
            <node concept="3_J27D" id="C1f6iDuYoT" role="Nbhlr">
              <node concept="3Mxwew" id="C1f6iDuYpe" role="3MwsjC">
                <property role="3MwjfP" value="languages" />
              </node>
            </node>
            <node concept="L2wRC" id="53G0zZLgOfD" role="39821P">
              <ref role="L2wRA" node="2n$L_Zi7QGo" resolve="jetbrains.mps.baseLanguage.blTypesExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfE" role="39821P">
              <ref role="L2wRA" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfF" role="39821P">
              <ref role="L2wRA" node="7gMIJIxVu2L" resolve="jetbrains.mps.baseLanguageInternalExt" />
            </node>
            <node concept="L2wRC" id="1PN9XOH12N7" role="39821P">
              <ref role="L2wRA" node="1PN9XOH0Fva" resolve="jetbrains.mps.baseLanguage.classifiersExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfG" role="39821P">
              <ref role="L2wRA" node="3DveV8qz3Qm" resolve="jetbrains.mps.baseLanguage.javadocExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfH" role="39821P">
              <ref role="L2wRA" node="3mSr9E04JuF" resolve="jetbrains.mps.baseLanguage.tuplesExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfI" role="39821P">
              <ref role="L2wRA" node="4NtT$ZxGT_H" resolve="jetbrains.mps.baseLanguage.sequence" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfJ" role="39821P">
              <ref role="L2wRA" node="6BFOg89KVoY" resolve="jetbrains.mps.baseLanguage.function" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfK" role="39821P">
              <ref role="L2wRA" node="4NtT$ZxGTIW" resolve="jetbrains.mps.baseLanguage.collectionsExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfL" role="39821P">
              <ref role="L2wRA" node="6$MmqWflyOZ" resolve="jetbrains.mps.baseLanguage.closuresExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfQ" role="39821P">
              <ref role="L2wRA" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfS" role="39821P">
              <ref role="L2wRA" node="61G6TdEeMYr" resolve="jetbrains.mps.lang.typesystemExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfT" role="39821P">
              <ref role="L2wRA" node="5c7SrrUYK2Y" resolve="jetbrains.mps.lang.quotationExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfU" role="39821P">
              <ref role="L2wRA" node="3ZfjIHtDg2T" resolve="jetbrains.mps.lang.constraintsExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfV" role="39821P">
              <ref role="L2wRA" node="3ZfjIHumNxk" resolve="jetbrains.mps.lang.generatorExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfW" role="39821P">
              <ref role="L2wRA" node="3ZfjIHuwEAU" resolve="jetbrains.mps.lang.generator.generationContextExt" />
            </node>
            <node concept="L2wRC" id="53G0zZLgOfY" role="39821P">
              <ref role="L2wRA" node="7LI_gNMBoG$" resolve="jetbrains.mps.logicExt" />
            </node>
            <node concept="L2wRC" id="C1f6iDm0kT" role="39821P">
              <ref role="L2wRA" node="C1f6iDkSr$" resolve="jetbrains.mps.lang.coderulesExt" />
            </node>
            <node concept="L2wRC" id="3vih5252Deq" role="39821P">
              <ref role="L2wRA" node="3vih5251pFW" resolve="jetbrains.mps.lang.typecheckingExt" />
            </node>
          </node>
          <node concept="pUk6w" id="2fVm_5566o0" role="pUk7w" />
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
    <node concept="2G$12M" id="61G6TdEeKRG" role="3989C9">
      <property role="TrG5h" value="lang" />
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
        <node concept="3rtmxn" id="4Xonyipxeg9" role="3bR31x">
          <node concept="3LXTmp" id="4Xonyipxega" role="3rtmxm">
            <node concept="3qWCbU" id="4Xonyipxegb" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4Xonyipxegc" role="3LXTmr">
              <node concept="2Ry0Ak" id="4Xonyipxegd" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4Xonyipxege" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.smodelExt" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3GLv42M$say" role="3bR37C">
          <node concept="3bR9La" id="3GLv42M$saz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4p" resolve="jetbrains.mps.lang.behavior" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="30mNApVhPPt" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.smodel.queryExt" />
        <property role="3LESm3" value="78ea8623-d9ea-49fd-a003-77eef41a264b" />
        <node concept="55IIr" id="30mNApVhPPw" role="3LF7KH">
          <node concept="2Ry0Ak" id="30mNApVhPUS" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="30mNApVhPUX" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.smodel.queryExt" />
              <node concept="2Ry0Ak" id="30mNApVhPV2" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.smodel.queryExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="30mNApVhPVm" role="3bR37C">
          <node concept="3bR9La" id="30mNApVhPVn" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGT_H" resolve="jetbrains.mps.baseLanguage.sequence" />
          </node>
        </node>
        <node concept="1SiIV0" id="30mNApVhPVo" role="3bR37C">
          <node concept="3bR9La" id="30mNApVhPVp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="30mNApVhPVq" role="3bR37C">
          <node concept="3bR9La" id="30mNApVhPVr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="30mNApVhPVs" role="3bR37C">
          <node concept="3bR9La" id="30mNApVhPVt" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="30mNApVhPVu" role="3bR37C">
          <node concept="3bR9La" id="30mNApVhPVv" role="1SiIV1">
            <ref role="3bR37D" node="61G6TdEeMYr" resolve="jetbrains.mps.lang.typesystemExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="30mNApVhPVw" role="3bR37C">
          <node concept="3bR9La" id="30mNApVhPVx" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="30mNApVhPVy" role="3bR37C">
          <node concept="3bR9La" id="30mNApVhPVz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="30mNApVhPV$" role="3bR37C">
          <node concept="3bR9La" id="30mNApVhPV_" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGTIW" resolve="jetbrains.mps.baseLanguage.collectionsExt" />
          </node>
        </node>
        <node concept="1BupzO" id="30mNApVhPVI" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="30mNApVhPVJ" role="1HemKq">
            <node concept="398BVA" id="30mNApVhPVA" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="30mNApVhPVB" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="30mNApVhPVC" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.smodel.queryExt" />
                  <node concept="2Ry0Ak" id="30mNApVhPVD" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="30mNApVhPVK" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="30mNApVhPVL" role="3bR37C">
          <node concept="1Busua" id="30mNApVhPVM" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:3ZgZ1njKuFL" resolve="jetbrains.mps.lang.smodel.query" />
          </node>
        </node>
        <node concept="1yeLz9" id="30mNApVhPVN" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.smodel.queryExt.generator" />
          <property role="3LESm3" value="dc550871-c282-4d72-bd67-c7bb40158823" />
          <node concept="1BupzO" id="30mNApVhPVY" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="30mNApVhPVZ" role="1HemKq">
              <node concept="398BVA" id="30mNApVhPVO" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="30mNApVhPVP" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="30mNApVhPVQ" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.smodel.queryExt" />
                    <node concept="2Ry0Ak" id="30mNApVhPVR" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="30mNApVhPVS" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="30mNApVhPW0" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
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
      <node concept="1E1JtD" id="51h1DIGwo4o" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.behaviorExt" />
        <property role="3LESm3" value="e6d71378-a200-440d-aee2-16f93b792e86" />
        <node concept="55IIr" id="51h1DIGwo4r" role="3LF7KH">
          <node concept="2Ry0Ak" id="51h1DIGwoau" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="51h1DIGwoaz" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.behaviorExt" />
              <node concept="2Ry0Ak" id="51h1DIGwoaC" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.behaviorExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51h1DIGwobm" role="3bR37C">
          <node concept="3bR9La" id="51h1DIGwobn" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1BupzO" id="51h1DIGwobw" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="51h1DIGwobx" role="1HemKq">
            <node concept="398BVA" id="51h1DIGwobo" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="51h1DIGwobp" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="51h1DIGwobq" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.behaviorExt" />
                  <node concept="2Ry0Ak" id="51h1DIGwobr" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="51h1DIGwoby" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51h1DIGwobz" role="3bR37C">
          <node concept="1Busua" id="51h1DIGwob$" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="51h1DIGwob_" role="3bR37C">
          <node concept="1Busua" id="51h1DIGwobA" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L4p" resolve="jetbrains.mps.lang.behavior" />
          </node>
        </node>
        <node concept="1yeLz9" id="51h1DIGwobB" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.behaviorExt.generator" />
          <property role="3LESm3" value="64feabf9-0bb2-49ae-800e-ae9bc7f04c9e" />
          <node concept="1BupzO" id="51h1DIGwobM" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="51h1DIGwobN" role="1HemKq">
              <node concept="398BVA" id="51h1DIGwobC" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="51h1DIGwobD" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="51h1DIGwobE" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.behaviorExt" />
                    <node concept="2Ry0Ak" id="51h1DIGwobF" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="51h1DIGwobG" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="51h1DIGwobO" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="61G6TdEeMYr" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.lang.typesystemExt" />
        <property role="3LESm3" value="669835db-a6e0-460e-ae6b-5422ce5e823b" />
        <property role="BnDLt" value="true" />
        <node concept="55IIr" id="61G6TdEeMYu" role="3LF7KH">
          <node concept="2Ry0Ak" id="61G6TdEeN0e" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="61G6TdEeN0j" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.typesystemExt" />
              <node concept="2Ry0Ak" id="61G6TdEeN0o" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystemExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="61G6TdEeN0W" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="61G6TdEeN0X" role="1HemKq">
            <node concept="398BVA" id="61G6TdEeN0O" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="61G6TdEeN0P" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="61G6TdEeN0Q" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystemExt" />
                  <node concept="2Ry0Ak" id="61G6TdEeN0R" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="61G6TdEeN0Y" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="61G6TdEeN0Z" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.typesystemExt#01" />
          <property role="3LESm3" value="59381717-ee0e-4e0a-b874-f92111cc61cc" />
          <node concept="1BupzO" id="61G6TdEeN1a" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="61G6TdEeN1b" role="1HemKq">
              <node concept="398BVA" id="61G6TdEeN10" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="61G6TdEeN11" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="61G6TdEeN12" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.typesystemExt" />
                    <node concept="2Ry0Ak" id="61G6TdEeN13" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="61G6TdEeN14" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="61G6TdEeN1c" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="61G6TdEeN4N" role="3bR31x">
          <node concept="3LXTmp" id="61G6TdEeN4O" role="3rtmxm">
            <node concept="55IIr" id="61G6TdEeN4P" role="3LXTmr">
              <node concept="2Ry0Ak" id="61G6TdEeN4Q" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="61G6TdEeN4R" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystemExt" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="61G6TdEeN4T" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="61G6TdEfPGo" role="3bR37C">
          <node concept="1Busua" id="61G6TdEfPGp" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="61G6TdEfPGq" role="3bR37C">
          <node concept="1Busua" id="61G6TdEfPGr" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
        <node concept="1SiIV0" id="61G6TdEfPGs" role="3bR37C">
          <node concept="1Busua" id="61G6TdEfPGt" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zhVuyLauN3" role="3bR37C">
          <node concept="3bR9La" id="5zhVuyLauN4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zhVuyLauN5" role="3bR37C">
          <node concept="3bR9La" id="5zhVuyLauN6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zhVuyLauN7" role="3bR37C">
          <node concept="3bR9La" id="5zhVuyLauN8" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zhVuyLauN9" role="3bR37C">
          <node concept="3bR9La" id="5zhVuyLauNa" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zhVuyLauNb" role="3bR37C">
          <node concept="3bR9La" id="5zhVuyLauNc" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L8q" resolve="jetbrains.mps.lang.pattern" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zhVuyLauNd" role="3bR37C">
          <node concept="3bR9La" id="5zhVuyLauNe" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGTIW" resolve="jetbrains.mps.baseLanguage.collectionsExt" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="5c7SrrUYK2Y" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.lang.quotationExt" />
        <property role="3LESm3" value="92b6e23c-5bc0-40ce-ad68-6222c2664122" />
        <property role="BnDLt" value="true" />
        <node concept="55IIr" id="5c7SrrUYK31" role="3LF7KH">
          <node concept="2Ry0Ak" id="5c7SrrUYK5u" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="5c7SrrUYK5z" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.quotationExt" />
              <node concept="2Ry0Ak" id="5c7SrrUYK5C" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.quotationExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5c7SrrUYK6m" role="3bR37C">
          <node concept="3bR9La" id="5c7SrrUYK6n" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
        <node concept="1SiIV0" id="5c7SrrUYK6o" role="3bR37C">
          <node concept="3bR9La" id="5c7SrrUYK6p" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5c7SrrUYK6q" role="3bR37C">
          <node concept="3bR9La" id="5c7SrrUYK6r" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGT_H" resolve="jetbrains.mps.baseLanguage.sequence" />
          </node>
        </node>
        <node concept="1SiIV0" id="5c7SrrUYK6u" role="3bR37C">
          <node concept="3bR9La" id="5c7SrrUYK6v" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="5c7SrrUYK6w" role="3bR37C">
          <node concept="3bR9La" id="5c7SrrUYK6x" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="5c7SrrUYK6y" role="3bR37C">
          <node concept="3bR9La" id="5c7SrrUYK6z" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="5c7SrrUYK6$" role="3bR37C">
          <node concept="3bR9La" id="5c7SrrUYK6_" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGTIW" resolve="jetbrains.mps.baseLanguage.collectionsExt" />
          </node>
        </node>
        <node concept="1BupzO" id="5c7SrrUYK6I" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5c7SrrUYK6J" role="1HemKq">
            <node concept="398BVA" id="5c7SrrUYK6A" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="5c7SrrUYK6B" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5c7SrrUYK6C" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.quotationExt" />
                  <node concept="2Ry0Ak" id="5c7SrrUYK6D" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5c7SrrUYK6K" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5c7SrrUYK6L" role="3bR37C">
          <node concept="1Busua" id="5c7SrrUYK6M" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1yeLz9" id="5c7SrrUYK6N" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.quotationExt#01" />
          <property role="3LESm3" value="13a29af7-cc9b-4878-93b7-2fd8fa179c47" />
          <node concept="1BupzO" id="5c7SrrUYK6Y" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="5c7SrrUYK6Z" role="1HemKq">
              <node concept="398BVA" id="5c7SrrUYK6O" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="5c7SrrUYK6P" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5c7SrrUYK6Q" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.quotationExt" />
                    <node concept="2Ry0Ak" id="5c7SrrUYK6R" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="5c7SrrUYK6S" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="5c7SrrUYK70" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="3ZfjIHtDfZk" role="3bR31x">
          <node concept="3LXTmp" id="3ZfjIHtDfZl" role="3rtmxm">
            <node concept="55IIr" id="3ZfjIHtDfZm" role="3LXTmr">
              <node concept="2Ry0Ak" id="3ZfjIHtDfZn" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3ZfjIHtDfZo" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.quotationExt" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZfjIHtDfZq" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHtDg76" role="3bR37C">
          <node concept="1Busua" id="3ZfjIHtDg77" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L9c" resolve="jetbrains.mps.lang.quotation" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3ZfjIHtDg2T" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.constraintsExt" />
        <property role="3LESm3" value="585629d4-6ae6-4b06-948b-da2f7bfd9250" />
        <node concept="55IIr" id="3ZfjIHtDg2W" role="3LF7KH">
          <node concept="2Ry0Ak" id="3ZfjIHtDg66" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3ZfjIHtDg6b" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.constraintsExt" />
              <node concept="2Ry0Ak" id="3ZfjIHtDg6g" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.constraintsExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHtDg7i" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHtDg7j" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHtDg7k" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHtDg7l" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHtDg7m" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHtDg7n" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1BupzO" id="3ZfjIHtDg7w" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3ZfjIHtDg7x" role="1HemKq">
            <node concept="398BVA" id="3ZfjIHtDg7o" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="3ZfjIHtDg7p" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3ZfjIHtDg7q" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.constraintsExt" />
                  <node concept="2Ry0Ak" id="3ZfjIHtDg7r" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZfjIHtDg7y" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHtDg7z" role="3bR37C">
          <node concept="1Busua" id="3ZfjIHtDg7$" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHtDg7_" role="3bR37C">
          <node concept="1Busua" id="3ZfjIHtDg7A" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L4x" resolve="jetbrains.mps.lang.constraints" />
          </node>
        </node>
        <node concept="1yeLz9" id="3ZfjIHtDg7B" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.constraintsExt#01" />
          <property role="3LESm3" value="169d2221-3b4b-4779-ab69-5f32e51d11b9" />
          <node concept="1BupzO" id="3ZfjIHtDg7M" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3ZfjIHtDg7N" role="1HemKq">
              <node concept="398BVA" id="3ZfjIHtDg7C" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="3ZfjIHtDg7D" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3ZfjIHtDg7E" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.constraintsExt" />
                    <node concept="2Ry0Ak" id="3ZfjIHtDg7F" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="3ZfjIHtDg7G" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3ZfjIHtDg7O" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3ZfjIHumNxk" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.generatorExt" />
        <property role="3LESm3" value="41615dcc-e029-4d25-b7d4-f1e30a69110a" />
        <node concept="55IIr" id="3ZfjIHumNxn" role="3LF7KH">
          <node concept="2Ry0Ak" id="3ZfjIHumN_0" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3ZfjIHumN_5" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.generatorExt" />
              <node concept="2Ry0Ak" id="3ZfjIHumN_a" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.generatorExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHumNAu" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHumNAv" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGT_H" resolve="jetbrains.mps.baseLanguage.sequence" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHumNAw" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHumNAx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHumNAy" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHumNAz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHumNA$" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHumNA_" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHumNAA" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHumNAB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1BupzO" id="3ZfjIHumNAK" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3ZfjIHumNAL" role="1HemKq">
            <node concept="398BVA" id="3ZfjIHumNAC" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="3ZfjIHumNAD" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3ZfjIHumNAE" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.generatorExt" />
                  <node concept="2Ry0Ak" id="3ZfjIHumNAF" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZfjIHumNAM" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHumNAN" role="3bR37C">
          <node concept="1Busua" id="3ZfjIHumNAO" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHumNAP" role="3bR37C">
          <node concept="1Busua" id="3ZfjIHumNAQ" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L6C" resolve="jetbrains.mps.lang.generator" />
          </node>
        </node>
        <node concept="1yeLz9" id="3ZfjIHumNAR" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.generatorExt#01" />
          <property role="3LESm3" value="6b6037b6-867b-43f5-b48e-1c1b8e75f6da" />
          <node concept="1BupzO" id="3ZfjIHumNB2" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3ZfjIHumNB3" role="1HemKq">
              <node concept="398BVA" id="3ZfjIHumNAS" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="3ZfjIHumNAT" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3ZfjIHumNAU" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.generatorExt" />
                    <node concept="2Ry0Ak" id="3ZfjIHumNAV" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="3ZfjIHumNAW" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3ZfjIHumNB4" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3ZfjIHuwEAU" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.generator.generationContextExt" />
        <property role="3LESm3" value="5aff1ad8-d60e-49e5-a795-244ca7b4b701" />
        <node concept="55IIr" id="3ZfjIHuwEAX" role="3LF7KH">
          <node concept="2Ry0Ak" id="3ZfjIHuwEFb" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3ZfjIHuwEFg" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.generator.generationContextExt" />
              <node concept="2Ry0Ak" id="3ZfjIHuwEFl" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.generator.generationContextExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHuwEGT" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHuwEGU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHuwEGX" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHuwEGY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHuwEGZ" role="3bR37C">
          <node concept="3bR9La" id="3ZfjIHuwEH0" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1BupzO" id="3ZfjIHuwEH9" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3ZfjIHuwEHa" role="1HemKq">
            <node concept="398BVA" id="3ZfjIHuwEH1" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="3ZfjIHuwEH2" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3ZfjIHuwEH3" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.generator.generationContextExt" />
                  <node concept="2Ry0Ak" id="3ZfjIHuwEH4" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZfjIHuwEHb" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHuwEHc" role="3bR37C">
          <node concept="1Busua" id="3ZfjIHuwEHd" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ZfjIHuwEHe" role="3bR37C">
          <node concept="1Busua" id="3ZfjIHuwEHf" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L6C" resolve="jetbrains.mps.lang.generator" />
          </node>
        </node>
        <node concept="1yeLz9" id="3ZfjIHuwEHg" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.generator.generationContextExt#01" />
          <property role="3LESm3" value="dd9dea0a-c84a-41bd-810c-9a096453e59e" />
          <node concept="1BupzO" id="3ZfjIHuwEHr" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3ZfjIHuwEHs" role="1HemKq">
              <node concept="398BVA" id="3ZfjIHuwEHh" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="3ZfjIHuwEHi" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3ZfjIHuwEHj" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.generator.generationContextExt" />
                    <node concept="2Ry0Ak" id="3ZfjIHuwEHk" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="3ZfjIHuwEHl" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3ZfjIHuwEHt" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5zrYmBwTAXy" role="3bR37C">
          <node concept="1Busua" id="5zrYmBwTAXz" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L6o" resolve="jetbrains.mps.lang.generator.generationContext" />
          </node>
        </node>
        <node concept="1SiIV0" id="4ot3PHQpimo" role="3bR37C">
          <node concept="3bR9La" id="4ot3PHQpimp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:rD7wKO6k$" resolve="MPS.Generator" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3Pxu0s7YEFB" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.testExt" />
        <property role="3LESm3" value="a662e823-fbc1-4c03-bb95-1e23a88e48ee" />
        <node concept="55IIr" id="3Pxu0s7YEFE" role="3LF7KH">
          <node concept="2Ry0Ak" id="3Pxu0s7YEK6" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3Pxu0s7YEKb" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.testExt" />
              <node concept="2Ry0Ak" id="3Pxu0s7YEKg" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.testExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="3Pxu0s7YEMe" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3Pxu0s7YEMf" role="1HemKq">
            <node concept="398BVA" id="3Pxu0s7YEM6" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="3Pxu0s7YEM7" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3Pxu0s7YEM8" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.testExt" />
                  <node concept="2Ry0Ak" id="3Pxu0s7YEM9" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3Pxu0s7YEMg" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="3Pxu0s7YEMh" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.testExt.generator" />
          <property role="3LESm3" value="327272ac-0643-4d5c-922f-c61a3f0f203f" />
          <node concept="1BupzO" id="3Pxu0s7YEMs" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3Pxu0s7YEMt" role="1HemKq">
              <node concept="398BVA" id="3Pxu0s7YEMi" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="3Pxu0s7YEMj" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3Pxu0s7YEMk" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.testExt" />
                    <node concept="2Ry0Ak" id="3Pxu0s7YEMl" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="3Pxu0s7YEMm" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3Pxu0s7YEMu" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55xYlrl9SaL" role="3bR37C">
          <node concept="3bR9La" id="55xYlrl9SaM" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="55xYlrl9SaN" role="3bR37C">
          <node concept="3bR9La" id="55xYlrl9SaO" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L7y" resolve="jetbrains.mps.lang.intentions" />
          </node>
        </node>
        <node concept="1SiIV0" id="1tzntNAbTLW" role="3bR37C">
          <node concept="3bR9La" id="1tzntNAbTLX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1tzntNAkqmd" role="3bR37C">
          <node concept="3bR9La" id="1tzntNAkqme" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="1tzntNAkqmf" role="3bR37C">
          <node concept="3bR9La" id="1tzntNAkqmg" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="1tzntNAkqmp" role="3bR37C">
          <node concept="1Busua" id="1tzntNAkqmq" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:ymnOULAU0H" resolve="jetbrains.mps.lang.test" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="51h1DIGaq7x" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.scriptExt" />
        <property role="3LESm3" value="29cad963-fc08-463d-ad7c-551e152c1e65" />
        <node concept="55IIr" id="51h1DIGaq7$" role="3LF7KH">
          <node concept="2Ry0Ak" id="51h1DIGaqdz" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="51h1DIGaqdC" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.scriptExt" />
              <node concept="2Ry0Ak" id="51h1DIGaqdH" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.scriptExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51h1DIGaqgp" role="3bR37C">
          <node concept="3bR9La" id="51h1DIGaqgq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9w" resolve="jetbrains.mps.lang.script" />
          </node>
        </node>
        <node concept="1SiIV0" id="51h1DIGaqgr" role="3bR37C">
          <node concept="3bR9La" id="51h1DIGaqgs" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="51h1DIGaqgt" role="3bR37C">
          <node concept="3bR9La" id="51h1DIGaqgu" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1BupzO" id="51h1DIGaqgB" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="51h1DIGaqgC" role="1HemKq">
            <node concept="398BVA" id="51h1DIGaqgv" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="51h1DIGaqgw" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="51h1DIGaqgx" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.scriptExt" />
                  <node concept="2Ry0Ak" id="51h1DIGaqgy" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="51h1DIGaqgD" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51h1DIGaqgE" role="3bR37C">
          <node concept="1Busua" id="51h1DIGaqgF" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="51h1DIGaqgG" role="3bR37C">
          <node concept="1Busua" id="51h1DIGaqgH" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L9w" resolve="jetbrains.mps.lang.script" />
          </node>
        </node>
        <node concept="1yeLz9" id="51h1DIGaqgI" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.scriptExt.generator" />
          <property role="3LESm3" value="5a8edb20-eede-49bb-be22-e6fc35a50c73" />
          <node concept="1BupzO" id="51h1DIGaqgT" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="51h1DIGaqgU" role="1HemKq">
              <node concept="398BVA" id="51h1DIGaqgJ" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="51h1DIGaqgK" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="51h1DIGaqgL" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.scriptExt" />
                    <node concept="2Ry0Ak" id="51h1DIGaqgM" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="51h1DIGaqgN" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="51h1DIGaqgV" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7uKpZGlJnUS" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.scopesExt" />
        <property role="3LESm3" value="7ed5deeb-1533-49a3-99e7-1c11286d2cc6" />
        <node concept="55IIr" id="7uKpZGlJnUV" role="3LF7KH">
          <node concept="2Ry0Ak" id="7uKpZGlJo1p" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7uKpZGlJo1u" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.scopesExt" />
              <node concept="2Ry0Ak" id="7uKpZGlJo1z" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.scopesExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7uKpZGlJo4D" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7uKpZGlJo4E" role="1HemKq">
            <node concept="398BVA" id="7uKpZGlJo4x" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="7uKpZGlJo4y" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7uKpZGlJo4z" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.scopesExt" />
                  <node concept="2Ry0Ak" id="7uKpZGlJo4$" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7uKpZGlJo4F" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7uKpZGlJo4G" role="3bR37C">
          <node concept="1Busua" id="7uKpZGlJo4H" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="7uKpZGlJo4I" role="3bR37C">
          <node concept="1Busua" id="7uKpZGlJo4J" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:1d41uYMTVPu" resolve="jetbrains.mps.lang.scopes" />
          </node>
        </node>
        <node concept="1yeLz9" id="7uKpZGlJo4K" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.scopesExt.generator" />
          <property role="3LESm3" value="639d3743-3689-4e3a-9d46-a929bfa7b429" />
          <node concept="1BupzO" id="7uKpZGlJo4V" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7uKpZGlJo4W" role="1HemKq">
              <node concept="398BVA" id="7uKpZGlJo4L" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="7uKpZGlJo4M" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7uKpZGlJo4N" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.scopesExt" />
                    <node concept="2Ry0Ak" id="7uKpZGlJo4O" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="7uKpZGlJo4P" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7uKpZGlJo4X" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
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
        <node concept="1SiIV0" id="51ek2rReQRE" role="3bR37C">
          <node concept="3bR9La" id="51ek2rReQRF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZ6" resolve="jetbrains.mps.baseLanguage.blTypes" />
          </node>
        </node>
        <node concept="1SiIV0" id="2fVm_53Jog9" role="3bR37C">
          <node concept="3bR9La" id="2fVm_53Joga" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYw" resolve="jetbrains.mps.baseLanguage.search" />
          </node>
        </node>
        <node concept="1SiIV0" id="4APe_wLu1ai" role="3bR37C">
          <node concept="3bR9La" id="4APe_wLu1aj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7gMIJIxVu2L" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.baseLanguageInternalExt" />
        <property role="3LESm3" value="e72b4123-cbc6-4276-9e2f-dfdf088efcbe" />
        <property role="BnDLt" value="true" />
        <node concept="55IIr" id="7gMIJIxVu2M" role="3LF7KH">
          <node concept="2Ry0Ak" id="7gMIJIxVu2N" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7gMIJIxVu2O" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguageInternalExt" />
              <node concept="2Ry0Ak" id="7gMIJIxVubo" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguageInternalExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7gMIJIxVu3c" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7gMIJIxVucm" role="1HemKq">
            <node concept="398BVA" id="7gMIJIxVuce" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="7gMIJIxVucf" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7gMIJIxVucg" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguageInternalExt" />
                  <node concept="2Ry0Ak" id="7gMIJIxVuch" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7gMIJIxVucn" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7gMIJIxVu3j" role="3bR31x">
          <node concept="3LXTmp" id="7gMIJIxVu3k" role="3rtmxm">
            <node concept="3qWCbU" id="7gMIJIxVu3l" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="7gMIJIxVu3m" role="3LXTmr">
              <node concept="2Ry0Ak" id="7gMIJIxVu3n" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7gMIJIxVu3o" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7gMIJIxVuco" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.baseLanguageInternalExt#01" />
          <property role="3LESm3" value="4058311d-5be8-432b-8b76-9c0f6558b8b5" />
          <node concept="1BupzO" id="7gMIJIxVucz" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7gMIJIxVuc$" role="1HemKq">
              <node concept="398BVA" id="7gMIJIxVucp" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="7gMIJIxVucq" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7gMIJIxVucr" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguageInternalExt" />
                    <node concept="2Ry0Ak" id="7gMIJIxVucs" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="7gMIJIxVuct" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7gMIJIxVuc_" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gMIJIy1fG2" role="3bR37C">
          <node concept="1Busua" id="7gMIJIy1fG3" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gMIJIy1fG4" role="3bR37C">
          <node concept="1Busua" id="7gMIJIy1fG5" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KZ0" resolve="jetbrains.mps.baseLanguageInternal" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="1PN9XOH0Fva" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.classifiersExt" />
        <property role="3LESm3" value="37ccac09-5b15-47b1-8c28-752b39fea984" />
        <node concept="55IIr" id="1PN9XOH0Fvd" role="3LF7KH">
          <node concept="2Ry0Ak" id="1PN9XOH0FAZ" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="1PN9XOH0FB4" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.classifiersExt" />
              <node concept="2Ry0Ak" id="1PN9XOH0FB9" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.classifiersExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1PN9XOH0FEN" role="3bR37C">
          <node concept="3bR9La" id="1PN9XOH0FEO" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1PN9XOH0FEP" role="3bR37C">
          <node concept="3bR9La" id="1PN9XOH0FEQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="1PN9XOH0FEZ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1PN9XOH0FF0" role="1HemKq">
            <node concept="398BVA" id="1PN9XOH0FER" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="1PN9XOH0FES" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="1PN9XOH0FET" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.classifiersExt" />
                  <node concept="2Ry0Ak" id="1PN9XOH0FEU" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1PN9XOH0FF1" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1PN9XOH0FF2" role="3bR37C">
          <node concept="1Busua" id="1PN9XOH0FF3" role="1SiIV1">
            <ref role="1Busuk" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="1PN9XOH0FF4" role="3bR37C">
          <node concept="1Busua" id="1PN9XOH0FF5" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KZA" resolve="jetbrains.mps.baseLanguage.classifiers" />
          </node>
        </node>
        <node concept="1yeLz9" id="1PN9XOH0FF6" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.baseLanguage.classifiersExt.generator" />
          <property role="3LESm3" value="1e54a2cb-2fd8-4263-9fe5-090f7fd057cc" />
          <node concept="1BupzO" id="1PN9XOH0FFh" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="1PN9XOH0FFi" role="1HemKq">
              <node concept="398BVA" id="1PN9XOH0FF7" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="1PN9XOH0FF8" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="1PN9XOH0FF9" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.classifiersExt" />
                    <node concept="2Ry0Ak" id="1PN9XOH0FFa" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="1PN9XOH0FFb" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="1PN9XOH0FFj" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2n$L_Zi7QGo" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.blTypesExt" />
        <property role="3LESm3" value="a43bf4aa-fe3f-45e1-94ea-7af1070e5b83" />
        <node concept="55IIr" id="2n$L_Zi7QGr" role="3LF7KH">
          <node concept="2Ry0Ak" id="2n$L_Zi7QRV" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="2n$L_Zi7QXN" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.blTypesExt" />
              <node concept="2Ry0Ak" id="2n$L_Zi7QZO" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.blTypesExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2n$L_Zi7R5O" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2n$L_Zi7R5P" role="1HemKq">
            <node concept="398BVA" id="2n$L_Zi7R5G" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="2n$L_Zi7R5H" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="2n$L_Zi7R5I" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.blTypesExt" />
                  <node concept="2Ry0Ak" id="2n$L_Zi7R5J" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2n$L_Zi7R5Q" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2n$L_Zi7R5R" role="3bR37C">
          <node concept="1Busua" id="2n$L_Zi7R5S" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KZ6" resolve="jetbrains.mps.baseLanguage.blTypes" />
          </node>
        </node>
        <node concept="1yeLz9" id="2n$L_Zi7R5T" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.baseLanguage.blTypesExt#01" />
          <property role="3LESm3" value="31b0f8ff-ca62-4b12-8f30-d88d351a9c52" />
          <node concept="1BupzO" id="2n$L_Zi7R64" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="2n$L_Zi7R65" role="1HemKq">
              <node concept="398BVA" id="2n$L_Zi7R5U" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="2n$L_Zi7R5V" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2n$L_Zi7R5W" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.blTypesExt" />
                    <node concept="2Ry0Ak" id="2n$L_Zi7R5X" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="2n$L_Zi7R5Y" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="2n$L_Zi7R66" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="4XonyipxefA" role="3bR31x">
          <node concept="3LXTmp" id="4XonyipxefB" role="3rtmxm">
            <node concept="3qWCbU" id="4XonyipxefC" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4XonyipxefD" role="3LXTmr">
              <node concept="2Ry0Ak" id="4XonyipxefE" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4XonyipxefF" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.blTypesExt" />
                </node>
              </node>
            </node>
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
        <node concept="1SiIV0" id="61G6TdCE_6_" role="3bR37C">
          <node concept="3bR9La" id="61G6TdCE_6A" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6tFa8SpSDbV" role="3bR37C">
          <node concept="3bR9La" id="6tFa8SpSDbW" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:5wYq9r5EBDN" resolve="jetbrains.mps.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="4XsNDZX9sgj" role="3bR37C">
          <node concept="3bR9La" id="4XsNDZX9sgk" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:4XsNDZX1tUA" resolve="jetbrains.mps.coderules.testhelper" />
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
        <node concept="3rtmxn" id="4Xonyipxefh" role="3bR31x">
          <node concept="3LXTmp" id="4Xonyipxefi" role="3rtmxm">
            <node concept="3qWCbU" id="4Xonyipxefj" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4Xonyipxefk" role="3LXTmr">
              <node concept="2Ry0Ak" id="4Xonyipxefl" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="4Xonyipxefm" role="2Ry0An">
                  <property role="2Ry0Am" value="typechecking.samples.baseLanguage" />
                </node>
              </node>
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
        <node concept="1SiIV0" id="6U_Or2DGPxB" role="3bR37C">
          <node concept="3bR9La" id="6U_Or2DGPxC" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="6U_Or2DGPxD" role="3bR37C">
          <node concept="3bR9La" id="6U_Or2DGPxE" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L2N" resolve="jetbrains.mps.baseLanguage.tuples.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="4APe_wLu1bE" role="3bR37C">
          <node concept="3bR9La" id="4APe_wLu1bF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
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
        <node concept="1SiIV0" id="6U_Or2DGPxX" role="3bR37C">
          <node concept="3bR9La" id="6U_Or2DGPxY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L2N" resolve="jetbrains.mps.baseLanguage.tuples.runtime" />
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
        <node concept="3rtmxn" id="4XonyipxefH" role="3bR31x">
          <node concept="3LXTmp" id="4XonyipxefI" role="3rtmxm">
            <node concept="3qWCbU" id="4XonyipxefJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4XonyipxefK" role="3LXTmr">
              <node concept="2Ry0Ak" id="4XonyipxefL" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4XonyipxefM" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.sequence" />
                </node>
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
        <node concept="3rtmxn" id="4XonyipxefO" role="3bR31x">
          <node concept="3LXTmp" id="4XonyipxefP" role="3rtmxm">
            <node concept="3qWCbU" id="4XonyipxefQ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4XonyipxefR" role="3LXTmr">
              <node concept="2Ry0Ak" id="4XonyipxefS" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4XonyipxefT" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.function" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4APe_wLu1co" role="3bR37C">
          <node concept="3bR9La" id="4APe_wLu1cp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZG" resolve="jetbrains.mps.baseLanguage.closures" />
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
        <node concept="3rtmxn" id="4XonyipxefV" role="3bR31x">
          <node concept="3LXTmp" id="4XonyipxefW" role="3rtmxm">
            <node concept="3qWCbU" id="4XonyipxefX" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4XonyipxefY" role="3LXTmr">
              <node concept="2Ry0Ak" id="4XonyipxefZ" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4Xonyipxeg0" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.collectionsExt" />
                </node>
              </node>
            </node>
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
        <node concept="1SiIV0" id="5BtuWK4F$zV" role="3bR37C">
          <node concept="3bR9La" id="5BtuWK4F$zW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZG" resolve="jetbrains.mps.baseLanguage.closures" />
          </node>
        </node>
        <node concept="3rtmxn" id="4Xonyipxefo" role="3bR31x">
          <node concept="3LXTmp" id="4Xonyipxefp" role="3rtmxm">
            <node concept="3qWCbU" id="4Xonyipxefq" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4Xonyipxefr" role="3LXTmr">
              <node concept="2Ry0Ak" id="4Xonyipxefs" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="4Xonyipxeft" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.collectionsExt.test" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4XsNDZX9shP" role="3bR37C">
          <node concept="3bR9La" id="4XsNDZX9shQ" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:4XsNDZX1tUA" resolve="jetbrains.mps.coderules.testhelper" />
          </node>
        </node>
        <node concept="1SiIV0" id="ZNYugskA_n" role="3bR37C">
          <node concept="3bR9La" id="ZNYugskA_o" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
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
        <node concept="3rtmxn" id="4Xonyipxeg2" role="3bR31x">
          <node concept="3LXTmp" id="4Xonyipxeg3" role="3rtmxm">
            <node concept="3qWCbU" id="4Xonyipxeg4" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4Xonyipxeg5" role="3LXTmr">
              <node concept="2Ry0Ak" id="4Xonyipxeg6" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4Xonyipxeg7" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3DgB4rOyUPL" role="3bR37C">
          <node concept="3bR9La" id="3DgB4rOyUPM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZM" resolve="closures.runtime" />
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
        <node concept="3rtmxn" id="4Xonyipxefv" role="3bR31x">
          <node concept="3LXTmp" id="4Xonyipxefw" role="3rtmxm">
            <node concept="3qWCbU" id="4Xonyipxefx" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4Xonyipxefy" role="3LXTmr">
              <node concept="2Ry0Ak" id="4Xonyipxefz" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="4Xonyipxef$" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closuresExt.test" />
                </node>
              </node>
            </node>
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
        <node concept="3rtmxn" id="4Xonyipxegg" role="3bR31x">
          <node concept="3LXTmp" id="4Xonyipxegh" role="3rtmxm">
            <node concept="3qWCbU" id="4Xonyipxegi" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4Xonyipxegj" role="3LXTmr">
              <node concept="2Ry0Ak" id="4Xonyipxegk" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4Xonyipxegl" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.logicExt" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="61G6TdEeKHS" role="3bR37C">
          <node concept="3bR9La" id="61G6TdEeKHT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3GLv42MHmhO" role="3bR37C">
          <node concept="3bR9La" id="3GLv42MHmhP" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="C1f6iDkSr$" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.coderulesExt" />
        <property role="3LESm3" value="6a5b4bb9-0a56-4618-aa9a-7068c528ce90" />
        <node concept="55IIr" id="C1f6iDkSrB" role="3LF7KH">
          <node concept="2Ry0Ak" id="C1f6iDkSsg" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="C1f6iDkSsl" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.coderulesExt" />
              <node concept="2Ry0Ak" id="C1f6iDkSEo" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.coderulesExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="C1f6iDkSKK" role="3bR37C">
          <node concept="3bR9La" id="C1f6iDkSKL" role="1SiIV1">
            <ref role="3bR37D" node="4NtT$ZxGT_H" resolve="jetbrains.mps.baseLanguage.sequence" />
          </node>
        </node>
        <node concept="1SiIV0" id="C1f6iDkSKM" role="3bR37C">
          <node concept="3bR9La" id="C1f6iDkSKN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="C1f6iDkSKO" role="3bR37C">
          <node concept="3bR9La" id="C1f6iDkSKP" role="1SiIV1">
            <ref role="3bR37D" node="7LI_gNMBoG$" resolve="jetbrains.mps.logicExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="C1f6iDkSKQ" role="3bR37C">
          <node concept="3bR9La" id="C1f6iDkSKR" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="C1f6iDkSKS" role="3bR37C">
          <node concept="3bR9La" id="C1f6iDkSKT" role="1SiIV1">
            <ref role="3bR37D" node="6Dg__VJQ3B2" resolve="jetbrains.mps.lang.smodelExt" />
          </node>
        </node>
        <node concept="1SiIV0" id="C1f6iDkSKU" role="3bR37C">
          <node concept="3bR9La" id="C1f6iDkSKV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1BupzO" id="C1f6iDkSL4" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="C1f6iDkSL5" role="1HemKq">
            <node concept="398BVA" id="C1f6iDkSKW" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="C1f6iDkSKX" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="C1f6iDkSKY" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.coderulesExt" />
                  <node concept="2Ry0Ak" id="C1f6iDkSKZ" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="C1f6iDkSL6" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="C1f6iDkSL7" role="3bR37C">
          <node concept="1Busua" id="C1f6iDkSL8" role="1SiIV1">
            <ref role="1Busuk" to="zqd8:7BVjoXzUx6U" resolve="jetbrains.mps.lang.coderules" />
          </node>
        </node>
        <node concept="1yeLz9" id="C1f6iDkSL9" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.coderulesExt#01" />
          <property role="3LESm3" value="3d598314-84de-4985-8c2f-ce6664af759f" />
          <node concept="1BupzO" id="C1f6iDkSLk" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="C1f6iDkSLl" role="1HemKq">
              <node concept="398BVA" id="C1f6iDkSLa" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="C1f6iDkSLb" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="C1f6iDkSLc" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.coderulesExt" />
                    <node concept="2Ry0Ak" id="C1f6iDkSLd" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="C1f6iDkSLe" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="C1f6iDkSLm" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3vih5251pFW" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.typecheckingExt" />
        <property role="3LESm3" value="8af2e506-8c47-414b-871d-71064972fcea" />
        <node concept="55IIr" id="3vih5251pFZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="3vih5251pLf" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3vih5251pPo" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.lang.typecheckingExt" />
              <node concept="2Ry0Ak" id="3vih5251pSH" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typecheckingExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3vih5251q2D" role="3bR37C">
          <node concept="3bR9La" id="3vih5251q2E" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
        <node concept="1BupzO" id="3vih5251q2N" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3vih5251q2O" role="1HemKq">
            <node concept="398BVA" id="3vih5251q2F" role="3LXTmr">
              <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
              <node concept="2Ry0Ak" id="3vih5251q2G" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3vih5251q2H" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typecheckingExt" />
                  <node concept="2Ry0Ak" id="3vih5251q2I" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3vih5251q2P" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3vih5251q2S" role="3bR37C">
          <node concept="1Busua" id="3vih5251q2T" role="1SiIV1">
            <ref role="1Busuk" node="C1f6iDkSr$" resolve="jetbrains.mps.lang.coderulesExt" />
          </node>
        </node>
        <node concept="1yeLz9" id="3vih5251q2U" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.typecheckingExt.generator" />
          <property role="3LESm3" value="c463897d-3fc1-4e56-ae02-db2fb2a6edd8" />
          <node concept="1BupzO" id="3vih5251q35" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3vih5251q36" role="1HemKq">
              <node concept="398BVA" id="3vih5251q2V" role="3LXTmr">
                <ref role="398BVh" node="46o4wsH3mv_" resolve="mps.macro.mpscore_home" />
                <node concept="2Ry0Ak" id="3vih5251q2W" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3vih5251q2X" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.typecheckingExt" />
                    <node concept="2Ry0Ak" id="3vih5251q2Y" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="3vih5251q2Z" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3vih5251q37" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3vih5253VCP" role="3bR37C">
          <node concept="1Busua" id="3vih5253VCQ" role="1SiIV1">
            <ref role="1Busuk" to="zqd8:NKt6ynvPIP" resolve="jetbrains.mps.lang.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="3vih5255d2n" role="3bR37C">
          <node concept="3bR9La" id="3vih5255d2o" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx6U" resolve="jetbrains.mps.lang.coderules" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1wNqPr" id="7lmP5gB1PvM" role="3989C9" />
  </node>
</model>

