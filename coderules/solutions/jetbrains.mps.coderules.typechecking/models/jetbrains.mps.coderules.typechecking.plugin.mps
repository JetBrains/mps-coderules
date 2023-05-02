<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7ff0776c-aea4-4df2-88a3-2efb6b568dc3(jetbrains.mps.coderules.typechecking.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="4it6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.loading(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="p5xd" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking.internal(MPS.Core/)" />
    <import index="ev0w" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking.backend(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="h83j" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem(MPS.Core/)" />
    <import index="7jhi" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.pattern(MPS.Core/)" />
    <import index="1ka" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking(MPS.Core/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="c6va" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.languageScope(MPS.Core/)" />
    <import index="u46i" ref="r:c2760840-3210-4ad4-9e64-a2dfd53620e1(jetbrains.mps.lang.typechecking.aspect)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="1yqb" ref="r:bd76f794-cfad-45dd-9c1c-e3203d1c5c7a(jetbrains.mps.coderules.service)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="31yc" ref="r:0c18ff61-1cb9-4ff0-a899-c949ad03f97c(jetbrains.mps.coderules.plugin)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="9z78" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.border(JDK/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="mpcv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.ref(JDK/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="4o98" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.core.platform(MPS.Core/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="jtsr" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.project(MPS.OpenAPI/)" />
    <import index="j936" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.ui(MPS.IDEA/)" />
    <import index="m7o5" ref="r:835f8ea3-a800-4588-a80b-1de6d47c2098(jetbrains.mps.coderules.ideaplugin)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="unkn" ref="f97d84b2-8bad-4fdd-8ede-da17b3eacf4c/java:io.reactivex(jetbrains.mps.coderules/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.coderules.eval)" />
    <import index="o35r" ref="r:76281d8a-46ce-405f-8cfc-287ee8597b54(jetbrains.mps.coderules.ui.plugin)" />
    <import index="f4yq" ref="f97d84b2-8bad-4fdd-8ede-da17b3eacf4c/java:hu.akarnokd.rxjava2.swing(jetbrains.mps.coderules/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="hhnx" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime(MPS.Editor/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="vmdq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.awt(MPS.IDEA/)" />
    <import index="gspm" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui.popup(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="ksgm" ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)" />
    <import index="psoy" ref="r:78313117-90ee-47a5-a91e-b5213df7f611(jetbrains.mps.coderules.runtime.result)" />
    <import index="57ty" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.messages(MPS.Platform/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="b2d5" ref="r:1a2b3027-99d2-4946-917b-f185130ac75d(jetbrains.mps.ide.findusages.findalgorithm.finders)" />
    <import index="9erk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model(MPS.Core/)" />
    <import index="z3o9" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model.holders(MPS.Core/)" />
    <import index="ngmm" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view(MPS.Platform/)" />
    <import index="ngmn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.view(MPS.Core/)" />
    <import index="mnlj" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.beans(JDK/)" />
    <import index="4b2m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.messages(MPS.IDEA/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="ctgy" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.plugins(MPS.IDEA/)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
        <property id="6785623076777470797" name="change" index="3hacHL" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <property id="8646726056720906098" name="isPluginXmlKeymap" index="Z2u3V" />
        <property id="1562714432501166281" name="keymap" index="Zd52Q" />
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ng" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
        <child id="481983775135178838" name="fieldDeclaration" index="2uRRBA" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
      <concept id="3418954410726344423" name="jetbrains.mps.lang.plugin.standalone.structure.PlatformAccessExpression" flags="ng" index="XUXob" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
      </concept>
      <concept id="1224500764161" name="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression" flags="nn" index="pVHWs" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="7024111702304501416" name="jetbrains.mps.baseLanguage.structure.OrAssignmentExpression" flags="nn" index="3vZ8r8" />
      <concept id="7024111702304501418" name="jetbrains.mps.baseLanguage.structure.AndAssignmentExpression" flags="nn" index="3vZ8ra" />
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1225892208569" name="jetbrains.mps.baseLanguage.structure.ShiftLeftExpression" flags="nn" index="1GRDU$" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="5332677359380589431" name="jetbrains.mps.lang.access.structure.ExecuteTransparentCommandStatement" flags="nn" index="2LD9aU" />
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
      <concept id="8974276187400348179" name="jetbrains.mps.lang.access.structure.ExecuteEDTCommandStatement" flags="nn" index="1QHqEQ" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7" />
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1226934395923" name="jetbrains.mps.baseLanguage.collections.structure.ClearSetOperation" flags="nn" index="2EZike" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="2zU3cYqx4HT" />
  <node concept="312cEu" id="7Tj_ODDR37X">
    <property role="TrG5h" value="CoderulesTypecheckingProvider" />
    <node concept="2tJIrI" id="3LFq2p98DGJ" role="jymVt" />
    <node concept="Wx3nA" id="1T5MAgPdbbl" role="jymVt">
      <property role="TrG5h" value="SHARED_STATE" />
      <node concept="3Tm6S6" id="1T5MAgPdbbn" role="1B3o_S" />
      <node concept="3uibUv" id="1T5MAgPdeow" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
        <node concept="1LlUBW" id="3VwM5b5TqDk" role="11_B2D">
          <node concept="3uibUv" id="3VwM5b5TtI1" role="1Lm7xW">
            <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
          </node>
          <node concept="3uibUv" id="3VwM5b5TuAH" role="1Lm7xW">
            <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="1T5MAgPdgzm" role="33vP2m">
        <node concept="1pGfFk" id="1T5MAgPdgmH" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~ThreadLocal.&lt;init&gt;()" resolve="ThreadLocal" />
          <node concept="1LlUBW" id="3VwM5b5Tvu1" role="1pMfVU">
            <node concept="3uibUv" id="3VwM5b5Tvu2" role="1Lm7xW">
              <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
            </node>
            <node concept="3uibUv" id="3VwM5b5Tvu3" role="1Lm7xW">
              <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1T5MAgPd7N1" role="jymVt" />
    <node concept="Wx3nA" id="$beNOFYbKT" role="jymVt">
      <property role="TrG5h" value="RECURSION_GUARD" />
      <node concept="3uibUv" id="$beNOFY2UL" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
        <node concept="3uibUv" id="$beNOFY76x" role="11_B2D">
          <ref role="3uigEE" node="$beNOFXcqs" resolve="CoderulesTypecheckingProvider.RecursionGuard" />
        </node>
      </node>
      <node concept="3Tm6S6" id="$beNOFXQmK" role="1B3o_S" />
      <node concept="2ShNRf" id="$beNOFYbj9" role="33vP2m">
        <node concept="1pGfFk" id="$beNOFYb4O" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~ThreadLocal.&lt;init&gt;()" resolve="ThreadLocal" />
          <node concept="3uibUv" id="$beNOFYb4P" role="1pMfVU">
            <ref role="3uigEE" node="$beNOFXcqs" resolve="CoderulesTypecheckingProvider.RecursionGuard" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="$beNOFXEZ0" role="jymVt" />
    <node concept="3clFbW" id="3LFq2p98DNK" role="jymVt">
      <node concept="3cqZAl" id="3LFq2p98DNM" role="3clF45" />
      <node concept="3Tm1VV" id="3LFq2p98DNN" role="1B3o_S" />
      <node concept="3clFbS" id="3LFq2p98DNO" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3KN3A4w99CG" role="jymVt" />
    <node concept="3clFb_" id="3KN3A4w9alp" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="3KN3A4w9alr" role="3clF45" />
      <node concept="3Tm1VV" id="3KN3A4w9als" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4w9alt" role="3clF47">
        <node concept="3clFbF" id="7e$2hwaZR5c" role="3cqZAp">
          <node concept="37vLTI" id="7e$2hwb0_FF" role="3clFbG">
            <node concept="3clFbT" id="7e$2hwb0Het" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="7e$2hwaZYqD" role="37vLTJ">
              <node concept="Xjq3P" id="7e$2hwaZR5a" role="2Oq$k0" />
              <node concept="2OwXpG" id="7e$2hwb0844" role="2OqNvi">
                <ref role="2Oxat5" node="7e$2hwaZkiV" resolve="disposed" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd7BALm" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd7BC73" role="3clFbG">
            <node concept="2OqwBi" id="1RYTbd7BBcp" role="2Oq$k0">
              <node concept="Xjq3P" id="1RYTbd7BALk" role="2Oq$k0" />
              <node concept="2OwXpG" id="1RYTbd7BBrS" role="2OqNvi">
                <ref role="2Oxat5" node="1RYTbd7AOyL" resolve="states" />
              </node>
            </node>
            <node concept="2es0OD" id="1RYTbd7BDgd" role="2OqNvi">
              <node concept="1bVj0M" id="1RYTbd7BDgf" role="23t8la">
                <node concept="3clFbS" id="1RYTbd7BDgg" role="1bW5cS">
                  <node concept="3clFbF" id="1RYTbd7BDAv" role="3cqZAp">
                    <node concept="2OqwBi" id="1RYTbd7BDPq" role="3clFbG">
                      <node concept="37vLTw" id="1RYTbd7BDAu" role="2Oq$k0">
                        <ref role="3cqZAo" node="1RYTbd7BDgh" resolve="it" />
                      </node>
                      <node concept="liA8E" id="1RYTbd7BE9H" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1RYTbd7BDgh" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1RYTbd7BDgi" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd7BEK9" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd7BG5b" role="3clFbG">
            <node concept="2OqwBi" id="1RYTbd7BFfm" role="2Oq$k0">
              <node concept="Xjq3P" id="1RYTbd7BEK7" role="2Oq$k0" />
              <node concept="2OwXpG" id="1RYTbd7BFvE" role="2OqNvi">
                <ref role="2Oxat5" node="1RYTbd7AOyL" resolve="states" />
              </node>
            </node>
            <node concept="2EZike" id="1RYTbd7BH2Z" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1PdMG9ntUzB" role="jymVt" />
    <node concept="3clFb_" id="1PdMG9nu6bb" role="jymVt">
      <property role="TrG5h" value="clearAllCashes" />
      <node concept="3cqZAl" id="1PdMG9nu6bd" role="3clF45" />
      <node concept="3Tm1VV" id="1PdMG9nu6be" role="1B3o_S" />
      <node concept="3clFbS" id="1PdMG9nu6bf" role="3clF47">
        <node concept="3clFbF" id="1PdMG9nuAfs" role="3cqZAp">
          <node concept="2OqwBi" id="1PdMG9nuWhi" role="3clFbG">
            <node concept="2OqwBi" id="1PdMG9nuH9d" role="2Oq$k0">
              <node concept="Xjq3P" id="1PdMG9nuAfr" role="2Oq$k0" />
              <node concept="2OwXpG" id="1PdMG9nuOtj" role="2OqNvi">
                <ref role="2Oxat5" node="1RYTbd7AOyL" resolve="states" />
              </node>
            </node>
            <node concept="2es0OD" id="1PdMG9nv4TG" role="2OqNvi">
              <node concept="1bVj0M" id="1PdMG9nv4TI" role="23t8la">
                <node concept="3clFbS" id="1PdMG9nv4TJ" role="1bW5cS">
                  <node concept="3clFbF" id="1PdMG9nvdbc" role="3cqZAp">
                    <node concept="2OqwBi" id="1PdMG9nvj$i" role="3clFbG">
                      <node concept="37vLTw" id="1PdMG9nvdbb" role="2Oq$k0">
                        <ref role="3cqZAo" node="1PdMG9nv4TK" resolve="it" />
                      </node>
                      <node concept="liA8E" id="1PdMG9nvqNo" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1PdMG9nv4TK" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1PdMG9nv4TL" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ceN1hCD$TM" role="jymVt" />
    <node concept="3clFb_" id="4ot3PHQY0cu" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="3Tm1VV" id="4ot3PHQY0cv" role="1B3o_S" />
      <node concept="2AHcQZ" id="4ot3PHQY0cx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="10P_77" id="4ot3PHQY0cN" role="3clF45" />
      <node concept="37vLTG" id="4ot3PHQY0cO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4ot3PHQY0cP" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4ot3PHQY0cQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4ot3PHQY0cR" role="3clF46">
        <property role="TrG5h" value="node1" />
        <node concept="3uibUv" id="4ot3PHQY0cS" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4ot3PHQY0cT" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="4ot3PHQY0cU" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="4ot3PHQY0cV" role="3clF47">
        <node concept="YS8fn" id="4ot3PHQYruF" role="3cqZAp">
          <node concept="2ShNRf" id="4ot3PHQYzrC" role="YScLw">
            <node concept="1pGfFk" id="4ot3PHQYXM1" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="4ot3PHQZ5iK" role="37wK5m">
                <property role="Xl_RC" value="FIXME" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4ot3PHQY0cW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ot3PHQYgre" role="jymVt" />
    <node concept="3clFb_" id="5BwsbZJDRzC" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="3Tm1VV" id="5BwsbZJDRzD" role="1B3o_S" />
      <node concept="10P_77" id="5BwsbZJDRzF" role="3clF45" />
      <node concept="37vLTG" id="5BwsbZJDRzG" role="3clF46">
        <property role="TrG5h" value="src" />
        <node concept="3uibUv" id="5BwsbZJDRzH" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5BwsbZJDRzI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5BwsbZJDRzJ" role="3clF46">
        <property role="TrG5h" value="trg" />
        <node concept="3uibUv" id="5BwsbZJDRzK" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5BwsbZJDRzL" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5BwsbZJDRzM" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="4ot3PHQXNql" role="3clF46">
        <property role="TrG5h" value="flags" />
        <node concept="3uibUv" id="4ot3PHQXXlH" role="1tU5fm">
          <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
        </node>
      </node>
      <node concept="3clFbS" id="5BwsbZJDRzN" role="3clF47">
        <node concept="3cpWs8" id="7e$2hwaN3C$" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaN3C_" role="3cpWs9">
            <property role="TrG5h" value="paramsMap" />
            <node concept="3uibUv" id="7e$2hwaN1WY" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="7e$2hwaN1X3" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="7e$2hwaNhcY" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="10QFUN" id="7e$2hwaNrsn" role="33vP2m">
              <node concept="2OqwBi" id="7e$2hwaNrsk" role="10QFUP">
                <node concept="37vLTw" id="7e$2hwaNrsl" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ot3PHQXNql" resolve="flags" />
                </node>
                <node concept="liA8E" id="7e$2hwaNrsm" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.getParamsMap()" resolve="getParamsMap" />
                </node>
              </node>
              <node concept="3uibUv" id="7e$2hwaNrsh" role="10QFUM">
                <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                <node concept="3uibUv" id="7e$2hwaNrsi" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="7e$2hwaNrsj" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7e$2hwaNT1I" role="3cqZAp">
          <node concept="3clFbS" id="7e$2hwaNT1K" role="3clFbx">
            <node concept="3clFbF" id="7e$2hwaOpql" role="3cqZAp">
              <node concept="37vLTI" id="7e$2hwaOzEu" role="3clFbG">
                <node concept="2YIFZM" id="7e$2hwaOR$y" role="37vLTx">
                  <ref role="37wK5l" to="33ny:~Collections.emptyMap()" resolve="emptyMap" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                </node>
                <node concept="37vLTw" id="7e$2hwaOpqj" role="37vLTJ">
                  <ref role="3cqZAo" node="7e$2hwaN3C_" resolve="paramsMap" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7e$2hwaO9yt" role="3clFbw">
            <node concept="10Nm6u" id="7e$2hwaOgtZ" role="3uHU7w" />
            <node concept="37vLTw" id="7e$2hwaO2dV" role="3uHU7B">
              <ref role="3cqZAo" node="7e$2hwaN3C_" resolve="paramsMap" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaNJvE" role="3cqZAp" />
        <node concept="3cpWs8" id="7e$2hwaRm5C" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaRm5D" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="7e$2hwaRjR3" role="1tU5fm">
              <ref role="3uigEE" to="tj24:7iCybvToiT5" resolve="Config" />
            </node>
            <node concept="2YIFZM" id="3zz62D5cwaU" role="33vP2m">
              <ref role="37wK5l" to="tj24:2MNGcFT4ZOn" resolve="getEffectiveConfig" />
              <ref role="1Pybhc" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaN_Tt" role="3cqZAp" />
        <node concept="3clFbJ" id="5DUvKnrxqKo" role="3cqZAp">
          <node concept="3clFbS" id="5DUvKnrxqKq" role="3clFbx">
            <node concept="3cpWs6" id="5DUvKnrxsuo" role="3cqZAp">
              <node concept="3clFbT" id="5DUvKnrxsEA" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="6gnqipLx4MG" role="3clFbw">
            <node concept="3clFbC" id="6gnqipLx8IZ" role="3uHU7B">
              <node concept="10Nm6u" id="6gnqipLx96_" role="3uHU7w" />
              <node concept="37vLTw" id="6gnqipLx8j0" role="3uHU7B">
                <ref role="3cqZAo" node="7e$2hwaRm5D" resolve="config" />
              </node>
            </node>
            <node concept="3fqX7Q" id="6AP7iI4IxSj" role="3uHU7w">
              <node concept="2YIFZM" id="MSLbfMDbnR" role="3fr31v">
                <ref role="37wK5l" to="tj24:MSLbfMDEUw" resolve="isEnabled" />
                <ref role="1Pybhc" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
                <node concept="37vLTw" id="MSLbfMDjFc" role="37wK5m">
                  <ref role="3cqZAo" node="7e$2hwaRm5D" resolve="config" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwbn9q3" role="3cqZAp" />
        <node concept="3SKdUt" id="7e$2hwbn9q4" role="3cqZAp">
          <node concept="1PaTwC" id="7e$2hwbn9q5" role="1aUNEU">
            <node concept="3oM_SD" id="7e$2hwbn9q6" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7e$2hwbn9q7" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="7e$2hwbn9q8" role="1PaTwD">
              <property role="3oM_SC" value="workaround" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7e$2hwbn9q9" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwbn9qa" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="7e$2hwbn9qb" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="10QFUN" id="7e$2hwbn9qc" role="33vP2m">
              <node concept="2OqwBi" id="7e$2hwbn9qd" role="10QFUP">
                <node concept="37vLTw" id="7e$2hwbn9qe" role="2Oq$k0">
                  <ref role="3cqZAo" node="7e$2hwaN3C_" resolve="paramsMap" />
                </node>
                <node concept="liA8E" id="7e$2hwbn9qf" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                  <node concept="Xl_RD" id="7e$2hwbn9qg" role="37wK5m">
                    <property role="Xl_RC" value="__REPOSITORY__" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7e$2hwbn9qh" role="10QFUM">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="61G6TdBKNlF" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4uZFCY" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uZFCZ" role="3cpWs9">
            <property role="TrG5h" value="discoverable" />
            <node concept="3uibUv" id="3KN3A4uZFjJ" role="1tU5fm">
              <ref role="3uigEE" to="fqlx:NKt6ynom3d" resolve="AspectDiscoverable" />
              <node concept="3uibUv" id="6nx4rRkXlnq" role="11_B2D">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
              <node concept="3uibUv" id="3KN3A4uZFjM" role="11_B2D">
                <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              </node>
            </node>
            <node concept="2YIFZM" id="3KN3A4uZFD0" role="33vP2m">
              <ref role="37wK5l" to="fqlx:78H58oefoaA" resolve="discoverable" />
              <ref role="1Pybhc" to="fqlx:NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
              <node concept="3VsKOn" id="3KN3A4uZFD1" role="37wK5m">
                <ref role="3VsUkX" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ceN1hCDrNK" role="3cqZAp" />
        <node concept="3clFbF" id="IFW4V30XBv" role="3cqZAp">
          <node concept="2OqwBi" id="IFW4V31Fzl" role="3clFbG">
            <node concept="2YIFZM" id="IFW4V318L6" role="2Oq$k0">
              <ref role="37wK5l" to="fqlx:78H58oefSjC" resolve="lookup" />
              <ref role="1Pybhc" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
              <node concept="37vLTw" id="IFW4V31qd3" role="37wK5m">
                <ref role="3cqZAo" node="7e$2hwbn9qa" resolve="repository" />
              </node>
              <node concept="37vLTw" id="IFW4V31yGN" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
              </node>
            </node>
            <node concept="liA8E" id="IFW4V31ObN" role="2OqNvi">
              <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
              <node concept="37vLTw" id="9UUIHLO7_y" role="37wK5m">
                <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IFW4V30LEZ" role="3cqZAp" />
        <node concept="3cpWs8" id="2ceN1hCDCZX" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCDCZY" role="3cpWs9">
            <property role="TrG5h" value="srcCliques" />
            <node concept="3vKaQO" id="IFW4V339UR" role="1tU5fm">
              <node concept="3uibUv" id="IFW4V339UT" role="3O5elw">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="IFW4V339UU" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="IFW4V331HO" role="33vP2m">
              <node concept="2YIFZM" id="IFW4V331HP" role="2Oq$k0">
                <ref role="37wK5l" to="fqlx:78H58oefSjC" resolve="lookup" />
                <ref role="1Pybhc" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
                <node concept="37vLTw" id="IFW4V331HQ" role="37wK5m">
                  <ref role="3cqZAo" node="7e$2hwbn9qa" resolve="repository" />
                </node>
                <node concept="37vLTw" id="IFW4V331HR" role="37wK5m">
                  <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
                </node>
              </node>
              <node concept="liA8E" id="IFW4V331HS" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
                <node concept="37vLTw" id="9UUIHLOvZQ" role="37wK5m">
                  <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IFW4V33FXK" role="3cqZAp" />
        <node concept="3cpWs8" id="IFW4V33x8N" role="3cqZAp">
          <node concept="3cpWsn" id="IFW4V33x8O" role="3cpWs9">
            <property role="TrG5h" value="trgCliques" />
            <node concept="3vKaQO" id="IFW4V33x8P" role="1tU5fm">
              <node concept="3uibUv" id="IFW4V33x8Q" role="3O5elw">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="IFW4V33x8R" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="IFW4V38zU$" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="IFW4V38LSo" role="3cqZAp">
          <node concept="3clFbS" id="IFW4V38LSq" role="3clFbx">
            <node concept="3clFbF" id="IFW4V39a9q" role="3cqZAp">
              <node concept="37vLTI" id="IFW4V39a9r" role="3clFbG">
                <node concept="2OqwBi" id="IFW4V39a9s" role="37vLTx">
                  <node concept="2YIFZM" id="IFW4V39a9t" role="2Oq$k0">
                    <ref role="37wK5l" to="fqlx:78H58oefSjC" resolve="lookup" />
                    <ref role="1Pybhc" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
                    <node concept="37vLTw" id="IFW4V39a9u" role="37wK5m">
                      <ref role="3cqZAo" node="7e$2hwbn9qa" resolve="repository" />
                    </node>
                    <node concept="37vLTw" id="IFW4V39a9v" role="37wK5m">
                      <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
                    </node>
                  </node>
                  <node concept="liA8E" id="IFW4V39a9w" role="2OqNvi">
                    <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
                    <node concept="37vLTw" id="9UUIHLOR8O" role="37wK5m">
                      <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="IFW4V39a9J" role="37vLTJ">
                  <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="IFW4V3aZGE" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="IFW4V38X6s" role="3clFbw">
            <node concept="10Nm6u" id="IFW4V393dl" role="3uHU7w" />
            <node concept="37vLTw" id="IFW4V38QWp" role="3uHU7B">
              <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
            </node>
          </node>
          <node concept="3eNFk2" id="IFW4V39IDM" role="3eNLev">
            <node concept="1Wc70l" id="IFW4V3ab7r" role="3eO9$A">
              <node concept="3y3z36" id="IFW4V3aMbq" role="3uHU7w">
                <node concept="10Nm6u" id="IFW4V3aSgi" role="3uHU7w" />
                <node concept="2OqwBi" id="IFW4V3anLj" role="3uHU7B">
                  <node concept="37vLTw" id="IFW4V3ahMd" role="2Oq$k0">
                    <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
                  </node>
                  <node concept="liA8E" id="IFW4V3ava3" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="IFW4V39VqT" role="3uHU7B">
                <node concept="37vLTw" id="IFW4V39OCl" role="3uHU7B">
                  <ref role="3cqZAo" node="5BwsbZJDRzL" resolve="concept" />
                </node>
                <node concept="10Nm6u" id="IFW4V3a1TI" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbS" id="IFW4V39IDO" role="3eOfB_">
              <node concept="3clFbF" id="IFW4V38lQg" role="3cqZAp">
                <node concept="37vLTI" id="IFW4V38lQi" role="3clFbG">
                  <node concept="2OqwBi" id="IFW4V33x8S" role="37vLTx">
                    <node concept="2YIFZM" id="IFW4V33x8T" role="2Oq$k0">
                      <ref role="37wK5l" to="fqlx:78H58oefSjC" resolve="lookup" />
                      <ref role="1Pybhc" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
                      <node concept="37vLTw" id="IFW4V33x8U" role="37wK5m">
                        <ref role="3cqZAo" node="7e$2hwbn9qa" resolve="repository" />
                      </node>
                      <node concept="37vLTw" id="IFW4V33x8V" role="37wK5m">
                        <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
                      </node>
                    </node>
                    <node concept="liA8E" id="IFW4V33x8W" role="2OqNvi">
                      <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
                      <node concept="2OqwBi" id="IFW4V34L$g" role="37wK5m">
                        <node concept="1eOMI4" id="IFW4V35i5m" role="2Oq$k0">
                          <node concept="10QFUN" id="IFW4V35i5l" role="1eOMHV">
                            <node concept="37vLTw" id="IFW4V35i5k" role="10QFUP">
                              <ref role="3cqZAo" node="5BwsbZJDRzL" resolve="concept" />
                            </node>
                            <node concept="3bZ5Sz" id="IFW4V35rI2" role="10QFUM" />
                          </node>
                        </node>
                        <node concept="LFhST" id="IFW4V35zaD" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="IFW4V38lQm" role="37vLTJ">
                    <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IFW4V36N5l" role="3cqZAp" />
        <node concept="3SKdUt" id="4ekZiHe5KcZ" role="3cqZAp">
          <node concept="1PaTwC" id="4ekZiHe5Kd0" role="1aUNEU">
            <node concept="3oM_SD" id="4ekZiHe5Kd2" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MDv" role="1PaTwD">
              <property role="3oM_SC" value="clique" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5ME2" role="1PaTwD">
              <property role="3oM_SC" value="lists" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MEe" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MEz" role="1PaTwD">
              <property role="3oM_SC" value="contain" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MGU" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MEL" role="1PaTwD">
              <property role="3oM_SC" value="non-empty" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MF0" role="1PaTwD">
              <property role="3oM_SC" value="cliques" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MFo" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MFx" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MHf" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MHz" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MHS" role="1PaTwD">
              <property role="3oM_SC" value="relevant" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51ek2rRUyTX" role="3cqZAp">
          <node concept="3cpWsn" id="51ek2rRUyU0" role="3cpWs9">
            <property role="TrG5h" value="applicable" />
            <node concept="10P_77" id="51ek2rRUyTV" role="1tU5fm" />
            <node concept="3fqX7Q" id="51ek2rRUDCe" role="33vP2m">
              <node concept="2OqwBi" id="51ek2rRUDCg" role="3fr31v">
                <node concept="37vLTw" id="51ek2rRUDCh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ceN1hCDCZY" resolve="srcCliques" />
                </node>
                <node concept="2HxqBE" id="51ek2rRUDCi" role="2OqNvi">
                  <node concept="1bVj0M" id="51ek2rRUDCj" role="23t8la">
                    <node concept="3clFbS" id="51ek2rRUDCk" role="1bW5cS">
                      <node concept="3clFbF" id="51ek2rRUDCl" role="3cqZAp">
                        <node concept="2OqwBi" id="51ek2rRUDCm" role="3clFbG">
                          <node concept="37vLTw" id="51ek2rRUDCn" role="2Oq$k0">
                            <ref role="3cqZAo" node="51ek2rRUDCp" resolve="it" />
                          </node>
                          <node concept="liA8E" id="51ek2rRUDCo" role="2OqNvi">
                            <ref role="37wK5l" to="fqlx:4ekZiHe4j$O" resolve="isEmpty" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="51ek2rRUDCp" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="51ek2rRUDCq" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="51ek2rR1D66" role="3cqZAp">
          <node concept="3clFbS" id="51ek2rR1D68" role="3clFbx">
            <node concept="3clFbF" id="51ek2rRUMsz" role="3cqZAp">
              <node concept="3vZ8ra" id="51ek2rRUQ9v" role="3clFbG">
                <node concept="37vLTw" id="51ek2rRUMsx" role="37vLTJ">
                  <ref role="3cqZAo" node="51ek2rRUyU0" resolve="applicable" />
                </node>
                <node concept="3fqX7Q" id="51ek2rRUQuj" role="37vLTx">
                  <node concept="2OqwBi" id="51ek2rRUQul" role="3fr31v">
                    <node concept="37vLTw" id="IFW4V36ECt" role="2Oq$k0">
                      <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
                    </node>
                    <node concept="2HxqBE" id="51ek2rRUQun" role="2OqNvi">
                      <node concept="1bVj0M" id="51ek2rRUQuo" role="23t8la">
                        <node concept="3clFbS" id="51ek2rRUQup" role="1bW5cS">
                          <node concept="3clFbF" id="51ek2rRUQuq" role="3cqZAp">
                            <node concept="2OqwBi" id="51ek2rRUQur" role="3clFbG">
                              <node concept="37vLTw" id="51ek2rRUQus" role="2Oq$k0">
                                <ref role="3cqZAo" node="51ek2rRUQuu" resolve="it" />
                              </node>
                              <node concept="liA8E" id="51ek2rRUQut" role="2OqNvi">
                                <ref role="37wK5l" to="fqlx:4ekZiHe4j$O" resolve="isEmpty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="51ek2rRUQuu" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="51ek2rRUQuv" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="51ek2rR1Wfg" role="3clFbw">
            <node concept="3y3z36" id="51ek2rR1URh" role="3uHU7B">
              <node concept="37vLTw" id="IFW4V36rLa" role="3uHU7B">
                <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
              </node>
              <node concept="10Nm6u" id="51ek2rR1W5t" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="51ek2rR1XIt" role="3uHU7w">
              <node concept="37vLTw" id="IFW4V36z5N" role="2Oq$k0">
                <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
              </node>
              <node concept="2HxqBE" id="51ek2rR52s1" role="2OqNvi">
                <node concept="1bVj0M" id="51ek2rR52s3" role="23t8la">
                  <node concept="3clFbS" id="51ek2rR52s4" role="1bW5cS">
                    <node concept="3clFbF" id="51ek2rR52s5" role="3cqZAp">
                      <node concept="2OqwBi" id="51ek2rR52s6" role="3clFbG">
                        <node concept="37vLTw" id="51ek2rR52s7" role="2Oq$k0">
                          <ref role="3cqZAo" node="51ek2rR52s9" resolve="it" />
                        </node>
                        <node concept="liA8E" id="51ek2rR52s8" role="2OqNvi">
                          <ref role="37wK5l" to="fqlx:4ekZiHe4j$O" resolve="isEmpty" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="51ek2rR52s9" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="51ek2rR52sa" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51ek2rRV5zt" role="3cqZAp" />
        <node concept="3clFbF" id="51ek2rRV1wf" role="3cqZAp">
          <node concept="37vLTw" id="51ek2rRV1wc" role="3clFbG">
            <ref role="3cqZAo" node="51ek2rRUyU0" resolve="applicable" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5BwsbZJDRzO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="14IknWHovsQ" role="jymVt" />
    <node concept="3clFb_" id="lvX$8VFrS8" role="jymVt">
      <property role="TrG5h" value="createQueries" />
      <node concept="3Tm1VV" id="lvX$8VFrS9" role="1B3o_S" />
      <node concept="2AHcQZ" id="lvX$8VFrSb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6u4W$ZKoWmI" role="3clF45">
        <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
      </node>
      <node concept="37vLTG" id="lvX$8VFrSd" role="3clF46">
        <property role="TrG5h" value="flags" />
        <node concept="2AHcQZ" id="lvX$8VFrSf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="2mhJggj0Hz7" role="1tU5fm">
          <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
        </node>
      </node>
      <node concept="3clFbS" id="lvX$8VFrSg" role="3clF47">
        <node concept="3cpWs8" id="7e$2hwaS6F4" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaS6F5" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="7e$2hwaS6F6" role="1tU5fm">
              <ref role="3uigEE" to="tj24:7iCybvToiT5" resolve="Config" />
            </node>
            <node concept="2YIFZM" id="3zz62D5cwaV" role="33vP2m">
              <ref role="37wK5l" to="tj24:2MNGcFT4ZOn" resolve="getEffectiveConfig" />
              <ref role="1Pybhc" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaXYjk" role="3cqZAp" />
        <node concept="3SKdUt" id="7e$2hwaXYqZ" role="3cqZAp">
          <node concept="1PaTwC" id="7e$2hwaXYr0" role="1aUNEU">
            <node concept="3oM_SD" id="7e$2hwaXYr1" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYr2" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYr3" role="1PaTwD">
              <property role="3oM_SC" value="workaround," />
            </node>
            <node concept="3oM_SD" id="1bwQX1ETf92" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="1bwQX1ETfab" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1bwQX1ETfaF" role="1PaTwD">
              <property role="3oM_SC" value="repo" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7e$2hwaUBIb" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaUBIc" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="7e$2hwaU_pg" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2YIFZM" id="67v_dotMhEv" role="33vP2m">
              <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="17DrR$SXQqe" role="3cqZAp" />
        <node concept="3SKdUt" id="7e$2hwaXOuX" role="3cqZAp">
          <node concept="1PaTwC" id="7e$2hwaXOuY" role="1aUNEU">
            <node concept="3oM_SD" id="1bwQX1ETf4Y" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYi8" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYie" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYil" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYit" role="1PaTwD">
              <property role="3oM_SC" value="necessary" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYiA" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYiK" role="1PaTwD">
              <property role="3oM_SC" value="provide" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYiV" role="1PaTwD">
              <property role="3oM_SC" value="tracing" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYj7" role="1PaTwD">
              <property role="3oM_SC" value="reports" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7e$2hwaXjQ3" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaXjQ4" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="7e$2hwaXi4V" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="10Nm6u" id="1bwQX1ESWAc" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaVz9S" role="3cqZAp" />
        <node concept="3cpWs8" id="3VwM5b5TB$W" role="3cqZAp">
          <node concept="3cpWsn" id="3VwM5b5TB$X" role="3cpWs9">
            <property role="TrG5h" value="sharedStateFlags" />
            <node concept="3uibUv" id="3VwM5b5TB$Y" role="1tU5fm">
              <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
            </node>
            <node concept="10Nm6u" id="3VwM5b5TEZa" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="5cBWTAejqot" role="3cqZAp">
          <node concept="3cpWsn" id="5cBWTAejqou" role="3cpWs9">
            <property role="TrG5h" value="effectiveState" />
            <node concept="3uibUv" id="5cBWTAejqmm" role="1tU5fm">
              <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
            </node>
            <node concept="10Nm6u" id="17DrR$SXV9V" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="17DrR$SXIsg" role="3cqZAp">
          <node concept="3cpWsn" id="17DrR$SXIsj" role="3cpWs9">
            <property role="TrG5h" value="editorSession" />
            <node concept="10P_77" id="17DrR$SXIse" role="1tU5fm" />
            <node concept="1Wc70l" id="17DrR$SXJ3_" role="33vP2m">
              <node concept="3y3z36" id="17DrR$SXJ3A" role="3uHU7B">
                <node concept="10Nm6u" id="17DrR$SXJ3B" role="3uHU7w" />
                <node concept="2OqwBi" id="17DrR$SXJ3C" role="3uHU7B">
                  <node concept="37vLTw" id="17DrR$SXJ3D" role="2Oq$k0">
                    <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                  </node>
                  <node concept="liA8E" id="17DrR$SXJ3E" role="2OqNvi">
                    <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.getRoot()" resolve="getRoot" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="17DrR$SXJ3F" role="3uHU7w">
                <node concept="37vLTw" id="17DrR$SXJ3G" role="2Oq$k0">
                  <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                </node>
                <node concept="liA8E" id="17DrR$SXJ3H" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.isIncremental()" resolve="isIncremental" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1T5MAgPlrgR" role="3cqZAp">
          <node concept="3cpWsn" id="1T5MAgPlrgS" role="3cpWs9">
            <property role="TrG5h" value="usingSharedState" />
            <node concept="10P_77" id="1T5MAgPlcJ5" role="1tU5fm" />
            <node concept="3clFbT" id="1T5MAgPlu7e" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="5XNK1Yzpq3G" role="3cqZAp">
          <node concept="3cpWsn" id="5XNK1Yzpq3H" role="3cpWs9">
            <property role="TrG5h" value="createSharedState" />
            <node concept="10P_77" id="5XNK1Yzo0Jp" role="1tU5fm" />
            <node concept="22lmx$" id="17DrR$RvO9H" role="33vP2m">
              <node concept="2OqwBi" id="3VwM5b5SZPY" role="3uHU7B">
                <node concept="37vLTw" id="3VwM5b5SZPZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                </node>
                <node concept="liA8E" id="3VwM5b5SZQ0" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.isGenerator()" resolve="isGenerator" />
                </node>
              </node>
              <node concept="1eOMI4" id="17DrR$RvONZ" role="3uHU7w">
                <node concept="1Wc70l" id="17DrR$RvPNv" role="1eOMHV">
                  <node concept="3clFbC" id="17DrR$RvSXX" role="3uHU7w">
                    <node concept="10Nm6u" id="17DrR$RvTGI" role="3uHU7w" />
                    <node concept="2OqwBi" id="17DrR$RvS1h" role="3uHU7B">
                      <node concept="37vLTw" id="17DrR$RvQud" role="2Oq$k0">
                        <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                      </node>
                      <node concept="liA8E" id="17DrR$RvSvA" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="17DrR$RvPoo" role="3uHU7B">
                    <node concept="37vLTw" id="17DrR$RvP3x" role="2Oq$k0">
                      <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                    </node>
                    <node concept="liA8E" id="17DrR$RvPH2" role="2OqNvi">
                      <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.isBasic()" resolve="isBasic" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1T5MAgPdhk4" role="3cqZAp">
          <node concept="3clFbS" id="1T5MAgPdhk6" role="3clFbx">
            <node concept="3clFbJ" id="1T5MAgPdkBj" role="3cqZAp">
              <node concept="3clFbS" id="1T5MAgPdkB_" role="3clFbx">
                <node concept="3cpWs8" id="1RYTbd7GbKf" role="3cqZAp">
                  <node concept="3cpWsn" id="1RYTbd7GbKg" role="3cpWs9">
                    <property role="TrG5h" value="sharedState" />
                    <node concept="3uibUv" id="1RYTbd7FZ9H" role="1tU5fm">
                      <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
                    </node>
                    <node concept="1LFfDK" id="1RYTbd7GbKh" role="33vP2m">
                      <node concept="3cmrfG" id="1RYTbd7GbKi" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2OqwBi" id="1RYTbd7GbKj" role="1LFl5Q">
                        <node concept="37vLTw" id="1RYTbd7GbKk" role="2Oq$k0">
                          <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                        </node>
                        <node concept="liA8E" id="1RYTbd7GbKl" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1T5MAgPdl2l" role="3cqZAp">
                  <node concept="2OqwBi" id="1T5MAgPdlfX" role="3clFbG">
                    <node concept="37vLTw" id="1RYTbd7GbKm" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RYTbd7GbKg" resolve="sharedState" />
                    </node>
                    <node concept="liA8E" id="1T5MAgPdlpj" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1RYTbd7GdTR" role="3cqZAp">
                  <node concept="2OqwBi" id="1RYTbd7GeMX" role="3clFbG">
                    <node concept="37vLTw" id="1RYTbd7GdTP" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RYTbd7AOyL" resolve="states" />
                    </node>
                    <node concept="3dhRuq" id="1RYTbd7GfM$" role="2OqNvi">
                      <node concept="37vLTw" id="1RYTbd7GhgR" role="25WWJ7">
                        <ref role="3cqZAo" node="1RYTbd7GbKg" resolve="sharedState" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1T5MAgPdklu" role="3clFbw">
                <node concept="10Nm6u" id="1T5MAgPdkyz" role="3uHU7w" />
                <node concept="2OqwBi" id="1T5MAgPdQqg" role="3uHU7B">
                  <node concept="37vLTw" id="1T5MAgPdQqh" role="2Oq$k0">
                    <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                  </node>
                  <node concept="liA8E" id="1T5MAgPdQqi" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="17DrR$Rv$rl" role="3cqZAp">
              <node concept="37vLTI" id="17DrR$Rv$Rs" role="3clFbG">
                <node concept="37vLTw" id="17DrR$Rv_6Q" role="37vLTx">
                  <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                </node>
                <node concept="37vLTw" id="17DrR$Rv$rj" role="37vLTJ">
                  <ref role="3cqZAo" node="3VwM5b5TB$X" resolve="sharedStateFlags" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3VwM5b5TzE3" role="3cqZAp">
              <node concept="37vLTI" id="3VwM5b5T$81" role="3clFbG">
                <node concept="37vLTw" id="3VwM5b5TzE1" role="37vLTJ">
                  <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
                </node>
                <node concept="1rXfSq" id="1RYTbd7BH65" role="37vLTx">
                  <ref role="37wK5l" node="1RYTbd7BH60" resolve="createState" />
                  <node concept="37vLTw" id="1C_jAsqmsx2" role="37wK5m">
                    <ref role="3cqZAo" node="7e$2hwaUBIc" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1T5MAgPdlQl" role="3cqZAp">
              <node concept="2OqwBi" id="1T5MAgPdmkl" role="3clFbG">
                <node concept="37vLTw" id="1T5MAgPdlQj" role="2Oq$k0">
                  <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                </node>
                <node concept="liA8E" id="1T5MAgPdmwq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
                  <node concept="1Ls8ON" id="3VwM5b5TxAI" role="37wK5m">
                    <node concept="37vLTw" id="3VwM5b5Tye4" role="1Lso8e">
                      <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                    </node>
                    <node concept="37vLTw" id="3VwM5b5T$MY" role="1Lso8e">
                      <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1T5MAgPdUdH" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="5XNK1Yzpq3L" role="3clFbw">
            <ref role="3cqZAo" node="5XNK1Yzpq3H" resolve="createSharedState" />
          </node>
          <node concept="3eNFk2" id="17DrR$SXLKb" role="3eNLev">
            <node concept="3fqX7Q" id="17DrR$SXPPs" role="3eO9$A">
              <node concept="37vLTw" id="17DrR$SXQnY" role="3fr31v">
                <ref role="3cqZAo" node="17DrR$SXIsj" resolve="editorSession" />
              </node>
            </node>
            <node concept="3clFbS" id="17DrR$SXLKd" role="3eOfB_">
              <node concept="3clFbJ" id="1T5MAgPeeWU" role="3cqZAp">
                <node concept="3clFbS" id="1T5MAgPeeWV" role="3clFbx">
                  <node concept="3clFbF" id="3VwM5b5TD1Q" role="3cqZAp">
                    <node concept="37vLTI" id="3VwM5b5TD1R" role="3clFbG">
                      <node concept="37vLTw" id="3VwM5b5TDGg" role="37vLTJ">
                        <ref role="3cqZAo" node="3VwM5b5TB$X" resolve="sharedStateFlags" />
                      </node>
                      <node concept="1LFfDK" id="3VwM5b5TD1T" role="37vLTx">
                        <node concept="3cmrfG" id="3VwM5b5TD1U" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="2OqwBi" id="3VwM5b5TD1V" role="1LFl5Q">
                          <node concept="37vLTw" id="17DrR$SXOvq" role="2Oq$k0">
                            <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                          </node>
                          <node concept="liA8E" id="3VwM5b5TD1X" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1T5MAgPefUu" role="3cqZAp">
                    <node concept="37vLTI" id="1T5MAgPefUv" role="3clFbG">
                      <node concept="37vLTw" id="1T5MAgPefUw" role="37vLTJ">
                        <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
                      </node>
                      <node concept="1LFfDK" id="3VwM5b5T_we" role="37vLTx">
                        <node concept="3cmrfG" id="3VwM5b5T_HK" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="1T5MAgPefUx" role="1LFl5Q">
                          <node concept="37vLTw" id="17DrR$SXOv$" role="2Oq$k0">
                            <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                          </node>
                          <node concept="liA8E" id="1T5MAgPefUy" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1T5MAgPluBw" role="3cqZAp">
                    <node concept="37vLTI" id="1T5MAgPlv0M" role="3clFbG">
                      <node concept="3clFbT" id="1T5MAgPlv9V" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="1T5MAgPluBu" role="37vLTJ">
                        <ref role="3cqZAo" node="1T5MAgPlrgS" resolve="usingSharedState" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="1T5MAgPeeX1" role="3clFbw">
                  <node concept="10Nm6u" id="1T5MAgPeeX2" role="3uHU7w" />
                  <node concept="2OqwBi" id="1T5MAgPeeX3" role="3uHU7B">
                    <node concept="37vLTw" id="17DrR$SXOvI" role="2Oq$k0">
                      <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                    </node>
                    <node concept="liA8E" id="1T5MAgPeeX4" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="17DrR$SXR2A" role="3cqZAp" />
        <node concept="3clFbJ" id="17DrR$SXSiU" role="3cqZAp">
          <node concept="3clFbS" id="17DrR$SXSiW" role="3clFbx">
            <node concept="3clFbF" id="17DrR$SXU$U" role="3cqZAp">
              <node concept="37vLTI" id="17DrR$SXU$V" role="3clFbG">
                <node concept="1rXfSq" id="1RYTbd7BLkE" role="37vLTx">
                  <ref role="37wK5l" node="1RYTbd7BH60" resolve="createState" />
                  <node concept="37vLTw" id="1C_jAsqmI2y" role="37wK5m">
                    <ref role="3cqZAo" node="7e$2hwaUBIc" resolve="repository" />
                  </node>
                </node>
                <node concept="37vLTw" id="17DrR$SXU_0" role="37vLTJ">
                  <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="17DrR$SXTY$" role="3clFbw">
            <node concept="10Nm6u" id="17DrR$SXU$o" role="3uHU7w" />
            <node concept="37vLTw" id="17DrR$SXTjX" role="3uHU7B">
              <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaX$wQ" role="3cqZAp" />
        <node concept="3cpWs8" id="5cBWTAeigJk" role="3cqZAp">
          <node concept="3cpWsn" id="5cBWTAeigJl" role="3cpWs9">
            <property role="TrG5h" value="service" />
            <node concept="3uibUv" id="5cBWTAeifG1" role="1tU5fm">
              <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
            </node>
            <node concept="2YIFZM" id="5cBWTAeigJm" role="33vP2m">
              <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
              <ref role="37wK5l" to="tj24:5cBWTAeiUJ$" resolve="create" />
              <node concept="37vLTw" id="5cBWTAejrkq" role="37wK5m">
                <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
              </node>
              <node concept="37vLTw" id="7e$2hwaVOOK" role="37wK5m">
                <ref role="3cqZAo" node="7e$2hwaUBIc" resolve="repository" />
              </node>
              <node concept="37vLTw" id="5cBWTAeigJq" role="37wK5m">
                <ref role="3cqZAo" node="7e$2hwaS6F5" resolve="config" />
              </node>
              <node concept="2YIFZM" id="5cBWTAeigJr" role="37wK5m">
                <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                <node concept="37vLTw" id="7e$2hwaXjQd" role="37wK5m">
                  <ref role="3cqZAo" node="7e$2hwaXjQ4" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5cBWTAeiiqd" role="3cqZAp" />
        <node concept="3cpWs8" id="5XNK1Yzr26a" role="3cqZAp">
          <node concept="3cpWsn" id="5XNK1Yzr26d" role="3cpWs9">
            <property role="TrG5h" value="bits" />
            <node concept="10Oyi0" id="5XNK1Yzr268" role="1tU5fm" />
            <node concept="3cmrfG" id="5XNK1Yzr2vv" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3VwM5b5TFLr" role="3cqZAp">
          <node concept="3clFbS" id="3VwM5b5TFLt" role="3clFbx">
            <node concept="3clFbF" id="5XNK1Yzr50h" role="3cqZAp">
              <node concept="3vZ8r8" id="5XNK1Yzr5PA" role="3clFbG">
                <node concept="10M0yZ" id="5XNK1Yzr6OG" role="37vLTx">
                  <ref role="3cqZAo" node="5XNK1YzpJ9_" resolve="LOCAL_TYPES" />
                  <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                </node>
                <node concept="37vLTw" id="5XNK1Yzr50f" role="37vLTJ">
                  <ref role="3cqZAo" node="5XNK1Yzr26d" resolve="bits" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3VwM5b5TIez" role="3clFbw">
            <node concept="3y3z36" id="3VwM5b5THpq" role="3uHU7B">
              <node concept="37vLTw" id="3VwM5b5TGB2" role="3uHU7B">
                <ref role="3cqZAo" node="3VwM5b5TB$X" resolve="sharedStateFlags" />
              </node>
              <node concept="10Nm6u" id="3VwM5b5TI0E" role="3uHU7w" />
            </node>
            <node concept="1eOMI4" id="3VwM5b5TJ13" role="3uHU7w">
              <node concept="3clFbC" id="4XsNDZXGdLV" role="1eOMHV">
                <node concept="10Nm6u" id="4XsNDZXGeC2" role="3uHU7w" />
                <node concept="2OqwBi" id="3VwM5b5TIHd" role="3uHU7B">
                  <node concept="37vLTw" id="3VwM5b5TJYt" role="2Oq$k0">
                    <ref role="3cqZAo" node="3VwM5b5TB$X" resolve="sharedStateFlags" />
                  </node>
                  <node concept="liA8E" id="4XsNDZXGdwN" role="2OqNvi">
                    <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.getRoot()" resolve="getRoot" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5XNK1Yzr89Y" role="3cqZAp">
          <node concept="3clFbS" id="5XNK1Yzr8a0" role="3clFbx">
            <node concept="3clFbF" id="5XNK1Yzr8TY" role="3cqZAp">
              <node concept="3vZ8r8" id="5XNK1Yzr8TZ" role="3clFbG">
                <node concept="10M0yZ" id="5XNK1Yzra8a" role="37vLTx">
                  <ref role="3cqZAo" node="5XNK1YzpOxx" resolve="USING_SHARED_STATE" />
                  <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                </node>
                <node concept="37vLTw" id="5XNK1Yzr8U1" role="37vLTJ">
                  <ref role="3cqZAo" node="5XNK1Yzr26d" resolve="bits" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5XNK1Yzr8Hk" role="3clFbw">
            <ref role="3cqZAo" node="1T5MAgPlrgS" resolve="usingSharedState" />
          </node>
        </node>
        <node concept="3clFbJ" id="5XNK1Yzrd72" role="3cqZAp">
          <node concept="3clFbS" id="5XNK1Yzrd74" role="3clFbx">
            <node concept="3clFbF" id="5XNK1Yzre20" role="3cqZAp">
              <node concept="3vZ8r8" id="5XNK1YzreI_" role="3clFbG">
                <node concept="10M0yZ" id="5XNK1YzrfJf" role="37vLTx">
                  <ref role="3cqZAo" node="5XNK1Yzq1sR" resolve="CLEAR_SHARED_STATE" />
                  <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                </node>
                <node concept="37vLTw" id="5XNK1Yzre1Y" role="37vLTJ">
                  <ref role="3cqZAo" node="5XNK1Yzr26d" resolve="bits" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="17DrR$SXWfT" role="3clFbw">
            <node concept="37vLTw" id="17DrR$SXX7h" role="3uHU7w">
              <ref role="3cqZAo" node="17DrR$SXIsj" resolve="editorSession" />
            </node>
            <node concept="37vLTw" id="17DrR$RsGOO" role="3uHU7B">
              <ref role="3cqZAo" node="5XNK1Yzpq3H" resolve="createSharedState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1oUwjADnDmX" role="3cqZAp">
          <node concept="2ShNRf" id="1oUwjADnDmV" role="3clFbG">
            <node concept="1pGfFk" id="4MaHsBDeKk6" role="2ShVmc">
              <ref role="37wK5l" node="4duYm8_rntF" resolve="CoderulesTypecheckingProvider.Queries" />
              <node concept="37vLTw" id="5cBWTAeigJt" role="37wK5m">
                <ref role="3cqZAo" node="5cBWTAeigJl" resolve="service" />
              </node>
              <node concept="2OqwBi" id="4duYm8_rN9V" role="37wK5m">
                <node concept="37vLTw" id="4duYm8_rN9W" role="2Oq$k0">
                  <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                </node>
                <node concept="liA8E" id="4duYm8_rN9X" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.getRoot()" resolve="getRoot" />
                </node>
              </node>
              <node concept="37vLTw" id="5XNK1Yzrb8H" role="37wK5m">
                <ref role="3cqZAo" node="5XNK1Yzr26d" resolve="bits" />
              </node>
              <node concept="2ShNRf" id="$beNOG9opc" role="37wK5m">
                <node concept="HV5vD" id="$beNOGa5Ur" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="HV5vE" node="$beNOFXcqs" resolve="CoderulesTypecheckingProvider.RecursionGuard" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="lvX$8VFrSh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd7BMcS" role="jymVt" />
    <node concept="3clFb_" id="3zIrswy0e2b" role="jymVt">
      <property role="TrG5h" value="getQueriesClass" />
      <node concept="3Tm1VV" id="3zIrswy0e2c" role="1B3o_S" />
      <node concept="3uibUv" id="3zIrswy0e2e" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3uibUv" id="3zIrswy0e2g" role="11_B2D">
          <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
        </node>
      </node>
      <node concept="3clFbS" id="3zIrswy0e2h" role="3clF47">
        <node concept="3clFbF" id="3zIrswy0g8o" role="3cqZAp">
          <node concept="3VsKOn" id="3zIrswy0gNb" role="3clFbG">
            <ref role="3VsUkX" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gD$zlTLWiu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="lvX$8VFxhZ" role="jymVt" />
    <node concept="3clFb_" id="lvX$8VFrSk" role="jymVt">
      <property role="TrG5h" value="disposeQueries" />
      <node concept="3Tm1VV" id="lvX$8VFrSl" role="1B3o_S" />
      <node concept="3cqZAl" id="lvX$8VFrSn" role="3clF45" />
      <node concept="37vLTG" id="lvX$8VFrSo" role="3clF46">
        <property role="TrG5h" value="queries" />
        <node concept="3uibUv" id="lvX$8VFrSp" role="1tU5fm">
          <ref role="3uigEE" to="1ka:~TypecheckingQueries" resolve="TypecheckingQueries" />
        </node>
        <node concept="2AHcQZ" id="lvX$8VFrSq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="lvX$8VFrSr" role="3clF47">
        <node concept="3clFbJ" id="51ek2rS76hR" role="3cqZAp">
          <node concept="3clFbS" id="51ek2rS76hT" role="3clFbx">
            <node concept="3SKdUt" id="51ek2rS77vk" role="3cqZAp">
              <node concept="1PaTwC" id="51ek2rS77vl" role="1aUNEU">
                <node concept="3oM_SD" id="51ek2rS77vm" role="1PaTwD">
                  <property role="3oM_SC" value="disposed" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="51ek2rS77iS" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="7e$2hwb0Z4k" role="3clFbw">
            <ref role="3cqZAo" node="7e$2hwaZkiV" resolve="disposed" />
          </node>
        </node>
        <node concept="3clFbJ" id="4duYm8_r$nY" role="3cqZAp">
          <node concept="3clFbS" id="4duYm8_r$o0" role="3clFbx">
            <node concept="3cpWs8" id="5XNK1YzriKg" role="3cqZAp">
              <node concept="3cpWsn" id="5XNK1YzriKh" role="3cpWs9">
                <property role="TrG5h" value="usingSharedState" />
                <node concept="10P_77" id="5XNK1YzqZX0" role="1tU5fm" />
                <node concept="3y3z36" id="5XNK1Yzrlia" role="33vP2m">
                  <node concept="1eOMI4" id="5XNK1YzriKk" role="3uHU7B">
                    <node concept="pVHWs" id="5XNK1YzriKl" role="1eOMHV">
                      <node concept="10M0yZ" id="5XNK1YzriKm" role="3uHU7w">
                        <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                        <ref role="3cqZAo" node="5XNK1YzpOxx" resolve="USING_SHARED_STATE" />
                      </node>
                      <node concept="2OqwBi" id="5XNK1YzriKn" role="3uHU7B">
                        <node concept="2OwXpG" id="5XNK1YzriKo" role="2OqNvi">
                          <ref role="2Oxat5" node="5XNK1YzpV_w" resolve="bits" />
                        </node>
                        <node concept="1eOMI4" id="5XNK1YzriKp" role="2Oq$k0">
                          <node concept="10QFUN" id="5XNK1YzriKq" role="1eOMHV">
                            <node concept="3uibUv" id="5XNK1YzriKr" role="10QFUM">
                              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                            </node>
                            <node concept="37vLTw" id="5XNK1YzriKs" role="10QFUP">
                              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5XNK1YzriKj" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5XNK1Yzrk1k" role="3cqZAp">
              <node concept="3cpWsn" id="5XNK1Yzrk1l" role="3cpWs9">
                <property role="TrG5h" value="clearSharedState" />
                <node concept="10P_77" id="5XNK1Yzrk1m" role="1tU5fm" />
                <node concept="3y3z36" id="5XNK1Yzrnpr" role="33vP2m">
                  <node concept="1eOMI4" id="5XNK1Yzrk1p" role="3uHU7B">
                    <node concept="pVHWs" id="5XNK1Yzrk1q" role="1eOMHV">
                      <node concept="10M0yZ" id="5XNK1Yzrmgq" role="3uHU7w">
                        <ref role="3cqZAo" node="5XNK1Yzq1sR" resolve="CLEAR_SHARED_STATE" />
                        <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                      </node>
                      <node concept="2OqwBi" id="5XNK1Yzrk1s" role="3uHU7B">
                        <node concept="2OwXpG" id="5XNK1Yzrk1t" role="2OqNvi">
                          <ref role="2Oxat5" node="5XNK1YzpV_w" resolve="bits" />
                        </node>
                        <node concept="1eOMI4" id="5XNK1Yzrk1u" role="2Oq$k0">
                          <node concept="10QFUN" id="5XNK1Yzrk1v" role="1eOMHV">
                            <node concept="3uibUv" id="5XNK1Yzrk1w" role="10QFUM">
                              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                            </node>
                            <node concept="37vLTw" id="5XNK1Yzrk1x" role="10QFUP">
                              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5XNK1Yzrk1o" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1T5MAgPlvZa" role="3cqZAp">
              <node concept="3clFbS" id="1T5MAgPlvZc" role="3clFbx">
                <node concept="3cpWs8" id="4duYm8_rEe5" role="3cqZAp">
                  <node concept="3cpWsn" id="4duYm8_rEe6" role="3cpWs9">
                    <property role="TrG5h" value="root" />
                    <node concept="3Tqbb2" id="4duYm8_rE3C" role="1tU5fm" />
                    <node concept="2OqwBi" id="4duYm8_rEe7" role="33vP2m">
                      <node concept="1eOMI4" id="4duYm8_rEe8" role="2Oq$k0">
                        <node concept="10QFUN" id="4duYm8_rEe9" role="1eOMHV">
                          <node concept="3uibUv" id="4duYm8_rEea" role="10QFUM">
                            <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                          </node>
                          <node concept="37vLTw" id="4duYm8_rEeb" role="10QFUP">
                            <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OwXpG" id="4duYm8_rEec" role="2OqNvi">
                        <ref role="2Oxat5" node="4duYm8_rvM9" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1T5MAgPk_wB" role="3cqZAp">
                  <node concept="3clFbS" id="1T5MAgPk_wD" role="3clFbx">
                    <node concept="3clFbF" id="4duYm8_rHf4" role="3cqZAp">
                      <node concept="2OqwBi" id="4duYm8_rJMu" role="3clFbG">
                        <node concept="1eOMI4" id="4duYm8_rHf2" role="2Oq$k0">
                          <node concept="10QFUN" id="4duYm8_rHeZ" role="1eOMHV">
                            <node concept="3uibUv" id="4duYm8_rHmL" role="10QFUM">
                              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                            </node>
                            <node concept="37vLTw" id="4duYm8_rJze" role="10QFUP">
                              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4duYm8_rLLd" role="2OqNvi">
                          <ref role="37wK5l" node="6l3eCxofJGN" resolve="clearCache" />
                          <node concept="37vLTw" id="4duYm8_rM6V" role="37wK5m">
                            <ref role="3cqZAo" node="4duYm8_rEe6" resolve="root" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1T5MAgPk_Y7" role="3clFbw">
                    <node concept="10Nm6u" id="1T5MAgPkAcb" role="3uHU7w" />
                    <node concept="37vLTw" id="1T5MAgPk_Iq" role="3uHU7B">
                      <ref role="3cqZAo" node="4duYm8_rEe6" resolve="root" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1RYTbd7EegQ" role="3cqZAp">
                  <node concept="3cpWsn" id="1RYTbd7EegR" role="3cpWs9">
                    <property role="TrG5h" value="state" />
                    <node concept="3uibUv" id="1RYTbd7Ee7y" role="1tU5fm">
                      <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
                    </node>
                    <node concept="2OqwBi" id="1RYTbd7EegS" role="33vP2m">
                      <node concept="2OqwBi" id="1RYTbd7EegT" role="2Oq$k0">
                        <node concept="1eOMI4" id="1RYTbd7EegU" role="2Oq$k0">
                          <node concept="10QFUN" id="1RYTbd7EegV" role="1eOMHV">
                            <node concept="3uibUv" id="1RYTbd7EegW" role="10QFUM">
                              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                            </node>
                            <node concept="37vLTw" id="1RYTbd7EegX" role="10QFUP">
                              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OwXpG" id="1RYTbd7EegY" role="2OqNvi">
                          <ref role="2Oxat5" node="1z4$59j5F_5" resolve="typecheckingService" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1RYTbd7EegZ" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1RYTbd7Di6U" resolve="getState" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1T5MAgPlzmL" role="3cqZAp">
                  <node concept="2OqwBi" id="1T5MAgPl$Ke" role="3clFbG">
                    <node concept="37vLTw" id="1RYTbd7Eeh0" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RYTbd7EegR" resolve="state" />
                    </node>
                    <node concept="liA8E" id="1T5MAgPl_FV" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1RYTbd7EgL_" role="3cqZAp">
                  <node concept="2OqwBi" id="1RYTbd7EhKs" role="3clFbG">
                    <node concept="37vLTw" id="1RYTbd7EgLz" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RYTbd7AOyL" resolve="states" />
                    </node>
                    <node concept="3dhRuq" id="1RYTbd7EiWe" role="2OqNvi">
                      <node concept="37vLTw" id="1RYTbd7Ekvq" role="25WWJ7">
                        <ref role="3cqZAo" node="1RYTbd7EegR" resolve="state" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1T5MAgPlvZb" role="3cqZAp" />
                <node concept="3clFbJ" id="1T5MAgPectW" role="3cqZAp">
                  <node concept="3clFbS" id="1T5MAgPectX" role="3clFbx">
                    <node concept="3cpWs8" id="1RYTbd7G9D6" role="3cqZAp">
                      <node concept="3cpWsn" id="1RYTbd7G9D7" role="3cpWs9">
                        <property role="TrG5h" value="sharedState" />
                        <node concept="3uibUv" id="1RYTbd7FZ0z" role="1tU5fm">
                          <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
                        </node>
                        <node concept="1LFfDK" id="1RYTbd7G9D8" role="33vP2m">
                          <node concept="3cmrfG" id="1RYTbd7G9D9" role="1LF_Uc">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="1RYTbd7G9Da" role="1LFl5Q">
                            <node concept="37vLTw" id="1RYTbd7G9Db" role="2Oq$k0">
                              <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                            </node>
                            <node concept="liA8E" id="1RYTbd7G9Dc" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1T5MAgPectY" role="3cqZAp">
                      <node concept="2OqwBi" id="1T5MAgPectZ" role="3clFbG">
                        <node concept="37vLTw" id="1RYTbd7G9Dd" role="2Oq$k0">
                          <ref role="3cqZAo" node="1RYTbd7G9D7" resolve="sharedState" />
                        </node>
                        <node concept="liA8E" id="1T5MAgPk_2N" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1RYTbd7Ginx" role="3cqZAp">
                      <node concept="2OqwBi" id="1RYTbd7Gjhz" role="3clFbG">
                        <node concept="37vLTw" id="1RYTbd7Ginv" role="2Oq$k0">
                          <ref role="3cqZAo" node="1RYTbd7AOyL" resolve="states" />
                        </node>
                        <node concept="3dhRuq" id="1RYTbd7Gkn$" role="2OqNvi">
                          <node concept="37vLTw" id="1RYTbd7GndZ" role="25WWJ7">
                            <ref role="3cqZAo" node="1RYTbd7G9D7" resolve="sharedState" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1T5MAgPedpp" role="3cqZAp">
                      <node concept="2OqwBi" id="1T5MAgPedpr" role="3clFbG">
                        <node concept="37vLTw" id="1T5MAgPedp_" role="2Oq$k0">
                          <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                        </node>
                        <node concept="liA8E" id="1T5MAgPeenO" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
                          <node concept="10Nm6u" id="1T5MAgPeezT" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="5XNK1Yzroh3" role="3clFbw">
                    <node concept="37vLTw" id="5XNK1YzroOG" role="3uHU7w">
                      <ref role="3cqZAo" node="5XNK1Yzrk1l" resolve="clearSharedState" />
                    </node>
                    <node concept="3y3z36" id="1T5MAgPlc7q" role="3uHU7B">
                      <node concept="2OqwBi" id="1T5MAgPecu5" role="3uHU7B">
                        <node concept="37vLTw" id="1T5MAgPecup" role="2Oq$k0">
                          <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                        </node>
                        <node concept="liA8E" id="1T5MAgPecu6" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="1T5MAgPlczS" role="3uHU7w" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5XNK1Yzrm9L" role="3clFbw">
                <node concept="37vLTw" id="5XNK1Yzrm9N" role="3fr31v">
                  <ref role="3cqZAo" node="5XNK1YzriKh" resolve="usingSharedState" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1T5MAgPe8L9" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="4duYm8_r_ez" role="3clFbw">
            <node concept="3uibUv" id="4duYm8_r_Dh" role="2ZW6by">
              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
            </node>
            <node concept="37vLTw" id="4duYm8_r$PT" role="2ZW6bz">
              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="lvX$8VFrSs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$gg4k_6BHa" role="jymVt" />
    <node concept="3clFb_" id="1RYTbd7BH60" role="jymVt">
      <property role="TrG5h" value="createState" />
      <node concept="37vLTG" id="1C_jAsql_X0" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1C_jAsqlOkq" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1RYTbd7BH61" role="1B3o_S" />
      <node concept="3uibUv" id="1RYTbd7BH62" role="3clF45">
        <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
      </node>
      <node concept="3clFbS" id="1RYTbd7BH5I" role="3clF47">
        <node concept="3cpWs8" id="1RYTbd7BQR0" role="3cqZAp">
          <node concept="3cpWsn" id="1RYTbd7BQR1" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="1RYTbd7BJAf" role="1tU5fm">
              <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
            </node>
            <node concept="2ShNRf" id="1RYTbd7BQR2" role="33vP2m">
              <node concept="1pGfFk" id="1RYTbd7BQR3" role="2ShVmc">
                <ref role="37wK5l" to="tj24:5cBWTAehvV3" resolve="TypecheckingState" />
                <node concept="37vLTw" id="1C_jAsqm46v" role="37wK5m">
                  <ref role="3cqZAo" node="1C_jAsql_X0" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd7BXiO" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd7C0Yo" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd7BXiM" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd7AOyL" resolve="states" />
            </node>
            <node concept="TSZUe" id="1RYTbd7C3mt" role="2OqNvi">
              <node concept="37vLTw" id="1RYTbd7C4uE" role="25WWJ7">
                <ref role="3cqZAo" node="1RYTbd7BQR1" resolve="state" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1RYTbd7BH5J" role="3cqZAp">
          <node concept="37vLTw" id="1RYTbd7BQR6" role="3cqZAk">
            <ref role="3cqZAo" node="1RYTbd7BQR1" resolve="state" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3zIrswy0dov" role="jymVt" />
    <node concept="312cEu" id="$beNOFXcqs" role="jymVt">
      <property role="TrG5h" value="RecursionGuard" />
      <property role="2bfB8j" value="true" />
      <node concept="2tJIrI" id="$beNOFXoYL" role="jymVt" />
      <node concept="3clFb_" id="$beNOFXqDU" role="jymVt">
        <property role="TrG5h" value="run" />
        <node concept="37vLTG" id="$beNOFXy7X" role="3clF46">
          <property role="TrG5h" value="r" />
          <node concept="3uibUv" id="$beNOFX$ap" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
          </node>
        </node>
        <node concept="3cqZAl" id="$beNOFXqDW" role="3clF45" />
        <node concept="3clFbS" id="$beNOFXqDY" role="3clF47">
          <node concept="3clFbJ" id="$beNOFYqPW" role="3cqZAp">
            <node concept="3clFbS" id="$beNOFYqQC" role="3clFbx">
              <node concept="YS8fn" id="$beNOFYwjU" role="3cqZAp">
                <node concept="2ShNRf" id="1C_jAsr8PJK" role="YScLw">
                  <node concept="1pGfFk" id="1C_jAsr8Zgr" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="1C_jAsr94rO" role="37wK5m">
                      <property role="Xl_RC" value="forbidden recursion" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="$beNOFYrqV" role="3clFbw">
              <node concept="10Nm6u" id="$beNOFYteE" role="3uHU7w" />
              <node concept="2OqwBi" id="$beNOFYoky" role="3uHU7B">
                <node concept="37vLTw" id="$beNOFYnqT" role="2Oq$k0">
                  <ref role="3cqZAo" node="$beNOFYbKT" resolve="RECURSION_GUARD" />
                </node>
                <node concept="liA8E" id="$beNOFYoTK" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="$beNOFYIda" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOFYJ6R" role="3clFbG">
              <node concept="37vLTw" id="$beNOFYId8" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFYbKT" resolve="RECURSION_GUARD" />
              </node>
              <node concept="liA8E" id="$beNOFYJpu" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
                <node concept="Xjq3P" id="$beNOFYLi7" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="$beNOFYCK$" role="3cqZAp" />
          <node concept="3J1_TO" id="$beNOFYFuh" role="3cqZAp">
            <node concept="3clFbS" id="$beNOFYFuj" role="1zxBo7">
              <node concept="3clFbF" id="$beNOFYMUP" role="3cqZAp">
                <node concept="2OqwBi" id="$beNOFYN3U" role="3clFbG">
                  <node concept="37vLTw" id="$beNOFYMUN" role="2Oq$k0">
                    <ref role="3cqZAo" node="$beNOFXy7X" resolve="r" />
                  </node>
                  <node concept="liA8E" id="$beNOFYND1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="$beNOFZ0eU" role="3cqZAp" />
            </node>
            <node concept="1wplmZ" id="$beNOFYFUH" role="1zxBo6">
              <node concept="3clFbS" id="$beNOFYFUI" role="1wplMD">
                <node concept="3clFbF" id="$beNOFYQ2g" role="3cqZAp">
                  <node concept="2OqwBi" id="$beNOFYQXD" role="3clFbG">
                    <node concept="37vLTw" id="$beNOFYQ2f" role="2Oq$k0">
                      <ref role="3cqZAo" node="$beNOFYbKT" resolve="RECURSION_GUARD" />
                    </node>
                    <node concept="liA8E" id="$beNOFYREA" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
                      <node concept="10Nm6u" id="$beNOFYTxz" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="$beNOFXxjI" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="$beNOFX$gr" role="jymVt" />
      <node concept="3clFb_" id="$beNOFX__q" role="jymVt">
        <property role="TrG5h" value="compute" />
        <node concept="16syzq" id="$beNOFXB4m" role="3clF45">
          <ref role="16sUi3" node="$beNOFXAp6" resolve="T" />
        </node>
        <node concept="3Tmbuc" id="$beNOFXA1Y" role="1B3o_S" />
        <node concept="3clFbS" id="$beNOFX__u" role="3clF47">
          <node concept="3clFbJ" id="$beNOFYTYs" role="3cqZAp">
            <node concept="3clFbS" id="$beNOFYTYt" role="3clFbx">
              <node concept="YS8fn" id="$beNOFYTYu" role="3cqZAp">
                <node concept="2ShNRf" id="$beNOFYTYv" role="YScLw">
                  <node concept="1pGfFk" id="$beNOFYTYw" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="$beNOFYTYx" role="37wK5m">
                      <property role="Xl_RC" value="forbidden recursion" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="$beNOFYTYy" role="3clFbw">
              <node concept="10Nm6u" id="$beNOFYTYz" role="3uHU7w" />
              <node concept="2OqwBi" id="$beNOFYTY$" role="3uHU7B">
                <node concept="37vLTw" id="$beNOFYTYS" role="2Oq$k0">
                  <ref role="3cqZAo" node="$beNOFYbKT" resolve="RECURSION_GUARD" />
                </node>
                <node concept="liA8E" id="$beNOFYTY_" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="$beNOFYTYX" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOFYTYY" role="3clFbG">
              <node concept="37vLTw" id="$beNOFYTZt" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFYbKT" resolve="RECURSION_GUARD" />
              </node>
              <node concept="liA8E" id="$beNOFYTYZ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
                <node concept="Xjq3P" id="$beNOFYTZ0" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="$beNOFYZ7A" role="3cqZAp" />
          <node concept="3J1_TO" id="$beNOFYTYV" role="3cqZAp">
            <node concept="3clFbS" id="$beNOFYTYW" role="1zxBo7">
              <node concept="3cpWs6" id="$beNOFYXWH" role="3cqZAp">
                <node concept="2OqwBi" id="$beNOFYTZ2" role="3cqZAk">
                  <node concept="37vLTw" id="$beNOFYTZ3" role="2Oq$k0">
                    <ref role="3cqZAo" node="$beNOFXD9J" resolve="c" />
                  </node>
                  <node concept="liA8E" id="$beNOFYTZ4" role="2OqNvi">
                    <ref role="37wK5l" to="18ew:~Computable.compute()" resolve="compute" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="$beNOFYZGk" role="3cqZAp" />
            </node>
            <node concept="1wplmZ" id="$beNOFYTZ5" role="1zxBo6">
              <node concept="3clFbS" id="$beNOFYTZ6" role="1wplMD">
                <node concept="3clFbF" id="$beNOFYTZ7" role="3cqZAp">
                  <node concept="2OqwBi" id="$beNOFYTZ8" role="3clFbG">
                    <node concept="37vLTw" id="$beNOFYTZL" role="2Oq$k0">
                      <ref role="3cqZAo" node="$beNOFYbKT" resolve="RECURSION_GUARD" />
                    </node>
                    <node concept="liA8E" id="$beNOFYTZ9" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
                      <node concept="10Nm6u" id="$beNOFYTZa" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="$beNOFXAp6" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="37vLTG" id="$beNOFXD9J" role="3clF46">
          <property role="TrG5h" value="c" />
          <node concept="3uibUv" id="$beNOFXD9I" role="1tU5fm">
            <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
            <node concept="16syzq" id="$beNOFXEa2" role="11_B2D">
              <ref role="16sUi3" node="$beNOFXAp6" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="$beNOFXplr" role="jymVt" />
      <node concept="3Tm6S6" id="$beNOFXvxw" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="$beNOFWxCw" role="jymVt" />
    <node concept="312cEu" id="5BwsbZJE17w" role="jymVt">
      <property role="TrG5h" value="Queries" />
      <node concept="2tJIrI" id="siuT5mm_XX" role="jymVt" />
      <node concept="Wx3nA" id="5XNK1YzpJ9_" role="jymVt">
        <property role="TrG5h" value="LOCAL_TYPES" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5XNK1YzpJ9B" role="1B3o_S" />
        <node concept="10Oyi0" id="5XNK1YzpMfF" role="1tU5fm" />
        <node concept="1GRDU$" id="5XNK1YzpNZy" role="33vP2m">
          <node concept="3cmrfG" id="5XNK1YzpOhh" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="2nou5x" id="5XNK1YzpN6l" role="3uHU7B">
            <property role="2noCCI" value="1" />
          </node>
        </node>
      </node>
      <node concept="Wx3nA" id="5XNK1YzpOxx" role="jymVt">
        <property role="TrG5h" value="USING_SHARED_STATE" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5XNK1YzpOxy" role="1B3o_S" />
        <node concept="10Oyi0" id="5XNK1YzpOxz" role="1tU5fm" />
        <node concept="1GRDU$" id="5XNK1YzpOx$" role="33vP2m">
          <node concept="3cmrfG" id="5XNK1YzpOx_" role="3uHU7w">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="2nou5x" id="5XNK1YzpOxA" role="3uHU7B">
            <property role="2noCCI" value="1" />
          </node>
        </node>
      </node>
      <node concept="Wx3nA" id="5XNK1Yzq1sR" role="jymVt">
        <property role="TrG5h" value="CLEAR_SHARED_STATE" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5XNK1Yzq1sS" role="1B3o_S" />
        <node concept="10Oyi0" id="5XNK1Yzq1sT" role="1tU5fm" />
        <node concept="1GRDU$" id="5XNK1Yzq1sU" role="33vP2m">
          <node concept="3cmrfG" id="5XNK1Yzq1sV" role="3uHU7w">
            <property role="3cmrfH" value="2" />
          </node>
          <node concept="2nou5x" id="5XNK1Yzq1sW" role="3uHU7B">
            <property role="2noCCI" value="1" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5XNK1YzpFW3" role="jymVt" />
      <node concept="3clFbW" id="4duYm8_rntF" role="jymVt">
        <node concept="3cqZAl" id="4duYm8_rntG" role="3clF45" />
        <node concept="3Tm6S6" id="61G6TdD0vqk" role="1B3o_S" />
        <node concept="3clFbS" id="4duYm8_rntI" role="3clF47">
          <node concept="3clFbF" id="1z4$59j5F_i" role="3cqZAp">
            <node concept="37vLTI" id="1z4$59j5F_j" role="3clFbG">
              <node concept="2OqwBi" id="1z4$59j5F_k" role="37vLTJ">
                <node concept="Xjq3P" id="1z4$59j5F_l" role="2Oq$k0" />
                <node concept="2OwXpG" id="1z4$59j5F_m" role="2OqNvi">
                  <ref role="2Oxat5" node="1z4$59j5F_5" resolve="typecheckingService" />
                </node>
              </node>
              <node concept="37vLTw" id="5cBWTAehO$s" role="37vLTx">
                <ref role="3cqZAo" node="5cBWTAehM6w" resolve="service" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4duYm8_rvMd" role="3cqZAp">
            <node concept="37vLTI" id="4duYm8_rvMf" role="3clFbG">
              <node concept="2OqwBi" id="4duYm8_rzzC" role="37vLTJ">
                <node concept="Xjq3P" id="4duYm8_rzOQ" role="2Oq$k0" />
                <node concept="2OwXpG" id="4duYm8_rzzF" role="2OqNvi">
                  <ref role="2Oxat5" node="4duYm8_rvM9" resolve="root" />
                </node>
              </node>
              <node concept="37vLTw" id="4duYm8_rvMj" role="37vLTx">
                <ref role="3cqZAo" node="4duYm8_rqLV" resolve="root" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5XNK1YzpZc0" role="3cqZAp">
            <node concept="37vLTI" id="5XNK1Yzq0jC" role="3clFbG">
              <node concept="37vLTw" id="5XNK1Yzq0_L" role="37vLTx">
                <ref role="3cqZAo" node="5XNK1YzpS40" resolve="bits" />
              </node>
              <node concept="2OqwBi" id="5XNK1YzpZlP" role="37vLTJ">
                <node concept="Xjq3P" id="5XNK1YzpZbY" role="2Oq$k0" />
                <node concept="2OwXpG" id="5XNK1YzpZw_" role="2OqNvi">
                  <ref role="2Oxat5" node="5XNK1YzpV_w" resolve="bits" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="$beNOFZuQg" role="3cqZAp">
            <node concept="37vLTI" id="$beNOFZuQi" role="3clFbG">
              <node concept="2OqwBi" id="$beNOFZDVs" role="37vLTJ">
                <node concept="Xjq3P" id="$beNOFZMSn" role="2Oq$k0" />
                <node concept="2OwXpG" id="$beNOFZDVv" role="2OqNvi">
                  <ref role="2Oxat5" node="$beNOFZuQc" resolve="guard" />
                </node>
              </node>
              <node concept="37vLTw" id="$beNOFZuQm" role="37vLTx">
                <ref role="3cqZAo" node="$beNOFZ4Hi" resolve="guard" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5cBWTAehM6w" role="3clF46">
          <property role="TrG5h" value="service" />
          <node concept="3uibUv" id="5cBWTAehNEW" role="1tU5fm">
            <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
          </node>
        </node>
        <node concept="37vLTG" id="4duYm8_rqLV" role="3clF46">
          <property role="TrG5h" value="root" />
          <node concept="3Tqbb2" id="4duYm8_rvDA" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5XNK1YzpS40" role="3clF46">
          <property role="TrG5h" value="bits" />
          <node concept="10Oyi0" id="5XNK1YzpSzE" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="$beNOFZ4Hi" role="3clF46">
          <property role="TrG5h" value="guard" />
          <node concept="3uibUv" id="$beNOFZf4A" role="1tU5fm">
            <ref role="3uigEE" node="$beNOFXcqs" resolve="CoderulesTypecheckingProvider.RecursionGuard" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4duYm8_rntE" role="jymVt" />
      <node concept="3clFb_" id="siuT5mmA08" role="jymVt">
        <property role="TrG5h" value="getTypeOf" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="siuT5mmA09" role="1B3o_S" />
        <node concept="3uibUv" id="siuT5mmA0b" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="siuT5mmA0c" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="siuT5mmA0d" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="siuT5mmA0f" role="3clF47">
          <node concept="3clFbF" id="$beNOG0gkO" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG0ogw" role="3clFbG">
              <node concept="37vLTw" id="$beNOG0gkM" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG1gpv" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFX__q" resolve="compute" />
                <node concept="1bVj0M" id="$beNOG1rcK" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG1rcL" role="1bW5cS">
                    <node concept="3cpWs8" id="3CzfQ_onIcS" role="3cqZAp">
                      <node concept="3cpWsn" id="3CzfQ_onIcT" role="3cpWs9">
                        <property role="TrG5h" value="listeners" />
                        <node concept="_YKpA" id="3CzfQ_onGi7" role="1tU5fm">
                          <node concept="3uibUv" id="3CzfQ_onGia" role="_ZDj9">
                            <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="3CzfQ_onIcU" role="33vP2m">
                          <node concept="Tc6Ow" id="3CzfQ_onIcV" role="2ShVmc">
                            <node concept="3uibUv" id="3CzfQ_onIcW" role="HW$YZ">
                              <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
                            </node>
                            <node concept="37vLTw" id="3CzfQ_onIcX" role="I$8f6">
                              <ref role="3cqZAo" node="3CzfQ_ohqQB" resolve="accessListeners" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3CzfQ_omgn6" role="3cqZAp">
                      <node concept="2OqwBi" id="3CzfQ_onY85" role="3clFbG">
                        <node concept="37vLTw" id="3CzfQ_onIcY" role="2Oq$k0">
                          <ref role="3cqZAo" node="3CzfQ_onIcT" resolve="listeners" />
                        </node>
                        <node concept="2es0OD" id="3CzfQ_oo7hA" role="2OqNvi">
                          <node concept="1bVj0M" id="3CzfQ_oo7hC" role="23t8la">
                            <node concept="3clFbS" id="3CzfQ_oo7hD" role="1bW5cS">
                              <node concept="3clFbF" id="3CzfQ_oofi7" role="3cqZAp">
                                <node concept="2OqwBi" id="3CzfQ_oolB9" role="3clFbG">
                                  <node concept="37vLTw" id="3CzfQ_oofi6" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3CzfQ_oo7hE" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="3CzfQ_oouwT" role="2OqNvi">
                                    <ref role="37wK5l" to="1ka:~TypeAccessListener.typeAccessed(org.jetbrains.mps.openapi.model.SNode)" resolve="typeAccessed" />
                                    <node concept="37vLTw" id="3CzfQ_ooALZ" role="37wK5m">
                                      <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="3CzfQ_oo7hE" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="3CzfQ_oo7hF" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="61G6TdCYEzx" role="3cqZAp">
                      <node concept="3clFbS" id="61G6TdCYEzz" role="3clFbx">
                        <node concept="3cpWs6" id="61G6TdCYNOT" role="3cqZAp">
                          <node concept="2OqwBi" id="1z4$59iR36p" role="3cqZAk">
                            <node concept="2OqwBi" id="1z4$59iQSXY" role="2Oq$k0">
                              <node concept="2OqwBi" id="1z4$59j6aPB" role="2Oq$k0">
                                <node concept="Xjq3P" id="1z4$59j6aPC" role="2Oq$k0" />
                                <node concept="2OwXpG" id="1z4$59j6aPD" role="2OqNvi">
                                  <ref role="2Oxat5" node="1z4$59j5F_5" resolve="typecheckingService" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1z4$59iQW9p" role="2OqNvi">
                                <ref role="37wK5l" to="tj24:1z4$59iIgeQ" resolve="localTypeOf" />
                                <node concept="37vLTw" id="1z4$59iR0my" role="37wK5m">
                                  <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1z4$59iR6C1" role="2OqNvi">
                              <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="61G6TdCZ4sz" role="3cqZAp" />
                      </node>
                      <node concept="9aQIb" id="61G6TdCYWa6" role="9aQIa">
                        <node concept="3clFbS" id="61G6TdCYWa7" role="9aQI4">
                          <node concept="3SKdUt" id="3CzfQ_ow6XI" role="3cqZAp">
                            <node concept="1PaTwC" id="3CzfQ_ow6XJ" role="1aUNEU">
                              <node concept="3oM_SD" id="3CzfQ_ow6XK" role="1PaTwD">
                                <property role="3oM_SC" value="FIXME" />
                              </node>
                              <node concept="3oM_SD" id="3CzfQ_ow6XL" role="1PaTwD">
                                <property role="3oM_SC" value="collect" />
                              </node>
                              <node concept="3oM_SD" id="3CzfQ_ow6XM" role="1PaTwD">
                                <property role="3oM_SC" value="nodes" />
                              </node>
                              <node concept="3oM_SD" id="3CzfQ_ow6XN" role="1PaTwD">
                                <property role="3oM_SC" value="with" />
                              </node>
                              <node concept="3oM_SD" id="3CzfQ_ow6XO" role="1PaTwD">
                                <property role="3oM_SC" value="changed" />
                              </node>
                              <node concept="3oM_SD" id="3CzfQ_ow6XP" role="1PaTwD">
                                <property role="3oM_SC" value="types" />
                              </node>
                              <node concept="3oM_SD" id="3CzfQ_ow6XQ" role="1PaTwD">
                                <property role="3oM_SC" value="and" />
                              </node>
                              <node concept="3oM_SD" id="3CzfQ_ow6XR" role="1PaTwD">
                                <property role="3oM_SC" value="report" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="61G6TdCY$lg" role="3cqZAp">
                            <node concept="2OqwBi" id="1z4$59iRoH8" role="3cqZAk">
                              <node concept="2OqwBi" id="61G6TdCY$lh" role="2Oq$k0">
                                <node concept="2OqwBi" id="1z4$59j6aPz" role="2Oq$k0">
                                  <node concept="Xjq3P" id="1z4$59j6aP$" role="2Oq$k0" />
                                  <node concept="2OwXpG" id="1z4$59j6aP_" role="2OqNvi">
                                    <ref role="2Oxat5" node="1z4$59j5F_5" resolve="typecheckingService" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="61G6TdCY$lj" role="2OqNvi">
                                  <ref role="37wK5l" to="tj24:1z4$59iI7cZ" resolve="typeOf" />
                                  <node concept="37vLTw" id="61G6TdCY$lk" role="37wK5m">
                                    <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="1z4$59iRsWk" role="2OqNvi">
                                <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="5XNK1YzqvhV" role="3clFbw">
                        <node concept="3cmrfG" id="5XNK1YzqyeY" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="1eOMI4" id="5XNK1Yzqs5v" role="3uHU7B">
                          <node concept="pVHWs" id="5XNK1Yzqod$" role="1eOMHV">
                            <node concept="37vLTw" id="5XNK1Yzqr$j" role="3uHU7w">
                              <ref role="3cqZAo" node="5XNK1YzpJ9_" resolve="LOCAL_TYPES" />
                            </node>
                            <node concept="37vLTw" id="5XNK1YzqkwL" role="3uHU7B">
                              <ref role="3cqZAo" node="5XNK1YzpV_w" resolve="bits" />
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
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0g" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1oUwjADnFUb" role="jymVt" />
      <node concept="3clFb_" id="3$wk6sfEBR8" role="jymVt">
        <property role="TrG5h" value="getInferredType" />
        <node concept="3Tm1VV" id="3$wk6sfEBR9" role="1B3o_S" />
        <node concept="2AHcQZ" id="3$wk6sfEBRb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="3$wk6sfEBRc" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="3$wk6sfEBRd" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="3$wk6sfEBRe" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="3$wk6sfEBRk" role="3clF47">
          <node concept="YS8fn" id="3$wk6sfEVAQ" role="3cqZAp">
            <node concept="2ShNRf" id="3$wk6sfEW1x" role="YScLw">
              <node concept="1pGfFk" id="3$wk6sfFo$p" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3$wk6sfEBRl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_ogiKk" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_ogbFT" role="jymVt">
        <property role="TrG5h" value="getObservable" />
        <node concept="3Tm1VV" id="3CzfQ_ogbFV" role="1B3o_S" />
        <node concept="2AHcQZ" id="3CzfQ_ogbFX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="3CzfQ_ogbFY" role="3clF45">
          <ref role="3uigEE" to="1ka:~TypecheckingObservable" resolve="TypecheckingObservable" />
        </node>
        <node concept="3clFbS" id="3CzfQ_ogbG6" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_okKle" role="3cqZAp">
            <node concept="Xjq3P" id="3CzfQ_okKld" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_ogbG7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3$wk6sfEJ$w" role="jymVt" />
      <node concept="3clFb_" id="siuT5mmA0j" role="jymVt">
        <property role="TrG5h" value="convertsTo" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="siuT5mmA0k" role="1B3o_S" />
        <node concept="10P_77" id="siuT5mmA0m" role="3clF45" />
        <node concept="37vLTG" id="siuT5mmA0n" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="siuT5mmA0o" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="siuT5mmA0p" role="3clF46">
          <property role="TrG5h" value="trgType" />
          <node concept="3uibUv" id="siuT5mmA0q" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="siuT5mmA0s" role="3clF47">
          <node concept="3clFbF" id="$beNOG2g4F" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG2nyB" role="3clFbG">
              <node concept="37vLTw" id="$beNOG2g4D" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG2xgk" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFX__q" resolve="compute" />
                <node concept="1bVj0M" id="$beNOG2DiQ" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG2DiR" role="1bW5cS">
                    <node concept="3clFbF" id="1z4$59iI6bk" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59iIHQB" role="3clFbG">
                        <node concept="2OqwBi" id="1z4$59iI6Eo" role="2Oq$k0">
                          <node concept="37vLTw" id="1z4$59j6jKc" role="2Oq$k0">
                            <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                          </node>
                          <node concept="liA8E" id="1z4$59iIF0B" role="2OqNvi">
                            <ref role="37wK5l" to="tj24:1z4$59iIpuJ" resolve="convertsTo" />
                            <node concept="3clFbT" id="51h1DIGptwC" role="37wK5m" />
                            <node concept="37vLTw" id="1z4$59iIHt6" role="37wK5m">
                              <ref role="3cqZAo" node="siuT5mmA0n" resolve="type" />
                            </node>
                            <node concept="37vLTw" id="1z4$59iIHt7" role="37wK5m">
                              <ref role="3cqZAo" node="siuT5mmA0p" resolve="trgType" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1z4$59iRh_9" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6$gg4k_6B9G" role="jymVt" />
      <node concept="3clFb_" id="51h1DIGpAI8" role="jymVt">
        <property role="TrG5h" value="isSubtype" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="51h1DIGpAIa" role="1B3o_S" />
        <node concept="10P_77" id="51h1DIGpAIc" role="3clF45" />
        <node concept="37vLTG" id="51h1DIGpAId" role="3clF46">
          <property role="TrG5h" value="typeA" />
          <node concept="3uibUv" id="51h1DIGpAIe" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="51h1DIGpAIf" role="3clF46">
          <property role="TrG5h" value="typeB" />
          <node concept="3uibUv" id="51h1DIGpAIg" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="51h1DIGpAIo" role="3clF47">
          <node concept="3clFbJ" id="51h1DIGqoLh" role="3cqZAp">
            <node concept="3clFbS" id="51h1DIGqoLj" role="3clFbx">
              <node concept="3cpWs6" id="51h1DIGriyK" role="3cqZAp">
                <node concept="3clFbT" id="51h1DIGrqYp" role="3cqZAk" />
              </node>
            </node>
            <node concept="22lmx$" id="51h1DIGqPKr" role="3clFbw">
              <node concept="3clFbC" id="51h1DIGr4IV" role="3uHU7w">
                <node concept="10Nm6u" id="51h1DIGravY" role="3uHU7w" />
                <node concept="37vLTw" id="51h1DIGqWx5" role="3uHU7B">
                  <ref role="3cqZAo" node="51h1DIGpAIf" resolve="typeB" />
                </node>
              </node>
              <node concept="3clFbC" id="51h1DIGqC04" role="3uHU7B">
                <node concept="37vLTw" id="51h1DIGqxkn" role="3uHU7B">
                  <ref role="3cqZAo" node="51h1DIGpAId" resolve="typeA" />
                </node>
                <node concept="10Nm6u" id="51h1DIGqGTG" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="$beNOG33Me" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG33Mf" role="3clFbG">
              <node concept="37vLTw" id="$beNOG33Mg" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG33Mh" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFX__q" resolve="compute" />
                <node concept="1bVj0M" id="$beNOG33Mi" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG33Mj" role="1bW5cS">
                    <node concept="3clFbF" id="51h1DIGrJCA" role="3cqZAp">
                      <node concept="2OqwBi" id="51h1DIGrJCB" role="3clFbG">
                        <node concept="2OqwBi" id="51h1DIGrJCC" role="2Oq$k0">
                          <node concept="37vLTw" id="51h1DIGrJCD" role="2Oq$k0">
                            <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                          </node>
                          <node concept="liA8E" id="51h1DIGrJCE" role="2OqNvi">
                            <ref role="37wK5l" to="tj24:1z4$59iIpuJ" resolve="convertsTo" />
                            <node concept="3clFbT" id="51h1DIGrJCF" role="37wK5m" />
                            <node concept="37vLTw" id="51h1DIGrSKT" role="37wK5m">
                              <ref role="3cqZAo" node="51h1DIGpAId" resolve="typeA" />
                            </node>
                            <node concept="37vLTw" id="51h1DIGsllb" role="37wK5m">
                              <ref role="3cqZAo" node="51h1DIGpAIf" resolve="typeB" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="51h1DIGrJCI" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="51h1DIGpAIp" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="51h1DIGpMAA" role="jymVt" />
      <node concept="3clFb_" id="51h1DIGpZ1D" role="jymVt">
        <property role="TrG5h" value="isStrongSubtype" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="51h1DIGpZ1F" role="1B3o_S" />
        <node concept="10P_77" id="51h1DIGpZ1H" role="3clF45" />
        <node concept="37vLTG" id="51h1DIGpZ1I" role="3clF46">
          <property role="TrG5h" value="typeA" />
          <node concept="3uibUv" id="51h1DIGpZ1J" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="51h1DIGpZ1K" role="3clF46">
          <property role="TrG5h" value="typeB" />
          <node concept="3uibUv" id="51h1DIGpZ1L" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="51h1DIGpZ1T" role="3clF47">
          <node concept="3clFbJ" id="51h1DIGst3L" role="3cqZAp">
            <node concept="3clFbS" id="51h1DIGst3M" role="3clFbx">
              <node concept="3cpWs6" id="51h1DIGst3N" role="3cqZAp">
                <node concept="3clFbT" id="51h1DIGst3O" role="3cqZAk" />
              </node>
            </node>
            <node concept="22lmx$" id="51h1DIGst3P" role="3clFbw">
              <node concept="3clFbC" id="51h1DIGst3Q" role="3uHU7w">
                <node concept="10Nm6u" id="51h1DIGst3R" role="3uHU7w" />
                <node concept="37vLTw" id="51h1DIGst3S" role="3uHU7B">
                  <ref role="3cqZAo" node="51h1DIGpZ1K" resolve="typeB" />
                </node>
              </node>
              <node concept="3clFbC" id="51h1DIGst3T" role="3uHU7B">
                <node concept="37vLTw" id="51h1DIGst3U" role="3uHU7B">
                  <ref role="3cqZAo" node="51h1DIGpZ1I" resolve="typeA" />
                </node>
                <node concept="10Nm6u" id="51h1DIGst3V" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="$beNOG3zjr" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG3zjs" role="3clFbG">
              <node concept="37vLTw" id="$beNOG3zjt" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG3zju" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFX__q" resolve="compute" />
                <node concept="1bVj0M" id="$beNOG3zjv" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG3zjw" role="1bW5cS">
                    <node concept="3clFbF" id="51h1DIGst3W" role="3cqZAp">
                      <node concept="2OqwBi" id="51h1DIGst3X" role="3clFbG">
                        <node concept="2OqwBi" id="51h1DIGst3Y" role="2Oq$k0">
                          <node concept="37vLTw" id="51h1DIGst3Z" role="2Oq$k0">
                            <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                          </node>
                          <node concept="liA8E" id="51h1DIGst40" role="2OqNvi">
                            <ref role="37wK5l" to="tj24:1z4$59iIpuJ" resolve="convertsTo" />
                            <node concept="3clFbT" id="51h1DIGst41" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                            <node concept="37vLTw" id="51h1DIGst42" role="37wK5m">
                              <ref role="3cqZAo" node="51h1DIGpZ1I" resolve="typeA" />
                            </node>
                            <node concept="37vLTw" id="51h1DIGst43" role="37wK5m">
                              <ref role="3cqZAo" node="51h1DIGpZ1K" resolve="typeB" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="51h1DIGst44" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="51h1DIGpZ1U" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="51h1DIGq8gG" role="jymVt" />
      <node concept="3clFb_" id="siuT5mmA0w" role="jymVt">
        <property role="TrG5h" value="coerceType" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="siuT5mmA0x" role="1B3o_S" />
        <node concept="3uibUv" id="siuT5mmA0z" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="siuT5mmA0$" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="siuT5mmA0_" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="siuT5mmA0A" role="3clF46">
          <property role="TrG5h" value="trgConcept" />
          <node concept="3uibUv" id="siuT5mmA0B" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
          </node>
        </node>
        <node concept="3clFbS" id="siuT5mmA0D" role="3clF47">
          <node concept="3clFbF" id="$beNOG4rQW" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG4rQX" role="3clFbG">
              <node concept="37vLTw" id="$beNOG4rQY" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG4rQZ" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFX__q" resolve="compute" />
                <node concept="1bVj0M" id="$beNOG4rR0" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG4rR1" role="1bW5cS">
                    <node concept="3clFbF" id="1vxei$19mvT" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59iRBCP" role="3clFbG">
                        <node concept="2OqwBi" id="1vxei$19Rfb" role="2Oq$k0">
                          <node concept="37vLTw" id="1z4$59j6uUU" role="2Oq$k0">
                            <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                          </node>
                          <node concept="liA8E" id="1vxei$19Rfs" role="2OqNvi">
                            <ref role="37wK5l" to="tj24:1z4$59iIxBp" resolve="coerceTo" />
                            <node concept="3clFbT" id="51h1DIGjORQ" role="37wK5m" />
                            <node concept="37vLTw" id="2xx8OByk5tn" role="37wK5m">
                              <ref role="3cqZAo" node="siuT5mmA0$" resolve="type" />
                            </node>
                            <node concept="37vLTw" id="2xx8OByk7Nq" role="37wK5m">
                              <ref role="3cqZAo" node="siuT5mmA0A" resolve="trgConcept" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1z4$59iRDco" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0E" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="hEDrw1P7L3" role="jymVt" />
      <node concept="3clFb_" id="hEDrw1P5LW" role="jymVt">
        <property role="TrG5h" value="coerceType" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="hEDrw1P5LX" role="1B3o_S" />
        <node concept="3uibUv" id="hEDrw1P5M0" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="hEDrw1P5M1" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="hEDrw1P5M2" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="hEDrw1P5M4" role="3clF46">
          <property role="TrG5h" value="pattern" />
          <node concept="3uibUv" id="hEDrw1P5M5" role="1tU5fm">
            <ref role="3uigEE" to="7jhi:~INodeMatchingPattern" resolve="INodeMatchingPattern" />
          </node>
          <node concept="2AHcQZ" id="hEDrw1P5M6" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="hEDrw1P5M8" role="3clF47">
          <node concept="3clFbF" id="$beNOG5yZ9" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG5yZa" role="3clFbG">
              <node concept="37vLTw" id="$beNOG5yZb" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG5yZc" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFX__q" resolve="compute" />
                <node concept="1bVj0M" id="$beNOG5yZd" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG5yZe" role="1bW5cS">
                    <node concept="3clFbF" id="$beNOG557w" role="3cqZAp">
                      <node concept="1rXfSq" id="51h1DIGjVqT" role="3clFbG">
                        <ref role="37wK5l" node="51h1DIGjVqO" resolve="doCoerce" />
                        <node concept="3clFbT" id="51h1DIGlLFy" role="37wK5m" />
                        <node concept="37vLTw" id="51h1DIGjVqR" role="37wK5m">
                          <ref role="3cqZAo" node="hEDrw1P5M4" resolve="pattern" />
                        </node>
                        <node concept="37vLTw" id="51h1DIGjVqS" role="37wK5m">
                          <ref role="3cqZAo" node="hEDrw1P5M1" resolve="type" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="hEDrw1P5M9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="51h1DIGk4NV" role="jymVt" />
      <node concept="3clFb_" id="51h1DIGbrNo" role="jymVt">
        <property role="TrG5h" value="strongCoerceType" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="51h1DIGbrNq" role="1B3o_S" />
        <node concept="2AHcQZ" id="51h1DIGbrNs" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="51h1DIGbrNt" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="51h1DIGbrNu" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="51h1DIGbrNv" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="51h1DIGbrNw" role="3clF46">
          <property role="TrG5h" value="trgConcept" />
          <node concept="3uibUv" id="51h1DIGbrNx" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
          </node>
          <node concept="2AHcQZ" id="51h1DIGbrNy" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="51h1DIGbrNC" role="3clF47">
          <node concept="3clFbF" id="$beNOG66BL" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG66BM" role="3clFbG">
              <node concept="37vLTw" id="$beNOG66BN" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG66BO" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFX__q" resolve="compute" />
                <node concept="1bVj0M" id="$beNOG66BP" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG66BQ" role="1bW5cS">
                    <node concept="3clFbF" id="51h1DIGlYEB" role="3cqZAp">
                      <node concept="2OqwBi" id="51h1DIGlYEC" role="3clFbG">
                        <node concept="2OqwBi" id="51h1DIGlYED" role="2Oq$k0">
                          <node concept="37vLTw" id="51h1DIGlYEE" role="2Oq$k0">
                            <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                          </node>
                          <node concept="liA8E" id="51h1DIGlYEF" role="2OqNvi">
                            <ref role="37wK5l" to="tj24:1z4$59iIxBp" resolve="coerceTo" />
                            <node concept="3clFbT" id="51h1DIGlYEG" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                            <node concept="37vLTw" id="51h1DIGlYEH" role="37wK5m">
                              <ref role="3cqZAo" node="51h1DIGbrNu" resolve="type" />
                            </node>
                            <node concept="37vLTw" id="51h1DIGmgAH" role="37wK5m">
                              <ref role="3cqZAo" node="51h1DIGbrNw" resolve="trgConcept" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="51h1DIGlYEJ" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="51h1DIGbrND" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6v6oK28WiYU" role="jymVt" />
      <node concept="3clFb_" id="6v6oK28Wtdd" role="jymVt">
        <property role="TrG5h" value="evaluate" />
        <property role="od$2w" value="true" />
        <node concept="37vLTG" id="6v6oK28WUJW" role="3clF46">
          <property role="TrG5h" value="query" />
          <node concept="3uibUv" id="6v6oK28X2T8" role="1tU5fm">
            <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
          </node>
        </node>
        <node concept="37vLTG" id="6v6oK28Y4WE" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="2I9FWS" id="6v6oK28Yd6M" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6v6oK28Wtdf" role="3clF45" />
        <node concept="3Tm1VV" id="6v6oK28Wtdg" role="1B3o_S" />
        <node concept="3clFbS" id="6v6oK28Wtdh" role="3clF47">
          <node concept="3clFbF" id="$beNOG6$zG" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG6$zH" role="3clFbG">
              <node concept="37vLTw" id="$beNOG6$zI" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG6$zJ" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFXqDU" resolve="run" />
                <node concept="1bVj0M" id="$beNOG6$zK" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG6$zL" role="1bW5cS">
                    <node concept="3clFbF" id="6v6oK28XnIc" role="3cqZAp">
                      <node concept="2OqwBi" id="6v6oK28Ypa9" role="3clFbG">
                        <node concept="2OqwBi" id="6v6oK28XvDU" role="2Oq$k0">
                          <node concept="37vLTw" id="6v6oK28XnIb" role="2Oq$k0">
                            <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                          </node>
                          <node concept="liA8E" id="6v6oK28XBJC" role="2OqNvi">
                            <ref role="37wK5l" to="tj24:6v6oK28NWWP" resolve="customRequest" />
                            <node concept="37vLTw" id="6v6oK28XT7p" role="37wK5m">
                              <ref role="3cqZAo" node="6v6oK28WUJW" resolve="query" />
                            </node>
                            <node concept="37vLTw" id="6v6oK28YgHX" role="37wK5m">
                              <ref role="3cqZAo" node="6v6oK28Y4WE" resolve="nodes" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6v6oK28YxAs" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
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
      <node concept="2tJIrI" id="51h1DIGbjx5" role="jymVt" />
      <node concept="3Tm1VV" id="61G6TdD0ZwH" role="1B3o_S" />
      <node concept="3uibUv" id="lvX$8VFC52" role="EKbjA">
        <ref role="3uigEE" to="1ka:~TypecheckingQueries" resolve="TypecheckingQueries" />
      </node>
      <node concept="3uibUv" id="3CzfQ_oh_Ur" role="EKbjA">
        <ref role="3uigEE" to="1ka:~TypecheckingObservable" resolve="TypecheckingObservable" />
      </node>
      <node concept="3clFb_" id="51h1DIGjVqO" role="jymVt">
        <property role="TrG5h" value="doCoerce" />
        <node concept="3Tm6S6" id="51h1DIGjVqP" role="1B3o_S" />
        <node concept="3uibUv" id="51h1DIGjVqQ" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="51h1DIGkcwR" role="3clF46">
          <property role="TrG5h" value="isStrong" />
          <node concept="10P_77" id="51h1DIGklc7" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="51h1DIGjVqB" role="3clF46">
          <property role="TrG5h" value="pattern" />
          <node concept="3uibUv" id="51h1DIGjVqC" role="1tU5fm">
            <ref role="3uigEE" to="7jhi:~INodeMatchingPattern" resolve="INodeMatchingPattern" />
          </node>
        </node>
        <node concept="37vLTG" id="51h1DIGjVqD" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="51h1DIGjVqE" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="51h1DIGjVn_" role="3clF47">
          <node concept="3cpWs8" id="51h1DIGjVnA" role="3cqZAp">
            <node concept="3cpWsn" id="51h1DIGjVnB" role="3cpWs9">
              <property role="TrG5h" value="trgConcept" />
              <node concept="3uibUv" id="51h1DIGjVnC" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
              </node>
              <node concept="2OqwBi" id="51h1DIGjVnD" role="33vP2m">
                <node concept="37vLTw" id="51h1DIGjVqJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="51h1DIGjVqB" resolve="pattern" />
                </node>
                <node concept="liA8E" id="51h1DIGjVnF" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~IMatchingPattern.getConcept()" resolve="getConcept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="51h1DIGjVnG" role="3cqZAp">
            <node concept="3cpWsn" id="51h1DIGjVnH" role="3cpWs9">
              <property role="TrG5h" value="patternNode" />
              <node concept="3Tqbb2" id="51h1DIGjVnI" role="1tU5fm" />
              <node concept="2OqwBi" id="51h1DIGjVnJ" role="33vP2m">
                <node concept="37vLTw" id="51h1DIGjVqL" role="2Oq$k0">
                  <ref role="3cqZAo" node="51h1DIGjVqB" resolve="pattern" />
                </node>
                <node concept="liA8E" id="51h1DIGjVnL" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~INodeMatchingPattern.getPatternNode()" resolve="getPatternNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="51h1DIGjVnM" role="3cqZAp">
            <node concept="3clFbS" id="51h1DIGjVnN" role="3clFbx">
              <node concept="3SKdUt" id="51h1DIGjVnQ" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVnR" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVnS" role="1PaTwD">
                    <property role="3oM_SC" value="This" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnT" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnU" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnV" role="1PaTwD">
                    <property role="3oM_SC" value="hack:" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnW" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnX" role="1PaTwD">
                    <property role="3oM_SC" value="heuristic" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnY" role="1PaTwD">
                    <property role="3oM_SC" value="that" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnZ" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo0" role="1PaTwD">
                    <property role="3oM_SC" value="pattern" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo1" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo2" role="1PaTwD">
                    <property role="3oM_SC" value="antiquotations" />
                  </node>
                  <node concept="3oM_SD" id="5BZU0S34HYM" role="1PaTwD">
                    <property role="3oM_SC" value="or" />
                  </node>
                  <node concept="3oM_SD" id="5BZU0S34HZ3" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo3" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo4" role="1PaTwD">
                    <property role="3oM_SC" value="likely" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo5" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo6" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVo7" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVo8" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVo9" role="1PaTwD">
                    <property role="3oM_SC" value="define" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoa" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVob" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoc" role="1PaTwD">
                    <property role="3oM_SC" value="top-level" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVod" role="1PaTwD">
                    <property role="3oM_SC" value="node," />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoe" role="1PaTwD">
                    <property role="3oM_SC" value="such" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVof" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVog" role="1PaTwD">
                    <property role="3oM_SC" value="classifier" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoh" role="1PaTwD">
                    <property role="3oM_SC" value="type," />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoi" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoj" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVok" role="1PaTwD">
                    <property role="3oM_SC" value="rest" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVol" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVom" role="1PaTwD">
                    <property role="3oM_SC" value="going" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVon" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVoo" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVop" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVoq" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVor" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVos" role="1PaTwD">
                    <property role="3oM_SC" value="capturing" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVot" role="1PaTwD">
                    <property role="3oM_SC" value="variable(s)." />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVou" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVov" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVow" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVox" role="1PaTwD">
                    <property role="3oM_SC" value="This" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoy" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoz" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo$" role="1PaTwD">
                    <property role="3oM_SC" value="workaround" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo_" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoA" role="1PaTwD">
                    <property role="3oM_SC" value="certain" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoB" role="1PaTwD">
                    <property role="3oM_SC" value="unsound" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoC" role="1PaTwD">
                    <property role="3oM_SC" value="statements" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoD" role="1PaTwD">
                    <property role="3oM_SC" value="whereas" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoE" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoF" role="1PaTwD">
                    <property role="3oM_SC" value="classifier" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoG" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoH" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVoI" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVoJ" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVoK" role="1PaTwD">
                    <property role="3oM_SC" value="coerced" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoL" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoM" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoN" role="1PaTwD">
                    <property role="3oM_SC" value="classifier" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoO" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoP" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoQ" role="1PaTwD">
                    <property role="3oM_SC" value="parameter" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoR" role="1PaTwD">
                    <property role="3oM_SC" value="int" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoS" role="1PaTwD">
                    <property role="3oM_SC" value="type," />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoT" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoU" role="1PaTwD">
                    <property role="3oM_SC" value="happens" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoV" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoW" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoX" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoY" role="1PaTwD">
                    <property role="3oM_SC" value="node" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVoZ" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVp0" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVp1" role="1PaTwD">
                    <property role="3oM_SC" value="hosting" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp2" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp3" role="1PaTwD">
                    <property role="3oM_SC" value="antiquotation." />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp4" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVp5" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVp6" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVp7" role="1PaTwD">
                    <property role="3oM_SC" value="TODO:" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp8" role="1PaTwD">
                    <property role="3oM_SC" value="provide" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp9" role="1PaTwD">
                    <property role="3oM_SC" value="possibility" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpa" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpb" role="1PaTwD">
                    <property role="3oM_SC" value="get" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpc" role="1PaTwD">
                    <property role="3oM_SC" value="info" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpd" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpe" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpf" role="1PaTwD">
                    <property role="3oM_SC" value="pattern" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpg" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVph" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpi" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpj" role="1PaTwD">
                    <property role="3oM_SC" value="nodes" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVpk" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVpl" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVpm" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpn" role="1PaTwD">
                    <property role="3oM_SC" value="capturing" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpo" role="1PaTwD">
                    <property role="3oM_SC" value="variables." />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpp" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="51h1DIGjVpq" role="3cqZAp">
                <node concept="37vLTI" id="51h1DIGjVpr" role="3clFbG">
                  <node concept="2OqwBi" id="51h1DIGjVps" role="37vLTx">
                    <node concept="37vLTw" id="51h1DIGjVpt" role="2Oq$k0">
                      <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
                    </node>
                    <node concept="1$rogu" id="51h1DIGjVpu" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="51h1DIGjVpv" role="37vLTJ">
                    <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="51h1DIGjVpw" role="3cqZAp">
                <node concept="2OqwBi" id="51h1DIGjVpx" role="3clFbG">
                  <node concept="2OqwBi" id="51h1DIGjVpy" role="2Oq$k0">
                    <node concept="37vLTw" id="51h1DIGjVpz" role="2Oq$k0">
                      <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
                    </node>
                    <node concept="32TBzR" id="51h1DIGjVp$" role="2OqNvi" />
                  </node>
                  <node concept="2es0OD" id="51h1DIGjVp_" role="2OqNvi">
                    <node concept="1bVj0M" id="51h1DIGjVpA" role="23t8la">
                      <node concept="3clFbS" id="51h1DIGjVpB" role="1bW5cS">
                        <node concept="3clFbF" id="51h1DIGjVpC" role="3cqZAp">
                          <node concept="2OqwBi" id="51h1DIGjVpD" role="3clFbG">
                            <node concept="37vLTw" id="51h1DIGjVpE" role="2Oq$k0">
                              <ref role="3cqZAo" node="51h1DIGjVpK" resolve="it" />
                            </node>
                            <node concept="1P9Npp" id="51h1DIGjVpF" role="2OqNvi">
                              <node concept="2ShNRf" id="51h1DIGjVpG" role="1P9ThW">
                                <node concept="3zrR0B" id="51h1DIGjVpH" role="2ShVmc">
                                  <node concept="3Tqbb2" id="51h1DIGjVpI" role="3zrR0E">
                                    <ref role="ehGHo" to="tpee:4ctkEngA$UD" resolve="UndefinedType" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="51h1DIGjVpJ" role="3cqZAp" />
                      </node>
                      <node concept="Rh6nW" id="51h1DIGjVpK" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="51h1DIGjVpL" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="51h1DIGjVpS" role="3clFbw">
              <node concept="3uibUv" id="51h1DIGjVpT" role="2ZW6by">
                <ref role="3uigEE" to="7jhi:~GeneratedMatchingPattern" resolve="GeneratedMatchingPattern" />
              </node>
              <node concept="37vLTw" id="51h1DIGjVqG" role="2ZW6bz">
                <ref role="3cqZAo" node="51h1DIGjVqB" resolve="pattern" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="51h1DIGjVpV" role="3cqZAp">
            <node concept="3cpWsn" id="51h1DIGjVpW" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="3Tqbb2" id="51h1DIGjVpX" role="1tU5fm" />
              <node concept="10Nm6u" id="51h1DIGjVpY" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbJ" id="51h1DIGjVpZ" role="3cqZAp">
            <node concept="3clFbS" id="51h1DIGjVq0" role="3clFbx">
              <node concept="3clFbF" id="51h1DIGjVq1" role="3cqZAp">
                <node concept="37vLTI" id="51h1DIGjVq2" role="3clFbG">
                  <node concept="2OqwBi" id="51h1DIGjVq3" role="37vLTx">
                    <node concept="2OqwBi" id="51h1DIGjVq4" role="2Oq$k0">
                      <node concept="37vLTw" id="51h1DIGjVq5" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                      </node>
                      <node concept="liA8E" id="51h1DIGjVq6" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1RYTbd7MH$g" resolve="coerceTo" />
                        <node concept="37vLTw" id="51h1DIGkLRW" role="37wK5m">
                          <ref role="3cqZAo" node="51h1DIGkcwR" resolve="isStrong" />
                        </node>
                        <node concept="37vLTw" id="51h1DIGjVqH" role="37wK5m">
                          <ref role="3cqZAo" node="51h1DIGjVqD" resolve="type" />
                        </node>
                        <node concept="37vLTw" id="51h1DIGjVq8" role="37wK5m">
                          <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="51h1DIGjVq9" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="51h1DIGjVqa" role="37vLTJ">
                    <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="51h1DIGjVqb" role="3cqZAp" />
            </node>
            <node concept="3y3z36" id="51h1DIGjVqc" role="3clFbw">
              <node concept="10Nm6u" id="51h1DIGjVqd" role="3uHU7w" />
              <node concept="37vLTw" id="51h1DIGjVqe" role="3uHU7B">
                <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
              </node>
            </node>
            <node concept="9aQIb" id="51h1DIGjVqf" role="9aQIa">
              <node concept="3clFbS" id="51h1DIGjVqg" role="9aQI4">
                <node concept="3clFbF" id="51h1DIGjVqh" role="3cqZAp">
                  <node concept="37vLTI" id="51h1DIGjVqi" role="3clFbG">
                    <node concept="2OqwBi" id="51h1DIGjVqj" role="37vLTx">
                      <node concept="2OqwBi" id="51h1DIGjVqk" role="2Oq$k0">
                        <node concept="37vLTw" id="51h1DIGjVql" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                        </node>
                        <node concept="liA8E" id="51h1DIGjVqm" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1z4$59iIxBp" resolve="coerceTo" />
                          <node concept="37vLTw" id="51h1DIGl1LD" role="37wK5m">
                            <ref role="3cqZAo" node="51h1DIGkcwR" resolve="isStrong" />
                          </node>
                          <node concept="37vLTw" id="51h1DIGjVqK" role="37wK5m">
                            <ref role="3cqZAo" node="51h1DIGjVqD" resolve="type" />
                          </node>
                          <node concept="37vLTw" id="51h1DIGjVqo" role="37wK5m">
                            <ref role="3cqZAo" node="51h1DIGjVnB" resolve="trgConcept" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="51h1DIGjVqp" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="51h1DIGjVqq" role="37vLTJ">
                      <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="51h1DIGjVqr" role="3cqZAp">
            <node concept="3K4zz7" id="51h1DIGjVqs" role="3cqZAk">
              <node concept="37vLTw" id="51h1DIGjVqt" role="3K4E3e">
                <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
              </node>
              <node concept="10Nm6u" id="51h1DIGjVqu" role="3K4GZi" />
              <node concept="1Wc70l" id="51h1DIGjVqv" role="3K4Cdx">
                <node concept="3y3z36" id="51h1DIGjVqw" role="3uHU7B">
                  <node concept="10Nm6u" id="51h1DIGjVqx" role="3uHU7w" />
                  <node concept="37vLTw" id="51h1DIGjVqy" role="3uHU7B">
                    <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
                  </node>
                </node>
                <node concept="2OqwBi" id="51h1DIGjVqz" role="3uHU7w">
                  <node concept="37vLTw" id="51h1DIGjVqF" role="2Oq$k0">
                    <ref role="3cqZAo" node="51h1DIGjVqB" resolve="pattern" />
                  </node>
                  <node concept="liA8E" id="51h1DIGjVq_" role="2OqNvi">
                    <ref role="37wK5l" to="7jhi:~IMatchingPattern.match(org.jetbrains.mps.openapi.model.SNode)" resolve="match" />
                    <node concept="37vLTw" id="51h1DIGjVqA" role="37wK5m">
                      <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5BwsbZJE0Zx" role="jymVt" />
      <node concept="3clFb_" id="2Hyoxv0bBC" role="jymVt">
        <property role="TrG5h" value="checkRecursively" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="2Hyoxv0bBD" role="1B3o_S" />
        <node concept="3cqZAl" id="2Hyoxv0bBF" role="3clF45" />
        <node concept="37vLTG" id="2Hyoxv0bBG" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="2Hyoxv0bBH" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="2Hyoxv0bBI" role="3clF46">
          <property role="TrG5h" value="consumer" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="2Hyoxv0bBJ" role="1tU5fm">
            <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
            <node concept="3qUtgH" id="2Hyoxv0bBK" role="11_B2D">
              <node concept="3uibUv" id="2Hyoxv0bBL" role="3qUvdb">
                <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2Hyoxv0bBM" role="3clF47">
          <node concept="3clFbF" id="$beNOG7jCB" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG7jCC" role="3clFbG">
              <node concept="37vLTw" id="$beNOG7jCD" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG7jCE" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFXqDU" resolve="run" />
                <node concept="1bVj0M" id="$beNOG7jCF" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG7jCG" role="1bW5cS">
                    <node concept="3SKdUt" id="2qsG4AwLBYw" role="3cqZAp">
                      <node concept="1PaTwC" id="2qsG4AwLBYx" role="1aUNEU">
                        <node concept="3oM_SD" id="2qsG4AwLBYz" role="1PaTwD">
                          <property role="3oM_SC" value="FIXME:" />
                        </node>
                        <node concept="3oM_SD" id="2qsG4AwLCq7" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                        </node>
                        <node concept="3oM_SD" id="2qsG4AwLCqi" role="1PaTwD">
                          <property role="3oM_SC" value="might" />
                        </node>
                        <node concept="3oM_SD" id="2qsG4AwLCqu" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="2qsG4AwLCqF" role="1PaTwD">
                          <property role="3oM_SC" value="be" />
                        </node>
                        <node concept="3oM_SD" id="2qsG4AwLCqL" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="2qsG4AwLCqS" role="1PaTwD">
                          <property role="3oM_SC" value="containing" />
                        </node>
                        <node concept="3oM_SD" id="2qsG4AwLCr8" role="1PaTwD">
                          <property role="3oM_SC" value="root!" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1oUwjADo$Xq" role="3cqZAp">
                      <node concept="3cpWsn" id="1oUwjADo$Xr" role="3cpWs9">
                        <property role="TrG5h" value="containingRoot" />
                        <node concept="3Tqbb2" id="1oUwjADo$SV" role="1tU5fm" />
                        <node concept="2OqwBi" id="1oUwjADoAIm" role="33vP2m">
                          <node concept="37vLTw" id="2qsG4AwLCRt" role="2Oq$k0">
                            <ref role="3cqZAo" node="2Hyoxv0bBG" resolve="node" />
                          </node>
                          <node concept="liA8E" id="2qsG4AwLDpf" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1z4$59iKE4F" role="3cqZAp" />
                    <node concept="3SKdUt" id="3CzfQ_ovDAf" role="3cqZAp">
                      <node concept="1PaTwC" id="3CzfQ_ovDAg" role="1aUNEU">
                        <node concept="3oM_SD" id="3CzfQ_ovLFy" role="1PaTwD">
                          <property role="3oM_SC" value="FIXME" />
                        </node>
                        <node concept="3oM_SD" id="3CzfQ_ovLF$" role="1PaTwD">
                          <property role="3oM_SC" value="collect" />
                        </node>
                        <node concept="3oM_SD" id="3CzfQ_ovLFB" role="1PaTwD">
                          <property role="3oM_SC" value="nodes" />
                        </node>
                        <node concept="3oM_SD" id="3CzfQ_ovLFF" role="1PaTwD">
                          <property role="3oM_SC" value="with" />
                        </node>
                        <node concept="3oM_SD" id="3CzfQ_ovLFK" role="1PaTwD">
                          <property role="3oM_SC" value="changed" />
                        </node>
                        <node concept="3oM_SD" id="3CzfQ_ovLFQ" role="1PaTwD">
                          <property role="3oM_SC" value="types" />
                        </node>
                        <node concept="3oM_SD" id="3CzfQ_ovLFX" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="3CzfQ_ovLG5" role="1PaTwD">
                          <property role="3oM_SC" value="report" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="9dktABR$KP" role="3cqZAp">
                      <node concept="3cpWsn" id="9dktABR$KQ" role="3cpWs9">
                        <property role="TrG5h" value="typesIndex" />
                        <node concept="3uibUv" id="9dktABRsfo" role="1tU5fm">
                          <ref role="3uigEE" to="tj24:6QH_LDtcxgf" resolve="TypecheckingResultsCache" />
                        </node>
                        <node concept="2OqwBi" id="1z4$59iRR3C" role="33vP2m">
                          <node concept="2OqwBi" id="9dktABR$KY" role="2Oq$k0">
                            <node concept="liA8E" id="9dktABR$KZ" role="2OqNvi">
                              <ref role="37wK5l" to="tj24:1z4$59ixOPQ" resolve="check" />
                              <node concept="37vLTw" id="2xx8OBymBZP" role="37wK5m">
                                <ref role="3cqZAo" node="1oUwjADo$Xr" resolve="containingRoot" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="1z4$59j6IZX" role="2Oq$k0">
                              <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1z4$59iRRQd" role="2OqNvi">
                            <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="3yEb0I3SBsd" role="3cqZAp" />
                    <node concept="3SKdUt" id="5Qx6_660Hb_" role="3cqZAp">
                      <node concept="1PaTwC" id="5Qx6_660HbA" role="1aUNEU">
                        <node concept="3oM_SD" id="5Qx6_660HbC" role="1PaTwD">
                          <property role="3oM_SC" value="forward" />
                        </node>
                        <node concept="3oM_SD" id="5Qx6_660IqB" role="1PaTwD">
                          <property role="3oM_SC" value="all" />
                        </node>
                        <node concept="3oM_SD" id="5Qx6_660IqE" role="1PaTwD">
                          <property role="3oM_SC" value="reported" />
                        </node>
                        <node concept="3oM_SD" id="5Qx6_660Iri" role="1PaTwD">
                          <property role="3oM_SC" value="items" />
                        </node>
                        <node concept="3oM_SD" id="5Qx6_660Isc" role="1PaTwD">
                          <property role="3oM_SC" value="always" />
                        </node>
                      </node>
                    </node>
                    <node concept="1DcWWT" id="1FOQehxolJD" role="3cqZAp">
                      <node concept="3clFbS" id="1FOQehxolJE" role="2LFqv$">
                        <node concept="3clFbJ" id="1FOQehxolJF" role="3cqZAp">
                          <node concept="2ZW3vV" id="1FOQehxolJG" role="3clFbw">
                            <node concept="3uibUv" id="1FOQehxolJH" role="2ZW6by">
                              <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                            </node>
                            <node concept="37vLTw" id="1FOQehxolJI" role="2ZW6bz">
                              <ref role="3cqZAo" node="1FOQehxolJW" resolve="it" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="1FOQehxolJJ" role="3clFbx">
                            <node concept="3cpWs8" id="1FOQehxolJK" role="3cqZAp">
                              <node concept="3cpWsn" id="1FOQehxolJL" role="3cpWs9">
                                <property role="TrG5h" value="nri" />
                                <node concept="3uibUv" id="1FOQehxolJM" role="1tU5fm">
                                  <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                                </node>
                                <node concept="1eOMI4" id="1FOQehxolJN" role="33vP2m">
                                  <node concept="10QFUN" id="1FOQehxolJO" role="1eOMHV">
                                    <node concept="3uibUv" id="1FOQehxolJP" role="10QFUM">
                                      <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                                    </node>
                                    <node concept="37vLTw" id="1FOQehxolJQ" role="10QFUP">
                                      <ref role="3cqZAo" node="1FOQehxolJW" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1FOQehxolJR" role="3cqZAp">
                              <node concept="2OqwBi" id="1FOQehxolJS" role="3clFbG">
                                <node concept="37vLTw" id="5Qx6_666Sb8" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2Hyoxv0bBI" resolve="consumer" />
                                </node>
                                <node concept="liA8E" id="1FOQehxolJU" role="2OqNvi">
                                  <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                                  <node concept="37vLTw" id="1FOQehxolJV" role="37wK5m">
                                    <ref role="3cqZAo" node="1FOQehxolJL" resolve="nri" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="1FOQehxolJW" role="1Duv9x">
                        <property role="TrG5h" value="it" />
                        <node concept="3uibUv" id="1FOQehxolJX" role="1tU5fm">
                          <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5Qx6_660$sf" role="1DdaDG">
                        <node concept="37vLTw" id="5Qx6_660zcn" role="2Oq$k0">
                          <ref role="3cqZAo" node="9dktABR$KQ" resolve="typesIndex" />
                        </node>
                        <node concept="liA8E" id="5Qx6_660_60" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:3yEb0I3SXN3" resolve="allReportItems" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2Hyoxv0bBN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2mhJggjDlnt" role="jymVt" />
      <node concept="3clFb_" id="6l3eCxofJGN" role="jymVt">
        <property role="TrG5h" value="clearCache" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="6l3eCxofJGO" role="1B3o_S" />
        <node concept="3cqZAl" id="6l3eCxofJGQ" role="3clF45" />
        <node concept="37vLTG" id="6l3eCxofJGR" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="1RYTbd7EG4k" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="6l3eCxofJGT" role="3clF47">
          <node concept="3clFbF" id="$beNOG812D" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG812E" role="3clFbG">
              <node concept="37vLTw" id="$beNOG812F" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG812G" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFXqDU" resolve="run" />
                <node concept="1bVj0M" id="$beNOG812H" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG812I" role="1bW5cS">
                    <node concept="3clFbJ" id="3DPJ8QJpx$8" role="3cqZAp">
                      <node concept="3clFbS" id="3DPJ8QJpx$a" role="3clFbx">
                        <node concept="3clFbF" id="1z4$59j6KuM" role="3cqZAp">
                          <node concept="2OqwBi" id="1z4$59j6L77" role="3clFbG">
                            <node concept="2OqwBi" id="1RYTbd7E_nx" role="2Oq$k0">
                              <node concept="37vLTw" id="1z4$59j6KuK" role="2Oq$k0">
                                <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                              </node>
                              <node concept="liA8E" id="1RYTbd7EBlX" role="2OqNvi">
                                <ref role="37wK5l" to="tj24:1RYTbd7Di6U" resolve="getState" />
                              </node>
                            </node>
                            <node concept="liA8E" id="1z4$59j6LAx" role="2OqNvi">
                              <ref role="37wK5l" to="tj24:4duYm8_mMNK" resolve="clearCaches" />
                              <node concept="2OqwBi" id="1RYTbd7EFwZ" role="37wK5m">
                                <node concept="37vLTw" id="1z4$59j6NEW" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6l3eCxofJGR" resolve="node" />
                                </node>
                                <node concept="iZEcu" id="1RYTbd7EIz6" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="3DPJ8QJpz3r" role="3clFbw">
                        <node concept="10Nm6u" id="3DPJ8QJpzAI" role="3uHU7w" />
                        <node concept="37vLTw" id="3DPJ8QJpB_9" role="3uHU7B">
                          <ref role="3cqZAo" node="6l3eCxofJGR" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6l3eCxofJGU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2qsG4AwL4R$" role="jymVt" />
      <node concept="3clFb_" id="6l3eCxofJGV" role="jymVt">
        <property role="TrG5h" value="isCacheUpToDate" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="6l3eCxofJGW" role="1B3o_S" />
        <node concept="10P_77" id="6l3eCxofJGY" role="3clF45" />
        <node concept="37vLTG" id="6l3eCxofJGZ" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6l3eCxofJH0" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="6l3eCxofJH1" role="3clF47">
          <node concept="3clFbF" id="$beNOG8uJ3" role="3cqZAp">
            <node concept="2OqwBi" id="$beNOG8uJ4" role="3clFbG">
              <node concept="37vLTw" id="$beNOG8uJ5" role="2Oq$k0">
                <ref role="3cqZAo" node="$beNOFZuQc" resolve="guard" />
              </node>
              <node concept="liA8E" id="$beNOG8uJ6" role="2OqNvi">
                <ref role="37wK5l" node="$beNOFX__q" resolve="compute" />
                <node concept="1bVj0M" id="$beNOG8uJ7" role="37wK5m">
                  <node concept="3clFbS" id="$beNOG8uJ8" role="1bW5cS">
                    <node concept="3SKdUt" id="19OC90nb5_" role="3cqZAp">
                      <node concept="1PaTwC" id="19OC90nb5A" role="1aUNEU">
                        <node concept="3oM_SD" id="19OC90nb5B" role="1PaTwD">
                          <property role="3oM_SC" value="FIXME:" />
                        </node>
                        <node concept="3oM_SD" id="19OC90nb5C" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                        </node>
                        <node concept="3oM_SD" id="19OC90nb5D" role="1PaTwD">
                          <property role="3oM_SC" value="might" />
                        </node>
                        <node concept="3oM_SD" id="19OC90nb5E" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="19OC90nb5F" role="1PaTwD">
                          <property role="3oM_SC" value="be" />
                        </node>
                        <node concept="3oM_SD" id="19OC90nb5G" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="19OC90nb5H" role="1PaTwD">
                          <property role="3oM_SC" value="containing" />
                        </node>
                        <node concept="3oM_SD" id="19OC90nb5I" role="1PaTwD">
                          <property role="3oM_SC" value="root!" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="19OC90nb5J" role="3cqZAp">
                      <node concept="3cpWsn" id="19OC90nb5K" role="3cpWs9">
                        <property role="TrG5h" value="containingRoot" />
                        <node concept="3Tqbb2" id="19OC90nb5L" role="1tU5fm" />
                        <node concept="2OqwBi" id="19OC90nb5M" role="33vP2m">
                          <node concept="37vLTw" id="19OC90nb5N" role="2Oq$k0">
                            <ref role="3cqZAo" node="6l3eCxofJGZ" resolve="node" />
                          </node>
                          <node concept="liA8E" id="19OC90nb5O" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="At0yqMXSkh" role="3cqZAp">
                      <node concept="2OqwBi" id="At0yqMXZs2" role="3clFbG">
                        <node concept="37vLTw" id="At0yqMXSkf" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                        </node>
                        <node concept="liA8E" id="At0yqMY6Qp" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:At0yqMUA4l" resolve="isCacheUpToDate" />
                          <node concept="37vLTw" id="At0yqMYnat" role="37wK5m">
                            <ref role="3cqZAo" node="19OC90nb5K" resolve="containingRoot" />
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
        <node concept="2AHcQZ" id="6l3eCxofJH2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2mhJggjDpQU" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_oh9nz" role="jymVt">
        <property role="TrG5h" value="addTypeAccessListener" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="3CzfQ_oh9n$" role="1B3o_S" />
        <node concept="3cqZAl" id="3CzfQ_oh9nA" role="3clF45" />
        <node concept="37vLTG" id="3CzfQ_oh9nB" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="3CzfQ_oh9nC" role="1tU5fm">
            <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
          </node>
        </node>
        <node concept="3clFbS" id="3CzfQ_oh9nD" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_oi94q" role="3cqZAp">
            <node concept="2OqwBi" id="3CzfQ_oifqm" role="3clFbG">
              <node concept="37vLTw" id="3CzfQ_oi94p" role="2Oq$k0">
                <ref role="3cqZAo" node="3CzfQ_ohqQB" resolve="accessListeners" />
              </node>
              <node concept="TSZUe" id="3CzfQ_oiogo" role="2OqNvi">
                <node concept="37vLTw" id="3CzfQ_oiurv" role="25WWJ7">
                  <ref role="3cqZAo" node="3CzfQ_oh9nB" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_oh9nE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_okxHf" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_oh9nF" role="jymVt">
        <property role="TrG5h" value="removeTypeAccessListener" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="3CzfQ_oh9nG" role="1B3o_S" />
        <node concept="3cqZAl" id="3CzfQ_oh9nI" role="3clF45" />
        <node concept="37vLTG" id="3CzfQ_oh9nJ" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="3CzfQ_oh9nK" role="1tU5fm">
            <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
          </node>
        </node>
        <node concept="3clFbS" id="3CzfQ_oh9nL" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_oi_e_" role="3cqZAp">
            <node concept="2OqwBi" id="3CzfQ_oiG0P" role="3clFbG">
              <node concept="37vLTw" id="3CzfQ_oi_e$" role="2Oq$k0">
                <ref role="3cqZAo" node="3CzfQ_ohqQB" resolve="accessListeners" />
              </node>
              <node concept="3dhRuq" id="3CzfQ_oiMIR" role="2OqNvi">
                <node concept="37vLTw" id="3CzfQ_oiUBf" role="25WWJ7">
                  <ref role="3cqZAo" node="3CzfQ_oh9nJ" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_oh9nM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_okr33" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_oh9nN" role="jymVt">
        <property role="TrG5h" value="addTypeInvalidationListener" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="3CzfQ_oh9nO" role="1B3o_S" />
        <node concept="3cqZAl" id="3CzfQ_oh9nQ" role="3clF45" />
        <node concept="37vLTG" id="3CzfQ_oh9nR" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="3CzfQ_oh9nS" role="1tU5fm">
            <ref role="3uigEE" to="1ka:~TypeInvalidationListener" resolve="TypeInvalidationListener" />
          </node>
        </node>
        <node concept="3clFbS" id="3CzfQ_oh9nT" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_oj2N6" role="3cqZAp">
            <node concept="2OqwBi" id="3CzfQ_oj9B2" role="3clFbG">
              <node concept="37vLTw" id="3CzfQ_oj2N5" role="2Oq$k0">
                <ref role="3cqZAo" node="3CzfQ_ohu8F" resolve="invalidationListeners" />
              </node>
              <node concept="TSZUe" id="3CzfQ_ojhy3" role="2OqNvi">
                <node concept="37vLTw" id="3CzfQ_ojGs_" role="25WWJ7">
                  <ref role="3cqZAo" node="3CzfQ_oh9nR" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_oh9nU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_okhKY" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_oh9nV" role="jymVt">
        <property role="TrG5h" value="removeTypeInvalidationListener" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="3CzfQ_oh9nW" role="1B3o_S" />
        <node concept="3cqZAl" id="3CzfQ_oh9nY" role="3clF45" />
        <node concept="37vLTG" id="3CzfQ_oh9nZ" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="3CzfQ_oh9o0" role="1tU5fm">
            <ref role="3uigEE" to="1ka:~TypeInvalidationListener" resolve="TypeInvalidationListener" />
          </node>
        </node>
        <node concept="3clFbS" id="3CzfQ_oh9o1" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_ojNJV" role="3cqZAp">
            <node concept="2OqwBi" id="3CzfQ_ojTUz" role="3clFbG">
              <node concept="37vLTw" id="3CzfQ_ojNJU" role="2Oq$k0">
                <ref role="3cqZAo" node="3CzfQ_ohu8F" resolve="invalidationListeners" />
              </node>
              <node concept="3dhRuq" id="3CzfQ_ok2e8" role="2OqNvi">
                <node concept="37vLTw" id="3CzfQ_oka_z" role="25WWJ7">
                  <ref role="3cqZAo" node="3CzfQ_oh9nZ" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_oh9o2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_ohMKC" role="jymVt" />
      <node concept="312cEg" id="3CzfQ_ohqQB" role="jymVt">
        <property role="TrG5h" value="accessListeners" />
        <node concept="3Tm6S6" id="3CzfQ_ohqQC" role="1B3o_S" />
        <node concept="2hMVRd" id="3CzfQ_ohrpR" role="1tU5fm">
          <node concept="3uibUv" id="3CzfQ_ohs5F" role="2hN53Y">
            <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
          </node>
        </node>
        <node concept="2ShNRf" id="3CzfQ_ohtx8" role="33vP2m">
          <node concept="2i4dXS" id="3CzfQ_ohsTo" role="2ShVmc">
            <node concept="3uibUv" id="3CzfQ_ohsTp" role="HW$YZ">
              <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3CzfQ_ohu8F" role="jymVt">
        <property role="TrG5h" value="invalidationListeners" />
        <node concept="3Tm6S6" id="3CzfQ_ohu8G" role="1B3o_S" />
        <node concept="2hMVRd" id="3CzfQ_ohuG2" role="1tU5fm">
          <node concept="3uibUv" id="3CzfQ_ohvgv" role="2hN53Y">
            <ref role="3uigEE" to="1ka:~TypeInvalidationListener" resolve="TypeInvalidationListener" />
          </node>
        </node>
        <node concept="2ShNRf" id="3CzfQ_ohwFW" role="33vP2m">
          <node concept="2i4dXS" id="3CzfQ_ohw4c" role="2ShVmc">
            <node concept="3uibUv" id="3CzfQ_ohw4d" role="HW$YZ">
              <ref role="3uigEE" to="1ka:~TypeInvalidationListener" resolve="TypeInvalidationListener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="1z4$59j5F_5" role="jymVt">
        <property role="TrG5h" value="typecheckingService" />
        <node concept="3Tm6S6" id="1z4$59j5F_3" role="1B3o_S" />
        <node concept="3uibUv" id="1z4$59j5F_4" role="1tU5fm">
          <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
        </node>
      </node>
      <node concept="312cEg" id="4duYm8_rvM9" role="jymVt">
        <property role="TrG5h" value="root" />
        <node concept="3Tm6S6" id="4duYm8_rvMa" role="1B3o_S" />
        <node concept="3Tqbb2" id="4duYm8_rvMc" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="5XNK1YzpV_w" role="jymVt">
        <property role="TrG5h" value="bits" />
        <node concept="3Tm6S6" id="5XNK1YzpV_x" role="1B3o_S" />
        <node concept="10Oyi0" id="5XNK1YzpY5D" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="$beNOFZuQc" role="jymVt">
        <property role="TrG5h" value="guard" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="$beNOFZuQd" role="1B3o_S" />
        <node concept="3uibUv" id="$beNOFZuQf" role="1tU5fm">
          <ref role="3uigEE" node="$beNOFXcqs" resolve="CoderulesTypecheckingProvider.RecursionGuard" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmBCy" role="jymVt" />
    <node concept="312cEg" id="7e$2hwaZkiV" role="jymVt">
      <property role="TrG5h" value="disposed" />
      <node concept="3Tm6S6" id="7e$2hwaZkiW" role="1B3o_S" />
      <node concept="10P_77" id="7e$2hwaZAMn" role="1tU5fm" />
      <node concept="3clFbT" id="7e$2hwaZCDl" role="33vP2m" />
    </node>
    <node concept="3Tm1VV" id="7Tj_ODDR37Y" role="1B3o_S" />
    <node concept="3uibUv" id="3LFq2p98ihg" role="EKbjA">
      <ref role="3uigEE" to="ev0w:~TypecheckingProvider" resolve="TypecheckingProvider" />
      <node concept="3uibUv" id="6u4W$ZKoB5z" role="11_B2D">
        <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
      </node>
    </node>
    <node concept="312cEg" id="1RYTbd7AOyL" role="jymVt">
      <property role="TrG5h" value="states" />
      <node concept="3Tm6S6" id="1RYTbd7AOyM" role="1B3o_S" />
      <node concept="2hMVRd" id="1RYTbd7B44M" role="1tU5fm">
        <node concept="3uibUv" id="1RYTbd7B$Q8" role="2hN53Y">
          <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
        </node>
      </node>
      <node concept="2ShNRf" id="1RYTbd7B4Xd" role="33vP2m">
        <node concept="2i4dXS" id="1RYTbd7BnTK" role="2ShVmc">
          <node concept="3uibUv" id="1RYTbd7B_$r" role="HW$YZ">
            <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="vVsDu9byFZ">
    <property role="3GE5qa" value="lifecycle" />
    <property role="TrG5h" value="TypecheckingProviderLifecycle" />
    <node concept="2BZ0e9" id="6gnqipLyo6c" role="2uRRBG">
      <property role="TrG5h" value="initToken" />
      <node concept="3Tm6S6" id="6gnqipLyo6d" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLyosH" role="1tU5fm">
        <ref role="3uigEE" node="6gnqipLxPUE" resolve="ProviderInitToken" />
      </node>
    </node>
    <node concept="2BZ0e9" id="6YTH7uERSL2" role="2uRRBG">
      <property role="TrG5h" value="typecheckingOptions" />
      <node concept="3Tm1VV" id="6YTH7uERTqc" role="1B3o_S" />
      <node concept="3uibUv" id="6YTH7uERTFl" role="1tU5fm">
        <ref role="3uigEE" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
      </node>
    </node>
    <node concept="2uRRBj" id="vVsDu9byG8" role="2uRRBE">
      <node concept="3clFbS" id="vVsDu9byG9" role="2VODD2">
        <node concept="3clFbF" id="6gnqipLy0oP" role="3cqZAp">
          <node concept="37vLTI" id="6gnqipLyoWg" role="3clFbG">
            <node concept="2OqwBi" id="6gnqipLypck" role="37vLTJ">
              <node concept="2WthIp" id="6gnqipLyp21" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6gnqipLypkq" role="2OqNvi">
                <ref role="2WH_rO" node="6gnqipLyo6c" resolve="initToken" />
              </node>
            </node>
            <node concept="2ShNRf" id="6gnqipLy0oL" role="37vLTx">
              <node concept="1pGfFk" id="6gnqipLyo3O" role="2ShVmc">
                <ref role="37wK5l" node="6gnqipLxXBF" resolve="ProviderInitToken" />
                <node concept="XUXob" id="6gnqipLyo4r" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gnqipLyp$H" role="3cqZAp">
          <node concept="2OqwBi" id="6gnqipLypLb" role="3clFbG">
            <node concept="2OqwBi" id="6gnqipLyp$B" role="2Oq$k0">
              <node concept="2WthIp" id="6gnqipLyp$E" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6gnqipLyp$G" role="2OqNvi">
                <ref role="2WH_rO" node="6gnqipLyo6c" resolve="initToken" />
              </node>
            </node>
            <node concept="liA8E" id="6gnqipLypT7" role="2OqNvi">
              <ref role="37wK5l" node="6gnqipLxUdr" resolve="init" />
              <node concept="2YIFZM" id="3zz62D5cwaW" role="37wK5m">
                <ref role="37wK5l" to="tj24:2MNGcFT4ZOn" resolve="getEffectiveConfig" />
                <ref role="1Pybhc" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="3LFq2p98rrf" role="2uRRBF">
      <node concept="3clFbS" id="3LFq2p98rrg" role="2VODD2">
        <node concept="3clFbJ" id="51kI2ZZOZ18" role="3cqZAp">
          <node concept="3clFbS" id="51kI2ZZOZ1a" role="3clFbx">
            <node concept="3clFbF" id="6gnqipLyqwM" role="3cqZAp">
              <node concept="2OqwBi" id="6gnqipLyqwN" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLyqwO" role="2Oq$k0">
                  <node concept="2WthIp" id="6gnqipLyqwP" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="6gnqipLyqwQ" role="2OqNvi">
                    <ref role="2WH_rO" node="6gnqipLyo6c" resolve="initToken" />
                  </node>
                </node>
                <node concept="liA8E" id="6gnqipLyqIJ" role="2OqNvi">
                  <ref role="37wK5l" node="6gnqipLxQ9r" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gnqipLyqNe" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLyrbx" role="3clFbG">
                <node concept="10Nm6u" id="6gnqipLyrda" role="37vLTx" />
                <node concept="2OqwBi" id="6gnqipLyqNg" role="37vLTJ">
                  <node concept="2WthIp" id="6gnqipLyqNh" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="6gnqipLyqNi" role="2OqNvi">
                    <ref role="2WH_rO" node="6gnqipLyo6c" resolve="initToken" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="51kI2ZZOZwd" role="3clFbw">
            <node concept="10Nm6u" id="51kI2ZZOZ$f" role="3uHU7w" />
            <node concept="2OqwBi" id="51kI2ZZOZcK" role="3uHU7B">
              <node concept="2WthIp" id="51kI2ZZOZ2I" role="2Oq$k0" />
              <node concept="2BZ7hE" id="51kI2ZZOZnr" role="2OqNvi">
                <ref role="2WH_rO" node="6gnqipLyo6c" resolve="initToken" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="siuT5mmCnU">
    <property role="TrG5h" value="CoderulesProviderLevel" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="siuT5mmF3e" role="jymVt" />
    <node concept="Wx3nA" id="siuT5mmFgw" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_CODERULES" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="siuT5mmEPA" role="1tU5fm" />
      <node concept="3Tm6S6" id="siuT5mmEP_" role="1B3o_S" />
      <node concept="Xl_RD" id="siuT5mmEPB" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.typechecking.coderules" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmZWY" role="jymVt" />
    <node concept="Wx3nA" id="siuT5mmZ4J" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_DEFAULT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="siuT5mmZ4K" role="1tU5fm" />
      <node concept="3Tm6S6" id="siuT5mmZ4L" role="1B3o_S" />
      <node concept="Xl_RD" id="siuT5mmZ4M" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.typechecking.default" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCrl" role="jymVt" />
    <node concept="3clFbW" id="siuT5mmS2P" role="jymVt">
      <node concept="3cqZAl" id="siuT5mmS2R" role="3clF45" />
      <node concept="3Tmbuc" id="siuT5mmT8o" role="1B3o_S" />
      <node concept="3clFbS" id="siuT5mmS2T" role="3clF47">
        <node concept="3SKdUt" id="siuT5mmUs1" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYyi8" role="1aUNEU">
            <node concept="3oM_SD" id="589APehYyi9" role="1PaTwD">
              <property role="3oM_SC" value="available" />
            </node>
            <node concept="3oM_SD" id="589APehYyia" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="589APehYyib" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYyic" role="1PaTwD">
              <property role="3oM_SC" value="local" />
            </node>
            <node concept="3oM_SD" id="589APehYyid" role="1PaTwD">
              <property role="3oM_SC" value="package" />
            </node>
            <node concept="3oM_SD" id="589APehYyie" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmTj6" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCrR" role="jymVt">
      <property role="TrG5h" value="getLevelID" />
      <node concept="3Tm1VV" id="siuT5mmCrS" role="1B3o_S" />
      <node concept="17QB3L" id="siuT5mmHif" role="3clF45" />
      <node concept="3clFbS" id="siuT5mmCrV" role="3clF47">
        <node concept="3clFbF" id="siuT5mmFQe" role="3cqZAp">
          <node concept="37vLTw" id="siuT5mmFQc" role="3clFbG">
            <ref role="3cqZAo" node="siuT5mmFgw" resolve="TYPECHECKING_CODERULES" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCrW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCZD" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCrZ" role="jymVt">
      <property role="TrG5h" value="compareTo" />
      <node concept="3Tm1VV" id="siuT5mmCs0" role="1B3o_S" />
      <node concept="10Oyi0" id="siuT5mmCs2" role="3clF45" />
      <node concept="37vLTG" id="siuT5mmCs3" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="siuT5mmCs7" role="1tU5fm">
          <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderLevel" resolve="TypecheckingBackend.ProviderLevel" />
        </node>
      </node>
      <node concept="3clFbS" id="siuT5mmCs8" role="3clF47">
        <node concept="3clFbJ" id="siuT5mn6k6" role="3cqZAp">
          <node concept="3clFbS" id="siuT5mn6k8" role="3clFbx">
            <node concept="3cpWs6" id="siuT5mnazL" role="3cqZAp">
              <node concept="3cmrfG" id="siuT5mna$o" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="siuT5mn7Mr" role="3clFbw">
            <node concept="37vLTw" id="siuT5mn7kn" role="2Oq$k0">
              <ref role="3cqZAo" node="siuT5mmFgw" resolve="TYPECHECKING_CODERULES" />
            </node>
            <node concept="liA8E" id="siuT5mn91i" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="siuT5mn9wE" role="37wK5m">
                <node concept="37vLTw" id="siuT5mn92$" role="2Oq$k0">
                  <ref role="3cqZAo" node="siuT5mmCs3" resolve="that" />
                </node>
                <node concept="liA8E" id="siuT5mnajq" role="2OqNvi">
                  <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderLevel.getLevelID()" resolve="getLevelID" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="siuT5mmUwP" role="3cqZAp">
          <node concept="3clFbS" id="siuT5mmUwR" role="3clFbx">
            <node concept="3cpWs6" id="siuT5mn3pW" role="3cqZAp">
              <node concept="3cmrfG" id="siuT5mn4_K" role="3cqZAk">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="siuT5mn0WF" role="3clFbw">
            <node concept="37vLTw" id="siuT5mn0wk" role="2Oq$k0">
              <ref role="3cqZAo" node="siuT5mmZ4J" resolve="TYPECHECKING_DEFAULT" />
            </node>
            <node concept="liA8E" id="siuT5mn29P" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="siuT5mn2n3" role="37wK5m">
                <node concept="37vLTw" id="siuT5mn2aZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="siuT5mmCs3" resolve="that" />
                </node>
                <node concept="liA8E" id="siuT5mn39J" role="2OqNvi">
                  <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderLevel.getLevelID()" resolve="getLevelID" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="siuT5mndzv" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYyif" role="1aUNEU">
            <node concept="3oM_SD" id="589APehYyig" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="589APehYyih" role="1PaTwD">
              <property role="3oM_SC" value="others" />
            </node>
            <node concept="3oM_SD" id="589APehYyii" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="589APehYyij" role="1PaTwD">
              <property role="3oM_SC" value="going" />
            </node>
            <node concept="3oM_SD" id="589APehYyik" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="589APehYyil" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="589APehYyim" role="1PaTwD">
              <property role="3oM_SC" value="lower" />
            </node>
            <node concept="3oM_SD" id="589APehYyin" role="1PaTwD">
              <property role="3oM_SC" value="priority" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="siuT5mnbcc" role="3cqZAp">
          <node concept="3cmrfG" id="siuT5mnbLf" role="3cqZAk">
            <property role="3cmrfH" value="-1" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCs9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCxF" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCAx" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="3Tm1VV" id="siuT5mmCAy" role="1B3o_S" />
      <node concept="10Oyi0" id="siuT5mmCA$" role="3clF45" />
      <node concept="3clFbS" id="siuT5mmCAB" role="3clF47">
        <node concept="3cpWs6" id="siuT5mmKLa" role="3cqZAp">
          <node concept="3cpWs3" id="siuT5mmKLb" role="3cqZAk">
            <node concept="17qRlL" id="siuT5mmKLc" role="3uHU7B">
              <node concept="2OqwBi" id="siuT5mmKLd" role="3uHU7B">
                <node concept="1rXfSq" id="siuT5mmKLe" role="2Oq$k0">
                  <ref role="37wK5l" node="siuT5mmCrR" resolve="getLevelID" />
                </node>
                <node concept="liA8E" id="siuT5mmKLf" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                </node>
              </node>
              <node concept="3cmrfG" id="siuT5mmKLg" role="3uHU7w">
                <property role="3cmrfH" value="43" />
              </node>
            </node>
            <node concept="3cmrfG" id="siuT5mmKLh" role="3uHU7w">
              <property role="3cmrfH" value="23" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCAC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmHuz" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCAF" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="3Tm1VV" id="siuT5mmCAG" role="1B3o_S" />
      <node concept="10P_77" id="siuT5mmCAI" role="3clF45" />
      <node concept="37vLTG" id="siuT5mmCAJ" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="siuT5mmCAK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="siuT5mmCAN" role="3clF47">
        <node concept="3clFbF" id="siuT5mmMsw" role="3cqZAp">
          <node concept="1Wc70l" id="siuT5mmMUD" role="3clFbG">
            <node concept="2OqwBi" id="siuT5mmOkR" role="3uHU7w">
              <node concept="2OqwBi" id="siuT5mmNlK" role="2Oq$k0">
                <node concept="37vLTw" id="siuT5mmN6h" role="2Oq$k0">
                  <ref role="3cqZAo" node="siuT5mmCAJ" resolve="that" />
                </node>
                <node concept="liA8E" id="siuT5mmNOV" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="liA8E" id="siuT5mmQmp" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="3VsKOn" id="siuT5mmR62" role="37wK5m">
                  <ref role="3VsUkX" node="siuT5mmCnU" resolve="CoderulesProviderLevel" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="siuT5mmMF5" role="3uHU7B">
              <node concept="37vLTw" id="siuT5mmMsv" role="3uHU7B">
                <ref role="3cqZAo" node="siuT5mmCAJ" resolve="that" />
              </node>
              <node concept="10Nm6u" id="siuT5mmMQp" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCAO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCro" role="jymVt" />
    <node concept="3Tm1VV" id="siuT5mmCnV" role="1B3o_S" />
    <node concept="3uibUv" id="siuT5mmCr1" role="EKbjA">
      <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderLevel" resolve="TypecheckingBackend.ProviderLevel" />
    </node>
  </node>
  <node concept="312cEu" id="6gnqipLxPUE">
    <property role="3GE5qa" value="lifecycle" />
    <property role="TrG5h" value="ProviderInitToken" />
    <node concept="2tJIrI" id="6gnqipL$jCO" role="jymVt" />
    <node concept="3clFbW" id="6gnqipLxXBF" role="jymVt">
      <node concept="3cqZAl" id="6gnqipLxXBH" role="3clF45" />
      <node concept="3Tmbuc" id="6gnqipLyyvE" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLxXBJ" role="3clF47">
        <node concept="3clFbF" id="6gnqipLxYh_" role="3cqZAp">
          <node concept="37vLTI" id="6gnqipLxYhB" role="3clFbG">
            <node concept="2OqwBi" id="6gnqipLxYIy" role="37vLTJ">
              <node concept="Xjq3P" id="6gnqipLxYNb" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gnqipLxYI_" role="2OqNvi">
                <ref role="2Oxat5" node="6gnqipLxYhx" resolve="mpsPlatform" />
              </node>
            </node>
            <node concept="37vLTw" id="6gnqipLxYhF" role="37vLTx">
              <ref role="3cqZAo" node="6gnqipLxYgY" resolve="platform" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6gnqipLxYgY" role="3clF46">
        <property role="TrG5h" value="platform" />
        <node concept="3uibUv" id="6gnqipLxYgX" role="1tU5fm">
          <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLxPWG" role="jymVt" />
    <node concept="3clFb_" id="6gnqipLxUdr" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="6YTH7uES0AH" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="6YTH7uES25c" role="1tU5fm">
          <ref role="3uigEE" to="tj24:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="3cqZAl" id="6gnqipLxUdt" role="3clF45" />
      <node concept="3Tmbuc" id="6gnqipLyxJH" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLxUdv" role="3clF47">
        <node concept="3clFbF" id="1PdMG9ntIAW" role="3cqZAp">
          <node concept="37vLTI" id="1PdMG9ntJXo" role="3clFbG">
            <node concept="2ShNRf" id="1PdMG9ntKiG" role="37vLTx">
              <node concept="YeOm9" id="1PdMG9ntLFd" role="2ShVmc">
                <node concept="1Y3b0j" id="1PdMG9ntLFg" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="3qmy:~DeployListener" resolve="DeployListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="1PdMG9ntLFh" role="1B3o_S" />
                  <node concept="3clFb_" id="1PdMG9nvQ$L" role="jymVt">
                    <property role="TrG5h" value="onUnloaded" />
                    <node concept="3Tm1VV" id="1PdMG9nvQ$N" role="1B3o_S" />
                    <node concept="3cqZAl" id="1PdMG9nvQ$P" role="3clF45" />
                    <node concept="37vLTG" id="1PdMG9nvQ$Q" role="3clF46">
                      <property role="TrG5h" value="unloadedModules" />
                      <node concept="3uibUv" id="1PdMG9nvQ$R" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                        <node concept="3uibUv" id="1PdMG9nvQ$S" role="11_B2D">
                          <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="1PdMG9nvQ$T" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="1PdMG9nvQ$U" role="3clF46">
                      <property role="TrG5h" value="monitor" />
                      <node concept="3uibUv" id="1PdMG9nvQ$V" role="1tU5fm">
                        <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                      </node>
                      <node concept="2AHcQZ" id="1PdMG9nvQ$W" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1PdMG9nvQ_d" role="3clF47">
                      <node concept="3clFbJ" id="1PdMG9nvzMm" role="3cqZAp">
                        <node concept="3y3z36" id="1PdMG9nv_Kd" role="3clFbw">
                          <node concept="10Nm6u" id="1PdMG9nvAtw" role="3uHU7w" />
                          <node concept="37vLTw" id="51h1DIGa1_P" role="3uHU7B">
                            <ref role="3cqZAo" node="6gnqipLxRoW" resolve="provider" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1PdMG9nvzMo" role="3clFbx">
                          <node concept="3clFbF" id="1PdMG9nvB8w" role="3cqZAp">
                            <node concept="2OqwBi" id="1PdMG9nvBFB" role="3clFbG">
                              <node concept="37vLTw" id="51h1DIGa2dB" role="2Oq$k0">
                                <ref role="3cqZAo" node="6gnqipLxRoW" resolve="provider" />
                              </node>
                              <node concept="liA8E" id="51h1DIGa2N6" role="2OqNvi">
                                <ref role="37wK5l" node="1PdMG9nu6bb" resolve="clearAllCashes" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1PdMG9nvQ_e" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1PdMG9ntJaS" role="37vLTJ">
              <node concept="Xjq3P" id="1PdMG9ntIAU" role="2Oq$k0" />
              <node concept="2OwXpG" id="1PdMG9ntJwF" role="2OqNvi">
                <ref role="2Oxat5" node="1PdMG9ntGWW" resolve="deployListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1PdMG9nwWGG" role="3cqZAp">
          <node concept="2OqwBi" id="1PdMG9nwY8z" role="3clFbG">
            <node concept="2YIFZM" id="1PdMG9nwXFo" role="2Oq$k0">
              <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
            </node>
            <node concept="liA8E" id="1PdMG9nwYN0" role="2OqNvi">
              <ref role="37wK5l" to="3qmy:~ClassLoaderManager.addListener(jetbrains.mps.classloading.DeployListener)" resolve="addListener" />
              <node concept="37vLTw" id="1PdMG9nwZl_" role="37wK5m">
                <ref role="3cqZAo" node="1PdMG9ntGWW" resolve="deployListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gnqipLyvbs" role="3cqZAp">
          <node concept="1rXfSq" id="6gnqipLyvbq" role="3clFbG">
            <ref role="37wK5l" node="6gnqipLysuY" resolve="activate" />
            <node concept="37vLTw" id="6YTH7uES3ic" role="37wK5m">
              <ref role="3cqZAo" node="6YTH7uES0AH" resolve="config" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLxTTY" role="jymVt" />
    <node concept="3clFb_" id="6gnqipLxQ9r" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="6gnqipLxQ9t" role="3clF45" />
      <node concept="3Tmbuc" id="6gnqipLxQa8" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLxQ9v" role="3clF47">
        <node concept="3clFbF" id="6gnqipLz5zs" role="3cqZAp">
          <node concept="1rXfSq" id="6gnqipLz5zr" role="3clFbG">
            <ref role="37wK5l" node="6gnqipLyY7q" resolve="deactivate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLz4WZ" role="jymVt" />
    <node concept="3clFb_" id="6gnqipLysuY" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="37vLTG" id="6YTH7uES3yX" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="6YTH7uES4xt" role="1tU5fm">
          <ref role="3uigEE" to="tj24:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="3cqZAl" id="6gnqipLysv0" role="3clF45" />
      <node concept="3Tm6S6" id="6gnqipLysOv" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLysv2" role="3clF47">
        <node concept="3clFbF" id="6gnqipLxUvT" role="3cqZAp">
          <node concept="2YIFZM" id="6gnqipLxUvU" role="3clFbG">
            <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
            <ref role="37wK5l" to="tj24:6hpwxwitVpF" resolve="initFactory" />
            <node concept="37vLTw" id="6YTH7uES73L" role="37wK5m">
              <ref role="3cqZAo" node="6YTH7uES3yX" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6gnqipLxUws" role="3cqZAp">
          <node concept="3cpWsn" id="6gnqipLxUwt" role="3cpWs9">
            <property role="TrG5h" value="backend" />
            <node concept="3uibUv" id="6gnqipLxUwu" role="1tU5fm">
              <ref role="3uigEE" to="ev0w:~TypecheckingBackend" resolve="TypecheckingBackend" />
            </node>
            <node concept="2OqwBi" id="6gnqipLxUwv" role="33vP2m">
              <node concept="37vLTw" id="6gnqipLxYTh" role="2Oq$k0">
                <ref role="3cqZAo" node="6gnqipLxYhx" resolve="mpsPlatform" />
              </node>
              <node concept="liA8E" id="6gnqipLxUwx" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="6gnqipLxUwy" role="37wK5m">
                  <ref role="3VsUkX" to="ev0w:~TypecheckingBackend" resolve="TypecheckingBackend" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6gnqipLxUwz" role="3cqZAp">
          <node concept="3clFbS" id="6gnqipLxUw$" role="3clFbx">
            <node concept="3clFbF" id="6gnqipLxUw_" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLxUwA" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLxUwB" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLxZ3c" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxZbT" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxRoW" resolve="provider" />
                  </node>
                </node>
                <node concept="2ShNRf" id="6gnqipLxUwE" role="37vLTx">
                  <node concept="1pGfFk" id="6gnqipLxUwF" role="2ShVmc">
                    <ref role="37wK5l" node="3LFq2p98DNK" resolve="CoderulesTypecheckingProvider" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gnqipLxUwJ" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLxUwK" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLxUwL" role="37vLTx">
                  <node concept="37vLTw" id="6gnqipLxUwM" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gnqipLxUwt" resolve="backend" />
                  </node>
                  <node concept="liA8E" id="6gnqipLxUwN" role="2OqNvi">
                    <ref role="37wK5l" to="ev0w:~TypecheckingBackend.installProvider(jetbrains.mps.typechecking.backend.TypecheckingProvider,jetbrains.mps.typechecking.backend.TypecheckingBackend$ProviderLevel)" resolve="installProvider" />
                    <node concept="2OqwBi" id="6gnqipLxUwO" role="37wK5m">
                      <node concept="Xjq3P" id="6gnqipLxZNe" role="2Oq$k0" />
                      <node concept="2OwXpG" id="6gnqipLxZQu" role="2OqNvi">
                        <ref role="2Oxat5" node="6gnqipLxRoW" resolve="provider" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="6gnqipLxUwR" role="37wK5m">
                      <node concept="1pGfFk" id="6gnqipLxUwS" role="2ShVmc">
                        <ref role="37wK5l" node="siuT5mmS2P" resolve="CoderulesProviderLevel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6gnqipLxUwT" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLxZtE" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxZDK" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxQXz" resolve="providerToken" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6gnqipLxUwW" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="6gnqipLxUwX" role="3clFbw">
            <node concept="10Nm6u" id="6gnqipLxUwY" role="3uHU7w" />
            <node concept="37vLTw" id="6gnqipLxUwZ" role="3uHU7B">
              <ref role="3cqZAo" node="6gnqipLxUwt" resolve="backend" />
            </node>
          </node>
          <node concept="9aQIb" id="6gnqipLxUx0" role="9aQIa">
            <node concept="3clFbS" id="6gnqipLxUx1" role="9aQI4">
              <node concept="RRSsy" id="6gnqipLxUx2" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="6gnqipLxUx3" role="RRSoy">
                  <property role="Xl_RC" value="Coderules failed to initialize: TypecheckingBackend component not found" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLxTVX" role="jymVt" />
    <node concept="3clFb_" id="6gnqipLyY7q" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3cqZAl" id="6gnqipLyY7s" role="3clF45" />
      <node concept="3Tm6S6" id="6gnqipLyYB4" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLyY7u" role="3clF47">
        <node concept="3clFbJ" id="1z4$59h_Gkc" role="3cqZAp">
          <node concept="3clFbS" id="1z4$59h_Gke" role="3clFbx">
            <node concept="3clFbF" id="6gnqipLxQat" role="3cqZAp">
              <node concept="2OqwBi" id="6gnqipLxQau" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLxQav" role="2Oq$k0">
                  <node concept="Xjq3P" id="6gnqipLxQyY" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxSJU" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxQXz" resolve="providerToken" />
                  </node>
                </node>
                <node concept="liA8E" id="6gnqipLxQay" role="2OqNvi">
                  <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderToken.uninstall()" resolve="uninstall" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gnqipLxQaz" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLxQa$" role="3clFbG">
                <node concept="10Nm6u" id="6gnqipLxQa_" role="37vLTx" />
                <node concept="2OqwBi" id="6gnqipLxQaA" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLxSSE" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxSWg" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxQXz" resolve="providerToken" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1z4$59h_GX8" role="3clFbw">
            <node concept="10Nm6u" id="1z4$59h_H2t" role="3uHU7w" />
            <node concept="37vLTw" id="1z4$59h_GHU" role="3uHU7B">
              <ref role="3cqZAo" node="6gnqipLxQXz" resolve="providerToken" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1z4$59h_HB4" role="3cqZAp">
          <node concept="3clFbS" id="1z4$59h_HB6" role="3clFbx">
            <node concept="3clFbF" id="6gnqipLxQaD" role="3cqZAp">
              <node concept="2OqwBi" id="6gnqipLxQaE" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLxQaF" role="2Oq$k0">
                  <node concept="Xjq3P" id="6gnqipLxT24" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxTaS" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxRoW" resolve="provider" />
                  </node>
                </node>
                <node concept="liA8E" id="6gnqipLxQaI" role="2OqNvi">
                  <ref role="37wK5l" node="3KN3A4w9alp" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gnqipLxQaJ" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLxQaK" role="3clFbG">
                <node concept="10Nm6u" id="6gnqipLxQaL" role="37vLTx" />
                <node concept="2OqwBi" id="6gnqipLxQaM" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLxTl1" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxTlX" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxRoW" resolve="provider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1z4$59h_Ih0" role="3clFbw">
            <node concept="10Nm6u" id="1z4$59h_Ixm" role="3uHU7w" />
            <node concept="37vLTw" id="1z4$59h_HRN" role="3uHU7B">
              <ref role="3cqZAo" node="6gnqipLxRoW" resolve="provider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gnqipLxQaP" role="3cqZAp">
          <node concept="2YIFZM" id="6gnqipLxQaQ" role="3clFbG">
            <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
            <ref role="37wK5l" to="tj24:6hpwxwiuuCI" resolve="disposeFactory" />
          </node>
        </node>
        <node concept="3clFbJ" id="1PdMG9nxAev" role="3cqZAp">
          <node concept="3clFbS" id="1PdMG9nxAex" role="3clFbx">
            <node concept="3clFbF" id="1PdMG9nxC7G" role="3cqZAp">
              <node concept="2OqwBi" id="1PdMG9nxCZS" role="3clFbG">
                <node concept="2YIFZM" id="1PdMG9nxCzJ" role="2Oq$k0">
                  <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                </node>
                <node concept="liA8E" id="1PdMG9nxDum" role="2OqNvi">
                  <ref role="37wK5l" to="3qmy:~ClassLoaderManager.removeListener(jetbrains.mps.classloading.DeployListener)" resolve="removeListener" />
                  <node concept="37vLTw" id="1PdMG9nxDZT" role="37wK5m">
                    <ref role="3cqZAo" node="1PdMG9ntGWW" resolve="deployListener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1PdMG9nxF4h" role="3cqZAp">
              <node concept="37vLTI" id="1PdMG9nxGvq" role="3clFbG">
                <node concept="10Nm6u" id="1PdMG9nxGXC" role="37vLTx" />
                <node concept="2OqwBi" id="1PdMG9nxFBG" role="37vLTJ">
                  <node concept="Xjq3P" id="1PdMG9nxF4f" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1PdMG9nxG42" role="2OqNvi">
                    <ref role="2Oxat5" node="1PdMG9ntGWW" resolve="deployListener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1PdMG9nxBhz" role="3clFbw">
            <node concept="10Nm6u" id="1PdMG9nxBod" role="3uHU7w" />
            <node concept="37vLTw" id="1PdMG9nxAKq" role="3uHU7B">
              <ref role="3cqZAo" node="1PdMG9ntGWW" resolve="deployListener" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLJmBa" role="jymVt" />
    <node concept="312cEg" id="6gnqipLxQXz" role="jymVt">
      <property role="TrG5h" value="providerToken" />
      <node concept="3Tm6S6" id="6gnqipLxQX$" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLxR60" role="1tU5fm">
        <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderToken" resolve="TypecheckingBackend.ProviderToken" />
      </node>
      <node concept="10Nm6u" id="6gnqipLxRaU" role="33vP2m" />
    </node>
    <node concept="312cEg" id="6gnqipLxRoW" role="jymVt">
      <property role="TrG5h" value="provider" />
      <node concept="3Tm6S6" id="6gnqipLxRoX" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLxRAq" role="1tU5fm">
        <ref role="3uigEE" node="7Tj_ODDR37X" resolve="CoderulesTypecheckingProvider" />
      </node>
      <node concept="10Nm6u" id="6gnqipLxRFs" role="33vP2m" />
    </node>
    <node concept="312cEg" id="1PdMG9ntGWW" role="jymVt">
      <property role="TrG5h" value="deployListener" />
      <node concept="3Tm6S6" id="1PdMG9ntGWX" role="1B3o_S" />
      <node concept="3uibUv" id="1PdMG9ntH_M" role="1tU5fm">
        <ref role="3uigEE" to="3qmy:~DeployListener" resolve="DeployListener" />
      </node>
      <node concept="10Nm6u" id="1PdMG9ntHT$" role="33vP2m" />
    </node>
    <node concept="3Tm1VV" id="6gnqipLyyaG" role="1B3o_S" />
    <node concept="312cEg" id="6gnqipLxYhx" role="jymVt">
      <property role="TrG5h" value="mpsPlatform" />
      <node concept="3Tm6S6" id="6gnqipLxYhy" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLxYh$" role="1tU5fm">
        <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="55Q$YFtIVEP">
    <property role="3GE5qa" value="launch.step" />
    <property role="TrG5h" value="TypecheckingWithTraceStep" />
    <node concept="2tJIrI" id="55Q$YFtIVLz" role="jymVt" />
    <node concept="3clFbW" id="55Q$YFtIVZ9" role="jymVt">
      <node concept="37vLTG" id="6IQb_Rxsk$b" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="6IQb_Rxsk$c" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="55Q$YFtIX9v" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="55Q$YFtIX9w" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3cqZAl" id="55Q$YFtIVZb" role="3clF45" />
      <node concept="3Tm1VV" id="55Q$YFtIVZc" role="1B3o_S" />
      <node concept="3clFbS" id="55Q$YFtIVZd" role="3clF47">
        <node concept="XkiVB" id="55Q$YFtIXBZ" role="3cqZAp">
          <ref role="37wK5l" to="tj24:3KN3A4vHiEF" resolve="TypecheckingStep" />
          <node concept="2OqwBi" id="443LGHBSD_r" role="37wK5m">
            <node concept="37vLTw" id="55Q$YFtIYbT" role="2Oq$k0">
              <ref role="3cqZAo" node="55Q$YFtIX9v" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="443LGHBSEHm" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
          <node concept="10Nm6u" id="5gVsyvERlHX" role="37wK5m" />
        </node>
        <node concept="3clFbF" id="7Mte5SKkuX2" role="3cqZAp">
          <node concept="37vLTI" id="7Mte5SKkwQa" role="3clFbG">
            <node concept="37vLTw" id="7Mte5SKkxsg" role="37vLTx">
              <ref role="3cqZAo" node="55Q$YFtIX9v" resolve="mpsProject" />
            </node>
            <node concept="2OqwBi" id="7Mte5SKkvl0" role="37vLTJ">
              <node concept="Xjq3P" id="7Mte5SKkuX0" role="2Oq$k0" />
              <node concept="2OwXpG" id="7Mte5SKkvWJ" role="2OqNvi">
                <ref role="2Oxat5" node="443LGHBSGGx" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BMBBPCZ0vC" role="jymVt" />
    <node concept="3clFb_" id="Hg6Enc6pha" role="jymVt">
      <property role="TrG5h" value="schedule" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="Hg6Enc6phb" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3uibUv" id="Hg6Enc6phc" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
          <node concept="3uibUv" id="2daneBPWjy6" role="11_B2D">
            <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6kREIVkNs$S" role="3clF46">
        <property role="TrG5h" value="subscribeScheduler" />
        <node concept="3uibUv" id="6kREIVkNs$T" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Scheduler" resolve="Scheduler" />
        </node>
      </node>
      <node concept="3uibUv" id="Hg6Enc6phe" role="3clF45">
        <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
        <node concept="3uibUv" id="2daneBPWfh1" role="11_B2D">
          <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
        </node>
      </node>
      <node concept="3Tmbuc" id="Hg6EncFIBw" role="1B3o_S" />
      <node concept="3clFbS" id="Hg6Enc6phk" role="3clF47">
        <node concept="3cpWs8" id="51ek2rQQCB3" role="3cqZAp">
          <node concept="3cpWsn" id="51ek2rQQCB4" role="3cpWs9">
            <property role="TrG5h" value="preconfigure" />
            <node concept="3uibUv" id="51ek2rQQAtC" role="1tU5fm">
              <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
              <node concept="3uibUv" id="51ek2rQQAtF" role="11_B2D">
                <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
              </node>
            </node>
            <node concept="1rXfSq" id="51ek2rQQCB5" role="33vP2m">
              <ref role="37wK5l" to="1yqb:51ek2rQHvJ1" resolve="composeEffect" />
              <node concept="37vLTw" id="51ek2rQQCB6" role="37wK5m">
                <ref role="3cqZAo" node="Hg6Enc6phb" resolve="input" />
              </node>
              <node concept="1bVj0M" id="51ek2rQQCB7" role="37wK5m">
                <node concept="37vLTG" id="51ek2rQQCB8" role="1bW2Oz">
                  <property role="TrG5h" value="inEff" />
                  <node concept="3uibUv" id="51ek2rQQCB9" role="1tU5fm">
                    <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
                  </node>
                </node>
                <node concept="3clFbS" id="51ek2rQQCBa" role="1bW5cS">
                  <node concept="3clFbH" id="51ek2rQQCBb" role="3cqZAp" />
                  <node concept="3cpWs8" id="51ek2rQQCBc" role="3cqZAp">
                    <node concept="3cpWsn" id="51ek2rQQCBd" role="3cpWs9">
                      <property role="TrG5h" value="program" />
                      <node concept="3uibUv" id="51ek2rQQCBe" role="1tU5fm">
                        <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
                      </node>
                      <node concept="2OqwBi" id="51ek2rQQCBf" role="33vP2m">
                        <node concept="2OqwBi" id="51ek2rQQCBg" role="2Oq$k0">
                          <node concept="liA8E" id="51ek2rQQCBh" role="2OqNvi">
                            <ref role="37wK5l" to="1yqb:2daneBOX8cN" resolve="getValue" />
                            <node concept="10M0yZ" id="51ek2rQQCBi" role="37wK5m">
                              <ref role="1PxDUh" to="1yqb:1pPth$lAwc0" resolve="ApplyTemplatesStep" />
                              <ref role="3cqZAo" to="1yqb:2daneBPSu1V" resolve="PROGRAM_PRODUCER" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="51ek2rQQCBj" role="2Oq$k0">
                            <ref role="3cqZAo" node="51ek2rQQCB8" resolve="inEff" />
                          </node>
                        </node>
                        <node concept="liA8E" id="51ek2rQQCBk" role="2OqNvi">
                          <ref role="37wK5l" to="hano:3GlpCDSyO$P" resolve="getProgram" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1_AnebxCwHo" role="3cqZAp">
                    <node concept="37vLTI" id="1_AnebxC$nH" role="3clFbG">
                      <node concept="2OqwBi" id="1_AnebxCxzH" role="37vLTJ">
                        <node concept="Xjq3P" id="1_AnebxCwHm" role="2Oq$k0" />
                        <node concept="2OwXpG" id="1_AnebxCyTt" role="2OqNvi">
                          <ref role="2Oxat5" node="1_AnebxCruV" resolve="templateTraceData" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="799SgOKhC5e" role="37vLTx">
                        <node concept="37vLTw" id="799SgOKhBut" role="2Oq$k0">
                          <ref role="3cqZAo" node="51ek2rQQCB8" resolve="inEff" />
                        </node>
                        <node concept="liA8E" id="799SgOKhDcD" role="2OqNvi">
                          <ref role="37wK5l" to="1yqb:2daneBOX8cN" resolve="getValue" />
                          <node concept="10M0yZ" id="799SgOKcPlW" role="37wK5m">
                            <ref role="3cqZAo" to="1yqb:39eNUjlXwas" resolve="TRACE_TMPL" />
                            <ref role="1PxDUh" to="1yqb:RZQG98UNsT" resolve="ConfigureEvalStep" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="51ek2rQQCBl" role="3cqZAp">
                    <node concept="37vLTI" id="51ek2rQQCBm" role="3clFbG">
                      <node concept="2ShNRf" id="51ek2rQQCBn" role="37vLTx">
                        <node concept="1pGfFk" id="51ek2rQQCBo" role="2ShVmc">
                          <ref role="37wK5l" to="31yc:2daneBOSyP4" resolve="TraceEvents" />
                          <node concept="2OqwBi" id="51ek2rQQCBp" role="37wK5m">
                            <node concept="37vLTw" id="51ek2rQQCBq" role="2Oq$k0">
                              <ref role="3cqZAo" node="51ek2rQQCBd" resolve="program" />
                            </node>
                            <node concept="liA8E" id="51ek2rQQCBr" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Program.name()" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="51ek2rQQCBs" role="37vLTJ">
                        <node concept="Xjq3P" id="51ek2rQQCBt" role="2Oq$k0" />
                        <node concept="2OwXpG" id="51ek2rQQCBu" role="2OqNvi">
                          <ref role="2Oxat5" node="2daneBOT6rC" resolve="traceEvents" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="51ek2rQQCBv" role="3cqZAp">
                    <node concept="37vLTI" id="51ek2rQQCBw" role="3clFbG">
                      <node concept="2OqwBi" id="51ek2rQQCBx" role="37vLTJ">
                        <node concept="Xjq3P" id="51ek2rQQCBy" role="2Oq$k0" />
                        <node concept="2OwXpG" id="51ek2rQQCBz" role="2OqNvi">
                          <ref role="2Oxat5" node="3F6vMxqv_px" resolve="msgtrace" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="51ek2rQQCB$" role="37vLTx">
                        <node concept="1pGfFk" id="51ek2rQQCB_" role="2ShVmc">
                          <ref role="37wK5l" to="o35r:4i4XGQZmLRe" resolve="MessageViewInfoTracer" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="799SgOKcIVS" role="3cqZAp" />
                  <node concept="3clFbF" id="51ek2rQQCBA" role="3cqZAp">
                    <node concept="2YIFZM" id="51ek2rQQCBB" role="3clFbG">
                      <ref role="1Pybhc" to="1yqb:2daneBOWXQd" resolve="Effect" />
                      <ref role="37wK5l" to="1yqb:6BMBBPCUL2C" resolve="of" />
                      <node concept="2OqwBi" id="51ek2rQQCBC" role="37wK5m">
                        <node concept="10M0yZ" id="51ek2rQQCBD" role="2Oq$k0">
                          <ref role="1PxDUh" to="1yqb:RZQG98UNsT" resolve="ConfigureEvalStep" />
                          <ref role="3cqZAo" to="1yqb:RZQG98Ve3Q" resolve="TRACE_EVAL" />
                        </node>
                        <node concept="liA8E" id="51ek2rQQCBE" role="2OqNvi">
                          <ref role="37wK5l" to="1yqb:6BMBBPCRIcz" resolve="is" />
                          <node concept="2ShNRf" id="51ek2rQQCBF" role="37wK5m">
                            <node concept="1pGfFk" id="51ek2rQQCBG" role="2ShVmc">
                              <ref role="37wK5l" to="1yqb:7nPD14NbIzp" resolve="MultiTrace" />
                              <node concept="2OqwBi" id="51ek2rQQCBH" role="37wK5m">
                                <node concept="37vLTw" id="51ek2rQQCBI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2daneBOT6rC" resolve="traceEvents" />
                                </node>
                                <node concept="liA8E" id="51ek2rQQCBJ" role="2OqNvi">
                                  <ref role="37wK5l" to="31yc:YGS68MEx_L" resolve="trace" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="51ek2rQQCBK" role="37wK5m">
                                <ref role="3cqZAo" node="3F6vMxqv_px" resolve="msgtrace" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1PN9XOHBFnt" role="37wK5m">
                        <node concept="10M0yZ" id="1PN9XOHBEcz" role="2Oq$k0">
                          <ref role="3cqZAo" to="tj24:1G9Y_Qv7rZx" resolve="TRACE_EVENTS" />
                          <ref role="1PxDUh" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
                        </node>
                        <node concept="liA8E" id="1PN9XOHBGXX" role="2OqNvi">
                          <ref role="37wK5l" to="1yqb:6BMBBPCRIcz" resolve="is" />
                          <node concept="37vLTw" id="1PN9XOHBLPe" role="37wK5m">
                            <ref role="3cqZAo" node="2daneBOT6rC" resolve="traceEvents" />
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
        <node concept="3clFbH" id="51ek2rQQHfa" role="3cqZAp" />
        <node concept="3clFbF" id="6BMBBPCZdEG" role="3cqZAp">
          <node concept="2OqwBi" id="6BMBBPCZn_f" role="3clFbG">
            <node concept="liA8E" id="6BMBBPCZq4$" role="2OqNvi">
              <ref role="37wK5l" to="unkn:~Single.observeOn(io.reactivex.Scheduler)" resolve="observeOn" />
              <node concept="2YIFZM" id="6BMBBPCZvvZ" role="37wK5m">
                <ref role="37wK5l" to="f4yq:~SwingSchedulers.edt()" resolve="edt" />
                <ref role="1Pybhc" to="f4yq:~SwingSchedulers" resolve="SwingSchedulers" />
              </node>
            </node>
            <node concept="1rXfSq" id="1PN9XOHxWt7" role="2Oq$k0">
              <ref role="37wK5l" to="1yqb:51ek2rQHvJ1" resolve="composeEffect" />
              <node concept="3nyPlj" id="1PN9XOHAMrA" role="37wK5m">
                <ref role="37wK5l" to="tj24:RZQG98YN6h" resolve="schedule" />
                <node concept="37vLTw" id="1PN9XOHAMrB" role="37wK5m">
                  <ref role="3cqZAo" node="51ek2rQQCB4" resolve="preconfigure" />
                </node>
                <node concept="37vLTw" id="1PN9XOHAMrC" role="37wK5m">
                  <ref role="3cqZAo" node="6kREIVkNs$S" resolve="subscribeScheduler" />
                </node>
              </node>
              <node concept="1bVj0M" id="1PN9XOHy2R3" role="37wK5m">
                <node concept="37vLTG" id="1PN9XOHy42f" role="1bW2Oz">
                  <property role="TrG5h" value="effect" />
                  <node concept="3uibUv" id="1PN9XOHy5DV" role="1tU5fm">
                    <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
                  </node>
                </node>
                <node concept="3clFbS" id="1PN9XOHy2R5" role="1bW5cS">
                  <node concept="3clFbF" id="1PN9XOHya0z" role="3cqZAp">
                    <node concept="2YIFZM" id="1PN9XOHycHU" role="3clFbG">
                      <ref role="1Pybhc" to="1yqb:2daneBOWXQd" resolve="Effect" />
                      <ref role="37wK5l" to="1yqb:6BMBBPCQBuH" resolve="of" />
                      <node concept="Xl_RD" id="1PN9XOHHZVh" role="37wK5m">
                        <property role="Xl_RC" value="typechecking" />
                      </node>
                      <node concept="2OqwBi" id="1PN9XOHyqUo" role="37wK5m">
                        <node concept="37vLTw" id="1PN9XOHyJDN" role="2Oq$k0">
                          <ref role="3cqZAo" to="tj24:1PN9XOHxyoK" resolve="MESSAGES" />
                        </node>
                        <node concept="liA8E" id="1PN9XOHysqo" role="2OqNvi">
                          <ref role="37wK5l" to="1yqb:6BMBBPCRIcz" resolve="is" />
                          <node concept="2OqwBi" id="1PN9XOHyms1" role="37wK5m">
                            <node concept="37vLTw" id="1PN9XOHykVn" role="2Oq$k0">
                              <ref role="3cqZAo" node="3F6vMxqv_px" resolve="msgtrace" />
                            </node>
                            <node concept="liA8E" id="1PN9XOHyo8F" role="2OqNvi">
                              <ref role="37wK5l" to="o35r:1PN9XOHveCX" resolve="messages" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1PN9XOHyg8y" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Hg6Enc6phl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="55Q$YFtIVL_" role="jymVt" />
    <node concept="312cEg" id="443LGHBSGGx" role="jymVt">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="443LGHBSGGy" role="1B3o_S" />
      <node concept="3uibUv" id="443LGHBSIBM" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="3F6vMxqv_px" role="jymVt">
      <property role="TrG5h" value="msgtrace" />
      <node concept="3Tm6S6" id="6kREIVkHFzh" role="1B3o_S" />
      <node concept="3uibUv" id="6IQb_Rx4498" role="1tU5fm">
        <ref role="3uigEE" to="o35r:6IQb_Rx3pZ8" resolve="MessageViewInfoTracer" />
      </node>
    </node>
    <node concept="312cEg" id="2daneBOT6rC" role="jymVt">
      <property role="TrG5h" value="traceEvents" />
      <node concept="3Tm6S6" id="2daneBOT6rD" role="1B3o_S" />
      <node concept="3uibUv" id="2daneBOT8sK" role="1tU5fm">
        <ref role="3uigEE" to="31yc:2ceN1hCYUQN" resolve="TraceEvents" />
      </node>
    </node>
    <node concept="312cEg" id="1_AnebxCruV" role="jymVt">
      <property role="TrG5h" value="templateTraceData" />
      <node concept="3Tm6S6" id="1_AnebxCruW" role="1B3o_S" />
      <node concept="3uibUv" id="1_AnebxCruY" role="1tU5fm">
        <ref role="3uigEE" to="hano:39eNUjlSJ9Q" resolve="TemplateTrace" />
      </node>
    </node>
    <node concept="3Tm1VV" id="55Q$YFtIVEQ" role="1B3o_S" />
    <node concept="3uibUv" id="NKt6yn8c2j" role="1zkMxy">
      <ref role="3uigEE" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
    </node>
  </node>
  <node concept="312cEu" id="6TxWhgAwNGu">
    <property role="TrG5h" value="TypecheckingEnabledBean" />
    <node concept="2tJIrI" id="2CPBoDC$Ceb" role="jymVt" />
    <node concept="3clFbW" id="6TxWhgAwO9f" role="jymVt">
      <node concept="3cqZAl" id="6TxWhgAwO9h" role="3clF45" />
      <node concept="3Tm1VV" id="6TxWhgAwO9i" role="1B3o_S" />
      <node concept="3clFbS" id="6TxWhgAwO9j" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6TxWhgAwQMA" role="jymVt" />
    <node concept="3clFb_" id="6TxWhgAwRgP" role="jymVt">
      <property role="TrG5h" value="isTypecheckingEnabled" />
      <node concept="10P_77" id="6TxWhgAwS3s" role="3clF45" />
      <node concept="3Tm1VV" id="6TxWhgAwRgS" role="1B3o_S" />
      <node concept="3clFbS" id="6TxWhgAwRgT" role="3clF47">
        <node concept="3clFbF" id="DJOr6Ej$L3" role="3cqZAp">
          <node concept="2YIFZM" id="MSLbfMDDJB" role="3clFbG">
            <ref role="37wK5l" to="tj24:MSLbfMCLUr" resolve="isEnabled" />
            <ref role="1Pybhc" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6TxWhgAx5gX" role="jymVt" />
    <node concept="3clFb_" id="6TxWhgAx2bf" role="jymVt">
      <property role="TrG5h" value="setTypecheckingEnabled" />
      <node concept="37vLTG" id="6TxWhgAx2CQ" role="3clF46">
        <property role="TrG5h" value="enabled" />
        <node concept="10P_77" id="6TxWhgAx3q$" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6TxWhgAx4YZ" role="3clF45" />
      <node concept="3Tm1VV" id="6TxWhgAx2bh" role="1B3o_S" />
      <node concept="3clFbS" id="6TxWhgAx2bi" role="3clF47">
        <node concept="3clFbJ" id="4ncXOjKS5yu" role="3cqZAp">
          <node concept="3clFbS" id="4ncXOjKS5yw" role="3clFbx">
            <node concept="3cpWs8" id="4ot3PHR2CoE" role="3cqZAp">
              <node concept="3cpWsn" id="4ot3PHR2CoF" role="3cpWs9">
                <property role="TrG5h" value="changed" />
                <node concept="10P_77" id="4ot3PHR2Cl$" role="1tU5fm" />
                <node concept="3y3z36" id="4ot3PHR2CoG" role="33vP2m">
                  <node concept="37vLTw" id="4ot3PHR2CoK" role="3uHU7w">
                    <ref role="3cqZAo" node="6TxWhgAx2CQ" resolve="enabled" />
                  </node>
                  <node concept="2OqwBi" id="2CPBoDC$O1L" role="3uHU7B">
                    <node concept="2YIFZM" id="2CPBoDC$O1M" role="2Oq$k0">
                      <ref role="1Pybhc" to="m7o5:2CPBoDC$4yq" resolve="TypecheckingSettings" />
                      <ref role="37wK5l" to="m7o5:2CPBoDC$fEe" resolve="getInstace" />
                    </node>
                    <node concept="liA8E" id="2CPBoDC$O1N" role="2OqNvi">
                      <ref role="37wK5l" to="m7o5:2CPBoDC$H71" resolve="isTypecheckingEnabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2CPBoDC$OfZ" role="3cqZAp">
              <node concept="2OqwBi" id="2CPBoDC$Og1" role="3clFbG">
                <node concept="2YIFZM" id="2CPBoDC$Og2" role="2Oq$k0">
                  <ref role="37wK5l" to="m7o5:2CPBoDC$fEe" resolve="getInstace" />
                  <ref role="1Pybhc" to="m7o5:2CPBoDC$4yq" resolve="TypecheckingSettings" />
                </node>
                <node concept="liA8E" id="2CPBoDC$Og3" role="2OqNvi">
                  <ref role="37wK5l" to="m7o5:2CPBoDC$ILw" resolve="setTypecheckingEnabled" />
                  <node concept="37vLTw" id="2CPBoDC$OZb" role="37wK5m">
                    <ref role="3cqZAo" node="6TxWhgAx2CQ" resolve="enabled" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4ot3PHR2CCp" role="3cqZAp">
              <node concept="3clFbS" id="4ot3PHR2CCA" role="3clFbx">
                <node concept="3clFbF" id="4ot3PHR2EYW" role="3cqZAp">
                  <node concept="2OqwBi" id="4ot3PHR2FFZ" role="3clFbG">
                    <node concept="2YIFZM" id="4ot3PHR2Ffr" role="2Oq$k0">
                      <ref role="37wK5l" to="j936:~UISettings.getInstance()" resolve="getInstance" />
                      <ref role="1Pybhc" to="j936:~UISettings" resolve="UISettings" />
                    </node>
                    <node concept="liA8E" id="4ot3PHR2Gox" role="2OqNvi">
                      <ref role="37wK5l" to="j936:~UISettings.fireUISettingsChanged()" resolve="fireUISettingsChanged" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4ot3PHR2CoL" role="3clFbw">
                <ref role="3cqZAo" node="4ot3PHR2CoF" resolve="changed" />
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="4ncXOjKS6jm" role="3clFbw">
            <ref role="37wK5l" node="4ncXOjKRZI$" resolve="isLoaded" />
            <ref role="1Pybhc" node="4ncXOjKRu7g" resolve="CoderulesIdeaPlugin" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC$PS8" role="jymVt" />
    <node concept="3Tm1VV" id="6TxWhgAwNGv" role="1B3o_S" />
  </node>
  <node concept="Zd50a" id="3NRKQ2BK6Oq">
    <property role="TrG5h" value="TypecheckingKeymap" />
    <property role="3GE5qa" value="action" />
    <node concept="Zd509" id="4vBwiiVpIuo" role="Zd508">
      <ref role="1bYAoF" node="4vBwiiVgYfo" resolve="ShowNodeType" />
      <node concept="pLAjd" id="4vBwiiVpIuq" role="Zd501">
        <property role="pLAjc" value="ctrl+shift" />
        <property role="pLAjf" value="VK_P" />
      </node>
    </node>
    <node concept="Zd509" id="3IIf9O_pnHl" role="Zd508">
      <ref role="1bYAoF" node="7WKNeR8Q7e5" resolve="LaunchTypecheckingQuery" />
      <node concept="pLAjd" id="3IIf9O_pnHV" role="Zd501">
        <property role="pLAjc" value="ctrl" />
        <property role="pLAjf" value="VK_F7" />
      </node>
    </node>
    <node concept="Zd509" id="3IIf9O_pnHC" role="Zd508">
      <ref role="1bYAoF" node="3IIf9O_okk0" resolve="LaunchTypecheckingQueryWithTrace" />
      <node concept="pLAjd" id="3IIf9O_pnI9" role="Zd501">
        <property role="pLAjc" value="ctrl+alt" />
        <property role="pLAjf" value="VK_F7" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="41ox5VnrUX7">
    <property role="TrG5h" value="ClearTypes" />
    <property role="2uzpH1" value="Clear Types" />
    <property role="3GE5qa" value="action" />
    <node concept="1DS2jV" id="41ox5VnrVtS" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="41ox5VnrVtT" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3mz2_dYEr9_" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3mz2_dYEr9A" role="1oa70y" />
    </node>
    <node concept="tnohg" id="41ox5VnrUX8" role="tncku">
      <node concept="3clFbS" id="41ox5VnrUX9" role="2VODD2">
        <node concept="3clFbF" id="41ox5VnrV_Z" role="3cqZAp">
          <node concept="2YIFZM" id="6Yb9hAqxX1b" role="3clFbG">
            <ref role="37wK5l" to="o35r:41ox5VnrNu5" resolve="clear" />
            <ref role="1Pybhc" to="o35r:41ox5VnpFrR" resolve="HighlightingPlugin" />
            <node concept="2OqwBi" id="3mz2_dYErbN" role="37wK5m">
              <node concept="2WthIp" id="3mz2_dYErbQ" role="2Oq$k0" />
              <node concept="1DTwFV" id="3mz2_dYErbS" role="2OqNvi">
                <ref role="2WH_rO" node="3mz2_dYEr9_" resolve="mpsProject" />
              </node>
            </node>
            <node concept="2OqwBi" id="41ox5VnrVBn" role="37wK5m">
              <node concept="2WthIp" id="41ox5VnrVBq" role="2Oq$k0" />
              <node concept="1DTwFV" id="41ox5VnrVBs" role="2OqNvi">
                <ref role="2WH_rO" node="41ox5VnrVtS" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7WKNeR8Q7e5">
    <property role="3GE5qa" value="action" />
    <property role="TrG5h" value="LaunchTypecheckingQuery" />
    <property role="2uzpH1" value="Launch Typechecking (experimental)" />
    <node concept="1DS2jV" id="7WKNeR8Ragq" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7WKNeR8Ragr" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7WKNeR8Rags" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7WKNeR8Ragt" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7WKNeR8Ragu" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="7WKNeR8Ragv" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7WKNeR8Ragw" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="7WKNeR8Ragx" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7WKNeR8Q7e6" role="tncku">
      <node concept="3clFbS" id="7WKNeR8Q7e7" role="2VODD2">
        <node concept="3clFbF" id="7WKNeR8RdQp" role="3cqZAp">
          <node concept="2YIFZM" id="6Yb9hAqxX1d" role="3clFbG">
            <ref role="37wK5l" to="o35r:3WU9yfAbTWe" resolve="clearAll" />
            <ref role="1Pybhc" to="o35r:41ox5VnpFrR" resolve="HighlightingPlugin" />
            <node concept="2OqwBi" id="7WKNeR8RdQr" role="37wK5m">
              <node concept="2WthIp" id="7WKNeR8RdQs" role="2Oq$k0" />
              <node concept="1DTwFV" id="7WKNeR8RdQt" role="2OqNvi">
                <ref role="2WH_rO" node="7WKNeR8Rags" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WKNeR8RdQN" role="3cqZAp">
          <node concept="2OqwBi" id="7WKNeR8RdQO" role="3clFbG">
            <node concept="2OqwBi" id="7WKNeR8RdQP" role="2Oq$k0">
              <node concept="2YIFZM" id="7WKNeR8TaPY" role="2Oq$k0">
                <ref role="37wK5l" node="7WKNeR8SP2E" resolve="launchQuery" />
                <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
                <node concept="2YIFZM" id="5EDW3XEpy4e" role="37wK5m">
                  <ref role="37wK5l" to="tj24:5EDW3XDYggE" resolve="check" />
                  <ref role="1Pybhc" to="tj24:5EDW3XDYg8Y" resolve="TypecheckingQueries" />
                  <node concept="2OqwBi" id="6v6oK24NjHo" role="37wK5m">
                    <node concept="2OqwBi" id="6v6oK24Njr0" role="2Oq$k0">
                      <node concept="2WthIp" id="6v6oK24Njr3" role="2Oq$k0" />
                      <node concept="1DTwFV" id="6v6oK24Njr5" role="2OqNvi">
                        <ref role="2WH_rO" node="7WKNeR8Ragu" resolve="node" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6v6oK24Nk6q" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                    </node>
                  </node>
                  <node concept="1bVj0M" id="5EDW3XEpy8I" role="37wK5m">
                    <node concept="3clFbS" id="5EDW3XEpy8J" role="1bW5cS" />
                    <node concept="37vLTG" id="5EDW3XEpycy" role="1bW2Oz">
                      <property role="TrG5h" value="p" />
                      <node concept="2sp9CU" id="5EDW3XEpypg" role="1tU5fm" />
                    </node>
                    <node concept="37vLTG" id="5EDW3XEpyuG" role="1bW2Oz">
                      <property role="TrG5h" value="n" />
                      <node concept="3Tqbb2" id="5EDW3XEpyE1" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7WKNeR8TaPZ" role="37wK5m">
                  <node concept="2WthIp" id="7WKNeR8TaQ0" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7WKNeR8TaQ1" role="2OqNvi">
                    <ref role="2WH_rO" node="7WKNeR8Ragw" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7WKNeR8TaQ2" role="37wK5m">
                  <node concept="2WthIp" id="7WKNeR8TaQ3" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7WKNeR8TaQ4" role="2OqNvi">
                    <ref role="2WH_rO" node="7WKNeR8Rags" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7WKNeR8TaQ5" role="37wK5m">
                  <node concept="2WthIp" id="7WKNeR8TaQ6" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7WKNeR8TaQ7" role="2OqNvi">
                    <ref role="2WH_rO" node="7WKNeR8Ragq" resolve="ideaProject" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7WKNeR8RdR0" role="2OqNvi">
                <ref role="37wK5l" node="6hqFpWnimEi" resolve="forNode" />
                <node concept="2OqwBi" id="3IIf9O_ojlD" role="37wK5m">
                  <node concept="2WthIp" id="3IIf9O_oiXp" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3IIf9O_ojGc" role="2OqNvi">
                    <ref role="2WH_rO" node="7WKNeR8Ragu" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7WKNeR8RdR2" role="2OqNvi">
              <ref role="37wK5l" node="7WKNeR8RsrK" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7WKNeR8R9wl" role="tmbBb">
      <node concept="3clFbS" id="7WKNeR8R9wm" role="2VODD2">
        <node concept="3clFbF" id="7WKNeR8RdaM" role="3cqZAp">
          <node concept="2YIFZM" id="7WKNeR8RdaN" role="3clFbG">
            <ref role="37wK5l" node="6hqFpWnfbeu" resolve="isTypecheckingAvailable" />
            <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
            <node concept="2OqwBi" id="7WKNeR8RdaO" role="37wK5m">
              <node concept="2WthIp" id="7WKNeR8RdaP" role="2Oq$k0" />
              <node concept="1DTwFV" id="7WKNeR8RdaQ" role="2OqNvi">
                <ref role="2WH_rO" node="7WKNeR8Ragu" resolve="node" />
              </node>
            </node>
            <node concept="2OqwBi" id="7WKNeR8RdaR" role="37wK5m">
              <node concept="2WthIp" id="7WKNeR8RdaS" role="2Oq$k0" />
              <node concept="1DTwFV" id="7WKNeR8RdaT" role="2OqNvi">
                <ref role="2WH_rO" node="7WKNeR8Ragw" resolve="editorComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="7WKNeR8RdaU" role="37wK5m">
              <node concept="2WthIp" id="7WKNeR8RdaV" role="2Oq$k0" />
              <node concept="1DTwFV" id="7WKNeR8RdaW" role="2OqNvi">
                <ref role="2WH_rO" node="7WKNeR8Rags" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="4vBwiiVq9ko">
    <property role="TrG5h" value="Classic" />
    <property role="Zd52Q" value="1mJS7WEAV1T/Mac_OS_X" />
    <property role="Z2u3V" value="false" />
    <node concept="Zd509" id="4vBwiiVq9kp" role="Zd508">
      <ref role="1bYAoF" node="4vBwiiVgYfo" resolve="ShowNodeType" />
      <node concept="pLAjd" id="4vBwiiVq9kq" role="Zd501">
        <property role="pLAjc" value="ctrl+alt+shift" />
        <property role="pLAjf" value="VK_P" />
        <property role="3hacHL" value="5SFo3Mf0QpD/replace_all" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1pPth$lC1vN">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="HighlightingStep" />
    <property role="3GE5qa" value="launch.step" />
    <node concept="2tJIrI" id="52a_GfIQ21d" role="jymVt" />
    <node concept="3clFbW" id="1pPth$lGTrm" role="jymVt">
      <node concept="37vLTG" id="1pPth$lGTEd" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="1pPth$lGU5$" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="6kREIVkNEO2" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="6kREIVkNFmB" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3cqZAl" id="1pPth$lGTro" role="3clF45" />
      <node concept="3Tm1VV" id="6kREIVkRzQN" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$lGTrq" role="3clF47">
        <node concept="3clFbF" id="1pPth$lGU8j" role="3cqZAp">
          <node concept="37vLTI" id="1pPth$lGU8l" role="3clFbG">
            <node concept="2OqwBi" id="1pPth$lGU8p" role="37vLTJ">
              <node concept="Xjq3P" id="1pPth$lGU8s" role="2Oq$k0" />
              <node concept="2OwXpG" id="1pPth$lGU8o" role="2OqNvi">
                <ref role="2Oxat5" node="1pPth$lGU8f" resolve="editorComponent" />
              </node>
            </node>
            <node concept="37vLTw" id="1pPth$lGU8t" role="37vLTx">
              <ref role="3cqZAo" node="1pPth$lGTEd" resolve="editorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kREIVkNFsh" role="3cqZAp">
          <node concept="37vLTI" id="6kREIVkNFsj" role="3clFbG">
            <node concept="2OqwBi" id="6kREIVkNHt8" role="37vLTJ">
              <node concept="Xjq3P" id="6kREIVkNHHt" role="2Oq$k0" />
              <node concept="2OwXpG" id="6kREIVkNHtb" role="2OqNvi">
                <ref role="2Oxat5" node="6kREIVkNFsd" resolve="mpsProject" />
              </node>
            </node>
            <node concept="37vLTw" id="6kREIVkNFsn" role="37vLTx">
              <ref role="3cqZAo" node="6kREIVkNEO2" resolve="mpsProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3F6vMxq_3wR" role="jymVt" />
    <node concept="3clFb_" id="Hg6EncbkRR" role="jymVt">
      <property role="TrG5h" value="schedule" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="Hg6EncbkRS" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3uibUv" id="Hg6EncbkRT" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
          <node concept="3uibUv" id="3bpBM3Puk6I" role="11_B2D">
            <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6kREIVkNB3d" role="3clF46">
        <property role="TrG5h" value="subscribeScheduler" />
        <node concept="3uibUv" id="6kREIVkNB3e" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Scheduler" resolve="Scheduler" />
        </node>
      </node>
      <node concept="3uibUv" id="Hg6EncbkRV" role="3clF45">
        <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
        <node concept="3uibUv" id="3bpBM3Puioq" role="11_B2D">
          <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
        </node>
      </node>
      <node concept="3Tmbuc" id="Hg6EncFQZO" role="1B3o_S" />
      <node concept="3clFbS" id="Hg6EncbkS1" role="3clF47">
        <node concept="3clFbF" id="5lxnBcU04KQ" role="3cqZAp">
          <node concept="2OqwBi" id="5lxnBcU05yI" role="3clFbG">
            <node concept="37vLTw" id="5lxnBcU04KO" role="2Oq$k0">
              <ref role="3cqZAo" node="Hg6EncbkRS" resolve="input" />
            </node>
            <node concept="liA8E" id="5lxnBcU085M" role="2OqNvi">
              <ref role="37wK5l" to="unkn:~Single.flatMap(io.reactivex.functions.Function)" resolve="flatMap" />
              <node concept="1bVj0M" id="5lxnBcU08CP" role="37wK5m">
                <node concept="37vLTG" id="5lxnBcU09rm" role="1bW2Oz">
                  <property role="TrG5h" value="inEff" />
                  <node concept="3uibUv" id="3bpBM3Pupvg" role="1tU5fm">
                    <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
                  </node>
                </node>
                <node concept="3clFbS" id="5lxnBcU08CQ" role="1bW5cS">
                  <node concept="3clFbH" id="q1hCixY6_U" role="3cqZAp" />
                  <node concept="3cpWs8" id="78H58of3fK6" role="3cqZAp">
                    <node concept="3cpWsn" id="78H58of3fK7" role="3cpWs9">
                      <property role="TrG5h" value="task" />
                      <node concept="3uibUv" id="78H58of3fJn" role="1tU5fm">
                        <ref role="3uigEE" to="o35r:78H58oeT9Hs" resolve="HighlightingTask" />
                      </node>
                      <node concept="2ShNRf" id="78H58of3fKb" role="33vP2m">
                        <node concept="1pGfFk" id="78H58of3fKc" role="2ShVmc">
                          <ref role="37wK5l" to="o35r:78H58oeTywK" resolve="HighlightingTask" />
                          <node concept="2OqwBi" id="78H58of3fKd" role="37wK5m">
                            <node concept="2OqwBi" id="78H58of3fKe" role="2Oq$k0">
                              <node concept="Xjq3P" id="78H58of3fKf" role="2Oq$k0" />
                              <node concept="2OwXpG" id="78H58of3fKg" role="2OqNvi">
                                <ref role="2Oxat5" node="1pPth$lGU8f" resolve="editorComponent" />
                              </node>
                            </node>
                            <node concept="liA8E" id="78H58of3fKh" role="2OqNvi">
                              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="78H58of3fKi" role="37wK5m">
                            <node concept="Xjq3P" id="78H58of3fKj" role="2Oq$k0" />
                            <node concept="2OwXpG" id="78H58of3fKk" role="2OqNvi">
                              <ref role="2Oxat5" node="1pPth$lGU8f" resolve="editorComponent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3CulEO2oFJO" role="3cqZAp">
                    <node concept="2OqwBi" id="3CulEO2oGCc" role="3clFbG">
                      <node concept="37vLTw" id="3CulEO2oFJM" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lxnBcU09rm" resolve="inEff" />
                      </node>
                      <node concept="liA8E" id="3CulEO2oHDz" role="2OqNvi">
                        <ref role="37wK5l" to="1yqb:5iJsa3_8EKs" resolve="applyIfHasValue" />
                        <node concept="10M0yZ" id="3CulEO2oIOS" role="37wK5m">
                          <ref role="1PxDUh" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
                          <ref role="3cqZAo" to="tj24:2daneBP_Jiy" resolve="REPORT_ITEMS" />
                        </node>
                        <node concept="1bVj0M" id="3CulEO2oKGB" role="37wK5m">
                          <node concept="37vLTG" id="3CulEO2oQ3U" role="1bW2Oz">
                            <property role="TrG5h" value="items" />
                            <node concept="_YKpA" id="2daneBP_OV2" role="1tU5fm">
                              <node concept="3uibUv" id="2daneBP_OV3" role="_ZDj9">
                                <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="3CulEO2oKGD" role="1bW5cS">
                            <node concept="3clFbF" id="1FOQehx4b_Y" role="3cqZAp">
                              <node concept="37vLTI" id="1FOQehx4b_Z" role="3clFbG">
                                <node concept="2OqwBi" id="1FOQehx4bA0" role="37vLTx">
                                  <node concept="37vLTw" id="1FOQehx4bA1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="78H58of3fK7" resolve="task" />
                                  </node>
                                  <node concept="liA8E" id="1FOQehx4bA2" role="2OqNvi">
                                    <ref role="37wK5l" to="o35r:1FOQehx0V$P" resolve="withReportItems" />
                                    <node concept="37vLTw" id="3CulEO2oX65" role="37wK5m">
                                      <ref role="3cqZAo" node="3CulEO2oQ3U" resolve="items" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="1FOQehx4bA6" role="37vLTJ">
                                  <ref role="3cqZAo" node="78H58of3fK7" resolve="task" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="3CulEO2oUh7" role="3cqZAp" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="78H58of3v9B" role="3cqZAp" />
                  <node concept="3clFbF" id="5lxnBcU0aba" role="3cqZAp">
                    <node concept="2OqwBi" id="5lxnBcU0d7B" role="3clFbG">
                      <node concept="2YIFZM" id="6Yb9hAqxX1a" role="2Oq$k0">
                        <ref role="37wK5l" to="o35r:78H58of26Si" resolve="scheduleHighlighting" />
                        <ref role="1Pybhc" to="o35r:41ox5VnpFrR" resolve="HighlightingPlugin" />
                        <node concept="37vLTw" id="78H58of3wcK" role="37wK5m">
                          <ref role="3cqZAo" node="6kREIVkNFsd" resolve="mpsProject" />
                        </node>
                        <node concept="37vLTw" id="78H58of3wcL" role="37wK5m">
                          <ref role="3cqZAo" node="78H58of3fK7" resolve="task" />
                        </node>
                        <node concept="37vLTw" id="78H58of3wcM" role="37wK5m">
                          <ref role="3cqZAo" node="6kREIVkNB3d" resolve="subscribeScheduler" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5lxnBcU0eq5" role="2OqNvi">
                        <ref role="37wK5l" to="unkn:~Completable.andThen(io.reactivex.SingleSource)" resolve="andThen" />
                        <node concept="2YIFZM" id="5lxnBcU0gP7" role="37wK5m">
                          <ref role="37wK5l" to="unkn:~Single.fromCallable(java.util.concurrent.Callable)" resolve="fromCallable" />
                          <ref role="1Pybhc" to="unkn:~Single" resolve="Single" />
                          <node concept="1bVj0M" id="5lxnBcU0iBX" role="37wK5m">
                            <node concept="3clFbS" id="5lxnBcU0iBY" role="1bW5cS">
                              <node concept="3clFbH" id="3bpBM3QaoLJ" role="3cqZAp" />
                              <node concept="3clFbF" id="q1hCixYKM3" role="3cqZAp">
                                <node concept="2OqwBi" id="q1hCixYLlm" role="3clFbG">
                                  <node concept="37vLTw" id="q1hCixYKM1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5lxnBcU09rm" resolve="inEff" />
                                  </node>
                                  <node concept="liA8E" id="q1hCixYM6v" role="2OqNvi">
                                    <ref role="37wK5l" to="1yqb:51ek2rQD9Pw" resolve="compose" />
                                    <node concept="1bVj0M" id="51ek2rQIyq1" role="37wK5m">
                                      <node concept="3clFbS" id="51ek2rQIyq3" role="1bW5cS">
                                        <node concept="3clFbF" id="51ek2rQNLR3" role="3cqZAp">
                                          <node concept="2YIFZM" id="51ek2rQNMBs" role="3clFbG">
                                            <ref role="37wK5l" to="1yqb:51ek2rQN_SC" resolve="nullOf" />
                                            <ref role="1Pybhc" to="1yqb:2daneBOWXQd" resolve="Effect" />
                                            <node concept="Xl_RD" id="51ek2rQNNlI" role="37wK5m">
                                              <property role="Xl_RC" value="highlighting results" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="3bpBM3Qahlw" role="3cqZAp" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5lxnBcU08SE" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Hg6EncbkS2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Hg6EncbjnH" role="jymVt" />
    <node concept="3Tm1VV" id="3F6vMxq_2US" role="1B3o_S" />
    <node concept="3uibUv" id="1pPth$lC2Ed" role="1zkMxy">
      <ref role="3uigEE" to="1yqb:1pPth$lAzAx" resolve="Step" />
      <node concept="3uibUv" id="7eK3Dxvl0l7" role="11_B2D">
        <ref role="3uigEE" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
      </node>
    </node>
    <node concept="312cEg" id="1pPth$lGU8f" role="jymVt">
      <property role="TrG5h" value="editorComponent" />
      <node concept="3Tm6S6" id="1pPth$lGU8g" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lGU8i" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="6kREIVkNFsd" role="jymVt">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="6kREIVkNFse" role="1B3o_S" />
      <node concept="3uibUv" id="6kREIVkNFsg" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="6TxWhg_AheJ">
    <property role="TrG5h" value="TypecheckingWidgetLifecycle" />
    <node concept="2BZ0e9" id="6TxWhg_BX7s" role="2uRRBA">
      <property role="TrG5h" value="widget" />
      <node concept="3Tm6S6" id="6TxWhg_BX7t" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhg_BXwY" role="1tU5fm">
        <ref role="3uigEE" node="6TxWhg_AhBw" resolve="TypecheckingWidget" />
      </node>
    </node>
    <node concept="2BZ0e9" id="CYd5Z6WKvP" role="2uRRBA">
      <property role="TrG5h" value="statusBar" />
      <node concept="3Tm6S6" id="CYd5Z6WKvQ" role="1B3o_S" />
      <node concept="3uibUv" id="CYd5Z6WT_C" role="1tU5fm">
        <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
      </node>
    </node>
    <node concept="2uRRBT" id="6TxWhg_A$vF" role="2uRRB$">
      <node concept="3clFbS" id="6TxWhg_A$vG" role="2VODD2">
        <node concept="3clFbJ" id="51kI2ZZQkoD" role="3cqZAp">
          <node concept="3clFbS" id="51kI2ZZQkoF" role="3clFbx">
            <node concept="3clFbF" id="CYd5Z6WU85" role="3cqZAp">
              <node concept="37vLTI" id="CYd5Z6WUN6" role="3clFbG">
                <node concept="2OqwBi" id="CYd5Z6WV2S" role="37vLTx">
                  <node concept="liA8E" id="CYd5Z6WV2T" role="2OqNvi">
                    <ref role="37wK5l" to="jkny:~WindowManager.getStatusBar(com.intellij.openapi.project.Project)" resolve="getStatusBar" />
                    <node concept="2OqwBi" id="CYd5Z6WV2U" role="37wK5m">
                      <node concept="1KvdUw" id="CYd5Z6WV2V" role="2Oq$k0" />
                      <node concept="liA8E" id="CYd5Z6WV2W" role="2OqNvi">
                        <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="CYd5Z6WV2X" role="2Oq$k0">
                    <ref role="1Pybhc" to="jkny:~WindowManager" resolve="WindowManager" />
                    <ref role="37wK5l" to="jkny:~WindowManager.getInstance()" resolve="getInstance" />
                  </node>
                </node>
                <node concept="2OqwBi" id="CYd5Z6WUoP" role="37vLTJ">
                  <node concept="2WthIp" id="CYd5Z6WU83" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="CYd5Z6WU_c" role="2OqNvi">
                    <ref role="2WH_rO" node="CYd5Z6WKvP" resolve="statusBar" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6TxWhgAxgyE" role="3cqZAp">
              <node concept="3cpWsn" id="6TxWhgAxgyF" role="3cpWs9">
                <property role="TrG5h" value="bean" />
                <node concept="3uibUv" id="6TxWhgAxgyo" role="1tU5fm">
                  <ref role="3uigEE" node="6TxWhgAwNGu" resolve="TypecheckingEnabledBean" />
                </node>
                <node concept="2ShNRf" id="6TxWhgAxgyG" role="33vP2m">
                  <node concept="1pGfFk" id="6TxWhgAxgyH" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="6TxWhgAwO9f" resolve="TypecheckingEnabledBean" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhg_BY0F" role="3cqZAp">
              <node concept="37vLTI" id="6TxWhg_BYG8" role="3clFbG">
                <node concept="2OqwBi" id="6TxWhg_BYh5" role="37vLTJ">
                  <node concept="2WthIp" id="6TxWhg_BY0D" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="6TxWhg_BYzR" role="2OqNvi">
                    <ref role="2WH_rO" node="6TxWhg_BX7s" resolve="widget" />
                  </node>
                </node>
                <node concept="2ShNRf" id="6TxWhg_BYOH" role="37vLTx">
                  <node concept="1pGfFk" id="6TxWhg_BYOI" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="6TxWhg_B4Ik" resolve="TypecheckingWidget" />
                    <node concept="2OqwBi" id="CYd5Z6WVi3" role="37wK5m">
                      <node concept="2WthIp" id="CYd5Z6WVi6" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="CYd5Z6WVi8" role="2OqNvi">
                        <ref role="2WH_rO" node="CYd5Z6WKvP" resolve="statusBar" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6TxWhgAxiCO" role="37wK5m">
                      <ref role="3cqZAo" node="6TxWhgAxgyF" resolve="bean" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhg_B80S" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhg_B8do" role="3clFbG">
                <node concept="2OqwBi" id="CYd5Z6WVj2" role="2Oq$k0">
                  <node concept="2WthIp" id="CYd5Z6WVj5" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="CYd5Z6WVj7" role="2OqNvi">
                    <ref role="2WH_rO" node="CYd5Z6WKvP" resolve="statusBar" />
                  </node>
                </node>
                <node concept="liA8E" id="6TxWhg_B8w0" role="2OqNvi">
                  <ref role="37wK5l" to="jkny:~StatusBar.addWidget(com.intellij.openapi.wm.StatusBarWidget,com.intellij.openapi.Disposable)" resolve="addWidget" />
                  <node concept="2OqwBi" id="6TxWhg_BZlY" role="37wK5m">
                    <node concept="2WthIp" id="6TxWhg_BZm1" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="6TxWhg_BZm3" role="2OqNvi">
                      <ref role="2WH_rO" node="6TxWhg_BX7s" resolve="widget" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4ldrYjLWsN$" role="37wK5m">
                    <node concept="2WthIp" id="4ldrYjLWsN_" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="4ldrYjLWsNA" role="2OqNvi">
                      <ref role="2WH_rO" node="CYd5Z6WKvP" resolve="statusBar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhg_Ba8n" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhg_BaGC" role="3clFbG">
                <node concept="2OqwBi" id="6TxWhg_BZpb" role="2Oq$k0">
                  <node concept="2WthIp" id="6TxWhg_BZpe" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="6TxWhg_BZpg" role="2OqNvi">
                    <ref role="2WH_rO" node="6TxWhg_BX7s" resolve="widget" />
                  </node>
                </node>
                <node concept="liA8E" id="6TxWhg_BMCA" role="2OqNvi">
                  <ref role="37wK5l" node="6TxWhg_Bnkz" resolve="update" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="4ncXOjKS3aK" role="3clFbw">
            <ref role="37wK5l" node="4ncXOjKRZI$" resolve="isLoaded" />
            <ref role="1Pybhc" node="4ncXOjKRu7g" resolve="CoderulesIdeaPlugin" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="6TxWhg_A$vZ" role="2uRRB_">
      <node concept="3clFbS" id="6TxWhg_A$w0" role="2VODD2">
        <node concept="3clFbJ" id="6GMlsrjFvr2" role="3cqZAp">
          <node concept="3clFbS" id="6GMlsrjFvr4" role="3clFbx">
            <node concept="3clFbF" id="6TxWhg_BTQ7" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhg_BUaV" role="3clFbG">
                <node concept="2OqwBi" id="CYd5Z6WVmS" role="2Oq$k0">
                  <node concept="2WthIp" id="CYd5Z6WVmV" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="CYd5Z6WVmX" role="2OqNvi">
                    <ref role="2WH_rO" node="CYd5Z6WKvP" resolve="statusBar" />
                  </node>
                </node>
                <node concept="liA8E" id="6TxWhg_BUue" role="2OqNvi">
                  <ref role="37wK5l" to="jkny:~StatusBar.removeWidget(java.lang.String)" resolve="removeWidget" />
                  <node concept="2OqwBi" id="6TxWhg_C02c" role="37wK5m">
                    <node concept="2OqwBi" id="6TxWhg_BWMZ" role="2Oq$k0">
                      <node concept="2WthIp" id="6TxWhg_BWN2" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="6TxWhg_BWN4" role="2OqNvi">
                        <ref role="2WH_rO" node="6TxWhg_BX7s" resolve="widget" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6TxWhg_C0GF" role="2OqNvi">
                      <ref role="37wK5l" node="6TxWhg_AqGf" resolve="ID" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6GMlsrjFwJP" role="3cqZAp">
              <node concept="37vLTI" id="6GMlsrjFxkz" role="3clFbG">
                <node concept="10Nm6u" id="6GMlsrjFxlp" role="37vLTx" />
                <node concept="2OqwBi" id="6GMlsrjFwTz" role="37vLTJ">
                  <node concept="2WthIp" id="6GMlsrjFwJN" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="6GMlsrjFx4e" role="2OqNvi">
                    <ref role="2WH_rO" node="CYd5Z6WKvP" resolve="statusBar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6GMlsrjFwhr" role="3clFbw">
            <node concept="10Nm6u" id="6GMlsrjFwi1" role="3uHU7w" />
            <node concept="2OqwBi" id="6GMlsrjFvIj" role="3uHU7B">
              <node concept="2WthIp" id="6GMlsrjFvuA" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6GMlsrjFw07" role="2OqNvi">
                <ref role="2WH_rO" node="CYd5Z6WKvP" resolve="statusBar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6GMlsrjFxGT" role="3cqZAp">
          <node concept="3clFbS" id="6GMlsrjFxGV" role="3clFbx">
            <node concept="3clFbF" id="6TxWhg_C2HU" role="3cqZAp">
              <node concept="2YIFZM" id="6TxWhg_C2U8" role="3clFbG">
                <ref role="37wK5l" to="zn9m:~Disposer.dispose(com.intellij.openapi.Disposable)" resolve="dispose" />
                <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
                <node concept="2OqwBi" id="6TxWhg_C2Wj" role="37wK5m">
                  <node concept="2WthIp" id="6TxWhg_C2Wm" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="6TxWhg_C2Wo" role="2OqNvi">
                    <ref role="2WH_rO" node="6TxWhg_BX7s" resolve="widget" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhg_C1bd" role="3cqZAp">
              <node concept="37vLTI" id="6TxWhg_C1KF" role="3clFbG">
                <node concept="10Nm6u" id="6TxWhg_C1Mv" role="37vLTx" />
                <node concept="2OqwBi" id="6TxWhg_C1rK" role="37vLTJ">
                  <node concept="2WthIp" id="6TxWhg_C1bb" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="6TxWhg_C1AZ" role="2OqNvi">
                    <ref role="2WH_rO" node="6TxWhg_BX7s" resolve="widget" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6GMlsrjFz2G" role="3clFbw">
            <node concept="10Nm6u" id="6GMlsrjFzjp" role="3uHU7w" />
            <node concept="2OqwBi" id="6GMlsrjFy13" role="3uHU7B">
              <node concept="2WthIp" id="6GMlsrjFxMq" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6GMlsrjFyc5" role="2OqNvi">
                <ref role="2WH_rO" node="6TxWhg_BX7s" resolve="widget" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6hqFpWnf9Mu">
    <property role="3GE5qa" value="action" />
    <property role="TrG5h" value="TypecheckingActions" />
    <node concept="2tJIrI" id="6hqFpWnfb0U" role="jymVt" />
    <node concept="2YIFZL" id="6hqFpWnfbeu" role="jymVt">
      <property role="TrG5h" value="isTypecheckingAvailable" />
      <node concept="37vLTG" id="6hqFpWnfbqG" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6hqFpWnfiW4" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6hqFpWnfcD1" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="6hqFpWnfLje" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="6hqFpWnfhk_" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="6hqFpWnfhNL" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="10P_77" id="6hqFpWnfblF" role="3clF45" />
      <node concept="3Tm1VV" id="6hqFpWnfbex" role="1B3o_S" />
      <node concept="3clFbS" id="6hqFpWnfbey" role="3clF47">
        <node concept="3cpWs8" id="6hqFpWnfbDx" role="3cqZAp">
          <node concept="3cpWsn" id="6hqFpWnfbDy" role="3cpWs9">
            <property role="TrG5h" value="containingRoot" />
            <node concept="3Tqbb2" id="6hqFpWnfbDz" role="1tU5fm" />
            <node concept="2OqwBi" id="6hqFpWnfbD$" role="33vP2m">
              <node concept="liA8E" id="6hqFpWnfbDC" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
              <node concept="37vLTw" id="6hqFpWnfcn_" role="2Oq$k0">
                <ref role="3cqZAo" node="6hqFpWnfbqG" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7WKNeR8ULi0" role="3cqZAp">
          <node concept="3cpWsn" id="7WKNeR8ULi1" role="3cpWs9">
            <property role="TrG5h" value="acs" />
            <node concept="3vKaQO" id="7WKNeR8ULhW" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4v4O7l" role="3O5elw">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="3KN3A4v4O$I" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="IFW4V2Exws" role="33vP2m">
              <node concept="2YIFZM" id="IFW4V2Ewyh" role="2Oq$k0">
                <ref role="37wK5l" to="u46i:78H58oeCAQS" resolve="aspectLookup" />
                <ref role="1Pybhc" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                <node concept="2OqwBi" id="IFW4V2Ewyi" role="37wK5m">
                  <node concept="37vLTw" id="IFW4V2Ewyj" role="2Oq$k0">
                    <ref role="3cqZAo" node="6hqFpWnfhk_" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="IFW4V2Ewyk" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="IFW4V2ExUQ" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
                <node concept="37vLTw" id="7WKNeR8ULi4" role="37wK5m">
                  <ref role="3cqZAo" node="6hqFpWnfbDy" resolve="containingRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6hqFpWnfbDM" role="3cqZAp">
          <node concept="3cpWsn" id="6hqFpWnfbDN" role="3cpWs9">
            <property role="TrG5h" value="hasTypeAspect" />
            <node concept="10P_77" id="6hqFpWnfbDO" role="1tU5fm" />
            <node concept="2OqwBi" id="7WKNeR8UNGb" role="33vP2m">
              <node concept="37vLTw" id="7WKNeR8UN2f" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8ULi1" resolve="acs" />
              </node>
              <node concept="3GX2aA" id="7WKNeR8UOJy" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4dm7SwSnAC3" role="3cqZAp">
          <node concept="3clFbS" id="4dm7SwSnAC5" role="3clFbx">
            <node concept="3cpWs6" id="4dm7SwSnByd" role="3cqZAp">
              <node concept="3clFbT" id="4dm7SwSnB$s" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="4dm7SwSnBmU" role="3clFbw">
            <node concept="37vLTw" id="4dm7SwSnBmW" role="3fr31v">
              <ref role="3cqZAo" node="6hqFpWnfbDN" resolve="hasTypeAspect" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Ei6D4B8QsA" role="3cqZAp">
          <node concept="3cpWsn" id="2Ei6D4B8QsB" role="3cpWs9">
            <property role="TrG5h" value="msc" />
            <node concept="3uibUv" id="2Ei6D4B8QpY" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
            </node>
            <node concept="2OqwBi" id="2Ei6D4B8QsC" role="33vP2m">
              <node concept="37vLTw" id="2Ei6D4B8QsD" role="2Oq$k0">
                <ref role="3cqZAo" node="6hqFpWnfhk_" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="2Ei6D4B8QsE" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="2Ei6D4B8QsF" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4dm7SwSnLQX" role="3cqZAp">
          <node concept="22lmx$" id="4dm7SwSnM2d" role="3cqZAk">
            <node concept="3fqX7Q" id="4dm7SwSnM2e" role="3uHU7w">
              <node concept="2OqwBi" id="4dm7SwSnM2f" role="3fr31v">
                <node concept="37vLTw" id="4dm7SwSnM2g" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Ei6D4B8QsB" resolve="msc" />
                </node>
                <node concept="liA8E" id="4dm7SwSnM2h" role="2OqNvi">
                  <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="4dm7SwSnM2i" role="3uHU7B">
              <node concept="37vLTw" id="4dm7SwSnM2j" role="3uHU7B">
                <ref role="3cqZAo" node="2Ei6D4B8QsB" resolve="msc" />
              </node>
              <node concept="10Nm6u" id="4dm7SwSnM2k" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6hqFpWnfb0Z" role="jymVt" />
    <node concept="2YIFZL" id="4vBwiiVBaJD" role="jymVt">
      <property role="TrG5h" value="showType" />
      <node concept="37vLTG" id="4vBwiiVBdC0" role="3clF46">
        <property role="TrG5h" value="editorCell" />
        <node concept="3uibUv" id="4vBwiiVBdQ_" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="37vLTG" id="4vBwiiVBaJE" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="4vBwiiVBaJF" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="4vBwiiVBaJG" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="4vBwiiVBaJH" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="4vBwiiVBaJI" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="4vBwiiVBaJJ" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3uibUv" id="4vBwiiVBdws" role="3clF45">
        <ref role="3uigEE" node="4vBwiiVz_UL" resolve="TypecheckingActions.ShowType" />
      </node>
      <node concept="3Tm1VV" id="4vBwiiVBaJL" role="1B3o_S" />
      <node concept="3clFbS" id="4vBwiiVBaJM" role="3clF47">
        <node concept="3clFbF" id="6kEuChzYI_x" role="3cqZAp">
          <node concept="2ShNRf" id="6kEuChzYI_v" role="3clFbG">
            <node concept="1pGfFk" id="6kEuChzZ59o" role="2ShVmc">
              <ref role="37wK5l" node="4vBwiiVz_UN" resolve="TypecheckingActions.ShowType" />
              <node concept="37vLTw" id="6kEuChzZ8dK" role="37wK5m">
                <ref role="3cqZAo" node="4vBwiiVBdC0" resolve="editorCell" />
              </node>
              <node concept="37vLTw" id="6kEuChzZ5Xz" role="37wK5m">
                <ref role="3cqZAo" node="4vBwiiVBaJE" resolve="editorComponent" />
              </node>
              <node concept="37vLTw" id="6kEuChzZ8RA" role="37wK5m">
                <ref role="3cqZAo" node="4vBwiiVBaJG" resolve="mpsProject" />
              </node>
              <node concept="37vLTw" id="6kEuChzZ9ac" role="37wK5m">
                <ref role="3cqZAo" node="4vBwiiVBaJI" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8RgMN" role="jymVt" />
    <node concept="2YIFZL" id="7WKNeR8SP2E" role="jymVt">
      <property role="TrG5h" value="launchQuery" />
      <node concept="37vLTG" id="5EDW3XEpvo4" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="3uibUv" id="5EDW3XEpvC1" role="1tU5fm">
          <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
      <node concept="37vLTG" id="7WKNeR8SP2H" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="7WKNeR8SP2I" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="7WKNeR8SP2J" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7WKNeR8SP2K" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7WKNeR8SP2L" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="7WKNeR8SP2M" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3uibUv" id="7WKNeR8T4zY" role="3clF45">
        <ref role="3uigEE" node="7WKNeR8SQxg" resolve="TypecheckingActions.LaunchQuery" />
      </node>
      <node concept="3Tm1VV" id="7WKNeR8SP2O" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR8SP2P" role="3clF47">
        <node concept="3clFbF" id="7WKNeR8SP2Q" role="3cqZAp">
          <node concept="2ShNRf" id="7WKNeR8SP2R" role="3clFbG">
            <node concept="1pGfFk" id="7WKNeR8SP2S" role="2ShVmc">
              <ref role="37wK5l" node="7WKNeR8SQxi" resolve="TypecheckingActions.LaunchQuery" />
              <node concept="37vLTw" id="5EDW3XEpw0l" role="37wK5m">
                <ref role="3cqZAo" node="5EDW3XEpvo4" resolve="query" />
              </node>
              <node concept="37vLTw" id="7WKNeR8SP2U" role="37wK5m">
                <ref role="3cqZAo" node="7WKNeR8SP2H" resolve="editorComponent" />
              </node>
              <node concept="37vLTw" id="7WKNeR8SP2V" role="37wK5m">
                <ref role="3cqZAo" node="7WKNeR8SP2J" resolve="mpsProject" />
              </node>
              <node concept="37vLTw" id="7WKNeR8SP2W" role="37wK5m">
                <ref role="3cqZAo" node="7WKNeR8SP2L" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8SP2D" role="jymVt" />
    <node concept="312cEu" id="7WKNeR8RiDf" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="AbstractAction" />
      <property role="1sVAO0" value="true" />
      <node concept="2tJIrI" id="7WKNeR8Rk5Y" role="jymVt" />
      <node concept="3clFbW" id="7WKNeR8SByE" role="jymVt">
        <node concept="37vLTG" id="7WKNeR8SEgi" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="7WKNeR8SEgj" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SEgk" role="3clF46">
          <property role="TrG5h" value="mpsProject" />
          <node concept="3uibUv" id="7WKNeR8SEgl" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SEgm" role="3clF46">
          <property role="TrG5h" value="ideaProject" />
          <node concept="3uibUv" id="7WKNeR8SEgn" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3cqZAl" id="7WKNeR8SByG" role="3clF45" />
        <node concept="3Tmbuc" id="7WKNeR8SCRm" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8SByI" role="3clF47">
          <node concept="3clFbF" id="7WKNeR8SEkn" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR8SEko" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8SEkp" role="37vLTx">
                <ref role="3cqZAo" node="7WKNeR8SEgi" resolve="editorComponent" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8SEkq" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR8SEkr" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR8SEks" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfwwm" resolve="editorComponent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8SEkA" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR8SEkB" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8SEkC" role="37vLTx">
                <ref role="3cqZAo" node="7WKNeR8SEgk" resolve="mpsProject" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8SEkD" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR8SEkE" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR8SEkF" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfkNg" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8SEkP" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR8SEkQ" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8SEkR" role="37vLTx">
                <ref role="3cqZAo" node="7WKNeR8SEgm" resolve="ideaProject" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8SEkS" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR8SEkT" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR8SEkU" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfoA9" resolve="ideaProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8SCTJ" role="jymVt" />
      <node concept="3clFb_" id="7WKNeR8RobH" role="jymVt">
        <property role="TrG5h" value="withTrace" />
        <node concept="3uibUv" id="7WKNeR8RprK" role="3clF45">
          <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
        </node>
        <node concept="3Tm1VV" id="7WKNeR8RobJ" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8RobK" role="3clF47">
          <node concept="3clFbF" id="7WKNeR8RobL" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR8RobM" role="3clFbG">
              <node concept="3clFbT" id="7WKNeR8RobN" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8RobO" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR8RobP" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR8RobQ" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnjd0A" resolve="trace" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8RobR" role="3cqZAp">
            <node concept="Xjq3P" id="7WKNeR8RobS" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8RY$m" role="jymVt" />
      <node concept="3clFb_" id="6hqFpWniBeE" role="jymVt">
        <property role="TrG5h" value="forNodes" />
        <node concept="37vLTG" id="6hqFpWniEgR" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="2I9FWS" id="6hqFpWniZ5l" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="7WKNeR8S032" role="3clF45">
          <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
        </node>
        <node concept="3Tm1VV" id="6hqFpWniBeH" role="1B3o_S" />
        <node concept="3clFbS" id="6hqFpWniBeI" role="3clF47">
          <node concept="3clFbJ" id="3IIf9O_lehC" role="3cqZAp">
            <node concept="3clFbS" id="3IIf9O_lehE" role="3clFbx">
              <node concept="YS8fn" id="3IIf9O_lg_W" role="3cqZAp">
                <node concept="2ShNRf" id="3IIf9O_lgQd" role="YScLw">
                  <node concept="1pGfFk" id="3IIf9O_ljbB" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="3IIf9O_n04f" role="37wK5m">
                      <property role="Xl_RC" value="parameter already set" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3IIf9O_lfWl" role="3clFbw">
              <node concept="10Nm6u" id="3IIf9O_lgcl" role="3uHU7w" />
              <node concept="2OqwBi" id="3IIf9O_mZn_" role="3uHU7B">
                <node concept="Xjq3P" id="3IIf9O_mZ1Q" role="2Oq$k0" />
                <node concept="2OwXpG" id="3IIf9O_mZzO" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfpcc" resolve="nodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6hqFpWniFVp" role="3cqZAp">
            <node concept="37vLTI" id="6hqFpWniIps" role="3clFbG">
              <node concept="37vLTw" id="6hqFpWniIHR" role="37vLTx">
                <ref role="3cqZAo" node="6hqFpWniEgR" resolve="nodes" />
              </node>
              <node concept="2OqwBi" id="6hqFpWniGgy" role="37vLTJ">
                <node concept="Xjq3P" id="6hqFpWniFVo" role="2Oq$k0" />
                <node concept="2OwXpG" id="6hqFpWniI3i" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfpcc" resolve="nodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6hqFpWniJaS" role="3cqZAp">
            <node concept="Xjq3P" id="6hqFpWniJaQ" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8SaXX" role="jymVt" />
      <node concept="3clFb_" id="6hqFpWnimEi" role="jymVt">
        <property role="TrG5h" value="forNode" />
        <node concept="37vLTG" id="6hqFpWnirzt" role="3clF46">
          <property role="TrG5h" value="root" />
          <node concept="3Tqbb2" id="6hqFpWnisvm" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="7WKNeR8ScAf" role="3clF45">
          <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
        </node>
        <node concept="3Tm1VV" id="6hqFpWnimEl" role="1B3o_S" />
        <node concept="3clFbS" id="6hqFpWnimEm" role="3clF47">
          <node concept="3clFbF" id="3IIf9O_lDlI" role="3cqZAp">
            <node concept="2OqwBi" id="3IIf9O_lDPs" role="3clFbG">
              <node concept="Xjq3P" id="3IIf9O_lDlG" role="2Oq$k0" />
              <node concept="liA8E" id="3IIf9O_lE4n" role="2OqNvi">
                <ref role="37wK5l" node="6hqFpWniBeE" resolve="forNodes" />
                <node concept="2ShNRf" id="3IIf9O_lEdv" role="37wK5m">
                  <node concept="Tc6Ow" id="3IIf9O_lEdw" role="2ShVmc">
                    <node concept="3Tqbb2" id="3IIf9O_lEdx" role="HW$YZ" />
                    <node concept="37vLTw" id="3IIf9O_lEdy" role="HW$Y0">
                      <ref role="3cqZAo" node="6hqFpWnirzt" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8Rk61" role="jymVt" />
      <node concept="3clFb_" id="7WKNeR8RsrK" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="true" />
        <node concept="3cqZAl" id="7WKNeR8RsrM" role="3clF45" />
        <node concept="3Tm1VV" id="7WKNeR8RsrN" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8RsrO" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7WKNeR8RiMd" role="jymVt" />
      <node concept="3Tm1VV" id="7WKNeR8RiDg" role="1B3o_S" />
      <node concept="312cEg" id="6hqFpWnjd0A" role="jymVt">
        <property role="TrG5h" value="trace" />
        <node concept="3Tmbuc" id="7WKNeR8Ro7Y" role="1B3o_S" />
        <node concept="10P_77" id="6hqFpWnjeks" role="1tU5fm" />
        <node concept="3clFbT" id="6hqFpWnjeCv" role="33vP2m">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="312cEg" id="6hqFpWnfpcc" role="jymVt">
        <property role="TrG5h" value="nodes" />
        <node concept="3Tmbuc" id="7WKNeR8RUdJ" role="1B3o_S" />
        <node concept="2I9FWS" id="6hqFpWniSgs" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="7WKNeR8Syrl" role="jymVt" />
      <node concept="312cEg" id="6hqFpWnfwwm" role="jymVt">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3Tmbuc" id="7WKNeR8Sxpp" role="1B3o_S" />
        <node concept="3uibUv" id="6hqFpWnfKMX" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="312cEg" id="6hqFpWnfkNg" role="jymVt">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3Tmbuc" id="7WKNeR8SxI_" role="1B3o_S" />
        <node concept="3uibUv" id="6hqFpWnflog" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="312cEg" id="6hqFpWnfoA9" role="jymVt">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3Tmbuc" id="7WKNeR8SyiE" role="1B3o_S" />
        <node concept="3uibUv" id="6hqFpWnfoT0" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vBwiiVApeL" role="jymVt" />
    <node concept="312cEu" id="4vBwiiVz_UL" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="ShowType" />
      <node concept="2tJIrI" id="4vBwiiVz_UM" role="jymVt" />
      <node concept="3clFbW" id="4vBwiiVz_UN" role="jymVt">
        <node concept="37vLTG" id="4vBwiiV$35z" role="3clF46">
          <property role="TrG5h" value="cell" />
          <node concept="3uibUv" id="4vBwiiV$3AG" role="1tU5fm">
            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
          </node>
        </node>
        <node concept="37vLTG" id="4vBwiiVz_UO" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="4vBwiiVz_UP" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="37vLTG" id="4vBwiiVz_UQ" role="3clF46">
          <property role="TrG5h" value="mpsProject" />
          <node concept="3uibUv" id="4vBwiiVz_UR" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
          </node>
        </node>
        <node concept="37vLTG" id="4vBwiiVz_US" role="3clF46">
          <property role="TrG5h" value="ideaProject" />
          <node concept="3uibUv" id="4vBwiiVz_UT" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3cqZAl" id="4vBwiiVz_UU" role="3clF45" />
        <node concept="3Tm1VV" id="4vBwiiVz_UV" role="1B3o_S" />
        <node concept="3clFbS" id="4vBwiiVz_UW" role="3clF47">
          <node concept="XkiVB" id="7WKNeR8SHAV" role="3cqZAp">
            <ref role="37wK5l" node="7WKNeR8SByE" resolve="TypecheckingActions.AbstractAction" />
            <node concept="37vLTw" id="7WKNeR8SHAW" role="37wK5m">
              <ref role="3cqZAo" node="4vBwiiVz_UO" resolve="editorComponent" />
            </node>
            <node concept="37vLTw" id="7WKNeR8SHAX" role="37wK5m">
              <ref role="3cqZAo" node="4vBwiiVz_UQ" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="7WKNeR8SHAY" role="37wK5m">
              <ref role="3cqZAo" node="4vBwiiVz_US" resolve="ideaProject" />
            </node>
          </node>
          <node concept="3clFbF" id="4vBwiiV$3BJ" role="3cqZAp">
            <node concept="37vLTI" id="4vBwiiV$3BL" role="3clFbG">
              <node concept="2OqwBi" id="4vBwiiV$4A1" role="37vLTJ">
                <node concept="Xjq3P" id="4vBwiiV$4PN" role="2Oq$k0" />
                <node concept="2OwXpG" id="4vBwiiV$4A4" role="2OqNvi">
                  <ref role="2Oxat5" node="4vBwiiV$3BF" resolve="editorCell" />
                </node>
              </node>
              <node concept="37vLTw" id="4vBwiiV$3BP" role="37vLTx">
                <ref role="3cqZAo" node="4vBwiiV$35z" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4vBwiiVz_Vf" role="jymVt" />
      <node concept="3clFb_" id="3IIf9O_ljeT" role="jymVt">
        <property role="TrG5h" value="forNodes" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="3IIf9O_ljeU" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="2I9FWS" id="3IIf9O_ljeV" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="3IIf9O_ljeW" role="3clF45">
          <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
        </node>
        <node concept="3Tm1VV" id="3IIf9O_ljeX" role="1B3o_S" />
        <node concept="3clFbS" id="3IIf9O_ljff" role="3clF47">
          <node concept="3clFbJ" id="3IIf9O_llrt" role="3cqZAp">
            <node concept="3y3z36" id="3IIf9O_lwte" role="3clFbw">
              <node concept="2OqwBi" id="3IIf9O_lpwZ" role="3uHU7B">
                <node concept="37vLTw" id="3IIf9O_llFW" role="2Oq$k0">
                  <ref role="3cqZAo" node="3IIf9O_ljeU" resolve="nodes" />
                </node>
                <node concept="34oBXx" id="3IIf9O_lu6f" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="3IIf9O_lwiI" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="3clFbS" id="3IIf9O_llrv" role="3clFbx">
              <node concept="YS8fn" id="3IIf9O_lwWe" role="3cqZAp">
                <node concept="2ShNRf" id="3IIf9O_lxcH" role="YScLw">
                  <node concept="1pGfFk" id="3IIf9O_lzy5" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="3IIf9O_lzPa" role="37wK5m">
                      <property role="Xl_RC" value="expecting exactly one argument" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3IIf9O_l$PQ" role="3cqZAp">
            <node concept="3nyPlj" id="3IIf9O_l_6i" role="3cqZAk">
              <ref role="37wK5l" node="6hqFpWniBeE" resolve="forNodes" />
              <node concept="37vLTw" id="3IIf9O_lAZ5" role="37wK5m">
                <ref role="3cqZAo" node="3IIf9O_ljeU" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3IIf9O_ljfg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3IIf9O_lk82" role="jymVt" />
      <node concept="3clFb_" id="4vBwiiVz_VV" role="jymVt">
        <property role="TrG5h" value="execute" />
        <node concept="3cqZAl" id="4vBwiiVz_VW" role="3clF45" />
        <node concept="3Tm1VV" id="4vBwiiVz_VX" role="1B3o_S" />
        <node concept="3clFbS" id="4vBwiiVz_VY" role="3clF47">
          <node concept="3clFbH" id="2cnGCY$nZpw" role="3cqZAp" />
          <node concept="3cpWs8" id="2cnGCY$oywT" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$oywU" role="3cpWs9">
              <property role="TrG5h" value="text" />
              <node concept="17QB3L" id="2cnGCY$oywV" role="1tU5fm" />
              <node concept="Xl_RD" id="2cnGCY$oywW" role="33vP2m">
                <property role="Xl_RC" value="no type" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2cnGCY$o4N4" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$o4N5" role="3cpWs9">
              <property role="TrG5h" value="typeNode" />
              <node concept="3Tqbb2" id="2cnGCY$o4BH" role="1tU5fm" />
            </node>
          </node>
          <node concept="3cpWs8" id="2cnGCY$rO2f" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$rO2g" role="3cpWs9">
              <property role="TrG5h" value="repository" />
              <node concept="3uibUv" id="2cnGCY$oDAL" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
              </node>
              <node concept="2OqwBi" id="2cnGCY$rO2h" role="33vP2m">
                <node concept="37vLTw" id="2cnGCY$rO2i" role="2Oq$k0">
                  <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="2cnGCY$rO2j" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1QHqEK" id="2cnGCY$ouRq" role="3cqZAp">
            <node concept="1QHqEC" id="2cnGCY$ouRs" role="1QHqEI">
              <node concept="3clFbS" id="2cnGCY$ouRu" role="1bW5cS">
                <node concept="3cpWs8" id="1z4$59iLPYJ" role="3cqZAp">
                  <node concept="3cpWsn" id="1z4$59iLPYK" role="3cpWs9">
                    <property role="TrG5h" value="typecheckingService" />
                    <node concept="3uibUv" id="1z4$59iLOH4" role="1tU5fm">
                      <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
                    </node>
                    <node concept="2YIFZM" id="1z4$59iLRGn" role="33vP2m">
                      <ref role="37wK5l" to="tj24:1z4$59iHmYH" resolve="create" />
                      <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
                      <node concept="37vLTw" id="1z4$59iLRGo" role="37wK5m">
                        <ref role="3cqZAo" node="2cnGCY$rO2g" resolve="repository" />
                      </node>
                      <node concept="2YIFZM" id="3zz62D5cwaX" role="37wK5m">
                        <ref role="37wK5l" to="tj24:2MNGcFT4ZOn" resolve="getEffectiveConfig" />
                        <ref role="1Pybhc" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
                      </node>
                      <node concept="2YIFZM" id="1z4$59iLPYY" role="37wK5m">
                        <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                        <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                        <node concept="37vLTw" id="1z4$59iLPYZ" role="37wK5m">
                          <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59iLRgW" role="3cqZAp" />
                <node concept="3clFbF" id="55xYlrlznj9" role="3cqZAp">
                  <node concept="37vLTI" id="55xYlrlznjb" role="3clFbG">
                    <node concept="2OqwBi" id="1z4$59iTR9q" role="37vLTx">
                      <node concept="2OqwBi" id="2cnGCY$rSBu" role="2Oq$k0">
                        <node concept="37vLTw" id="1z4$59iLPZ0" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59iLPYK" resolve="typecheckingService" />
                        </node>
                        <node concept="liA8E" id="2cnGCY$rT84" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1z4$59iIgeQ" resolve="localTypeOf" />
                          <node concept="2OqwBi" id="2cnGCY$rUzz" role="37wK5m">
                            <node concept="37vLTw" id="2cnGCY$rTTO" role="2Oq$k0">
                              <ref role="3cqZAo" node="6hqFpWnfpcc" resolve="nodes" />
                            </node>
                            <node concept="1uHKPH" id="2cnGCY$rVKS" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1z4$59iTRP0" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="55xYlrlznjf" role="37vLTJ">
                      <ref role="3cqZAo" node="2cnGCY$o4N5" resolve="typeNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="55xYlrlzv3s" role="ukAjM">
              <ref role="3cqZAo" node="2cnGCY$rO2g" resolve="repository" />
            </node>
          </node>
          <node concept="3clFbJ" id="2cnGCY$oyx1" role="3cqZAp">
            <node concept="3clFbS" id="2cnGCY$oyx2" role="3clFbx">
              <node concept="3cpWs8" id="2cnGCY$oyxc" role="3cqZAp">
                <node concept="3cpWsn" id="2cnGCY$oyxd" role="3cpWs9">
                  <property role="TrG5h" value="renderText" />
                  <node concept="3uibUv" id="2cnGCY$oyxe" role="1tU5fm">
                    <ref role="3uigEE" to="cj4x:~TextBuilder" resolve="TextBuilder" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="55xYlrlxPlp" role="3cqZAp">
                <node concept="3cpWsn" id="55xYlrlxPlq" role="3cpWs9">
                  <property role="TrG5h" value="tmpModel" />
                  <node concept="3uibUv" id="55xYlrlxOU5" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2cnGCY$oyx3" role="3cqZAp">
                <node concept="3cpWsn" id="2cnGCY$oyx4" role="3cpWs9">
                  <property role="TrG5h" value="renderComponent" />
                  <node concept="3uibUv" id="2cnGCY$oyx5" role="1tU5fm">
                    <ref role="3uigEE" to="hhnx:~HeadlessEditorComponent" resolve="HeadlessEditorComponent" />
                  </node>
                  <node concept="10Nm6u" id="55xYlrlyJin" role="33vP2m" />
                </node>
              </node>
              <node concept="3J1_TO" id="55xYlrlxgzK" role="3cqZAp">
                <node concept="3clFbS" id="55xYlrlxgzM" role="1zxBo7">
                  <node concept="2LD9aU" id="55xYlrly_3_" role="3cqZAp">
                    <node concept="1QHqEC" id="55xYlrly_3B" role="1QHqEI">
                      <node concept="3clFbS" id="55xYlrly_3D" role="1bW5cS">
                        <node concept="3clFbF" id="55xYlrlyfI2" role="3cqZAp">
                          <node concept="37vLTI" id="55xYlrlyfI4" role="3clFbG">
                            <node concept="2OqwBi" id="55xYlrlxPlr" role="37vLTx">
                              <node concept="2YIFZM" id="55xYlrlxPls" role="2Oq$k0">
                                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
                                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                              </node>
                              <node concept="liA8E" id="55xYlrlxPlt" role="2OqNvi">
                                <ref role="37wK5l" to="tqvn:~TemporaryModels.createReadOnly(jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="createReadOnly" />
                                <node concept="2YIFZM" id="55xYlrlxPlu" role="37wK5m">
                                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forDefaultModule()" resolve="forDefaultModule" />
                                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="55xYlrlyfI8" role="37vLTJ">
                              <ref role="3cqZAo" node="55xYlrlxPlq" resolve="tmpModel" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="55xYlrlxEZv" role="3cqZAp">
                          <node concept="2OqwBi" id="55xYlrlxUBS" role="3clFbG">
                            <node concept="37vLTw" id="55xYlrlxPlv" role="2Oq$k0">
                              <ref role="3cqZAo" node="55xYlrlxPlq" resolve="tmpModel" />
                            </node>
                            <node concept="liA8E" id="55xYlrlxWF5" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                              <node concept="37vLTw" id="55xYlrly8B7" role="37wK5m">
                                <ref role="3cqZAo" node="2cnGCY$o4N5" resolve="typeNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="55xYlrlyB0e" role="ukAjM">
                      <ref role="3cqZAo" node="2cnGCY$rO2g" resolve="repository" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="55xYlrlxyLg" role="3cqZAp">
                    <node concept="37vLTI" id="55xYlrlxyLi" role="3clFbG">
                      <node concept="2ShNRf" id="2cnGCY$oyx6" role="37vLTx">
                        <node concept="1pGfFk" id="2cnGCY$oyx7" role="2ShVmc">
                          <ref role="37wK5l" to="hhnx:~HeadlessEditorComponent.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="HeadlessEditorComponent" />
                          <node concept="37vLTw" id="2cnGCY$rO2k" role="37wK5m">
                            <ref role="3cqZAo" node="2cnGCY$rO2g" resolve="repository" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="55xYlrlxyLm" role="37vLTJ">
                        <ref role="3cqZAo" node="2cnGCY$oyx4" resolve="renderComponent" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="55xYlrlyVmL" role="3cqZAp">
                    <node concept="2OqwBi" id="55xYlrlyXoq" role="3clFbG">
                      <node concept="37vLTw" id="55xYlrlyVmJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2cnGCY$oyx4" resolve="renderComponent" />
                      </node>
                      <node concept="liA8E" id="55xYlrlyZ_4" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.editNode(org.jetbrains.mps.openapi.model.SNode)" resolve="editNode" />
                        <node concept="37vLTw" id="55xYlrlz1ji" role="37wK5m">
                          <ref role="3cqZAo" node="2cnGCY$o4N5" resolve="typeNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="55xYlrlxnV2" role="3cqZAp">
                    <node concept="37vLTI" id="55xYlrlxnV4" role="3clFbG">
                      <node concept="2OqwBi" id="2cnGCY$oyxf" role="37vLTx">
                        <node concept="2OqwBi" id="2cnGCY$oyxg" role="2Oq$k0">
                          <node concept="37vLTw" id="2cnGCY$oyxh" role="2Oq$k0">
                            <ref role="3cqZAo" node="2cnGCY$oyx4" resolve="renderComponent" />
                          </node>
                          <node concept="liA8E" id="2cnGCY$oyxi" role="2OqNvi">
                            <ref role="37wK5l" to="exr9:~EditorComponent.getRootCell()" resolve="getRootCell" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2cnGCY$oyxj" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.renderText()" resolve="renderText" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="55xYlrlxnV8" role="37vLTJ">
                        <ref role="3cqZAo" node="2cnGCY$oyxd" resolve="renderText" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="55xYlrlxgzL" role="3cqZAp" />
                </node>
                <node concept="1wplmZ" id="55xYlrlxmrw" role="1zxBo6">
                  <node concept="3clFbS" id="55xYlrlxmrx" role="1wplMD">
                    <node concept="2LD9aU" id="55xYlrlyctZ" role="3cqZAp">
                      <node concept="1QHqEC" id="55xYlrlycu1" role="1QHqEI">
                        <node concept="3clFbS" id="55xYlrlycu3" role="1bW5cS">
                          <node concept="3clFbF" id="55xYlrlyixC" role="3cqZAp">
                            <node concept="2OqwBi" id="55xYlrlyjyZ" role="3clFbG">
                              <node concept="37vLTw" id="55xYlrlyixB" role="2Oq$k0">
                                <ref role="3cqZAo" node="55xYlrlxPlq" resolve="tmpModel" />
                              </node>
                              <node concept="liA8E" id="55xYlrlylAu" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.removeRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="removeRootNode" />
                                <node concept="37vLTw" id="55xYlrlymPG" role="37wK5m">
                                  <ref role="3cqZAo" node="2cnGCY$o4N5" resolve="typeNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="55xYlrlyqSd" role="3cqZAp">
                            <node concept="2OqwBi" id="55xYlrlysiy" role="3clFbG">
                              <node concept="2YIFZM" id="55xYlrlyrJA" role="2Oq$k0">
                                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
                                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                              </node>
                              <node concept="liA8E" id="55xYlrlyuvz" role="2OqNvi">
                                <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
                                <node concept="37vLTw" id="55xYlrlyy5u" role="37wK5m">
                                  <ref role="3cqZAo" node="55xYlrlxPlq" resolve="tmpModel" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="55xYlrlyduB" role="ukAjM">
                        <ref role="3cqZAo" node="2cnGCY$rO2g" resolve="repository" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="2cnGCY$oyxL" role="3cqZAp">
                      <node concept="2OqwBi" id="2cnGCY$oyxM" role="3clFbG">
                        <node concept="37vLTw" id="2cnGCY$oyxN" role="2Oq$k0">
                          <ref role="3cqZAo" node="2cnGCY$oyx4" resolve="renderComponent" />
                        </node>
                        <node concept="liA8E" id="2cnGCY$oyxO" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.dispose()" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2cnGCY$oyxk" role="3cqZAp">
                <node concept="3clFbS" id="2cnGCY$oyxl" role="3clFbx">
                  <node concept="3clFbF" id="2cnGCY$oyxm" role="3cqZAp">
                    <node concept="37vLTI" id="2cnGCY$oyxn" role="3clFbG">
                      <node concept="3cpWs3" id="2cnGCY$oyxo" role="37vLTx">
                        <node concept="Xl_RD" id="2cnGCY$oyxp" role="3uHU7w">
                          <property role="Xl_RC" value="..." />
                        </node>
                        <node concept="2OqwBi" id="2cnGCY$oyxq" role="3uHU7B">
                          <node concept="2OqwBi" id="2cnGCY$oyxr" role="2Oq$k0">
                            <node concept="2OqwBi" id="2cnGCY$oyxs" role="2Oq$k0">
                              <node concept="2OqwBi" id="2cnGCY$oyxt" role="2Oq$k0">
                                <node concept="37vLTw" id="2cnGCY$oyxu" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2cnGCY$oyxd" resolve="renderText" />
                                </node>
                                <node concept="liA8E" id="2cnGCY$oyxv" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~TextBuilder.getLines()" resolve="getLines" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2cnGCY$oyxw" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                              </node>
                            </node>
                            <node concept="liA8E" id="2cnGCY$oyxx" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2cnGCY$oyxy" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~CharSequence.toString()" resolve="toString" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="2cnGCY$oyxz" role="37vLTJ">
                        <ref role="3cqZAo" node="2cnGCY$oywU" resolve="text" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="2cnGCY$oyx$" role="3clFbw">
                  <node concept="3cmrfG" id="2cnGCY$oyx_" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="2cnGCY$oyxA" role="3uHU7B">
                    <node concept="37vLTw" id="2cnGCY$oyxB" role="2Oq$k0">
                      <ref role="3cqZAo" node="2cnGCY$oyxd" resolve="renderText" />
                    </node>
                    <node concept="liA8E" id="2cnGCY$oyxC" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~TextBuilder.getSize()" resolve="getSize" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="2cnGCY$oyxD" role="9aQIa">
                  <node concept="3clFbS" id="2cnGCY$oyxE" role="9aQI4">
                    <node concept="3clFbF" id="2cnGCY$oyxF" role="3cqZAp">
                      <node concept="37vLTI" id="2cnGCY$oyxG" role="3clFbG">
                        <node concept="2OqwBi" id="2cnGCY$oyxH" role="37vLTx">
                          <node concept="37vLTw" id="2cnGCY$oyxI" role="2Oq$k0">
                            <ref role="3cqZAo" node="2cnGCY$oyxd" resolve="renderText" />
                          </node>
                          <node concept="liA8E" id="2cnGCY$oyxJ" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~TextBuilder.getText()" resolve="getText" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2cnGCY$oyxK" role="37vLTJ">
                          <ref role="3cqZAo" node="2cnGCY$oywU" resolve="text" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2cnGCY$oyxP" role="3clFbw">
              <node concept="37vLTw" id="2cnGCY$oyxZ" role="3uHU7B">
                <ref role="3cqZAo" node="2cnGCY$o4N5" resolve="typeNode" />
              </node>
              <node concept="10Nm6u" id="2cnGCY$oyxR" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbH" id="2cnGCY$oCks" role="3cqZAp" />
          <node concept="3clFbF" id="2cnGCY$ocHn" role="3cqZAp">
            <node concept="1rXfSq" id="2cnGCY$ocHo" role="3clFbG">
              <ref role="37wK5l" node="2cnGCY$o8jf" resolve="displayBalloon" />
              <node concept="37vLTw" id="2cnGCY$oA_t" role="37wK5m">
                <ref role="3cqZAo" node="2cnGCY$oywU" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2cnGCY$o8je" role="jymVt" />
      <node concept="3clFb_" id="2cnGCY$o8jf" role="jymVt">
        <property role="TrG5h" value="displayBalloon" />
        <node concept="37vLTG" id="2cnGCY$o8jg" role="3clF46">
          <property role="TrG5h" value="text" />
          <node concept="17QB3L" id="2cnGCY$o8jh" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="2cnGCY$o8ji" role="3clF45" />
        <node concept="3Tm6S6" id="2cnGCY$o8jj" role="1B3o_S" />
        <node concept="3clFbS" id="2cnGCY$o8jk" role="3clF47">
          <node concept="3cpWs8" id="2cnGCY$o8jl" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$o8jm" role="3cpWs9">
              <property role="TrG5h" value="point" />
              <node concept="3uibUv" id="2cnGCY$o8jn" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
              <node concept="2ShNRf" id="2cnGCY$o8jo" role="33vP2m">
                <node concept="1pGfFk" id="2cnGCY$o8jp" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                  <node concept="3cpWs3" id="2cnGCY$o8jq" role="37wK5m">
                    <node concept="2OqwBi" id="2cnGCY$o8jr" role="3uHU7B">
                      <node concept="37vLTw" id="2cnGCY$obAd" role="2Oq$k0">
                        <ref role="3cqZAo" node="4vBwiiV$3BF" resolve="editorCell" />
                      </node>
                      <node concept="liA8E" id="2cnGCY$o8jt" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.getX()" resolve="getX" />
                      </node>
                    </node>
                    <node concept="1eOMI4" id="2cnGCY$o8ju" role="3uHU7w">
                      <node concept="FJ1c_" id="2cnGCY$o8jv" role="1eOMHV">
                        <node concept="3cmrfG" id="2cnGCY$o8jw" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="2OqwBi" id="2cnGCY$o8jx" role="3uHU7B">
                          <node concept="37vLTw" id="2cnGCY$oc9Z" role="2Oq$k0">
                            <ref role="3cqZAo" node="4vBwiiV$3BF" resolve="editorCell" />
                          </node>
                          <node concept="liA8E" id="2cnGCY$o8jz" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~EditorCell.getWidth()" resolve="getWidth" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2cnGCY$o8j$" role="37wK5m">
                    <node concept="37vLTw" id="2cnGCY$ocuF" role="2Oq$k0">
                      <ref role="3cqZAo" node="4vBwiiV$3BF" resolve="editorCell" />
                    </node>
                    <node concept="liA8E" id="2cnGCY$o8jA" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2cnGCY$o8jB" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$o8jC" role="3cpWs9">
              <property role="TrG5h" value="relPoint" />
              <node concept="3uibUv" id="2cnGCY$o8jD" role="1tU5fm">
                <ref role="3uigEE" to="vmdq:~RelativePoint" resolve="RelativePoint" />
              </node>
              <node concept="2ShNRf" id="2cnGCY$o8jE" role="33vP2m">
                <node concept="1pGfFk" id="2cnGCY$o8jF" role="2ShVmc">
                  <ref role="37wK5l" to="vmdq:~RelativePoint.&lt;init&gt;(java.awt.Component,java.awt.Point)" resolve="RelativePoint" />
                  <node concept="37vLTw" id="2cnGCY$o8jG" role="37wK5m">
                    <ref role="3cqZAo" node="6hqFpWnfwwm" resolve="editorComponent" />
                  </node>
                  <node concept="37vLTw" id="2cnGCY$o8jH" role="37wK5m">
                    <ref role="3cqZAo" node="2cnGCY$o8jm" resolve="point" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2cnGCY$o8jI" role="3cqZAp" />
          <node concept="3cpWs8" id="2cnGCY$o8jJ" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$o8jK" role="3cpWs9">
              <property role="TrG5h" value="balloon" />
              <node concept="3uibUv" id="2cnGCY$o8jL" role="1tU5fm">
                <ref role="3uigEE" to="gspm:~Balloon" resolve="Balloon" />
              </node>
              <node concept="2OqwBi" id="2cnGCY$o8jM" role="33vP2m">
                <node concept="2OqwBi" id="2cnGCY$o8jN" role="2Oq$k0">
                  <node concept="2YIFZM" id="2cnGCY$o8jO" role="2Oq$k0">
                    <ref role="37wK5l" to="gspm:~JBPopupFactory.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="gspm:~JBPopupFactory" resolve="JBPopupFactory" />
                  </node>
                  <node concept="liA8E" id="2cnGCY$o8jP" role="2OqNvi">
                    <ref role="37wK5l" to="gspm:~JBPopupFactory.createHtmlTextBalloonBuilder(java.lang.String,javax.swing.Icon,java.awt.Color,javax.swing.event.HyperlinkListener)" resolve="createHtmlTextBalloonBuilder" />
                    <node concept="2YIFZM" id="2cnGCY$o8jQ" role="37wK5m">
                      <ref role="37wK5l" to="o35r:4vBwiiVrVPy" resolve="escapeHtml" />
                      <ref role="1Pybhc" to="o35r:4vBwiiVrUlG" resolve="HtmlUtil" />
                      <node concept="37vLTw" id="2cnGCY$o8jR" role="37wK5m">
                        <ref role="3cqZAo" node="2cnGCY$o8jg" resolve="text" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="2cnGCY$o8jS" role="37wK5m" />
                    <node concept="2OqwBi" id="2cnGCY$o8jT" role="37wK5m">
                      <node concept="10M0yZ" id="2cnGCY$o8jU" role="2Oq$k0">
                        <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                        <ref role="3cqZAo" to="jkm4:~MessageType.INFO" resolve="INFO" />
                      </node>
                      <node concept="liA8E" id="2cnGCY$o8jV" role="2OqNvi">
                        <ref role="37wK5l" to="jkm4:~MessageType.getPopupBackground()" resolve="getPopupBackground" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="2cnGCY$o8jW" role="37wK5m" />
                  </node>
                </node>
                <node concept="liA8E" id="2cnGCY$o8jX" role="2OqNvi">
                  <ref role="37wK5l" to="gspm:~BalloonBuilder.createBalloon()" resolve="createBalloon" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2cnGCY$o8jY" role="3cqZAp">
            <node concept="2YIFZM" id="2cnGCY$o8jZ" role="3clFbG">
              <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
              <ref role="37wK5l" to="zn9m:~Disposer.register(com.intellij.openapi.Disposable,com.intellij.openapi.Disposable)" resolve="register" />
              <node concept="37vLTw" id="2cnGCY$o8k0" role="37wK5m">
                <ref role="3cqZAo" node="6hqFpWnfoA9" resolve="ideaProject" />
              </node>
              <node concept="37vLTw" id="2cnGCY$o8k1" role="37wK5m">
                <ref role="3cqZAo" node="2cnGCY$o8jK" resolve="balloon" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2cnGCY$o8k2" role="3cqZAp">
            <node concept="2OqwBi" id="2cnGCY$o8k3" role="3clFbG">
              <node concept="37vLTw" id="2cnGCY$o8k4" role="2Oq$k0">
                <ref role="3cqZAo" node="2cnGCY$o8jK" resolve="balloon" />
              </node>
              <node concept="liA8E" id="2cnGCY$o8k5" role="2OqNvi">
                <ref role="37wK5l" to="gspm:~Balloon.show(com.intellij.ui.awt.RelativePoint,com.intellij.openapi.ui.popup.Balloon$Position)" resolve="show" />
                <node concept="37vLTw" id="2cnGCY$o8k6" role="37wK5m">
                  <ref role="3cqZAo" node="2cnGCY$o8jC" resolve="relPoint" />
                </node>
                <node concept="Rm8GO" id="2cnGCY$o8k7" role="37wK5m">
                  <ref role="1Px2BO" to="gspm:~Balloon$Position" resolve="Balloon.Position" />
                  <ref role="Rm8GQ" to="gspm:~Balloon$Position.above" resolve="above" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2cnGCY$o75C" role="jymVt" />
      <node concept="2tJIrI" id="4vBwiiVz_XR" role="jymVt" />
      <node concept="312cEg" id="4vBwiiV$3BF" role="jymVt">
        <property role="TrG5h" value="editorCell" />
        <node concept="3Tm6S6" id="4vBwiiV$3BG" role="1B3o_S" />
        <node concept="3uibUv" id="4vBwiiV$3BI" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4vBwiiVz_Yb" role="1B3o_S" />
      <node concept="3uibUv" id="7WKNeR8RCvp" role="1zkMxy">
        <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8SUdS" role="jymVt" />
    <node concept="312cEu" id="7WKNeR8SQxg" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="LaunchQuery" />
      <node concept="2tJIrI" id="7WKNeR8SQxh" role="jymVt" />
      <node concept="3clFbW" id="7WKNeR8SQxi" role="jymVt">
        <node concept="37vLTG" id="5EDW3XEpavu" role="3clF46">
          <property role="TrG5h" value="query" />
          <node concept="3uibUv" id="5EDW3XEpaP1" role="1tU5fm">
            <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SQxl" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="7WKNeR8SQxm" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SQxn" role="3clF46">
          <property role="TrG5h" value="mpsProject" />
          <node concept="3uibUv" id="7WKNeR8SQxo" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SQxp" role="3clF46">
          <property role="TrG5h" value="ideaProject" />
          <node concept="3uibUv" id="7WKNeR8SQxq" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3cqZAl" id="7WKNeR8SQxr" role="3clF45" />
        <node concept="3Tm1VV" id="7WKNeR8SQxs" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8SQxt" role="3clF47">
          <node concept="XkiVB" id="7WKNeR8SQxu" role="3cqZAp">
            <ref role="37wK5l" node="7WKNeR8SByE" resolve="TypecheckingActions.AbstractAction" />
            <node concept="37vLTw" id="7WKNeR8SQxv" role="37wK5m">
              <ref role="3cqZAo" node="7WKNeR8SQxl" resolve="editorComponent" />
            </node>
            <node concept="37vLTw" id="7WKNeR8SQxw" role="37wK5m">
              <ref role="3cqZAo" node="7WKNeR8SQxn" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="7WKNeR8SQxx" role="37wK5m">
              <ref role="3cqZAo" node="7WKNeR8SQxp" resolve="ideaProject" />
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR9fm7f" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR9fm7h" role="3clFbG">
              <node concept="2OqwBi" id="7WKNeR9fnha" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR9fnxk" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR9fnhd" role="2OqNvi">
                  <ref role="2Oxat5" node="7WKNeR9fm7b" resolve="query" />
                </node>
              </node>
              <node concept="37vLTw" id="5EDW3XEpbSj" role="37vLTx">
                <ref role="3cqZAo" node="5EDW3XEpavu" resolve="query" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8SQxC" role="jymVt" />
      <node concept="3clFb_" id="7WKNeR8SQxD" role="jymVt">
        <property role="TrG5h" value="execute" />
        <node concept="3cqZAl" id="7WKNeR8SQxE" role="3clF45" />
        <node concept="3Tm1VV" id="7WKNeR8SQxF" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8SQxG" role="3clF47">
          <node concept="3cpWs8" id="7WKNeR8SQxH" role="3cqZAp">
            <node concept="3cpWsn" id="7WKNeR8SQxI" role="3cpWs9">
              <property role="TrG5h" value="repository" />
              <node concept="3uibUv" id="7WKNeR8SQxJ" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8SQxK" role="33vP2m">
                <node concept="2OqwBi" id="7WKNeR8SQxL" role="2Oq$k0">
                  <node concept="Xjq3P" id="7WKNeR8SQxM" role="2Oq$k0" />
                  <node concept="2OwXpG" id="7WKNeR8SQxN" role="2OqNvi">
                    <ref role="2Oxat5" node="6hqFpWnfkNg" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="7WKNeR8SQxO" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7WKNeR8TcXr" role="3cqZAp">
            <node concept="3cpWsn" id="7WKNeR8TcXs" role="3cpWs9">
              <property role="TrG5h" value="steps" />
              <node concept="_YKpA" id="7WKNeR8TcXt" role="1tU5fm">
                <node concept="3uibUv" id="7WKNeR8TcXu" role="_ZDj9">
                  <ref role="3uigEE" to="1yqb:1pPth$lAzAx" resolve="Step" />
                </node>
              </node>
              <node concept="2ShNRf" id="7WKNeR8TcXv" role="33vP2m">
                <node concept="Tc6Ow" id="7WKNeR8TcXw" role="2ShVmc">
                  <node concept="3uibUv" id="7WKNeR8TcXx" role="HW$YZ">
                    <ref role="3uigEE" to="1yqb:1pPth$lAzAx" resolve="Step" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KN3A4vDf1F" role="3cqZAp">
            <node concept="3cpWsn" id="3KN3A4vDf1G" role="3cpWs9">
              <property role="TrG5h" value="aspectLookup" />
              <node concept="3uibUv" id="3KN3A4vCI3a" role="1tU5fm">
                <ref role="3uigEE" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
                <node concept="3uibUv" id="3KN3A4vCI3d" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="3KN3A4vDf1H" role="33vP2m">
                <ref role="37wK5l" to="u46i:78H58oeCAQS" resolve="aspectLookup" />
                <ref role="1Pybhc" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                <node concept="37vLTw" id="IFW4V2ttEc" role="37wK5m">
                  <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KN3A4vDlEg" role="3cqZAp">
            <node concept="3cpWsn" id="3KN3A4vDlEh" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="2OqwBi" id="3KN3A4vDlEi" role="33vP2m">
                <node concept="37vLTw" id="3KN3A4vDlEj" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4vDf1G" resolve="aspectLookup" />
                </node>
                <node concept="liA8E" id="3KN3A4vDlEk" role="2OqNvi">
                  <ref role="37wK5l" to="fqlx:7W7Inqm5F$e" resolve="relevantForNodes" />
                  <node concept="37vLTw" id="3KN3A4vDlEm" role="37wK5m">
                    <ref role="3cqZAo" node="6hqFpWnfpcc" resolve="nodes" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="3KN3A4vDl$Q" role="1tU5fm">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="3KN3A4vDl$R" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6nFpYluogsH" role="3cqZAp" />
          <node concept="3clFbJ" id="1PN9XOG$3xl" role="3cqZAp">
            <node concept="3clFbS" id="1PN9XOG$3xn" role="3clFbx">
              <node concept="3clFbF" id="1PN9XOG$8yU" role="3cqZAp">
                <node concept="2OqwBi" id="1PN9XOG$8yV" role="3clFbG">
                  <node concept="2YIFZM" id="1PN9XOG$8yW" role="2Oq$k0">
                    <ref role="1Pybhc" to="jkny:~ToolWindowManager" resolve="ToolWindowManager" />
                    <ref role="37wK5l" to="jkny:~ToolWindowManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                    <node concept="37vLTw" id="1PN9XOG$8yX" role="37wK5m">
                      <ref role="3cqZAo" node="6hqFpWnfoA9" resolve="ideaProject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1PN9XOG$8yY" role="2OqNvi">
                    <ref role="37wK5l" to="jkny:~ToolWindowManager.notifyByBalloon(java.lang.String,com.intellij.openapi.ui.MessageType,java.lang.String)" resolve="notifyByBalloon" />
                    <node concept="Xl_RD" id="1PN9XOG$8yZ" role="37wK5m">
                      <property role="Xl_RC" value="Messages" />
                    </node>
                    <node concept="10M0yZ" id="1PN9XOG$9iL" role="37wK5m">
                      <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                      <ref role="3cqZAo" to="jkm4:~MessageType.WARNING" resolve="WARNING" />
                    </node>
                    <node concept="Xl_RD" id="1PN9XOG$aMd" role="37wK5m">
                      <property role="Xl_RC" value="Nothing to do: no typechecking aspects detected" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1PN9XOG$ise" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="1PN9XOG$6oz" role="3clFbw">
              <node concept="37vLTw" id="1PN9XOG$5$h" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4vDlEh" resolve="clique" />
              </node>
              <node concept="liA8E" id="1PN9XOG$7Tw" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:4ekZiHe4j$O" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1PN9XOG$1BG" role="3cqZAp" />
          <node concept="3cpWs8" id="6nFpYluoeMU" role="3cqZAp">
            <node concept="3cpWsn" id="6nFpYluoeMV" role="3cpWs9">
              <property role="TrG5h" value="session" />
              <node concept="3uibUv" id="6nFpYluoeMW" role="1tU5fm">
                <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
              </node>
              <node concept="2ShNRf" id="6nFpYluoeMX" role="33vP2m">
                <node concept="1pGfFk" id="6nFpYluoeMY" role="2ShVmc">
                  <ref role="37wK5l" to="hano:7DvO2M9VeM1" resolve="RuleProcessingSession" />
                  <node concept="37vLTw" id="zL5ZaNDTUJ" role="37wK5m">
                    <ref role="3cqZAo" node="3KN3A4vDlEh" resolve="clique" />
                  </node>
                  <node concept="37vLTw" id="6nFpYluoeN9" role="37wK5m">
                    <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                  </node>
                  <node concept="2YIFZM" id="2Y70AYEc4aH" role="37wK5m">
                    <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                    <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                    <node concept="37vLTw" id="2Y70AYEc4nY" role="37wK5m">
                      <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="61G6TdBDyzK" role="3cqZAp">
            <node concept="3cpWsn" id="61G6TdBDyzL" role="3cpWs9">
              <property role="TrG5h" value="macroProcessing" />
              <node concept="3uibUv" id="61G6TdBDyzJ" role="1tU5fm">
                <ref role="3uigEE" to="ksgm:7DvO2M9IiKB" resolve="MacroProcessing" />
              </node>
              <node concept="2ShNRf" id="61G6TdBDyzM" role="33vP2m">
                <node concept="1pGfFk" id="3Pxu0s87Llu" role="2ShVmc">
                  <ref role="37wK5l" to="ksgm:7DvO2Ma0h_M" resolve="MacroProcessing" />
                  <node concept="37vLTw" id="61G6TdBDyzQ" role="37wK5m">
                    <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                  </node>
                  <node concept="37vLTw" id="61G6TdBDyzS" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYluoeMV" resolve="session" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4LE1vMP67A4" role="3cqZAp">
            <node concept="3cpWsn" id="4LE1vMP67A5" role="3cpWs9">
              <property role="TrG5h" value="typeCollector" />
              <node concept="3uibUv" id="4LE1vMP673a" role="1tU5fm">
                <ref role="3uigEE" to="tj24:5MNibENhpkH" resolve="TypecheckingState.TypeCollector" />
              </node>
              <node concept="2ShNRf" id="4LE1vMP67A6" role="33vP2m">
                <node concept="HV5vD" id="4LE1vMP67A7" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="HV5vE" to="tj24:5MNibENhpkH" resolve="TypecheckingState.TypeCollector" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OUB6BASVxs" role="3cqZAp">
            <node concept="2OqwBi" id="4qGA5WCXRHC" role="3clFbG">
              <node concept="37vLTw" id="4qGA5WCXL_w" role="2Oq$k0">
                <ref role="3cqZAo" node="61G6TdBDyzL" resolve="macroProcessing" />
              </node>
              <node concept="liA8E" id="4qGA5WCXTPI" role="2OqNvi">
                <ref role="37wK5l" to="i348:7DvO2M9IiMh" resolve="putParameter" />
                <node concept="10M0yZ" id="4qGA5WCY0e0" role="37wK5m">
                  <ref role="3cqZAo" to="tj24:4qGA5WCVux3" resolve="TYPES_COLLECTOR" />
                  <ref role="1PxDUh" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
                </node>
                <node concept="37vLTw" id="4LE1vMP67A8" role="37wK5m">
                  <ref role="3cqZAo" node="4LE1vMP67A5" resolve="typeCollector" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4LE1vMP4f8f" role="3cqZAp" />
          <node concept="3clFbF" id="2j1FRbwV8JT" role="3cqZAp">
            <node concept="2OqwBi" id="2j1FRbwVaoF" role="3clFbG">
              <node concept="37vLTw" id="2j1FRbwV8JR" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
              </node>
              <node concept="TSZUe" id="2j1FRbwVbRl" role="2OqNvi">
                <node concept="2ShNRf" id="2j1FRbwVc6W" role="25WWJ7">
                  <node concept="1pGfFk" id="1T5MAgPvrhs" role="2ShVmc">
                    <ref role="37wK5l" to="tj24:1T5MAgPvrd7" resolve="ConfigureTypecheckingStep" />
                    <node concept="3clFbT" id="1T5MAgPvv8F" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8TcXy" role="3cqZAp">
            <node concept="2OqwBi" id="7WKNeR8TcXz" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8TcX$" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
              </node>
              <node concept="TSZUe" id="7WKNeR8TcX_" role="2OqNvi">
                <node concept="2ShNRf" id="7WKNeR8TcXE" role="25WWJ7">
                  <node concept="1pGfFk" id="7WKNeR8TcXF" role="2ShVmc">
                    <ref role="37wK5l" to="1yqb:1imVejVB$_h" resolve="ApplyTemplatesStep" />
                    <node concept="37vLTw" id="6nFpYluoiGj" role="37wK5m">
                      <ref role="3cqZAo" node="6nFpYluoeMV" resolve="session" />
                    </node>
                    <node concept="37vLTw" id="61G6TdBDzLl" role="37wK5m">
                      <ref role="3cqZAo" node="61G6TdBDyzL" resolve="macroProcessing" />
                    </node>
                    <node concept="2OqwBi" id="7WKNeR8TcXG" role="37wK5m">
                      <node concept="Xjq3P" id="7WKNeR8TcXH" role="2Oq$k0" />
                      <node concept="2OwXpG" id="7WKNeR8TcXI" role="2OqNvi">
                        <ref role="2Oxat5" node="6hqFpWnfpcc" resolve="nodes" />
                      </node>
                    </node>
                    <node concept="3clFbT" id="61G6TdE2zqb" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="3clFbT" id="3VwM5b681nz" role="37wK5m" />
                    <node concept="37vLTw" id="7WKNeR8ThOi" role="37wK5m">
                      <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                    </node>
                    <node concept="37vLTw" id="5EDW3XEprPs" role="37wK5m">
                      <ref role="3cqZAo" node="7WKNeR9fm7b" resolve="query" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5tAk4yVTBui" role="3cqZAp">
            <node concept="3cpWsn" id="5tAk4yVTBuj" role="3cpWs9">
              <property role="TrG5h" value="tcStep" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="5tAk4yVTBuk" role="1tU5fm">
                <ref role="3uigEE" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
              </node>
              <node concept="3K4zz7" id="7WKNeR8TcYc" role="33vP2m">
                <node concept="37vLTw" id="7WKNeR8TcYd" role="3K4Cdx">
                  <ref role="3cqZAo" node="6hqFpWnjd0A" resolve="trace" />
                </node>
                <node concept="2ShNRf" id="7WKNeR8TcYe" role="3K4GZi">
                  <node concept="1pGfFk" id="7WKNeR8TcYf" role="2ShVmc">
                    <ref role="37wK5l" to="tj24:3KN3A4vHiEF" resolve="TypecheckingStep" />
                    <node concept="37vLTw" id="7WKNeR8TiOp" role="37wK5m">
                      <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                    </node>
                    <node concept="10Nm6u" id="5gVsyvFbxl6" role="37wK5m" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7WKNeR8TcYh" role="3K4E3e">
                  <node concept="1pGfFk" id="7WKNeR8TcYi" role="2ShVmc">
                    <ref role="37wK5l" node="55Q$YFtIVZ9" resolve="TypecheckingWithTraceStep" />
                    <node concept="37vLTw" id="7WKNeR8Ti$q" role="37wK5m">
                      <ref role="3cqZAo" node="6hqFpWnfwwm" resolve="editorComponent" />
                    </node>
                    <node concept="37vLTw" id="7WKNeR8TcYk" role="37wK5m">
                      <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8TcY8" role="3cqZAp">
            <node concept="2OqwBi" id="7WKNeR8TcY9" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8TcYa" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
              </node>
              <node concept="TSZUe" id="7WKNeR8TcYb" role="2OqNvi">
                <node concept="37vLTw" id="5tAk4yVTD2S" role="25WWJ7">
                  <ref role="3cqZAo" node="5tAk4yVTBuj" resolve="tcStep" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="3CulEO1Ljxg" role="3cqZAp">
            <node concept="1PaTwC" id="3CulEO1Ljxh" role="1aUNEU">
              <node concept="3oM_SD" id="3CulEO1LkND" role="1PaTwD">
                <property role="3oM_SC" value="TODO" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkNF" role="1PaTwD">
                <property role="3oM_SC" value="provide" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkNY" role="1PaTwD">
                <property role="3oM_SC" value="an" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkO2" role="1PaTwD">
                <property role="3oM_SC" value="option" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkO7" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkOl" role="1PaTwD">
                <property role="3oM_SC" value="control" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkO$" role="1PaTwD">
                <property role="3oM_SC" value="whether" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkOO" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkOX" role="1PaTwD">
                <property role="3oM_SC" value="show" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkPf" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkPy" role="1PaTwD">
                <property role="3oM_SC" value="baseline" />
              </node>
              <node concept="3oM_SD" id="3CulEO1LkPY" role="1PaTwD">
                <property role="3oM_SC" value="time" />
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="3CulEO1Lg6p" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="2U4rQ68z06q" role="8Wnug">
              <node concept="2OqwBi" id="2U4rQ68z1BS" role="3clFbG">
                <node concept="37vLTw" id="2U4rQ68z06o" role="2Oq$k0">
                  <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
                </node>
                <node concept="TSZUe" id="2U4rQ68z2Qc" role="2OqNvi">
                  <node concept="2ShNRf" id="2U4rQ68z2XA" role="25WWJ7">
                    <node concept="1pGfFk" id="2U4rQ68zt8i" role="2ShVmc">
                      <ref role="37wK5l" to="tj24:HOeeeUbp1O" resolve="ComputeBaselineTimeStep" />
                      <node concept="37vLTw" id="2U4rQ68ztjO" role="37wK5m">
                        <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                      </node>
                      <node concept="2OqwBi" id="2U4rQ68ztqp" role="37wK5m">
                        <node concept="2OqwBi" id="2U4rQ68ztqq" role="2Oq$k0">
                          <node concept="37vLTw" id="2U4rQ68ztqr" role="2Oq$k0">
                            <ref role="3cqZAo" node="6hqFpWnfpcc" resolve="nodes" />
                          </node>
                          <node concept="1uHKPH" id="2U4rQ68ztqs" role="2OqNvi" />
                        </node>
                        <node concept="2Rxl7S" id="2U4rQ68ztqt" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="1PN9XOGZQig" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="7WKNeR8TcYx" role="8Wnug">
              <node concept="2OqwBi" id="7WKNeR8TcYy" role="3clFbG">
                <node concept="37vLTw" id="7WKNeR8TcYz" role="2Oq$k0">
                  <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
                </node>
                <node concept="TSZUe" id="7WKNeR8TcY$" role="2OqNvi">
                  <node concept="2ShNRf" id="7WKNeR8TcY_" role="25WWJ7">
                    <node concept="1pGfFk" id="7WKNeR8TcYA" role="2ShVmc">
                      <ref role="37wK5l" node="1pPth$lGTrm" resolve="HighlightingStep" />
                      <node concept="37vLTw" id="7WKNeR8TjKr" role="37wK5m">
                        <ref role="3cqZAo" node="6hqFpWnfwwm" resolve="editorComponent" />
                      </node>
                      <node concept="2OqwBi" id="7WKNeR8TcYC" role="37wK5m">
                        <node concept="Xjq3P" id="7WKNeR8TcYD" role="2Oq$k0" />
                        <node concept="2OwXpG" id="7WKNeR8TcYE" role="2OqNvi">
                          <ref role="2Oxat5" node="6hqFpWnfkNg" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7WKNeR8SQyz" role="3cqZAp" />
          <node concept="3clFbF" id="7WKNeR8SQy$" role="3cqZAp">
            <node concept="2OqwBi" id="7WKNeR8SQy_" role="3clFbG">
              <node concept="2OqwBi" id="AjlLkeilMq" role="2Oq$k0">
                <node concept="2ShNRf" id="7WKNeR8SQyA" role="2Oq$k0">
                  <node concept="1pGfFk" id="7WKNeR8SQyB" role="2ShVmc">
                    <ref role="37wK5l" to="1yqb:1pPth$lK1ZL" resolve="CoderulesHelper" />
                    <node concept="37vLTw" id="7W7Inqm62NJ" role="37wK5m">
                      <ref role="3cqZAo" node="3KN3A4vDlEh" resolve="clique" />
                    </node>
                    <node concept="2ShNRf" id="7WKNeR8SQyC" role="37wK5m">
                      <node concept="YeOm9" id="7WKNeR8SQyD" role="2ShVmc">
                        <node concept="1Y3b0j" id="7WKNeR8SQyE" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <ref role="1Y3XeK" to="1yqb:3F6vMxqaxpm" resolve="ProgressCallback" />
                          <node concept="3Tm1VV" id="7WKNeR8SQyF" role="1B3o_S" />
                          <node concept="3clFb_" id="3MwxBzG61n7" role="jymVt">
                            <property role="TrG5h" value="done" />
                            <node concept="37vLTG" id="3MwxBzG61n8" role="3clF46">
                              <property role="TrG5h" value="message" />
                              <node concept="17QB3L" id="3MwxBzG61n9" role="1tU5fm" />
                            </node>
                            <node concept="37vLTG" id="3MwxBzG61na" role="3clF46">
                              <property role="TrG5h" value="result" />
                              <node concept="3uibUv" id="3MwxBzG61nb" role="1tU5fm">
                                <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
                              </node>
                            </node>
                            <node concept="3cqZAl" id="3MwxBzG61nc" role="3clF45" />
                            <node concept="3Tm1VV" id="3MwxBzG61nd" role="1B3o_S" />
                            <node concept="3clFbS" id="3MwxBzG61ng" role="3clF47">
                              <node concept="3SKdUt" id="4qGA5WDXC6I" role="3cqZAp">
                                <node concept="1PaTwC" id="4qGA5WDXC6J" role="1aUNEU">
                                  <node concept="3oM_SD" id="4qGA5WDXDa5" role="1PaTwD">
                                    <property role="3oM_SC" value="log" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="4qGA5WE41Fb" role="3cqZAp">
                                <node concept="3clFbS" id="4qGA5WE41Fd" role="3clFbx">
                                  <node concept="3cpWs8" id="4qGA5WE49BU" role="3cqZAp">
                                    <node concept="3cpWsn" id="4qGA5WE49BV" role="3cpWs9">
                                      <property role="TrG5h" value="kind" />
                                      <node concept="3uibUv" id="4qGA5WE49BW" role="1tU5fm">
                                        <ref role="3uigEE" to="et5u:~MessageKind" resolve="MessageKind" />
                                      </node>
                                      <node concept="3K4zz7" id="6gnqipLtKIH" role="33vP2m">
                                        <node concept="Rm8GO" id="6cGbuqOdzx8" role="3K4E3e">
                                          <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                                          <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                                        </node>
                                        <node concept="Rm8GO" id="6cGbuqOd$Q2" role="3K4GZi">
                                          <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                                          <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                                        </node>
                                        <node concept="2OqwBi" id="4qGA5WDVGuH" role="3K4Cdx">
                                          <node concept="37vLTw" id="4qGA5WDVFXY" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3MwxBzG61na" resolve="result" />
                                          </node>
                                          <node concept="liA8E" id="6cGbuqOdylK" role="2OqNvi">
                                            <ref role="37wK5l" to="psoy:7Oc59RS_hsj" resolve="isSuccessful" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="4qGA5WE49BX" role="3cqZAp">
                                    <node concept="3cpWsn" id="4qGA5WE49BY" role="3cpWs9">
                                      <property role="TrG5h" value="cause" />
                                      <node concept="3uibUv" id="4qGA5WE49BZ" role="1tU5fm">
                                        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                                      </node>
                                      <node concept="2OqwBi" id="6cGbuqOoY1R" role="33vP2m">
                                        <node concept="37vLTw" id="6cGbuqOoWFI" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3MwxBzG61na" resolve="result" />
                                        </node>
                                        <node concept="liA8E" id="6cGbuqOoZ0e" role="2OqNvi">
                                          <ref role="37wK5l" to="psoy:5X1yxJI3vjy" resolve="cause" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="4qGA5WE49C8" role="3cqZAp">
                                    <node concept="3cpWsn" id="4qGA5WE49C9" role="3cpWs9">
                                      <property role="TrG5h" value="msg" />
                                      <node concept="3uibUv" id="4qGA5WE49Ca" role="1tU5fm">
                                        <ref role="3uigEE" to="et5u:~Message" resolve="Message" />
                                      </node>
                                      <node concept="2ShNRf" id="4qGA5WE49Cb" role="33vP2m">
                                        <node concept="1pGfFk" id="4qGA5WE49Cc" role="2ShVmc">
                                          <ref role="37wK5l" to="et5u:~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.String)" resolve="Message" />
                                          <node concept="37vLTw" id="4qGA5WE49Cd" role="37wK5m">
                                            <ref role="3cqZAo" node="4qGA5WE49BV" resolve="kind" />
                                          </node>
                                          <node concept="2OqwBi" id="4qGA5WE49Ce" role="37wK5m">
                                            <node concept="37vLTw" id="4qGA5WE49Cf" role="2Oq$k0">
                                              <ref role="3cqZAo" node="3MwxBzG61na" resolve="result" />
                                            </node>
                                            <node concept="liA8E" id="4qGA5WE49Cg" role="2OqNvi">
                                              <ref role="37wK5l" to="psoy:7Oc59RSJr0t" resolve="toString" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4qGA5WE49Ch" role="3cqZAp">
                                    <node concept="2OqwBi" id="4qGA5WE49Ci" role="3clFbG">
                                      <node concept="37vLTw" id="4qGA5WE49Cj" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4qGA5WE49C9" resolve="msg" />
                                      </node>
                                      <node concept="liA8E" id="4qGA5WE49Ck" role="2OqNvi">
                                        <ref role="37wK5l" to="et5u:~Message.setException(java.lang.Throwable)" resolve="setException" />
                                        <node concept="37vLTw" id="4qGA5WE49Cl" role="37wK5m">
                                          <ref role="3cqZAo" node="4qGA5WE49BY" resolve="cause" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4qGA5WDVyB7" role="3cqZAp">
                                    <node concept="2OqwBi" id="4qGA5WDVz9r" role="3clFbG">
                                      <node concept="2YIFZM" id="4qGA5WDXXjg" role="2Oq$k0">
                                        <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                                        <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                                        <node concept="37vLTw" id="4qGA5WDY0gH" role="37wK5m">
                                          <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4qGA5WDVzx0" role="2OqNvi">
                                        <ref role="37wK5l" to="31yc:4MaHsBDgiaT" resolve="handle" />
                                        <node concept="37vLTw" id="4qGA5WDW9OW" role="37wK5m">
                                          <ref role="3cqZAo" node="4qGA5WE49C9" resolve="msg" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="6cGbuqOmSB7" role="3cqZAp">
                                    <node concept="2OqwBi" id="6cGbuqOmTJT" role="3clFbG">
                                      <node concept="37vLTw" id="6cGbuqOmSB5" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3MwxBzG61na" resolve="result" />
                                      </node>
                                      <node concept="liA8E" id="6cGbuqOmV81" role="2OqNvi">
                                        <ref role="37wK5l" to="psoy:6cGbuqOk51p" resolve="clearCause" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3y3z36" id="6cGbuqOoSvR" role="3clFbw">
                                  <node concept="10Nm6u" id="6cGbuqOoTKs" role="3uHU7w" />
                                  <node concept="2OqwBi" id="6cGbuqOds2J" role="3uHU7B">
                                    <node concept="37vLTw" id="6cGbuqOdrty" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3MwxBzG61na" resolve="result" />
                                    </node>
                                    <node concept="liA8E" id="6cGbuqOdvzy" role="2OqNvi">
                                      <ref role="37wK5l" to="psoy:5X1yxJI3vjy" resolve="cause" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="4qGA5WDXyjA" role="3cqZAp" />
                              <node concept="3SKdUt" id="4qGA5WDXAIx" role="3cqZAp">
                                <node concept="1PaTwC" id="4qGA5WDXAIy" role="1aUNEU">
                                  <node concept="3oM_SD" id="4qGA5WDXAJ6" role="1PaTwD">
                                    <property role="3oM_SC" value="balloon" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1QHqEQ" id="7WKNeR8SQyM" role="3cqZAp">
                                <node concept="1QHqEC" id="7WKNeR8SQyN" role="1QHqEI">
                                  <node concept="3clFbS" id="7WKNeR8SQyO" role="1bW5cS">
                                    <node concept="3cpWs8" id="3MwxBzG5WQO" role="3cqZAp">
                                      <node concept="3cpWsn" id="3MwxBzG5WQP" role="3cpWs9">
                                        <property role="TrG5h" value="type" />
                                        <node concept="3uibUv" id="3MwxBzG5WKh" role="1tU5fm">
                                          <ref role="3uigEE" to="jkm4:~MessageType" resolve="MessageType" />
                                        </node>
                                        <node concept="3K4zz7" id="3MwxBzG5XUq" role="33vP2m">
                                          <node concept="1eOMI4" id="3MwxBzG5Y8h" role="3K4E3e">
                                            <node concept="3K4zz7" id="3MwxBzG5Z0d" role="1eOMHV">
                                              <node concept="2OqwBi" id="3MwxBzG5YpR" role="3K4Cdx">
                                                <node concept="37vLTw" id="3MwxBzG5Ydb" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="3MwxBzG61na" resolve="result" />
                                                </node>
                                                <node concept="liA8E" id="3MwxBzG5YFa" role="2OqNvi">
                                                  <ref role="37wK5l" to="psoy:2gw7OvgCNSM" resolve="hasErrors" />
                                                </node>
                                              </node>
                                              <node concept="10M0yZ" id="3MwxBzG5Zes" role="3K4E3e">
                                                <ref role="3cqZAo" to="jkm4:~MessageType.WARNING" resolve="WARNING" />
                                                <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                                              </node>
                                              <node concept="10M0yZ" id="3MwxBzG5WQQ" role="3K4GZi">
                                                <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                                                <ref role="3cqZAo" to="jkm4:~MessageType.INFO" resolve="INFO" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="3MwxBzG5Xhs" role="3K4Cdx">
                                            <node concept="37vLTw" id="3MwxBzG5X50" role="2Oq$k0">
                                              <ref role="3cqZAo" node="3MwxBzG61na" resolve="result" />
                                            </node>
                                            <node concept="liA8E" id="3MwxBzG5Xyj" role="2OqNvi">
                                              <ref role="37wK5l" to="psoy:7Oc59RS_hsj" resolve="isSuccessful" />
                                            </node>
                                          </node>
                                          <node concept="10M0yZ" id="3MwxBzG5ZpH" role="3K4GZi">
                                            <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                                            <ref role="3cqZAo" to="jkm4:~MessageType.ERROR" resolve="ERROR" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="7WKNeR8SQyP" role="3cqZAp">
                                      <node concept="2OqwBi" id="7WKNeR8SQyQ" role="3clFbG">
                                        <node concept="2YIFZM" id="7WKNeR8SQyR" role="2Oq$k0">
                                          <ref role="1Pybhc" to="jkny:~ToolWindowManager" resolve="ToolWindowManager" />
                                          <ref role="37wK5l" to="jkny:~ToolWindowManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                          <node concept="37vLTw" id="7WKNeR8SQyS" role="37wK5m">
                                            <ref role="3cqZAo" node="6hqFpWnfoA9" resolve="ideaProject" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="7WKNeR8SQyT" role="2OqNvi">
                                          <ref role="37wK5l" to="jkny:~ToolWindowManager.notifyByBalloon(java.lang.String,com.intellij.openapi.ui.MessageType,java.lang.String)" resolve="notifyByBalloon" />
                                          <node concept="Xl_RD" id="7WKNeR8SQyU" role="37wK5m">
                                            <property role="Xl_RC" value="Messages" />
                                          </node>
                                          <node concept="37vLTw" id="3MwxBzG62ZC" role="37wK5m">
                                            <ref role="3cqZAo" node="3MwxBzG5WQP" resolve="type" />
                                          </node>
                                          <node concept="37vLTw" id="3MwxBzG62uZ" role="37wK5m">
                                            <ref role="3cqZAo" node="3MwxBzG61n8" resolve="message" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="7WKNeR8SQyX" role="ukAjM">
                                  <node concept="37vLTw" id="7WKNeR8SQyY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                                  </node>
                                  <node concept="liA8E" id="7WKNeR8SQyZ" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2AHcQZ" id="3MwxBzG61nh" role="2AJF6D">
                              <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7WKNeR8Tofu" role="37wK5m">
                      <node concept="37vLTw" id="7WKNeR8Tofv" role="2Oq$k0">
                        <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
                      </node>
                      <node concept="3_kTaI" id="7WKNeR8Tofw" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="AjlLkeine$" role="2OqNvi">
                  <ref role="37wK5l" to="1yqb:MFuM6R00U6" resolve="withConfig" />
                  <node concept="2YIFZM" id="AjlLkeiyYP" role="37wK5m">
                    <ref role="37wK5l" to="tj24:2MNGcFT4ZOn" resolve="getEffectiveConfig" />
                    <ref role="1Pybhc" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7WKNeR8SQzo" role="2OqNvi">
                <ref role="37wK5l" to="1yqb:1PN9XOHs$pt" resolve="executeAsync" />
                <node concept="1bVj0M" id="1PN9XOHuyuK" role="37wK5m">
                  <node concept="3clFbS" id="1PN9XOHuyuL" role="1bW5cS">
                    <node concept="3clFbH" id="1PN9XOHuCkE" role="3cqZAp" />
                    <node concept="3cpWs8" id="q1hCiybRQn" role="3cqZAp">
                      <node concept="3cpWsn" id="q1hCiybRQq" role="3cpWs9">
                        <property role="TrG5h" value="allReportItems" />
                        <node concept="_YKpA" id="q1hCiybRQj" role="1tU5fm">
                          <node concept="3uibUv" id="q1hCiybTvl" role="_ZDj9">
                            <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="q1hCiybUbE" role="33vP2m">
                          <node concept="Tc6Ow" id="q1hCiybU7W" role="2ShVmc">
                            <node concept="3uibUv" id="q1hCiybU7X" role="HW$YZ">
                              <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5iJsa3_aUY$" role="3cqZAp">
                      <node concept="2OqwBi" id="5iJsa3_aWI6" role="3clFbG">
                        <node concept="37vLTw" id="5iJsa3_aUYy" role="2Oq$k0">
                          <ref role="3cqZAo" node="1PN9XOHuzF1" resolve="effect" />
                        </node>
                        <node concept="liA8E" id="5iJsa3_aZv1" role="2OqNvi">
                          <ref role="37wK5l" to="1yqb:5iJsa3_8EKs" resolve="applyIfHasValue" />
                          <node concept="10M0yZ" id="5iJsa3_b05j" role="37wK5m">
                            <ref role="3cqZAo" to="tj24:2daneBP_Jiy" resolve="REPORT_ITEMS" />
                            <ref role="1PxDUh" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
                          </node>
                          <node concept="1bVj0M" id="5iJsa3_b1i$" role="37wK5m">
                            <node concept="37vLTG" id="5iJsa3_b1mj" role="1bW2Oz">
                              <property role="TrG5h" value="items" />
                              <node concept="_YKpA" id="5iJsa3_b1Jb" role="1tU5fm">
                                <node concept="3uibUv" id="5iJsa3_b1Jc" role="_ZDj9">
                                  <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="5iJsa3_b1iA" role="1bW5cS">
                              <node concept="3clFbF" id="5iJsa3_b6u8" role="3cqZAp">
                                <node concept="2OqwBi" id="5iJsa3_b7jS" role="3clFbG">
                                  <node concept="X8dFx" id="5iJsa3_b83G" role="2OqNvi">
                                    <node concept="37vLTw" id="5iJsa3_b8L$" role="25WWJ7">
                                      <ref role="3cqZAo" node="5iJsa3_b1mj" resolve="items" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="scOg5x_f2W" role="2Oq$k0">
                                    <ref role="3cqZAo" node="q1hCiybRQq" resolve="allReportItems" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="1PN9XOHyXDJ" role="3cqZAp" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5iJsa3_ds5a" role="3cqZAp">
                      <node concept="2OqwBi" id="5iJsa3_ds5b" role="3clFbG">
                        <node concept="37vLTw" id="5iJsa3_ds5c" role="2Oq$k0">
                          <ref role="3cqZAo" node="1PN9XOHuzF1" resolve="effect" />
                        </node>
                        <node concept="liA8E" id="5iJsa3_ds5d" role="2OqNvi">
                          <ref role="37wK5l" to="1yqb:5iJsa3_8EKs" resolve="applyIfHasValue" />
                          <node concept="10M0yZ" id="5iJsa3_dvnx" role="37wK5m">
                            <ref role="1PxDUh" to="1yqb:1pPth$lAwc0" resolve="ApplyTemplatesStep" />
                            <ref role="3cqZAo" to="1yqb:5iJsa3_dp$f" resolve="REPORT_ITEMS" />
                          </node>
                          <node concept="1bVj0M" id="5iJsa3_ds5f" role="37wK5m">
                            <node concept="37vLTG" id="5iJsa3_ds5g" role="1bW2Oz">
                              <property role="TrG5h" value="items" />
                              <node concept="_YKpA" id="5iJsa3_ds5h" role="1tU5fm">
                                <node concept="3uibUv" id="5iJsa3_ds5i" role="_ZDj9">
                                  <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="5iJsa3_ds5j" role="1bW5cS">
                              <node concept="3clFbF" id="5iJsa3_ds5k" role="3cqZAp">
                                <node concept="2OqwBi" id="5iJsa3_ds5l" role="3clFbG">
                                  <node concept="X8dFx" id="5iJsa3_ds5n" role="2OqNvi">
                                    <node concept="37vLTw" id="5iJsa3_ds5o" role="25WWJ7">
                                      <ref role="3cqZAo" node="5iJsa3_ds5g" resolve="items" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="scOg5x_fl_" role="2Oq$k0">
                                    <ref role="3cqZAo" node="q1hCiybRQq" resolve="allReportItems" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="1PN9XOHyZmu" role="3cqZAp" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1PN9XOHzn6f" role="3cqZAp">
                      <node concept="3cpWsn" id="1PN9XOHzn6i" role="3cpWs9">
                        <property role="TrG5h" value="allMessages" />
                        <node concept="_YKpA" id="1PN9XOHzn6b" role="1tU5fm">
                          <node concept="3uibUv" id="1PN9XOHzpKZ" role="_ZDj9">
                            <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="1PN9XOHzOhy" role="33vP2m">
                          <node concept="Tc6Ow" id="1PN9XOHzOd5" role="2ShVmc">
                            <node concept="3uibUv" id="1PN9XOHzOd6" role="HW$YZ">
                              <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1PN9XOHzyn_" role="3cqZAp">
                      <node concept="2OqwBi" id="1PN9XOHzynA" role="3clFbG">
                        <node concept="37vLTw" id="1PN9XOHzynB" role="2Oq$k0">
                          <ref role="3cqZAo" node="1PN9XOHuzF1" resolve="effect" />
                        </node>
                        <node concept="liA8E" id="1PN9XOHzynC" role="2OqNvi">
                          <ref role="37wK5l" to="1yqb:5iJsa3_8EKs" resolve="applyIfHasValue" />
                          <node concept="10M0yZ" id="1PN9XOHzADl" role="37wK5m">
                            <ref role="3cqZAo" to="tj24:1PN9XOHxyoK" resolve="MESSAGES" />
                            <ref role="1PxDUh" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
                          </node>
                          <node concept="1bVj0M" id="1PN9XOHzynE" role="37wK5m">
                            <node concept="37vLTG" id="1PN9XOHzynF" role="1bW2Oz">
                              <property role="TrG5h" value="messages" />
                              <node concept="_YKpA" id="1PN9XOHzynG" role="1tU5fm">
                                <node concept="3uibUv" id="1PN9XOHzynH" role="_ZDj9">
                                  <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="1PN9XOHzynI" role="1bW5cS">
                              <node concept="3clFbF" id="1PN9XOHzRgg" role="3cqZAp">
                                <node concept="2OqwBi" id="1PN9XOHzU0p" role="3clFbG">
                                  <node concept="37vLTw" id="1PN9XOHzRge" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1PN9XOHzn6i" resolve="allMessages" />
                                  </node>
                                  <node concept="X8dFx" id="1PN9XOHzXph" role="2OqNvi">
                                    <node concept="37vLTw" id="1PN9XOHzZgx" role="25WWJ7">
                                      <ref role="3cqZAo" node="1PN9XOHzynF" resolve="messages" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="1PN9XOHzJG1" role="3cqZAp" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5iJsa3_j6h1" role="3cqZAp">
                      <node concept="2OqwBi" id="5iJsa3_j6h2" role="3clFbG">
                        <node concept="37vLTw" id="5iJsa3_j6h3" role="2Oq$k0">
                          <ref role="3cqZAo" node="1PN9XOHuzF1" resolve="effect" />
                        </node>
                        <node concept="liA8E" id="5iJsa3_j6h4" role="2OqNvi">
                          <ref role="37wK5l" to="1yqb:5iJsa3_8EKs" resolve="applyIfHasValue" />
                          <node concept="10M0yZ" id="5iJsa3_j98C" role="37wK5m">
                            <ref role="1PxDUh" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
                            <ref role="3cqZAo" to="tj24:1G9Y_Qv7rZx" resolve="TRACE_EVENTS" />
                          </node>
                          <node concept="1bVj0M" id="5iJsa3_j6h6" role="37wK5m">
                            <node concept="3clFbS" id="5iJsa3_j6h7" role="1bW5cS">
                              <node concept="3cpWs8" id="4tC1JBnbLb$" role="3cqZAp">
                                <node concept="3cpWsn" id="4tC1JBnbLb_" role="3cpWs9">
                                  <property role="TrG5h" value="tmplTrace" />
                                  <node concept="3uibUv" id="4tC1JBnbLbA" role="1tU5fm">
                                    <ref role="3uigEE" to="hano:39eNUjlSJ9Q" resolve="TemplateTrace" />
                                  </node>
                                  <node concept="2OqwBi" id="4tC1JBnbMiJ" role="33vP2m">
                                    <node concept="37vLTw" id="4tC1JBnbLFm" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1PN9XOHuzF1" resolve="effect" />
                                    </node>
                                    <node concept="liA8E" id="4tC1JBnbMT$" role="2OqNvi">
                                      <ref role="37wK5l" to="1yqb:2daneBOX8cN" resolve="getValue" />
                                      <node concept="10M0yZ" id="4tC1JBnbNzA" role="37wK5m">
                                        <ref role="1PxDUh" to="1yqb:RZQG98UNsT" resolve="ConfigureEvalStep" />
                                        <ref role="3cqZAo" to="1yqb:39eNUjlXwas" resolve="TRACE_TMPL" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="1PN9XOH$9$x" role="3cqZAp">
                                <node concept="3cpWsn" id="1PN9XOH$9$y" role="3cpWs9">
                                  <property role="TrG5h" value="report" />
                                  <node concept="3uibUv" id="1PN9XOH$8Iq" role="1tU5fm">
                                    <ref role="3uigEE" to="1yqb:4tC1JBnb14k" resolve="TraceReport" />
                                  </node>
                                  <node concept="2ShNRf" id="1PN9XOH$9$z" role="33vP2m">
                                    <node concept="1pGfFk" id="1PN9XOH$9$$" role="2ShVmc">
                                      <ref role="37wK5l" to="1yqb:1PN9XOHvuZF" resolve="TraceReport" />
                                      <node concept="37vLTw" id="1PN9XOH$9$_" role="37wK5m">
                                        <ref role="3cqZAo" node="4tC1JBnbLb_" resolve="tmplTrace" />
                                      </node>
                                      <node concept="37vLTw" id="1PN9XOH$9$A" role="37wK5m">
                                        <ref role="3cqZAo" node="5iJsa3_j6he" resolve="traceEvents" />
                                      </node>
                                      <node concept="37vLTw" id="1PN9XOH$9$B" role="37wK5m">
                                        <ref role="3cqZAo" node="q1hCiybRQq" resolve="allReportItems" />
                                      </node>
                                      <node concept="37vLTw" id="1PN9XOH$9$C" role="37wK5m">
                                        <ref role="3cqZAo" node="1PN9XOHzn6i" resolve="allMessages" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="1PN9XOH$Lif" role="3cqZAp" />
                              <node concept="3cpWs8" id="1PN9XOHuFp4" role="3cqZAp">
                                <node concept="3cpWsn" id="1PN9XOHuFp5" role="3cpWs9">
                                  <property role="TrG5h" value="activationTrace" />
                                  <node concept="3uibUv" id="1PN9XOHuFp6" role="1tU5fm">
                                    <ref role="3uigEE" to="o35r:7nPD14Nbbbe" resolve="TraceComponent" />
                                  </node>
                                  <node concept="2YIFZM" id="1PN9XOHuFp7" role="33vP2m">
                                    <ref role="1Pybhc" to="o35r:7nPD14Nbbbe" resolve="TraceComponent" />
                                    <ref role="37wK5l" to="o35r:7nPD14Nboty" resolve="get" />
                                    <node concept="37vLTw" id="1PN9XOHuFp8" role="37wK5m">
                                      <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="1PN9XOHuFp9" role="3cqZAp">
                                <node concept="3clFbS" id="1PN9XOHuFpa" role="3clFbx">
                                  <node concept="3cpWs8" id="1PN9XOHuFpb" role="3cqZAp">
                                    <node concept="3cpWsn" id="1PN9XOHuFpc" role="3cpWs9">
                                      <property role="TrG5h" value="openedTab" />
                                      <node concept="3uibUv" id="1PN9XOHuFpd" role="1tU5fm">
                                        <ref role="3uigEE" to="o35r:5X6ji59z5Fa" resolve="TraceTab" />
                                      </node>
                                      <node concept="2OqwBi" id="1PN9XOHuFpe" role="33vP2m">
                                        <node concept="37vLTw" id="1PN9XOHuFpf" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1PN9XOHuFp5" resolve="activationTrace" />
                                        </node>
                                        <node concept="liA8E" id="1PN9XOHuFpg" role="2OqNvi">
                                          <ref role="37wK5l" to="o35r:7nPD14Nb$fz" resolve="openTab" />
                                          <node concept="2OqwBi" id="1PN9XOHuFph" role="37wK5m">
                                            <node concept="2OqwBi" id="1PN9XOH$mRs" role="2Oq$k0">
                                              <node concept="37vLTw" id="1PN9XOHuFpi" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1PN9XOH$9$y" resolve="report" />
                                              </node>
                                              <node concept="liA8E" id="1PN9XOH$oLh" role="2OqNvi">
                                                <ref role="37wK5l" to="1yqb:4tC1JBnbhKC" resolve="getTraceEvents" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="1PN9XOHuFpj" role="2OqNvi">
                                              <ref role="37wK5l" to="31yc:2daneBOTzUn" resolve="name" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="1PN9XOH$wMk" role="37wK5m">
                                            <node concept="37vLTw" id="1PN9XOHuFpk" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1PN9XOH$9$y" resolve="report" />
                                            </node>
                                            <node concept="liA8E" id="1PN9XOH$yRl" role="2OqNvi">
                                              <ref role="37wK5l" to="1yqb:4tC1JBnbhKC" resolve="getTraceEvents" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="1PN9XOH$E39" role="37wK5m">
                                            <node concept="37vLTw" id="1PN9XOHuFpl" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1PN9XOH$9$y" resolve="report" />
                                            </node>
                                            <node concept="liA8E" id="1PN9XOH$GzU" role="2OqNvi">
                                              <ref role="37wK5l" to="1yqb:4tC1JBnbhKw" resolve="getTemplateTrace" />
                                            </node>
                                          </node>
                                          <node concept="10Nm6u" id="23Habm5cI0h" role="37wK5m" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbH" id="1PN9XOHuFpm" role="3cqZAp" />
                                  <node concept="1QHqEK" id="1PN9XOHuFpn" role="3cqZAp">
                                    <node concept="1QHqEC" id="1PN9XOHuFpo" role="1QHqEI">
                                      <node concept="3clFbS" id="1PN9XOHuFpp" role="1bW5cS">
                                        <node concept="3SKdUt" id="1PN9XOHuFpq" role="3cqZAp">
                                          <node concept="1PaTwC" id="1PN9XOHuFpr" role="1aUNEU">
                                            <node concept="3oM_SD" id="1PN9XOHuFps" role="1PaTwD">
                                              <property role="3oM_SC" value="actually" />
                                            </node>
                                            <node concept="3oM_SD" id="1PN9XOHuFpt" role="1PaTwD">
                                              <property role="3oM_SC" value="show" />
                                            </node>
                                            <node concept="3oM_SD" id="1PN9XOHuFpu" role="1PaTwD">
                                              <property role="3oM_SC" value="the" />
                                            </node>
                                            <node concept="3oM_SD" id="1PN9XOHuFpv" role="1PaTwD">
                                              <property role="3oM_SC" value="trace" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="1PN9XOHuFpw" role="3cqZAp">
                                          <node concept="2OqwBi" id="1PN9XOHuFpx" role="3clFbG">
                                            <node concept="37vLTw" id="1PN9XOHuFpy" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1PN9XOHuFpc" resolve="openedTab" />
                                            </node>
                                            <node concept="liA8E" id="1PN9XOHuFpz" role="2OqNvi">
                                              <ref role="37wK5l" to="o35r:4XsNDZYuNqF" resolve="refresh" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="1PN9XOHuFp$" role="ukAjM">
                                      <node concept="37vLTw" id="1PN9XOHuFp_" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                                      </node>
                                      <node concept="liA8E" id="1PN9XOHuFpA" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbH" id="1PN9XOH$N9G" role="3cqZAp" />
                                  <node concept="3cpWs8" id="1PN9XOHPmsA" role="3cqZAp">
                                    <node concept="3cpWsn" id="1PN9XOHPmsB" role="3cpWs9">
                                      <property role="TrG5h" value="mvt" />
                                      <node concept="3uibUv" id="1PN9XOHPlR0" role="1tU5fm">
                                        <ref role="3uigEE" to="57ty:~MessagesViewTool" resolve="MessagesViewTool" />
                                      </node>
                                      <node concept="2OqwBi" id="1PN9XOHPmsC" role="33vP2m">
                                        <node concept="2OqwBi" id="1PN9XOHPmsD" role="2Oq$k0">
                                          <node concept="37vLTw" id="1PN9XOHPmsE" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                                          </node>
                                          <node concept="liA8E" id="1PN9XOHPmsF" role="2OqNvi">
                                            <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="1PN9XOHPmsG" role="2OqNvi">
                                          <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                                          <node concept="3VsKOn" id="1PN9XOHPmsH" role="37wK5m">
                                            <ref role="3VsUkX" to="57ty:~MessagesViewTool" resolve="MessagesViewTool" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="1DcWWT" id="2ceN1hCIF1R" role="3cqZAp">
                                    <node concept="3clFbS" id="2ceN1hCIF1U" role="2LFqv$">
                                      <node concept="3clFbF" id="1PN9XOHOyXH" role="3cqZAp">
                                        <node concept="2OqwBi" id="1PN9XOHOZK9" role="3clFbG">
                                          <node concept="37vLTw" id="1PN9XOHPmsI" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1PN9XOHPmsB" resolve="mvt" />
                                          </node>
                                          <node concept="liA8E" id="1PN9XOHP3jY" role="2OqNvi">
                                            <ref role="37wK5l" to="57ty:~MessagesViewTool.add(jetbrains.mps.messages.IMessage)" resolve="add" />
                                            <node concept="37vLTw" id="1PN9XOHPhaT" role="37wK5m">
                                              <ref role="3cqZAo" node="2ceN1hCIF1V" resolve="msg" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWsn" id="2ceN1hCIF1V" role="1Duv9x">
                                      <property role="TrG5h" value="msg" />
                                      <node concept="3uibUv" id="2ceN1hCIF1Z" role="1tU5fm">
                                        <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="1PN9XOH_0r7" role="1DdaDG">
                                      <node concept="37vLTw" id="2ceN1hCIF20" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1PN9XOH$9$y" resolve="report" />
                                      </node>
                                      <node concept="liA8E" id="1PN9XOH_2za" role="2OqNvi">
                                        <ref role="37wK5l" to="1yqb:1PN9XOHvysZ" resolve="getMessages" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3y3z36" id="1PN9XOHuFpK" role="3clFbw">
                                  <node concept="37vLTw" id="1PN9XOHuFpL" role="3uHU7B">
                                    <ref role="3cqZAo" node="1PN9XOHuFp5" resolve="activationTrace" />
                                  </node>
                                  <node concept="10Nm6u" id="1PN9XOHuFpM" role="3uHU7w" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="5iJsa3_j6he" role="1bW2Oz">
                              <property role="TrG5h" value="traceEvents" />
                              <node concept="3uibUv" id="5iJsa3_jbQa" role="1tU5fm">
                                <ref role="3uigEE" to="31yc:2ceN1hCYUQN" resolve="TraceEvents" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1PN9XOHuCkG" role="3cqZAp" />
                  </node>
                  <node concept="37vLTG" id="1PN9XOHuzF1" role="1bW2Oz">
                    <property role="TrG5h" value="effect" />
                    <node concept="3uibUv" id="1PN9XOHu_h2" role="1tU5fm">
                      <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="23Habm2cMWf" role="3cqZAp" />
          <node concept="3clFbH" id="7WKNeR8SQzp" role="3cqZAp" />
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8T3De" role="jymVt" />
      <node concept="3Tm1VV" id="7WKNeR8SQzu" role="1B3o_S" />
      <node concept="3uibUv" id="7WKNeR8SQzv" role="1zkMxy">
        <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
      </node>
      <node concept="312cEg" id="7WKNeR9fm7b" role="jymVt">
        <property role="TrG5h" value="query" />
        <node concept="3Tm6S6" id="7WKNeR9fm7c" role="1B3o_S" />
        <node concept="3uibUv" id="5EDW3XEpb$m" role="1tU5fm">
          <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6hqFpWnfjsp" role="jymVt" />
    <node concept="3Tm1VV" id="6hqFpWnf9Mv" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="4vBwiiVgYfo">
    <property role="3GE5qa" value="action" />
    <property role="TrG5h" value="ShowNodeType" />
    <property role="2uzpH1" value="Show Local Type (experimental)" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="4vBwiiVi7Nn" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="4vBwiiVi7No" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4vBwiiVh1XQ" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4vBwiiVh1XR" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4vBwiiVh1XS" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4vBwiiVh1XT" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4vBwiiVh1XU" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="4vBwiiVh1XV" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4vBwiiVh1XW" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="4vBwiiVh1XX" role="1oa70y" />
    </node>
    <node concept="tnohg" id="4vBwiiVgYfp" role="tncku">
      <node concept="3clFbS" id="4vBwiiVgYfq" role="2VODD2">
        <node concept="3clFbF" id="6kEuChzZGOa" role="3cqZAp">
          <node concept="2OqwBi" id="6kEuChzZOFq" role="3clFbG">
            <node concept="2OqwBi" id="6kEuChzZNVb" role="2Oq$k0">
              <node concept="2YIFZM" id="6kEuChzZIqo" role="2Oq$k0">
                <ref role="37wK5l" node="4vBwiiVBaJD" resolve="showType" />
                <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
                <node concept="2OqwBi" id="6kEuChzZN20" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZN23" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZN25" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVi7Nn" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6kEuChzZMUe" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZMUh" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZMUj" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVh1XW" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6kEuChzZNcL" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZNcO" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZNcQ" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVh1XS" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6kEuChzZNmh" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZNmk" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZNmm" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVh1XQ" resolve="ideaProject" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6kEuChzZO9y" role="2OqNvi">
                <ref role="37wK5l" node="6hqFpWnimEi" resolve="forNode" />
                <node concept="2OqwBi" id="6kEuChzZOhj" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZOhm" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZOho" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVh1XU" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6kEuChzZPaJ" role="2OqNvi">
              <ref role="37wK5l" node="7WKNeR8RsrK" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4n$QnzZQkF9">
    <property role="TrG5h" value="ApplicableTemplatesFinder" />
    <property role="3GE5qa" value="action" />
    <node concept="3Tm1VV" id="4n$QnzZQkFa" role="1B3o_S" />
    <node concept="3uibUv" id="3YJ7yg2MLNM" role="1zkMxy">
      <ref role="3uigEE" to="b2d5:1Fz6CCoeqzM" resolve="BaseFinder" />
    </node>
    <node concept="2tJIrI" id="4n$QnzZQmw6" role="jymVt" />
    <node concept="3clFbW" id="3YJ7yg2MSlk" role="jymVt">
      <node concept="37vLTG" id="4XsNDZYjJG4" role="3clF46">
        <property role="TrG5h" value="typecheckingService" />
        <node concept="3uibUv" id="4XsNDZYjL0i" role="1tU5fm">
          <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
        </node>
      </node>
      <node concept="37vLTG" id="6i42QSsgg1v" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="6i42QSsggth" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3cqZAl" id="3YJ7yg2MSlm" role="3clF45" />
      <node concept="3Tm1VV" id="3YJ7yg2MSln" role="1B3o_S" />
      <node concept="3clFbS" id="3YJ7yg2MSlo" role="3clF47">
        <node concept="3clFbF" id="6i42QSsghp8" role="3cqZAp">
          <node concept="37vLTI" id="6i42QSsghpa" role="3clFbG">
            <node concept="2OqwBi" id="6i42QSsgi1O" role="37vLTJ">
              <node concept="Xjq3P" id="6i42QSsgihq" role="2Oq$k0" />
              <node concept="2OwXpG" id="6i42QSsgi1R" role="2OqNvi">
                <ref role="2Oxat5" node="6i42QSsghp4" resolve="mpsProject" />
              </node>
            </node>
            <node concept="37vLTw" id="6i42QSsghpe" role="37vLTx">
              <ref role="3cqZAo" node="6i42QSsgg1v" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4XsNDZYjNTS" role="3cqZAp">
          <node concept="37vLTI" id="4XsNDZYjNTU" role="3clFbG">
            <node concept="2OqwBi" id="4XsNDZYjPDd" role="37vLTJ">
              <node concept="Xjq3P" id="4XsNDZYjPHD" role="2Oq$k0" />
              <node concept="2OwXpG" id="4XsNDZYjPDg" role="2OqNvi">
                <ref role="2Oxat5" node="4XsNDZYjNTO" resolve="typecheckingService" />
              </node>
            </node>
            <node concept="37vLTw" id="4XsNDZYjNTY" role="37vLTx">
              <ref role="3cqZAo" node="4XsNDZYjJG4" resolve="typecheckingService" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3YJ7yg2MRSP" role="jymVt" />
    <node concept="3clFb_" id="4n$QnzZQmz_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4n$QnzZQmzA" role="1B3o_S" />
      <node concept="3uibUv" id="4n$QnzZQmzB" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="4n$QnzZQmzJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4n$QnzZQmzK" role="3clF47">
        <node concept="3clFbF" id="4n$QnzZQnb8" role="3cqZAp">
          <node concept="Xl_RD" id="4n$QnzZQnb7" role="3clFbG">
            <property role="Xl_RC" value="Applicable Templates" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4n$QnzZQmwm" role="jymVt" />
    <node concept="3clFb_" id="4n$QnzZQlSU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="find" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4n$QnzZQlSV" role="1B3o_S" />
      <node concept="3uibUv" id="3YJ7yg2MN8P" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
      </node>
      <node concept="37vLTG" id="4n$QnzZQlSY" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="3uibUv" id="4n$QnzZQlSZ" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchQuery" resolve="SearchQuery" />
        </node>
      </node>
      <node concept="37vLTG" id="4n$QnzZQlT0" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="4n$QnzZQlT1" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3clFbS" id="4n$QnzZQlT4" role="3clF47">
        <node concept="3cpWs8" id="4n$QnzZQneo" role="3cqZAp">
          <node concept="3cpWsn" id="4n$QnzZQnen" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="4n$QnzZQo7Q" role="1tU5fm" />
            <node concept="10Nm6u" id="5mg4ZgLmDXt" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="5mg4ZgLlWdB" role="3cqZAp" />
        <node concept="3cpWs8" id="5mg4ZgLlR8d" role="3cqZAp">
          <node concept="3cpWsn" id="5mg4ZgLlR8e" role="3cpWs9">
            <property role="TrG5h" value="object" />
            <node concept="3uibUv" id="5mg4ZgLlR8a" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="5mg4ZgLlR8f" role="33vP2m">
              <node concept="2OqwBi" id="5mg4ZgLlR8g" role="2Oq$k0">
                <node concept="37vLTw" id="5mg4ZgLlR8h" role="2Oq$k0">
                  <ref role="3cqZAo" node="4n$QnzZQlSY" resolve="query" />
                </node>
                <node concept="liA8E" id="5mg4ZgLlR8i" role="2OqNvi">
                  <ref role="37wK5l" to="9erk:~SearchQuery.getObjectHolder()" resolve="getObjectHolder" />
                </node>
              </node>
              <node concept="liA8E" id="5mg4ZgLlR8j" role="2OqNvi">
                <ref role="37wK5l" to="z3o9:~IHolder.getObject()" resolve="getObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5mg4ZgLlSQW" role="3cqZAp">
          <node concept="3clFbS" id="5mg4ZgLlSQY" role="3clFbx">
            <node concept="3clFbF" id="5mg4ZgLlVl9" role="3cqZAp">
              <node concept="37vLTI" id="5mg4ZgLlVlb" role="3clFbG">
                <node concept="10QFUN" id="4n$QnzZQneq" role="37vLTx">
                  <node concept="37vLTw" id="5mg4ZgLlR8k" role="10QFUP">
                    <ref role="3cqZAo" node="5mg4ZgLlR8e" resolve="object" />
                  </node>
                  <node concept="3Tqbb2" id="4n$QnzZQoYF" role="10QFUM" />
                </node>
                <node concept="37vLTw" id="5mg4ZgLlVlf" role="37vLTJ">
                  <ref role="3cqZAo" node="4n$QnzZQnen" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5mg4ZgLlZla" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="5mg4ZgLlUu$" role="3clFbw">
            <node concept="3uibUv" id="5mg4ZgLm0dp" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="5mg4ZgLlTJK" role="2ZW6bz">
              <ref role="3cqZAo" node="5mg4ZgLlR8e" resolve="object" />
            </node>
          </node>
          <node concept="3eNFk2" id="5mg4ZgLlYFy" role="3eNLev">
            <node concept="2ZW3vV" id="5mg4ZgLlZJ7" role="3eO9$A">
              <node concept="3uibUv" id="5mg4ZgLm03N" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
              </node>
              <node concept="37vLTw" id="5mg4ZgLlZl$" role="2ZW6bz">
                <ref role="3cqZAo" node="5mg4ZgLlR8e" resolve="object" />
              </node>
            </node>
            <node concept="3clFbS" id="5mg4ZgLlYF$" role="3eOfB_">
              <node concept="3clFbF" id="5mg4ZgLm0YY" role="3cqZAp">
                <node concept="37vLTI" id="5mg4ZgLm1r3" role="3clFbG">
                  <node concept="37vLTw" id="5mg4ZgLm0YX" role="37vLTJ">
                    <ref role="3cqZAo" node="4n$QnzZQnen" resolve="node" />
                  </node>
                  <node concept="2OqwBi" id="5mg4ZgLm5yy" role="37vLTx">
                    <node concept="1eOMI4" id="5mg4ZgLm5nQ" role="2Oq$k0">
                      <node concept="10QFUN" id="5mg4ZgLm5nN" role="1eOMHV">
                        <node concept="3uibUv" id="5mg4ZgLm5nS" role="10QFUM">
                          <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                        </node>
                        <node concept="37vLTw" id="5mg4ZgLm5nT" role="10QFUP">
                          <ref role="3cqZAo" node="5mg4ZgLlR8e" resolve="object" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5mg4ZgLm5Sb" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~SNodePointer.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                      <node concept="2OqwBi" id="5mg4ZgLm7jM" role="37wK5m">
                        <node concept="37vLTw" id="5mg4ZgLm6qZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6i42QSsghp4" resolve="mpsProject" />
                        </node>
                        <node concept="liA8E" id="5mg4ZgLm87g" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5mg4ZgLmGtg" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="5mg4ZgLmEiv" role="9aQIa">
            <node concept="3clFbS" id="5mg4ZgLmEiw" role="9aQI4">
              <node concept="3cpWs6" id="5mg4ZgLmF6e" role="3cqZAp">
                <node concept="10Nm6u" id="5mg4ZgLmFUr" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5mg4ZgLlS4H" role="3cqZAp" />
        <node concept="3cpWs8" id="4XsNDZYjT9n" role="3cqZAp">
          <node concept="3cpWsn" id="4XsNDZYjT9o" role="3cpWs9">
            <property role="TrG5h" value="refs" />
            <node concept="_YKpA" id="4XsNDZYjT1u" role="1tU5fm">
              <node concept="2sp9CU" id="4XsNDZYjT1x" role="_ZDj9" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="4XsNDZYjQgz" role="3cqZAp">
          <node concept="1QHqEC" id="4XsNDZYjQg_" role="1QHqEI">
            <node concept="3clFbS" id="4XsNDZYjQgB" role="1bW5cS">
              <node concept="3clFbF" id="4XsNDZYk4J5" role="3cqZAp">
                <node concept="37vLTI" id="4XsNDZYk4J7" role="3clFbG">
                  <node concept="2OqwBi" id="4XsNDZYjT9p" role="37vLTx">
                    <node concept="2OqwBi" id="4XsNDZYjT9q" role="2Oq$k0">
                      <node concept="37vLTw" id="4XsNDZYjT9r" role="2Oq$k0">
                        <ref role="3cqZAo" node="4XsNDZYjNTO" resolve="typecheckingService" />
                      </node>
                      <node concept="liA8E" id="4XsNDZYjT9s" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:4XsNDZY7Lel" resolve="findRuleTemplates" />
                        <node concept="37vLTw" id="4XsNDZYjT9t" role="37wK5m">
                          <ref role="3cqZAo" node="4n$QnzZQnen" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4XsNDZYjT9u" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4XsNDZYk4Jb" role="37vLTJ">
                    <ref role="3cqZAo" node="4XsNDZYjT9o" resolve="refs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4XsNDZYkx6A" role="ukAjM">
            <node concept="37vLTw" id="4XsNDZYkvLs" role="2Oq$k0">
              <ref role="3cqZAo" node="6i42QSsghp4" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="4XsNDZYkyKz" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4XsNDZYjIUC" role="3cqZAp" />
        <node concept="3cpWs8" id="3YJ7yg2MBU8" role="3cqZAp">
          <node concept="3cpWsn" id="3YJ7yg2MBU9" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="_YKpA" id="3YJ7yg2MBU0" role="1tU5fm">
              <node concept="3uibUv" id="3YJ7yg2MBU3" role="_ZDj9">
                <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
              </node>
            </node>
            <node concept="2ShNRf" id="3YJ7yg2MBUa" role="33vP2m">
              <node concept="Tc6Ow" id="3YJ7yg2MBUb" role="2ShVmc">
                <node concept="3uibUv" id="3YJ7yg2MBUc" role="HW$YZ">
                  <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4XsNDZYk7Ne" role="3cqZAp">
          <node concept="3clFbS" id="4XsNDZYk7Nh" role="2LFqv$">
            <node concept="3clFbJ" id="6i42QSsgpe6" role="3cqZAp">
              <node concept="3clFbS" id="6i42QSsgpe8" role="3clFbx">
                <node concept="3clFbF" id="3YJ7yg2NcOY" role="3cqZAp">
                  <node concept="2OqwBi" id="3YJ7yg2Nd$6" role="3clFbG">
                    <node concept="37vLTw" id="3YJ7yg2NcOW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3YJ7yg2MBU9" resolve="results" />
                    </node>
                    <node concept="TSZUe" id="3YJ7yg2Nf4Q" role="2OqNvi">
                      <node concept="2ShNRf" id="3YJ7yg2Nflx" role="25WWJ7">
                        <node concept="1pGfFk" id="3YJ7yg2Nhus" role="2ShVmc">
                          <ref role="37wK5l" to="9erk:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                          <node concept="2OqwBi" id="6i42QSsgo9q" role="37wK5m">
                            <node concept="1eOMI4" id="4XsNDZYkq6x" role="2Oq$k0">
                              <node concept="10QFUN" id="4XsNDZYkq6w" role="1eOMHV">
                                <node concept="37vLTw" id="4XsNDZYkq6v" role="10QFUP">
                                  <ref role="3cqZAo" node="4XsNDZYk7Ni" resolve="ref" />
                                </node>
                                <node concept="3uibUv" id="4XsNDZYkqqd" role="10QFUM">
                                  <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="6i42QSsgonT" role="2OqNvi">
                              <ref role="37wK5l" to="w1kc:~SNodePointer.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="2OqwBi" id="6i42QSsgjMy" role="37wK5m">
                                <node concept="37vLTw" id="6i42QSsgiWf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6i42QSsghp4" resolve="mpsProject" />
                                </node>
                                <node concept="liA8E" id="6i42QSsgkvG" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="3YJ7yg2NlKI" role="37wK5m">
                            <property role="Xl_RC" value="Template" />
                          </node>
                          <node concept="3Tqbb2" id="6i42QSsgezD" role="1pMfVU" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6i42QSsgqc8" role="3clFbw">
                <node concept="10Nm6u" id="6i42QSsgqsn" role="3uHU7w" />
                <node concept="37vLTw" id="4XsNDZYkpIV" role="3uHU7B">
                  <ref role="3cqZAo" node="4XsNDZYk7Ni" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4XsNDZYk7Ni" role="1Duv9x">
            <property role="TrG5h" value="ref" />
            <node concept="2sp9CU" id="4XsNDZYk7Nm" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="4XsNDZYk7Nn" role="1DdaDG">
            <ref role="3cqZAo" node="4XsNDZYjT9o" resolve="refs" />
          </node>
        </node>
        <node concept="3clFbH" id="3YJ7yg2MREs" role="3cqZAp" />
        <node concept="3clFbF" id="3YJ7yg2MqON" role="3cqZAp">
          <node concept="2ShNRf" id="3YJ7yg2MqOJ" role="3clFbG">
            <node concept="1pGfFk" id="3YJ7yg2MRp0" role="2ShVmc">
              <ref role="37wK5l" to="9erk:~SearchResults.&lt;init&gt;(java.util.Collection,java.util.List)" resolve="SearchResults" />
              <node concept="2YIFZM" id="3YJ7yg2MyQB" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="3YJ7yg2Mztt" role="37wK5m">
                  <ref role="3cqZAo" node="4n$QnzZQnen" resolve="node" />
                </node>
              </node>
              <node concept="37vLTw" id="3YJ7yg2MCsL" role="37wK5m">
                <ref role="3cqZAo" node="3YJ7yg2MBU9" resolve="results" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4n$QnzZQlT5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4n$QnzZQmsZ" role="jymVt" />
    <node concept="312cEg" id="6i42QSsghp4" role="jymVt">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="6i42QSsghp5" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSsghp7" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="4XsNDZYjNTO" role="jymVt">
      <property role="TrG5h" value="typecheckingService" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4XsNDZYjNTP" role="1B3o_S" />
      <node concept="3uibUv" id="4XsNDZYjNTR" role="1tU5fm">
        <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3IIf9O_okk0">
    <property role="3GE5qa" value="action" />
    <property role="TrG5h" value="LaunchTypecheckingQueryWithTrace" />
    <property role="2uzpH1" value="Launch Typechecking with Trace (experimental)" />
    <node concept="1DS2jV" id="3IIf9O_okk1" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="3IIf9O_okk2" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3IIf9O_okk3" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3IIf9O_okk4" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3IIf9O_okk5" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="3IIf9O_okk6" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3IIf9O_okk7" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="3IIf9O_okk8" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3IIf9O_okk9" role="tncku">
      <node concept="3clFbS" id="3IIf9O_okka" role="2VODD2">
        <node concept="3clFbF" id="3IIf9O_okkb" role="3cqZAp">
          <node concept="2YIFZM" id="6Yb9hAqxX1c" role="3clFbG">
            <ref role="37wK5l" to="o35r:3WU9yfAbTWe" resolve="clearAll" />
            <ref role="1Pybhc" to="o35r:41ox5VnpFrR" resolve="HighlightingPlugin" />
            <node concept="2OqwBi" id="3IIf9O_okkd" role="37wK5m">
              <node concept="2WthIp" id="3IIf9O_okke" role="2Oq$k0" />
              <node concept="1DTwFV" id="3IIf9O_okkf" role="2OqNvi">
                <ref role="2WH_rO" node="3IIf9O_okk3" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3IIf9O_okkF" role="3cqZAp">
          <node concept="2OqwBi" id="3IIf9O_okkG" role="3clFbG">
            <node concept="2OqwBi" id="3IIf9O_oo3r" role="2Oq$k0">
              <node concept="2OqwBi" id="3IIf9O_okkH" role="2Oq$k0">
                <node concept="2YIFZM" id="3IIf9O_okkI" role="2Oq$k0">
                  <ref role="37wK5l" node="7WKNeR8SP2E" resolve="launchQuery" />
                  <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
                  <node concept="2YIFZM" id="5EDW3XEpzdD" role="37wK5m">
                    <ref role="1Pybhc" to="tj24:5EDW3XDYg8Y" resolve="TypecheckingQueries" />
                    <ref role="37wK5l" to="tj24:5EDW3XDYggE" resolve="check" />
                    <node concept="2OqwBi" id="6v6oK24Nl2w" role="37wK5m">
                      <node concept="2OqwBi" id="6v6oK24NkJU" role="2Oq$k0">
                        <node concept="2WthIp" id="6v6oK24NkJX" role="2Oq$k0" />
                        <node concept="1DTwFV" id="6v6oK24NkJZ" role="2OqNvi">
                          <ref role="2WH_rO" node="3IIf9O_okk5" resolve="node" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6v6oK24Nl$n" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="5EDW3XEpzdE" role="37wK5m">
                      <node concept="3clFbS" id="5EDW3XEpzdF" role="1bW5cS" />
                      <node concept="37vLTG" id="5EDW3XEpzdG" role="1bW2Oz">
                        <property role="TrG5h" value="p" />
                        <node concept="2sp9CU" id="5EDW3XEpzdH" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="5EDW3XEpzdI" role="1bW2Oz">
                        <property role="TrG5h" value="n" />
                        <node concept="3Tqbb2" id="5EDW3XEpzdJ" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3IIf9O_okkK" role="37wK5m">
                    <node concept="2WthIp" id="3IIf9O_okkL" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3IIf9O_okkM" role="2OqNvi">
                      <ref role="2WH_rO" node="3IIf9O_okk7" resolve="editorComponent" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3IIf9O_okkN" role="37wK5m">
                    <node concept="2WthIp" id="3IIf9O_okkO" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3IIf9O_okkP" role="2OqNvi">
                      <ref role="2WH_rO" node="3IIf9O_okk3" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3IIf9O_okkQ" role="37wK5m">
                    <node concept="2WthIp" id="3IIf9O_okkR" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3IIf9O_okkS" role="2OqNvi">
                      <ref role="2WH_rO" node="3IIf9O_okk1" resolve="ideaProject" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3IIf9O_okkT" role="2OqNvi">
                  <ref role="37wK5l" node="6hqFpWnimEi" resolve="forNode" />
                  <node concept="2OqwBi" id="3IIf9O_okkU" role="37wK5m">
                    <node concept="2WthIp" id="3IIf9O_okkV" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3IIf9O_okkW" role="2OqNvi">
                      <ref role="2WH_rO" node="3IIf9O_okk5" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3IIf9O_oot0" role="2OqNvi">
                <ref role="37wK5l" node="7WKNeR8RobH" resolve="withTrace" />
              </node>
            </node>
            <node concept="liA8E" id="3IIf9O_okkX" role="2OqNvi">
              <ref role="37wK5l" node="7WKNeR8RsrK" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3IIf9O_okkY" role="tmbBb">
      <node concept="3clFbS" id="3IIf9O_okkZ" role="2VODD2">
        <node concept="3clFbF" id="3IIf9O_okl0" role="3cqZAp">
          <node concept="2YIFZM" id="3IIf9O_okl1" role="3clFbG">
            <ref role="37wK5l" node="6hqFpWnfbeu" resolve="isTypecheckingAvailable" />
            <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
            <node concept="2OqwBi" id="3IIf9O_okl2" role="37wK5m">
              <node concept="2WthIp" id="3IIf9O_okl3" role="2Oq$k0" />
              <node concept="1DTwFV" id="3IIf9O_okl4" role="2OqNvi">
                <ref role="2WH_rO" node="3IIf9O_okk5" resolve="node" />
              </node>
            </node>
            <node concept="2OqwBi" id="3IIf9O_okl5" role="37wK5m">
              <node concept="2WthIp" id="3IIf9O_okl6" role="2Oq$k0" />
              <node concept="1DTwFV" id="3IIf9O_okl7" role="2OqNvi">
                <ref role="2WH_rO" node="3IIf9O_okk7" resolve="editorComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="3IIf9O_okl8" role="37wK5m">
              <node concept="2WthIp" id="3IIf9O_okl9" role="2Oq$k0" />
              <node concept="1DTwFV" id="3IIf9O_okla" role="2OqNvi">
                <ref role="2WH_rO" node="3IIf9O_okk3" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="4vBwiiVq9kr">
    <property role="TrG5h" value="MacOSX105" />
    <property role="Zd52Q" value="2HiVo5PakU7/Mac_OS_X_10_5_" />
    <property role="Z2u3V" value="false" />
    <node concept="Zd509" id="4vBwiiVq9ks" role="Zd508">
      <ref role="1bYAoF" node="4vBwiiVgYfo" resolve="ShowNodeType" />
      <node concept="pLAjd" id="4vBwiiVq9kt" role="Zd501">
        <property role="pLAjc" value="ctrl+alt+shift" />
        <property role="pLAjf" value="VK_P" />
        <property role="3hacHL" value="5SFo3Mf0QpD/replace_all" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3YJ7yg2LgPI">
    <property role="TrG5h" value="FindApplicableTemplates" />
    <property role="2uzpH1" value="Find Applicable Typechecking Templates" />
    <property role="3GE5qa" value="action" />
    <node concept="1DS2jV" id="3YJ7yg2OPyo" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="3YJ7yg2OPyp" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3YJ7yg2LgUn" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3YJ7yg2LgUo" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3YJ7yg2LgUp" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="3YJ7yg2LgUq" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3YJ7yg2LgPJ" role="tncku">
      <node concept="3clFbS" id="3YJ7yg2LgPK" role="2VODD2">
        <node concept="3cpWs8" id="6nFpYlun1LU" role="3cqZAp">
          <node concept="3cpWsn" id="6nFpYlun1LV" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="6nFpYlun1hO" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="6nFpYlun1LW" role="33vP2m">
              <node concept="2OqwBi" id="6nFpYlun1LX" role="2Oq$k0">
                <node concept="2WthIp" id="6nFpYlun1LY" role="2Oq$k0" />
                <node concept="1DTwFV" id="6nFpYlun1LZ" role="2OqNvi">
                  <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="6nFpYlun1M0" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4XsNDZYjiYB" role="3cqZAp">
          <node concept="3cpWsn" id="4XsNDZYjiYC" role="3cpWs9">
            <property role="TrG5h" value="typecheckingService" />
            <node concept="3uibUv" id="4XsNDZYjiYD" role="1tU5fm">
              <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
            </node>
            <node concept="2YIFZM" id="4XsNDZYjiYE" role="33vP2m">
              <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
              <ref role="37wK5l" to="tj24:1z4$59iHmYH" resolve="create" />
              <node concept="37vLTw" id="4XsNDZYjiYF" role="37wK5m">
                <ref role="3cqZAo" node="6nFpYlun1LV" resolve="repository" />
              </node>
              <node concept="2YIFZM" id="3zz62D5cwaY" role="37wK5m">
                <ref role="37wK5l" to="tj24:2MNGcFT4ZOn" resolve="getEffectiveConfig" />
                <ref role="1Pybhc" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
              </node>
              <node concept="2YIFZM" id="4XsNDZYjiYH" role="37wK5m">
                <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                <node concept="2OqwBi" id="4XsNDZYjlMO" role="37wK5m">
                  <node concept="2WthIp" id="4XsNDZYjlMR" role="2Oq$k0" />
                  <node concept="1DTwFV" id="4XsNDZYjlMT" role="2OqNvi">
                    <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4XsNDZYkDEu" role="3cqZAp" />
        <node concept="3cpWs8" id="4XsNDZYkI9P" role="3cqZAp">
          <node concept="3cpWsn" id="4XsNDZYkI9Q" role="3cpWs9">
            <property role="TrG5h" value="query" />
            <node concept="3uibUv" id="4XsNDZYkI9R" role="1tU5fm">
              <ref role="3uigEE" to="9erk:~SearchQuery" resolve="SearchQuery" />
            </node>
            <node concept="10Nm6u" id="4XsNDZYl7pn" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="4XsNDZYkI9E" role="3cqZAp">
          <node concept="3cpWsn" id="4XsNDZYkI9F" role="3cpWs9">
            <property role="TrG5h" value="finder" />
            <node concept="3uibUv" id="4XsNDZYkI9G" role="1tU5fm">
              <ref role="3uigEE" node="4n$QnzZQkF9" resolve="ApplicableTemplatesFinder" />
            </node>
            <node concept="10Nm6u" id="4XsNDZYl8Q6" role="33vP2m" />
          </node>
        </node>
        <node concept="1QHqEK" id="3YJ7yg2LGli" role="3cqZAp">
          <node concept="1QHqEC" id="3YJ7yg2LGlj" role="1QHqEI">
            <node concept="3clFbS" id="3YJ7yg2LGlk" role="1bW5cS">
              <node concept="3clFbF" id="4XsNDZYl505" role="3cqZAp">
                <node concept="37vLTI" id="4XsNDZYl507" role="3clFbG">
                  <node concept="2ShNRf" id="4XsNDZYkI9H" role="37vLTx">
                    <node concept="1pGfFk" id="4XsNDZYkI9I" role="2ShVmc">
                      <ref role="37wK5l" node="3YJ7yg2MSlk" resolve="ApplicableTemplatesFinder" />
                      <node concept="37vLTw" id="4XsNDZYkMV9" role="37wK5m">
                        <ref role="3cqZAo" node="4XsNDZYjiYC" resolve="typecheckingService" />
                      </node>
                      <node concept="2OqwBi" id="4XsNDZYkI9M" role="37wK5m">
                        <node concept="2WthIp" id="4XsNDZYkI9N" role="2Oq$k0" />
                        <node concept="1DTwFV" id="4XsNDZYkI9O" role="2OqNvi">
                          <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4XsNDZYl50b" role="37vLTJ">
                    <ref role="3cqZAo" node="4XsNDZYkI9F" resolve="finder" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4XsNDZYkI9V" role="3cqZAp">
                <node concept="37vLTI" id="4XsNDZYkI9W" role="3clFbG">
                  <node concept="2ShNRf" id="4XsNDZYkI9X" role="37vLTx">
                    <node concept="1pGfFk" id="4XsNDZYkI9Y" role="2ShVmc">
                      <ref role="37wK5l" to="9erk:~SearchQuery.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SearchScope)" resolve="SearchQuery" />
                      <node concept="2OqwBi" id="4XsNDZYkI9Z" role="37wK5m">
                        <node concept="2WthIp" id="4XsNDZYkIa0" role="2Oq$k0" />
                        <node concept="1DTwFV" id="4XsNDZYkIa1" role="2OqNvi">
                          <ref role="2WH_rO" node="3YJ7yg2LgUp" resolve="node" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4XsNDZYkIa2" role="37wK5m">
                        <node concept="2OqwBi" id="4XsNDZYkIa3" role="2Oq$k0">
                          <node concept="2WthIp" id="4XsNDZYkIa4" role="2Oq$k0" />
                          <node concept="1DTwFV" id="4XsNDZYkIa5" role="2OqNvi">
                            <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4XsNDZYkIa6" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getScope()" resolve="getScope" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4XsNDZYkIa7" role="37vLTJ">
                    <ref role="3cqZAo" node="4XsNDZYkI9Q" resolve="query" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6nFpYlun1M2" role="ukAjM">
            <ref role="3cqZAo" node="6nFpYlun1LV" resolve="repository" />
          </node>
        </node>
        <node concept="3cpWs8" id="4XsNDZYkIad" role="3cqZAp">
          <node concept="3cpWsn" id="4XsNDZYkIae" role="3cpWs9">
            <property role="TrG5h" value="opt" />
            <node concept="3uibUv" id="4XsNDZYkIaf" role="1tU5fm">
              <ref role="3uigEE" to="ngmm:~UsageToolOptions" resolve="UsageToolOptions" />
            </node>
            <node concept="2OqwBi" id="4XsNDZYkIag" role="33vP2m">
              <node concept="2OqwBi" id="4XsNDZYkIah" role="2Oq$k0">
                <node concept="2OqwBi" id="4XsNDZYkIai" role="2Oq$k0">
                  <node concept="2OqwBi" id="4XsNDZYkIaj" role="2Oq$k0">
                    <node concept="2ShNRf" id="4XsNDZYkIak" role="2Oq$k0">
                      <node concept="1pGfFk" id="4XsNDZYkIal" role="2ShVmc">
                        <ref role="37wK5l" to="ngmm:~UsageToolOptions.&lt;init&gt;()" resolve="UsageToolOptions" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4XsNDZYkIam" role="2OqNvi">
                      <ref role="37wK5l" to="ngmm:~UsageToolOptions.allowRunAgain(boolean)" resolve="allowRunAgain" />
                      <node concept="3clFbT" id="4XsNDZYkIan" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4XsNDZYkIao" role="2OqNvi">
                    <ref role="37wK5l" to="ngmm:~UsageToolOptions.navigateIfSingle(boolean)" resolve="navigateIfSingle" />
                    <node concept="3clFbT" id="4XsNDZYkIap" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4XsNDZYkIaq" role="2OqNvi">
                  <ref role="37wK5l" to="ngmm:~UsageToolOptions.forceNewTab(boolean)" resolve="forceNewTab" />
                  <node concept="3clFbT" id="4XsNDZYkIar" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4XsNDZYkIas" role="2OqNvi">
                <ref role="37wK5l" to="ngmm:~UsageToolOptions.notFoundMessage(java.lang.String)" resolve="notFoundMessage" />
                <node concept="Xl_RD" id="4XsNDZYkIat" role="37wK5m">
                  <property role="Xl_RC" value="no applicable templates found" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4XsNDZYkIau" role="3cqZAp">
          <node concept="2YIFZM" id="4XsNDZYkIav" role="3clFbG">
            <ref role="37wK5l" to="ngmm:~UsagesViewTool.showUsages(com.intellij.openapi.project.Project,jetbrains.mps.ide.findusages.model.IResultProvider,jetbrains.mps.ide.findusages.model.SearchQuery,jetbrains.mps.ide.findusages.view.UsageToolOptions)" resolve="showUsages" />
            <ref role="1Pybhc" to="ngmm:~UsagesViewTool" resolve="UsagesViewTool" />
            <node concept="2OqwBi" id="4XsNDZYkIaw" role="37wK5m">
              <node concept="2WthIp" id="4XsNDZYkIax" role="2Oq$k0" />
              <node concept="1DTwFV" id="4XsNDZYkIay" role="2OqNvi">
                <ref role="2WH_rO" node="3YJ7yg2OPyo" resolve="ideaProject" />
              </node>
            </node>
            <node concept="2YIFZM" id="4XsNDZYkIaz" role="37wK5m">
              <ref role="1Pybhc" to="ngmn:~FindUtils" resolve="FindUtils" />
              <ref role="37wK5l" to="ngmn:~FindUtils.makeProvider(jetbrains.mps.ide.findusages.findalgorithm.finders.IFinder...)" resolve="makeProvider" />
              <node concept="37vLTw" id="4XsNDZYkIa$" role="37wK5m">
                <ref role="3cqZAo" node="4XsNDZYkI9F" resolve="finder" />
              </node>
            </node>
            <node concept="37vLTw" id="4XsNDZYkIa_" role="37wK5m">
              <ref role="3cqZAo" node="4XsNDZYkI9Q" resolve="query" />
            </node>
            <node concept="37vLTw" id="4XsNDZYkIaA" role="37wK5m">
              <ref role="3cqZAo" node="4XsNDZYkIae" resolve="opt" />
            </node>
          </node>
          <node concept="15s5l7" id="4XsNDZYkIaB" role="lGtFl" />
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3YJ7yg2LDPl" role="tmbBb">
      <node concept="3clFbS" id="3YJ7yg2LDPm" role="2VODD2">
        <node concept="3cpWs8" id="3YJ7yg2LDWy" role="3cqZAp">
          <node concept="3cpWsn" id="3YJ7yg2LDWz" role="3cpWs9">
            <property role="TrG5h" value="containingRoot" />
            <node concept="3Tqbb2" id="3YJ7yg2LDW$" role="1tU5fm" />
            <node concept="2OqwBi" id="3YJ7yg2LDW_" role="33vP2m">
              <node concept="2OqwBi" id="3YJ7yg2LDWA" role="2Oq$k0">
                <node concept="2WthIp" id="3YJ7yg2LDWB" role="2Oq$k0" />
                <node concept="1DTwFV" id="3YJ7yg2LDWC" role="2OqNvi">
                  <ref role="2WH_rO" node="3YJ7yg2LgUp" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="3YJ7yg2LDWD" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KN3A4v4utG" role="3cqZAp">
          <node concept="3clFbS" id="3KN3A4v4utI" role="3clFbx">
            <node concept="3cpWs6" id="3KN3A4v4xym" role="3cqZAp">
              <node concept="3clFbT" id="3KN3A4v4xSZ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3KN3A4v4wI0" role="3clFbw">
            <node concept="10Nm6u" id="3KN3A4v4x7o" role="3uHU7w" />
            <node concept="2OqwBi" id="3KN3A4v4vGA" role="3uHU7B">
              <node concept="37vLTw" id="3KN3A4v4uPi" role="2Oq$k0">
                <ref role="3cqZAo" node="3YJ7yg2LDWz" resolve="containingRoot" />
              </node>
              <node concept="I4A8Y" id="3KN3A4v4wo8" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KN3A4v4yCo" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4v4yZT" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4v4yZU" role="3cpWs9">
            <property role="TrG5h" value="allForModel" />
            <node concept="3vKaQO" id="3KN3A4v4yPq" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4v4yPx" role="3O5elw">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="3KN3A4v4yPy" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="IFW4V2ErZ7" role="33vP2m">
              <node concept="2YIFZM" id="IFW4V2ErB$" role="2Oq$k0">
                <ref role="37wK5l" to="u46i:78H58oeCAQS" resolve="aspectLookup" />
                <ref role="1Pybhc" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                <node concept="2OqwBi" id="IFW4V2ErB_" role="37wK5m">
                  <node concept="2OqwBi" id="IFW4V2ErBA" role="2Oq$k0">
                    <node concept="2WthIp" id="IFW4V2ErBB" role="2Oq$k0" />
                    <node concept="1DTwFV" id="IFW4V2ErBC" role="2OqNvi">
                      <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="IFW4V2ErBD" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="IFW4V2EsEi" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
                <node concept="37vLTw" id="3KN3A4v4yZX" role="37wK5m">
                  <ref role="3cqZAo" node="3YJ7yg2LDWz" resolve="containingRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4v4BxV" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4v4BxW" role="3cpWs9">
            <property role="TrG5h" value="hasTypeAspect" />
            <node concept="10P_77" id="3KN3A4v4Bmf" role="1tU5fm" />
            <node concept="2OqwBi" id="3KN3A4v4BxX" role="33vP2m">
              <node concept="37vLTw" id="3KN3A4v4BxY" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4v4yZU" resolve="allForModel" />
              </node>
              <node concept="3GX2aA" id="3KN3A4v4BxZ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Ei6D4B8VLF" role="3cqZAp">
          <node concept="3cpWsn" id="2Ei6D4B8VLG" role="3cpWs9">
            <property role="TrG5h" value="msc" />
            <node concept="3uibUv" id="2Ei6D4B8VLH" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
            </node>
            <node concept="2OqwBi" id="2Ei6D4B8VLI" role="33vP2m">
              <node concept="2OqwBi" id="2Ei6D4B8WD9" role="2Oq$k0">
                <node concept="2WthIp" id="2Ei6D4B8WDc" role="2Oq$k0" />
                <node concept="1DTwFV" id="2Ei6D4B8WDe" role="2OqNvi">
                  <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="2Ei6D4B8VLK" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="2Ei6D4B8VLL" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3YJ7yg2LDX6" role="3cqZAp">
          <node concept="1Wc70l" id="3YJ7yg2LDX7" role="3clFbG">
            <node concept="37vLTw" id="3KN3A4v4DyL" role="3uHU7B">
              <ref role="3cqZAo" node="3KN3A4v4BxW" resolve="hasTypeAspect" />
            </node>
            <node concept="1eOMI4" id="2Ei6D4B8Yqx" role="3uHU7w">
              <node concept="22lmx$" id="2Ei6D4B8Yqy" role="1eOMHV">
                <node concept="3fqX7Q" id="2Ei6D4B8Yqz" role="3uHU7w">
                  <node concept="2OqwBi" id="2Ei6D4B8Yq$" role="3fr31v">
                    <node concept="37vLTw" id="2Ei6D4B8Yq_" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Ei6D4B8VLG" resolve="msc" />
                    </node>
                    <node concept="liA8E" id="2Ei6D4B8YqA" role="2OqNvi">
                      <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2Ei6D4B8YqB" role="3uHU7B">
                  <node concept="37vLTw" id="2Ei6D4B8YqC" role="3uHU7B">
                    <ref role="3cqZAo" node="2Ei6D4B8VLG" resolve="msc" />
                  </node>
                  <node concept="10Nm6u" id="2Ei6D4B8YqD" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6TxWhg_AhBw">
    <property role="TrG5h" value="TypecheckingWidget" />
    <node concept="2tJIrI" id="6TxWhg_AhDg" role="jymVt" />
    <node concept="3uibUv" id="hP8D6fqe6M" role="EKbjA">
      <ref role="3uigEE" to="jkny:~StatusBarWidget" resolve="StatusBarWidget" />
    </node>
    <node concept="3uibUv" id="1$ZRmkX9bOC" role="EKbjA">
      <ref role="3uigEE" to="jkny:~CustomStatusBarWidget" resolve="CustomStatusBarWidget" />
    </node>
    <node concept="3uibUv" id="4hZPELmBBTb" role="EKbjA">
      <ref role="3uigEE" to="jkny:~StatusBarWidget$TextPresentation" resolve="StatusBarWidget.TextPresentation" />
    </node>
    <node concept="3uibUv" id="1$ZRmkX9bYN" role="EKbjA">
      <ref role="3uigEE" to="jkny:~StatusBarWidget$WidgetPresentation" resolve="StatusBarWidget.WidgetPresentation" />
    </node>
    <node concept="3uibUv" id="2LX1rHNIXCu" role="EKbjA">
      <ref role="3uigEE" to="j936:~UISettingsListener" resolve="UISettingsListener" />
    </node>
    <node concept="3uibUv" id="1tWJVfj_YDg" role="EKbjA">
      <ref role="3uigEE" to="mnlj:~PropertyChangeListener" resolve="PropertyChangeListener" />
    </node>
    <node concept="Wx3nA" id="6TxWhg_AzHm" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="WIDGET_ID" />
      <node concept="3Tm6S6" id="6TxWhg_AzHj" role="1B3o_S" />
      <node concept="17QB3L" id="6TxWhg_AzHk" role="1tU5fm" />
      <node concept="Xl_RD" id="6TxWhg_AzHl" role="33vP2m">
        <property role="Xl_RC" value="TypecheckingWidget" />
      </node>
    </node>
    <node concept="2tJIrI" id="6TxWhg_Bo$b" role="jymVt" />
    <node concept="312cEg" id="6TxWhg_Bq25" role="jymVt">
      <property role="TrG5h" value="panel" />
      <node concept="3Tm6S6" id="6TxWhg_Bq26" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhg_BuaG" role="1tU5fm">
        <ref role="3uigEE" node="6TxWhg_Bhtw" resolve="TypecheckingWidget.Panel" />
      </node>
    </node>
    <node concept="312cEg" id="6TxWhgA5cBN" role="jymVt">
      <property role="TrG5h" value="focusManager" />
      <node concept="3Tm6S6" id="6TxWhgA5cBL" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhgA5cBM" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~KeyboardFocusManager" resolve="KeyboardFocusManager" />
      </node>
    </node>
    <node concept="312cEg" id="6TxWhgA5PHx" role="jymVt">
      <property role="TrG5h" value="statusBar" />
      <node concept="3Tm6S6" id="6TxWhgA5PHy" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhgA5PH$" role="1tU5fm">
        <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
      </node>
    </node>
    <node concept="312cEg" id="6TxWhgAxla$" role="jymVt">
      <property role="TrG5h" value="typecheckingEnabledBean" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6TxWhgAxla_" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhgAxlaB" role="1tU5fm">
        <ref role="3uigEE" node="6TxWhgAwNGu" resolve="TypecheckingEnabledBean" />
      </node>
    </node>
    <node concept="2tJIrI" id="6TxWhgA5O_y" role="jymVt" />
    <node concept="3clFbW" id="6TxWhg_B4Ik" role="jymVt">
      <node concept="37vLTG" id="6TxWhg_B50N" role="3clF46">
        <property role="TrG5h" value="statusBar" />
        <node concept="3uibUv" id="6TxWhg_B6Iq" role="1tU5fm">
          <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
        </node>
      </node>
      <node concept="37vLTG" id="6TxWhgAxj_R" role="3clF46">
        <property role="TrG5h" value="typecheckingEnabledBean" />
        <node concept="3uibUv" id="6TxWhgAxl4H" role="1tU5fm">
          <ref role="3uigEE" node="6TxWhgAwNGu" resolve="TypecheckingEnabledBean" />
        </node>
      </node>
      <node concept="3cqZAl" id="6TxWhg_B4Im" role="3clF45" />
      <node concept="3clFbS" id="6TxWhg_B4In" role="3clF47">
        <node concept="3clFbF" id="6TxWhgA5PH_" role="3cqZAp">
          <node concept="37vLTI" id="6TxWhgA5PHB" role="3clFbG">
            <node concept="2OqwBi" id="6TxWhgA5Suq" role="37vLTJ">
              <node concept="Xjq3P" id="6TxWhgA5TU7" role="2Oq$k0" />
              <node concept="2OwXpG" id="6TxWhgA5Sut" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhgA5PHx" resolve="statusBar" />
              </node>
            </node>
            <node concept="37vLTw" id="6TxWhgA5PHF" role="37vLTx">
              <ref role="3cqZAo" node="6TxWhg_B50N" resolve="statusBar" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TxWhgAxlaC" role="3cqZAp">
          <node concept="37vLTI" id="6TxWhgAxlaE" role="3clFbG">
            <node concept="2OqwBi" id="6TxWhgAxpim" role="37vLTJ">
              <node concept="Xjq3P" id="6TxWhgAxqKw" role="2Oq$k0" />
              <node concept="2OwXpG" id="6TxWhgAxpip" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhgAxla$" resolve="typecheckingEnabledBean" />
              </node>
            </node>
            <node concept="37vLTw" id="6TxWhgAxlaI" role="37vLTx">
              <ref role="3cqZAo" node="6TxWhgAxj_R" resolve="typecheckingEnabledBean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqGf" role="jymVt">
      <property role="TrG5h" value="ID" />
      <node concept="3Tm1VV" id="6TxWhg_AqGg" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhg_AqGi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6TxWhg_AqGk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6TxWhg_AqGl" role="3clF47">
        <node concept="3cpWs6" id="6TxWhg_AqGo" role="3cqZAp">
          <node concept="37vLTw" id="6TxWhg_AzHp" role="3cqZAk">
            <ref role="3cqZAo" node="6TxWhg_AzHm" resolve="WIDGET_ID" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6TxWhg_BlUd" role="jymVt" />
    <node concept="3clFb_" id="6TxWhg_Bnkz" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3cqZAl" id="6TxWhg_Bnk_" role="3clF45" />
      <node concept="3clFbS" id="6TxWhg_BnkA" role="3clF47">
        <node concept="3clFbJ" id="6TxWhg_Bw4_" role="3cqZAp">
          <node concept="3y3z36" id="6TxWhg_Bznd" role="3clFbw">
            <node concept="10Nm6u" id="6TxWhg_B_fU" role="3uHU7w" />
            <node concept="37vLTw" id="6TxWhg_By3n" role="3uHU7B">
              <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
            </node>
          </node>
          <node concept="3clFbS" id="6TxWhg_Bw4B" role="3clFbx">
            <node concept="3clFbF" id="6TxWhg_BB_d" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhg_BCxF" role="3clFbG">
                <node concept="37vLTw" id="6TxWhg_BB_c" role="2Oq$k0">
                  <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
                </node>
                <node concept="liA8E" id="6TxWhg_BFnm" role="2OqNvi">
                  <ref role="37wK5l" node="6TxWhg_BI_3" resolve="update" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6GMlsrjEXyT" role="3cqZAp">
          <node concept="3clFbS" id="6GMlsrjEXyV" role="3clFbx">
            <node concept="3clFbF" id="6TxWhgA5ZEV" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhgA61O1" role="3clFbG">
                <node concept="37vLTw" id="6TxWhgA5ZET" role="2Oq$k0">
                  <ref role="3cqZAo" node="6TxWhgA5PHx" resolve="statusBar" />
                </node>
                <node concept="liA8E" id="6TxWhgA63kV" role="2OqNvi">
                  <ref role="37wK5l" to="jkny:~StatusBar.updateWidget(java.lang.String)" resolve="updateWidget" />
                  <node concept="1rXfSq" id="6TxWhgA68r3" role="37wK5m">
                    <ref role="37wK5l" node="6TxWhg_AqGf" resolve="ID" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6GMlsrjF3X9" role="3clFbw">
            <node concept="10Nm6u" id="6GMlsrjF5Ag" role="3uHU7w" />
            <node concept="37vLTw" id="6GMlsrjF2tF" role="3uHU7B">
              <ref role="3cqZAo" node="6TxWhgA5PHx" resolve="statusBar" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6TxWhg_BnYN" role="jymVt" />
    <node concept="3clFb_" id="6TxWhg_AqGp" role="jymVt">
      <property role="TrG5h" value="install" />
      <node concept="3Tm1VV" id="6TxWhg_AqGq" role="1B3o_S" />
      <node concept="3cqZAl" id="6TxWhg_AqGs" role="3clF45" />
      <node concept="37vLTG" id="6TxWhg_AqGt" role="3clF46">
        <property role="TrG5h" value="bar" />
        <node concept="3uibUv" id="6TxWhg_AqGu" role="1tU5fm">
          <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
        </node>
        <node concept="2AHcQZ" id="6TxWhg_AqGv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6TxWhg_AqGw" role="3clF47">
        <node concept="3clFbF" id="4ot3PHR1nJ6" role="3cqZAp">
          <node concept="2OqwBi" id="4ot3PHR1FVg" role="3clFbG">
            <node concept="2OqwBi" id="4ot3PHR1Ejr" role="2Oq$k0">
              <node concept="2OqwBi" id="4ot3PHR1CGt" role="2Oq$k0">
                <node concept="2YIFZM" id="4ot3PHR1A3j" role="2Oq$k0">
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                </node>
                <node concept="liA8E" id="4ot3PHR1CGu" role="2OqNvi">
                  <ref role="37wK5l" to="1m72:~ComponentManager.getMessageBus()" resolve="getMessageBus" />
                </node>
              </node>
              <node concept="liA8E" id="4ot3PHR1Ejs" role="2OqNvi">
                <ref role="37wK5l" to="4b2m:~MessageBus.connect(com.intellij.openapi.Disposable)" resolve="connect" />
                <node concept="Xjq3P" id="4ot3PHR1Ejt" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="4ot3PHR1FVh" role="2OqNvi">
              <ref role="37wK5l" to="4b2m:~SimpleMessageBusConnection.subscribe(com.intellij.util.messages.Topic,java.lang.Object)" resolve="subscribe" />
              <node concept="10M0yZ" id="4ot3PHR1FVi" role="37wK5m">
                <ref role="1PxDUh" to="j936:~UISettingsListener" resolve="UISettingsListener" />
                <ref role="3cqZAo" to="j936:~UISettingsListener.TOPIC" resolve="TOPIC" />
              </node>
              <node concept="Xjq3P" id="4ot3PHR1FVj" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TxWhgA5cBU" role="3cqZAp">
          <node concept="37vLTI" id="6TxWhgA5cBV" role="3clFbG">
            <node concept="2OqwBi" id="6TxWhgA5cBW" role="37vLTJ">
              <node concept="Xjq3P" id="6TxWhgA5cBX" role="2Oq$k0" />
              <node concept="2OwXpG" id="6TxWhgA5cBY" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhgA5cBN" resolve="focusManager" />
              </node>
            </node>
            <node concept="2YIFZM" id="6TxWhgA5cBZ" role="37vLTx">
              <ref role="1Pybhc" to="z60i:~KeyboardFocusManager" resolve="KeyboardFocusManager" />
              <ref role="37wK5l" to="z60i:~KeyboardFocusManager.getCurrentKeyboardFocusManager()" resolve="getCurrentKeyboardFocusManager" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TxWhgA5bqP" role="3cqZAp">
          <node concept="2OqwBi" id="6TxWhgA5eQb" role="3clFbG">
            <node concept="2OqwBi" id="6TxWhgA5cC0" role="2Oq$k0">
              <node concept="Xjq3P" id="6TxWhgA5cC1" role="2Oq$k0" />
              <node concept="2OwXpG" id="6TxWhgA5cC2" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhgA5cBN" resolve="focusManager" />
              </node>
            </node>
            <node concept="liA8E" id="6TxWhgA5gBF" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~KeyboardFocusManager.addPropertyChangeListener(java.beans.PropertyChangeListener)" resolve="addPropertyChangeListener" />
              <node concept="Xjq3P" id="6TxWhgA5jei" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqHN" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3Tm1VV" id="6TxWhg_AqHO" role="1B3o_S" />
      <node concept="3cqZAl" id="6TxWhg_AqHQ" role="3clF45" />
      <node concept="3clFbS" id="6TxWhg_AqHW" role="3clF47">
        <node concept="3clFbJ" id="6TxWhgA5lC4" role="3cqZAp">
          <node concept="3y3z36" id="6TxWhgA5qN3" role="3clFbw">
            <node concept="10Nm6u" id="6TxWhgA5tgb" role="3uHU7w" />
            <node concept="37vLTw" id="6TxWhgA5oPu" role="3uHU7B">
              <ref role="3cqZAo" node="6TxWhgA5cBN" resolve="focusManager" />
            </node>
          </node>
          <node concept="3clFbS" id="6TxWhgA5lC6" role="3clFbx">
            <node concept="3clFbF" id="6TxWhgA5wkH" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhgA5y8k" role="3clFbG">
                <node concept="37vLTw" id="6TxWhgA5wkG" role="2Oq$k0">
                  <ref role="3cqZAo" node="6TxWhgA5cBN" resolve="focusManager" />
                </node>
                <node concept="liA8E" id="6TxWhgA5zRU" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~KeyboardFocusManager.removePropertyChangeListener(java.beans.PropertyChangeListener)" resolve="removePropertyChangeListener" />
                  <node concept="Xjq3P" id="6TxWhgA5Ai8" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhgA5EqU" role="3cqZAp">
              <node concept="37vLTI" id="6TxWhgA5I1j" role="3clFbG">
                <node concept="10Nm6u" id="6TxWhgA5Jh2" role="37vLTx" />
                <node concept="2OqwBi" id="6TxWhgA5FMI" role="37vLTJ">
                  <node concept="Xjq3P" id="6TxWhgA5EqS" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6TxWhgA5GOZ" role="2OqNvi">
                    <ref role="2Oxat5" node="6TxWhgA5cBN" resolve="focusManager" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6GMlsrjECrh" role="3cqZAp">
          <node concept="37vLTI" id="6GMlsrjEOH2" role="3clFbG">
            <node concept="10Nm6u" id="6GMlsrjER8F" role="37vLTx" />
            <node concept="2OqwBi" id="6GMlsrjEIlj" role="37vLTJ">
              <node concept="Xjq3P" id="6GMlsrjECrf" role="2Oq$k0" />
              <node concept="2OwXpG" id="6GMlsrjEMqD" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhg_Bq25" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6GMlsrjFdz7" role="3cqZAp">
          <node concept="37vLTI" id="6GMlsrjFnjb" role="3clFbG">
            <node concept="10Nm6u" id="6GMlsrjFpJw" role="37vLTx" />
            <node concept="2OqwBi" id="6GMlsrjFivx" role="37vLTJ">
              <node concept="Xjq3P" id="6GMlsrjFdz5" role="2Oq$k0" />
              <node concept="2OwXpG" id="6GMlsrjFk5U" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhgA5PHx" resolve="statusBar" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqGy" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3Tm1VV" id="6TxWhg_AqGz" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhg_AqG_" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="6TxWhg_AqGB" role="3clF47">
        <node concept="3clFbJ" id="6TxWhg_C7nB" role="3cqZAp">
          <node concept="3clFbS" id="6TxWhg_C7nD" role="3clFbx">
            <node concept="3clFbF" id="6TxWhg_ChXX" role="3cqZAp">
              <node concept="37vLTI" id="6TxWhg_CjmB" role="3clFbG">
                <node concept="2ShNRf" id="6TxWhg_Cl9v" role="37vLTx">
                  <node concept="1pGfFk" id="6TxWhg_Cv2l" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="6TxWhg_BkMR" resolve="TypecheckingWidget.Panel" />
                  </node>
                </node>
                <node concept="37vLTw" id="6TxWhg_ChXV" role="37vLTJ">
                  <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6TxWhg_CaEU" role="3clFbw">
            <node concept="10Nm6u" id="6TxWhg_CcGW" role="3uHU7w" />
            <node concept="37vLTw" id="6TxWhg_C9vO" role="3uHU7B">
              <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6TxWhg_AqGE" role="3cqZAp">
          <node concept="37vLTw" id="6TxWhg_C5pX" role="3cqZAk">
            <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqGF" role="jymVt">
      <property role="TrG5h" value="getText" />
      <node concept="3Tm1VV" id="6TxWhg_AqGG" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhg_AqGI" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGJ" role="2AJF6D">
        <ref role="2AI5Lk" to="zn9m:~NlsContexts$Label" resolve="NlsContexts.Label" />
      </node>
      <node concept="3uibUv" id="6TxWhg_AqGK" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6TxWhg_AqGN" role="3clF47">
        <node concept="3clFbF" id="6TxWhgAhwT4" role="3cqZAp">
          <node concept="1eOMI4" id="6TxWhgAhwT7" role="3clFbG">
            <node concept="3K4zz7" id="6TxWhgAhwT8" role="1eOMHV">
              <node concept="Xl_RD" id="6TxWhgAhwT9" role="3K4E3e">
                <property role="Xl_RC" value=":ON" />
              </node>
              <node concept="Xl_RD" id="6TxWhgAhwTa" role="3K4GZi">
                <property role="Xl_RC" value=":OFF" />
              </node>
              <node concept="2OqwBi" id="6TxWhgAxype" role="3K4Cdx">
                <node concept="37vLTw" id="6TxWhgAhwTb" role="2Oq$k0">
                  <ref role="3cqZAo" node="6TxWhgAxla$" resolve="typecheckingEnabledBean" />
                </node>
                <node concept="liA8E" id="6TxWhgAx_8A" role="2OqNvi">
                  <ref role="37wK5l" node="6TxWhgAwRgP" resolve="isTypecheckingEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqGR" role="jymVt">
      <property role="TrG5h" value="getAlignment" />
      <node concept="3Tm1VV" id="6TxWhg_AqGS" role="1B3o_S" />
      <node concept="10OMs4" id="6TxWhg_AqGU" role="3clF45" />
      <node concept="3clFbS" id="6TxWhg_AqGX" role="3clF47">
        <node concept="3clFbF" id="4hZPELmBFEN" role="3cqZAp">
          <node concept="10M0yZ" id="7QIaYHuO5JB" role="3clFbG">
            <ref role="3cqZAo" to="z60i:~Component.RIGHT_ALIGNMENT" resolve="RIGHT_ALIGNMENT" />
            <ref role="1PxDUh" to="dxuu:~JComponent" resolve="JComponent" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqH1" role="jymVt">
      <property role="TrG5h" value="getTooltipText" />
      <node concept="3Tm1VV" id="6TxWhg_AqH2" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhg_AqH4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqH5" role="2AJF6D">
        <ref role="2AI5Lk" to="zn9m:~NlsContexts$Tooltip" resolve="NlsContexts.Tooltip" />
      </node>
      <node concept="3uibUv" id="6TxWhg_AqH6" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6TxWhg_AqHa" role="3clF47">
        <node concept="3clFbF" id="6TxWhgAeDr_" role="3cqZAp">
          <node concept="3cpWs3" id="6TxWhgAePo5" role="3clFbG">
            <node concept="Xl_RD" id="6TxWhgAeQoU" role="3uHU7w">
              <property role="Xl_RC" value=" typechecking with Coderules" />
            </node>
            <node concept="1eOMI4" id="6TxWhgAdXKW" role="3uHU7B">
              <node concept="3K4zz7" id="6TxWhgAdZNa" role="1eOMHV">
                <node concept="Xl_RD" id="6TxWhgAe1z9" role="3K4E3e">
                  <property role="Xl_RC" value="Disable" />
                </node>
                <node concept="Xl_RD" id="6TxWhgAe5D3" role="3K4GZi">
                  <property role="Xl_RC" value="Enable" />
                </node>
                <node concept="2OqwBi" id="6TxWhgAxDTU" role="3K4Cdx">
                  <node concept="37vLTw" id="6TxWhgAdBP8" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgAxla$" resolve="typecheckingEnabledBean" />
                  </node>
                  <node concept="liA8E" id="6TxWhgAxGcr" role="2OqNvi">
                    <ref role="37wK5l" node="6TxWhgAwRgP" resolve="isTypecheckingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhgA75AK" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="6TxWhgA75AM" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhgA75AO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6TxWhgA75AP" role="3clF45">
        <ref role="3uigEE" to="jkny:~StatusBarWidget$WidgetPresentation" resolve="StatusBarWidget.WidgetPresentation" />
      </node>
      <node concept="3clFbS" id="6TxWhgA75AQ" role="3clF47">
        <node concept="3clFbF" id="6TxWhgA7c5U" role="3cqZAp">
          <node concept="Xjq3P" id="6TxWhgA7c5T" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhgA75AR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqHe" role="jymVt">
      <property role="TrG5h" value="getClickConsumer" />
      <node concept="3Tm1VV" id="6TxWhg_AqHf" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhg_AqHh" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6TxWhg_AqHi" role="3clF45">
        <ref role="3uigEE" to="9w4s:~Consumer" resolve="Consumer" />
        <node concept="3uibUv" id="6TxWhg_AqHj" role="11_B2D">
          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="6TxWhg_AqHn" role="3clF47">
        <node concept="3clFbF" id="6TxWhgA6dG5" role="3cqZAp">
          <node concept="1bVj0M" id="6TxWhgA6dG3" role="3clFbG">
            <node concept="3clFbS" id="6TxWhgA6dG4" role="1bW5cS">
              <node concept="3clFbJ" id="6TxWhgA6wa1" role="3cqZAp">
                <node concept="3clFbS" id="6TxWhgA6wa3" role="3clFbx">
                  <node concept="3clFbF" id="6TxWhgAyqqH" role="3cqZAp">
                    <node concept="1rXfSq" id="6TxWhgAyqqF" role="3clFbG">
                      <ref role="37wK5l" node="6TxWhgAxJqL" resolve="triggerEnabled" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="6TxWhgA6MFy" role="3cqZAp">
                    <node concept="1rXfSq" id="6TxWhgA6MFw" role="3clFbG">
                      <ref role="37wK5l" node="6TxWhg_Bnkz" resolve="update" />
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="1$ZRmkX9ej$" role="3clFbw">
                  <node concept="3fqX7Q" id="1$ZRmkX9ejD" role="3uHU7B">
                    <node concept="2OqwBi" id="1$ZRmkX9ejE" role="3fr31v">
                      <node concept="37vLTw" id="2BHiRxgm7Hw" role="2Oq$k0">
                        <ref role="3cqZAo" node="6TxWhgA6eG6" resolve="e" />
                      </node>
                      <node concept="liA8E" id="1$ZRmkX9ejG" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~MouseEvent.isPopupTrigger()" resolve="isPopupTrigger" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="1$ZRmkX9ejH" role="3uHU7w">
                    <node concept="2OqwBi" id="1$ZRmkX9ejJ" role="3uHU7w">
                      <node concept="37vLTw" id="2BHiRxglwzb" role="2Oq$k0">
                        <ref role="3cqZAo" node="6TxWhgA6eG6" resolve="e" />
                      </node>
                      <node concept="liA8E" id="1$ZRmkX9ejL" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~MouseEvent.getButton()" resolve="getButton" />
                      </node>
                    </node>
                    <node concept="10M0yZ" id="1$ZRmkX9ejI" role="3uHU7B">
                      <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="6TxWhgA6eG6" role="1bW2Oz">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="6TxWhgA6gL1" role="1tU5fm">
                <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqHr" role="jymVt">
      <property role="TrG5h" value="uiSettingsChanged" />
      <node concept="3Tm1VV" id="6TxWhg_AqHs" role="1B3o_S" />
      <node concept="3cqZAl" id="6TxWhg_AqHu" role="3clF45" />
      <node concept="37vLTG" id="6TxWhg_AqHv" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="6TxWhg_AqHw" role="1tU5fm">
          <ref role="3uigEE" to="j936:~UISettings" resolve="UISettings" />
        </node>
        <node concept="2AHcQZ" id="6TxWhg_AqHx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6TxWhg_AqH_" role="3clF47">
        <node concept="3clFbF" id="6TxWhgA52wk" role="3cqZAp">
          <node concept="1rXfSq" id="6TxWhgA52wj" role="3clFbG">
            <ref role="37wK5l" node="6TxWhg_Bnkz" resolve="update" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqHB" role="jymVt">
      <property role="TrG5h" value="propertyChange" />
      <node concept="3Tm1VV" id="6TxWhg_AqHC" role="1B3o_S" />
      <node concept="3cqZAl" id="6TxWhg_AqHE" role="3clF45" />
      <node concept="37vLTG" id="6TxWhg_AqHF" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="6TxWhg_AqHG" role="1tU5fm">
          <ref role="3uigEE" to="mnlj:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="6TxWhg_AqHL" role="3clF47">
        <node concept="3clFbF" id="6TxWhgA55WF" role="3cqZAp">
          <node concept="1rXfSq" id="6TxWhgA55WE" role="3clFbG">
            <ref role="37wK5l" node="6TxWhg_Bnkz" resolve="update" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhgAxJqL" role="jymVt">
      <property role="TrG5h" value="triggerEnabled" />
      <node concept="3cqZAl" id="6TxWhgAxJqN" role="3clF45" />
      <node concept="3clFbS" id="6TxWhgAxJqO" role="3clF47">
        <node concept="3clFbF" id="6TxWhgAy53T" role="3cqZAp">
          <node concept="2OqwBi" id="6TxWhgAy6KU" role="3clFbG">
            <node concept="37vLTw" id="6TxWhgAy53S" role="2Oq$k0">
              <ref role="3cqZAo" node="6TxWhgAxla$" resolve="typecheckingEnabledBean" />
            </node>
            <node concept="liA8E" id="6TxWhgAy92Q" role="2OqNvi">
              <ref role="37wK5l" node="6TxWhgAx2bf" resolve="setTypecheckingEnabled" />
              <node concept="3fqX7Q" id="6TxWhgAyb8$" role="37wK5m">
                <node concept="2OqwBi" id="6TxWhgAyh0C" role="3fr31v">
                  <node concept="37vLTw" id="6TxWhgAyffP" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgAxla$" resolve="typecheckingEnabledBean" />
                  </node>
                  <node concept="liA8E" id="6TxWhgAyici" role="2OqNvi">
                    <ref role="37wK5l" node="6TxWhgAwRgP" resolve="isTypecheckingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="6TxWhg_Bhtw" role="jymVt">
      <property role="TrG5h" value="Panel" />
      <property role="2bfB8j" value="true" />
      <node concept="2tJIrI" id="6TxWhg_Bk1q" role="jymVt" />
      <node concept="312cEg" id="6TxWhgA7CGY" role="jymVt">
        <property role="TrG5h" value="label" />
        <node concept="3Tm6S6" id="6TxWhgA7CGW" role="1B3o_S" />
        <node concept="3uibUv" id="6TxWhgA7CGX" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
        </node>
      </node>
      <node concept="312cEg" id="6TxWhgA7Gut" role="jymVt">
        <property role="TrG5h" value="enabledIcon" />
        <node concept="3Tm6S6" id="6TxWhgA7Gur" role="1B3o_S" />
        <node concept="3uibUv" id="6TxWhgA7Gus" role="1tU5fm">
          <ref role="3uigEE" to="o35r:3WU9yfA8xAD" resolve="DynamicIcon" />
        </node>
      </node>
      <node concept="312cEg" id="6TxWhgA7Qbj" role="jymVt">
        <property role="TrG5h" value="disabledIcon" />
        <node concept="3Tm6S6" id="6TxWhgA7Qbh" role="1B3o_S" />
        <node concept="3uibUv" id="6TxWhgA7Qbi" role="1tU5fm">
          <ref role="3uigEE" to="o35r:3WU9yfA8xAD" resolve="DynamicIcon" />
        </node>
      </node>
      <node concept="2tJIrI" id="6TxWhgA7VSn" role="jymVt" />
      <node concept="3clFbW" id="6TxWhg_BkMR" role="jymVt">
        <node concept="3cqZAl" id="6TxWhg_BkMT" role="3clF45" />
        <node concept="3clFbS" id="6TxWhg_BkMU" role="3clF47">
          <node concept="3clFbF" id="6TxWhgAb$fW" role="3cqZAp">
            <node concept="1rXfSq" id="6TxWhgAb$fU" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="6TxWhgAbIA7" role="37wK5m">
                <ref role="37wK5l" to="g1qu:~JBUI$Borders.empty()" resolve="empty" />
                <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6iqrHsKQ5GI" role="3cqZAp">
            <node concept="3cpWsn" id="6iqrHsKQ5GL" role="3cpWs9">
              <property role="TrG5h" value="framedStyle" />
              <node concept="10P_77" id="6iqrHsKQ5GG" role="1tU5fm" />
              <node concept="22lmx$" id="6iqrHsKQveB" role="33vP2m">
                <node concept="3fqX7Q" id="6iqrHsKQvCQ" role="3uHU7w">
                  <node concept="2YIFZM" id="6iqrHsKQx7K" role="3fr31v">
                    <ref role="37wK5l" to="9w4s:~SystemProperties.getBooleanProperty(java.lang.String,boolean)" resolve="getBooleanProperty" />
                    <ref role="1Pybhc" to="9w4s:~SystemProperties" resolve="SystemProperties" />
                    <node concept="Xl_RD" id="6iqrHsKQxRj" role="37wK5m">
                      <property role="Xl_RC" value="idea.ui.mem.use" />
                    </node>
                    <node concept="3clFbT" id="6iqrHsKQzMq" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="10M0yZ" id="6iqrHsKQu7T" role="3uHU7B">
                  <ref role="3cqZAo" to="zn9m:~SystemInfo.isMac" resolve="isMac" />
                  <ref role="1PxDUh" to="zn9m:~SystemInfo" resolve="SystemInfo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6iqrHsKPHwZ" role="3cqZAp">
            <node concept="3cpWsn" id="6iqrHsKPHx0" role="3cpWs9">
              <property role="TrG5h" value="labelFont" />
              <node concept="3uibUv" id="6iqrHsKPHwY" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
              </node>
              <node concept="2YIFZM" id="6iqrHsKPHx1" role="33vP2m">
                <ref role="37wK5l" to="g1qu:~UIUtil.getLabelFont()" resolve="getLabelFont" />
                <ref role="1Pybhc" to="g1qu:~UIUtil" resolve="UIUtil" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6TxWhgAk_4U" role="3cqZAp">
            <node concept="3cpWsn" id="6TxWhgAk_4V" role="3cpWs9">
              <property role="TrG5h" value="textFont" />
              <node concept="3uibUv" id="6TxWhgAktyU" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
              </node>
              <node concept="3K4zz7" id="6TxWhgAk_4W" role="33vP2m">
                <node concept="2OqwBi" id="6TxWhgAk_4X" role="3K4E3e">
                  <node concept="37vLTw" id="6TxWhgAk_4Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="6iqrHsKPHx0" resolve="labelFont" />
                  </node>
                  <node concept="liA8E" id="6TxWhgAk_4Z" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Font.deriveFont(float)" resolve="deriveFont" />
                    <node concept="2$xPTn" id="6TxWhgAk_50" role="37wK5m">
                      <property role="2$xPTl" value="11.0f" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6TxWhgAk_51" role="3K4GZi">
                  <ref role="3cqZAo" node="6iqrHsKPHx0" resolve="labelFont" />
                </node>
                <node concept="37vLTw" id="6TxWhgAk_52" role="3K4Cdx">
                  <ref role="3cqZAo" node="6iqrHsKQ5GL" resolve="framedStyle" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4ot3PHQS3m3" role="3cqZAp">
            <node concept="3cpWsn" id="4ot3PHQS3m4" role="3cpWs9">
              <property role="TrG5h" value="iconFont" />
              <node concept="3uibUv" id="4ot3PHQS3m5" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
              </node>
              <node concept="2OqwBi" id="4ot3PHQS3m7" role="33vP2m">
                <node concept="37vLTw" id="4ot3PHQS3m8" role="2Oq$k0">
                  <ref role="3cqZAo" node="6iqrHsKPHx0" resolve="labelFont" />
                </node>
                <node concept="liA8E" id="4ot3PHQS3m9" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Font.deriveFont(float)" resolve="deriveFont" />
                  <node concept="2$xPTn" id="4ot3PHQS3ma" role="37wK5m">
                    <property role="2$xPTl" value="8.0f" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhgA7GuC" role="3cqZAp">
            <node concept="37vLTI" id="6TxWhgA7GuD" role="3clFbG">
              <node concept="2OqwBi" id="6TxWhgA7GuE" role="37vLTJ">
                <node concept="Xjq3P" id="6TxWhgA7GuF" role="2Oq$k0" />
                <node concept="2OwXpG" id="6TxWhgA7GuG" role="2OqNvi">
                  <ref role="2Oxat5" node="6TxWhgA7Gut" resolve="enabledIcon" />
                </node>
              </node>
              <node concept="2ShNRf" id="6TxWhgA7GuH" role="37vLTx">
                <node concept="1pGfFk" id="6TxWhgA7GuI" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o35r:6TxWhg_OIpy" resolve="DynamicIcon" />
                  <node concept="Xl_RD" id="6TxWhgA7GuJ" role="37wK5m">
                    <property role="Xl_RC" value="CR" />
                  </node>
                  <node concept="10M0yZ" id="6TxWhgA7GuK" role="37wK5m">
                    <ref role="3cqZAo" to="lzb2:~JBColor.DARK_GRAY" resolve="DARK_GRAY" />
                    <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  </node>
                  <node concept="10M0yZ" id="6TxWhgA7GuL" role="37wK5m">
                    <ref role="3cqZAo" to="exr9:~MPSColors.PINK" resolve="PINK" />
                    <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  </node>
                  <node concept="37vLTw" id="6TxWhgAkXf8" role="37wK5m">
                    <ref role="3cqZAo" node="4ot3PHQS3m4" resolve="iconFont" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhgA7Qbu" role="3cqZAp">
            <node concept="37vLTI" id="6TxWhgA7Qbv" role="3clFbG">
              <node concept="2OqwBi" id="6TxWhgA7Qbw" role="37vLTJ">
                <node concept="Xjq3P" id="6TxWhgA7Qbx" role="2Oq$k0" />
                <node concept="2OwXpG" id="6TxWhgA7Qby" role="2OqNvi">
                  <ref role="2Oxat5" node="6TxWhgA7Qbj" resolve="disabledIcon" />
                </node>
              </node>
              <node concept="2ShNRf" id="6TxWhgA7Qbz" role="37vLTx">
                <node concept="1pGfFk" id="6TxWhgA7Qb$" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o35r:6TxWhg_OIpy" resolve="DynamicIcon" />
                  <node concept="Xl_RD" id="6TxWhgA7Qb_" role="37wK5m">
                    <property role="Xl_RC" value="CR" />
                  </node>
                  <node concept="10M0yZ" id="6TxWhgA7QbA" role="37wK5m">
                    <ref role="3cqZAo" to="lzb2:~JBColor.DARK_GRAY" resolve="DARK_GRAY" />
                    <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  </node>
                  <node concept="10M0yZ" id="6TxWhgAcCa0" role="37wK5m">
                    <ref role="3cqZAo" to="lzb2:~JBColor.LIGHT_GRAY" resolve="LIGHT_GRAY" />
                    <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  </node>
                  <node concept="37vLTw" id="4ot3PHQTjFF" role="37wK5m">
                    <ref role="3cqZAo" node="4ot3PHQS3m4" resolve="iconFont" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhgA7CH9" role="3cqZAp">
            <node concept="37vLTI" id="6TxWhgA7CHa" role="3clFbG">
              <node concept="2OqwBi" id="6TxWhgA7CHb" role="37vLTJ">
                <node concept="Xjq3P" id="6TxWhgA7CHc" role="2Oq$k0" />
                <node concept="2OwXpG" id="6TxWhgA7CHd" role="2OqNvi">
                  <ref role="2Oxat5" node="6TxWhgA7CGY" resolve="label" />
                </node>
              </node>
              <node concept="2ShNRf" id="6TxWhgA7CHe" role="37vLTx">
                <node concept="1pGfFk" id="6TxWhgA7CHf" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String,javax.swing.Icon,int)" resolve="JLabel" />
                  <node concept="1rXfSq" id="6TxWhgA7CHg" role="37wK5m">
                    <ref role="37wK5l" node="6TxWhg_AqGF" resolve="getText" />
                  </node>
                  <node concept="37vLTw" id="6TxWhgA7CHh" role="37wK5m">
                    <ref role="3cqZAo" node="6TxWhgA7Gut" resolve="enabledIcon" />
                  </node>
                  <node concept="10M0yZ" id="6TxWhgA7CHi" role="37wK5m">
                    <ref role="3cqZAo" to="dxuu:~SwingConstants.LEFT" resolve="LEFT" />
                    <ref role="1PxDUh" to="dxuu:~SwingConstants" resolve="SwingConstants" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhg_Gn0F" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhg_GoEw" role="3clFbG">
              <node concept="37vLTw" id="6TxWhg_Gn0D" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhg_Gs3b" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JLabel.setIconTextGap(int)" resolve="setIconTextGap" />
                <node concept="3cmrfG" id="6TxWhg_GuZU" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhgAad7l" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhgAaf6Q" role="3clFbG">
              <node concept="37vLTw" id="6TxWhgAad7j" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhgAakIG" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                <node concept="2YIFZM" id="6TxWhgAtJdd" role="37wK5m">
                  <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                  <ref role="37wK5l" to="g1qu:~JBUI$Borders.empty(int,int,int,int)" resolve="empty" />
                  <node concept="3cmrfG" id="6TxWhgAtJde" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="6TxWhgAtT$v" role="37wK5m">
                    <property role="3cmrfH" value="4" />
                  </node>
                  <node concept="3cmrfG" id="6TxWhgAtXfF" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="6TxWhgAtY2R" role="37wK5m">
                    <property role="3cmrfH" value="4" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3$i23YcAWZ3" role="3cqZAp">
            <node concept="2OqwBi" id="3$i23YcB2WE" role="3clFbG">
              <node concept="37vLTw" id="6TxWhg_DqRr" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="3$i23YcB8Xx" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
                <node concept="37vLTw" id="6TxWhgAk_53" role="37wK5m">
                  <ref role="3cqZAo" node="6TxWhgAk_4V" resolve="textFont" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhg_FhUs" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhg_FmWp" role="3clFbG">
              <node concept="37vLTw" id="6TxWhg_FhUq" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhg_FpOR" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
                <node concept="2OqwBi" id="6TxWhg_Fxm_" role="37wK5m">
                  <node concept="37vLTw" id="6TxWhg_Fwum" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
                  </node>
                  <node concept="liA8E" id="6TxWhg_F$r1" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhg_DF4e" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhg_DFJQ" role="3clFbG">
              <node concept="37vLTw" id="6TxWhg_DF4c" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhg_DHXo" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String)" resolve="setText" />
                <node concept="1rXfSq" id="6TxWhg_DPSm" role="37wK5m">
                  <ref role="37wK5l" node="6TxWhg_AqGF" resolve="getText" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhg_DVgl" role="3cqZAp">
            <node concept="1rXfSq" id="6TxWhg_DVgj" role="3clFbG">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTw" id="6TxWhg_E1Go" role="37wK5m">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6TxWhg_F_jU" role="3cqZAp" />
          <node concept="3clFbF" id="5J8_5nlyCOH" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyYkY" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~JComponent.putClientProperty(java.lang.Object,java.lang.Object)" resolve="putClientProperty" />
              <node concept="10M0yZ" id="5J8_5nlyCOJ" role="37wK5m">
                <ref role="1PxDUh" to="g1qu:~UIUtil" resolve="UIUtil" />
                <ref role="3cqZAo" to="g1qu:~UIUtil.CENTER_TOOLTIP_DEFAULT" resolve="CENTER_TOOLTIP_DEFAULT" />
              </node>
              <node concept="10M0yZ" id="5J8_5nlyCOK" role="37wK5m">
                <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5J8_5nlyCOL" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzbKp" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~JComponent.setToolTipText(java.lang.String)" resolve="setToolTipText" />
              <node concept="1rXfSq" id="6TxWhg_FPB4" role="37wK5m">
                <ref role="37wK5l" node="6TxWhg_Egh4" resolve="getToolTipText" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5J8_5nlyCOQ" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyZ2b" role="3clFbG">
              <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
              <node concept="2ShNRf" id="5J8_5nlyCOS" role="37wK5m">
                <node concept="YeOm9" id="5J8_5nlyCOT" role="2ShVmc">
                  <node concept="1Y3b0j" id="5J8_5nlyCOU" role="YeSDq">
                    <property role="TrG5h" value="" />
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
                    <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
                    <node concept="3clFb_" id="5J8_5nlyCOV" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="mousePressed" />
                      <property role="DiZV1" value="false" />
                      <node concept="2AHcQZ" id="5J8_5nlyCP8" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                      <node concept="3clFbS" id="5J8_5nlyCP0" role="3clF47">
                        <node concept="3clFbF" id="5J8_5nlyCP1" role="3cqZAp">
                          <node concept="2OqwBi" id="5J8_5nlyCP2" role="3clFbG">
                            <node concept="liA8E" id="5J8_5nlyCP3" role="2OqNvi">
                              <ref role="37wK5l" to="9w4s:~Consumer.consume(java.lang.Object)" resolve="consume" />
                              <node concept="37vLTw" id="2BHiRxglIe5" role="37wK5m">
                                <ref role="3cqZAo" node="5J8_5nlyCOY" resolve="e" />
                              </node>
                            </node>
                            <node concept="1rXfSq" id="6TxWhgA9$Md" role="2Oq$k0">
                              <ref role="37wK5l" node="6TxWhg_AqHe" resolve="getClickConsumer" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="5J8_5nlyCOY" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="5J8_5nlyCOZ" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="5J8_5nlyCOW" role="1B3o_S" />
                      <node concept="3cqZAl" id="5J8_5nlyCOX" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6TxWhg_F_kI" role="3cqZAp" />
          <node concept="3clFbF" id="6TxWhg_Eam4" role="3cqZAp">
            <node concept="1rXfSq" id="6TxWhg_Eam2" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="6TxWhg_Efox" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6TxWhg_BlyZ" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6TxWhg_Blks" role="jymVt" />
      <node concept="3clFb_" id="6TxWhg_BI_3" role="jymVt">
        <property role="TrG5h" value="update" />
        <node concept="3cqZAl" id="6TxWhg_BI_5" role="3clF45" />
        <node concept="3clFbS" id="6TxWhg_BI_6" role="3clF47">
          <node concept="3clFbF" id="6TxWhgA81tu" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhgA83xh" role="3clFbG">
              <node concept="37vLTw" id="6TxWhgA81tt" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhgA86LR" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JLabel.setIcon(javax.swing.Icon)" resolve="setIcon" />
                <node concept="3K4zz7" id="6TxWhgA8ewY" role="37wK5m">
                  <node concept="37vLTw" id="6TxWhgA8jtN" role="3K4E3e">
                    <ref role="3cqZAo" node="6TxWhgA7Gut" resolve="enabledIcon" />
                  </node>
                  <node concept="37vLTw" id="6TxWhgA8q5h" role="3K4GZi">
                    <ref role="3cqZAo" node="6TxWhgA7Qbj" resolve="disabledIcon" />
                  </node>
                  <node concept="2OqwBi" id="6TxWhgAyBdZ" role="3K4Cdx">
                    <node concept="37vLTw" id="6TxWhgA8bIm" role="2Oq$k0">
                      <ref role="3cqZAo" node="6TxWhgAxla$" resolve="typecheckingEnabledBean" />
                    </node>
                    <node concept="liA8E" id="6TxWhgAyBLr" role="2OqNvi">
                      <ref role="37wK5l" node="6TxWhgAwRgP" resolve="isTypecheckingEnabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhgAixac" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhgAixad" role="3clFbG">
              <node concept="37vLTw" id="6TxWhgAixae" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhgAixaf" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String)" resolve="setText" />
                <node concept="1rXfSq" id="6TxWhgAixag" role="37wK5m">
                  <ref role="37wK5l" node="6TxWhg_AqGF" resolve="getText" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6TxWhg_BKGI" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6TxWhgA8rcX" role="jymVt" />
      <node concept="3clFb_" id="6TxWhg_Egh4" role="jymVt">
        <property role="TrG5h" value="getToolTipText" />
        <node concept="3Tm1VV" id="6TxWhg_Egh5" role="1B3o_S" />
        <node concept="3uibUv" id="6TxWhg_Egh7" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="6TxWhg_Egha" role="3clF47">
          <node concept="3clFbF" id="6TxWhg_ErCn" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhg_Ev7a" role="3clFbG">
              <node concept="Xjq3P" id="6TxWhg_Eu7j" role="2Oq$k0">
                <ref role="1HBi2w" node="6TxWhg_AhBw" resolve="TypecheckingWidget" />
              </node>
              <node concept="liA8E" id="6TxWhg_EvSi" role="2OqNvi">
                <ref role="37wK5l" node="6TxWhg_AqH1" resolve="getTooltipText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6TxWhg_Eghb" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6TxWhg_Blky" role="jymVt" />
      <node concept="3uibUv" id="6TxWhg_BjLq" role="1zkMxy">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
      <node concept="3Tm6S6" id="6TxWhg_BKlI" role="1B3o_S" />
    </node>
  </node>
  <node concept="tC5Ba" id="2Rw7mr8T72C">
    <property role="TrG5h" value="TypecheckingEditorGroup" />
    <property role="3GE5qa" value="action" />
    <node concept="ftmFs" id="2Rw7mr8T79R" role="ftER_">
      <node concept="2a7GMi" id="1PN9XOHMi4d" role="ftvYc" />
      <node concept="tCFHf" id="1PN9XOH07Ge" role="ftvYc">
        <ref role="tCJdB" node="4vBwiiVgYfo" resolve="ShowNodeType" />
      </node>
      <node concept="tCFHf" id="7WKNeR8U80T" role="ftvYc">
        <ref role="tCJdB" node="7WKNeR8Q7e5" resolve="LaunchTypecheckingQuery" />
      </node>
      <node concept="tCFHf" id="3IIf9O_oSqi" role="ftvYc">
        <ref role="tCJdB" node="3IIf9O_okk0" resolve="LaunchTypecheckingQueryWithTrace" />
      </node>
      <node concept="tCFHf" id="3YJ7yg2O3a6" role="ftvYc">
        <ref role="tCJdB" node="3YJ7yg2LgPI" resolve="FindApplicableTemplates" />
      </node>
      <node concept="2a7GMi" id="1PN9XOGZRUO" role="ftvYc" />
    </node>
    <node concept="tT9cl" id="2Rw7mr8T789" role="2f5YQi">
      <ref role="tU$_T" to="tprs:1GlxrIveqTo" resolve="DebugActions" />
      <ref role="2f8Tey" to="tprs:6f0maSpvK1u" resolve="types" />
    </node>
  </node>
  <node concept="312cEu" id="4ncXOjKRu7g">
    <property role="TrG5h" value="CoderulesIdeaPlugin" />
    <node concept="2tJIrI" id="4ncXOjKRu86" role="jymVt" />
    <node concept="2YIFZL" id="4ncXOjKRZI$" role="jymVt">
      <property role="TrG5h" value="isInstalled" />
      <node concept="10P_77" id="4ncXOjKS0k$" role="3clF45" />
      <node concept="3Tm1VV" id="4ncXOjKRZIB" role="1B3o_S" />
      <node concept="3clFbS" id="4ncXOjKRZIC" role="3clF47">
        <node concept="3clFbF" id="sn3u4sB5RG" role="3cqZAp">
          <node concept="2YIFZM" id="sn3u4sB5Ll" role="3clFbG">
            <ref role="37wK5l" to="ctgy:~PluginManagerCore.isPluginInstalled(com.intellij.openapi.extensions.PluginId)" resolve="isPluginInstalled" />
            <ref role="1Pybhc" to="ctgy:~PluginManagerCore" resolve="PluginManagerCore" />
            <node concept="2YIFZM" id="sn3u4sB5Lm" role="37wK5m">
              <ref role="37wK5l" to="9ti4:~PluginId.getId(java.lang.String)" resolve="getId" />
              <ref role="1Pybhc" to="9ti4:~PluginId" resolve="PluginId" />
              <node concept="Xl_RD" id="sn3u4sB5Ln" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.coderules" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ncXOjKRu8b" role="jymVt" />
    <node concept="3Tm1VV" id="4ncXOjKRu7h" role="1B3o_S" />
  </node>
</model>

