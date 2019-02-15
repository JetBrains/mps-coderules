<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.coderules.macro)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="2" />
  </languages>
  <imports>
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="9x2e" ref="r:0730b0d1-7e2f-4982-aac3-8069c5060a9c(jetbrains.mps.lang.typesystem2.reporting)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1pPth$m7IVF">
    <property role="TrG5h" value="AbstractMacroTable" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4nxCIBqhYxW" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m7ZRy" role="jymVt">
      <property role="TrG5h" value="name" />
      <property role="1EzhhJ" value="true" />
      <node concept="17QB3L" id="1pPth$m7ZX$" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$m7ZR_" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7ZRA" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="18kNIl1vCHT" role="jymVt" />
    <node concept="3Tm1VV" id="1pPth$m7IVG" role="1B3o_S" />
    <node concept="3clFb_" id="4KRwoelAtxl" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="macroTemplate" />
      <node concept="3uibUv" id="4KRwoelAyo8" role="3clF45">
        <ref role="3uigEE" node="1hX44vNnjJ$" resolve="MacroTemplate" />
        <node concept="16syzq" id="4KRwoelDRZs" role="11_B2D">
          <ref role="16sUi3" node="4KRwoelDRX0" resolve="Cfg" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4KRwoelAtxp" role="1B3o_S" />
      <node concept="3clFbS" id="4KRwoelAtxq" role="3clF47" />
      <node concept="37vLTG" id="4KRwoelAyUd" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="4KRwoelAyUc" role="1tU5fm" />
      </node>
      <node concept="16euLQ" id="4KRwoelDRX0" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="1eKXYsjxDj6" role="3ztrMU">
          <ref role="3uigEE" node="1eKXYsjvsOy" resolve="MacroTemplate.Config" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MEOIDEgpw7" role="jymVt" />
    <node concept="3clFb_" id="6UWSvq4Vn1v" role="jymVt">
      <property role="TrG5h" value="allMacroConcepts" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="6UWSvq4Vn1w" role="3clF45">
        <node concept="3bZ5Sz" id="6UWSvq4VpUS" role="3O5elw" />
      </node>
      <node concept="3Tm1VV" id="6UWSvq4Vn1y" role="1B3o_S" />
      <node concept="3clFbS" id="6UWSvq4Vn1z" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6UWSvq4Vn68" role="jymVt" />
    <node concept="3clFb_" id="4MEOIDEgpuf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="macroTemplate" />
      <node concept="3uibUv" id="4MEOIDEgpug" role="3clF45">
        <ref role="3uigEE" node="1hX44vNnjJ$" resolve="MacroTemplate" />
        <node concept="16syzq" id="4MEOIDEgpuh" role="11_B2D">
          <ref role="16sUi3" node="4MEOIDEgpum" resolve="Cfg" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MEOIDEgpui" role="1B3o_S" />
      <node concept="3clFbS" id="4MEOIDEgpuj" role="3clF47" />
      <node concept="16euLQ" id="4MEOIDEgpum" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="4MEOIDEgpun" role="3ztrMU">
          <ref role="3uigEE" node="1eKXYsjvsOy" resolve="MacroTemplate.Config" />
        </node>
      </node>
      <node concept="37vLTG" id="4MEOIDEhHGm" role="3clF46">
        <property role="TrG5h" value="templateId" />
        <node concept="3uibUv" id="4MEOIDEhHGl" role="1tU5fm">
          <ref role="3uigEE" node="4MEOIDEhyPY" resolve="MacroTemplate.ID" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MEOIDEWLmE" role="jymVt" />
    <node concept="3clFb_" id="4MEOIDEWLkY" role="jymVt">
      <property role="TrG5h" value="allMacroTemplateIds" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="4MEOIDEWLkZ" role="3clF45">
        <node concept="3uibUv" id="4MEOIDEWSWB" role="3O5elw">
          <ref role="3uigEE" node="4MEOIDEhyPY" resolve="MacroTemplate.ID" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MEOIDEWLl1" role="1B3o_S" />
      <node concept="3clFbS" id="4MEOIDEWLl2" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4KRwoelAvaR" role="jymVt" />
  </node>
  <node concept="312cEu" id="2N2MQGCMVqD">
    <property role="TrG5h" value="AbstractMacroManifest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6UWSvq4Vu5u" role="jymVt" />
    <node concept="3clFb_" id="6UWSvq4Vu5V" role="jymVt">
      <property role="TrG5h" value="macroTables" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="6UWSvq4Vu6$" role="3clF45">
        <node concept="3uibUv" id="6UWSvq4Vu7$" role="3O5elw">
          <ref role="3uigEE" node="1pPth$m7IVF" resolve="AbstractMacroTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6UWSvq4Vu5Y" role="1B3o_S" />
      <node concept="3clFbS" id="6UWSvq4Vu5Z" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2N2MQGCMNOd" role="jymVt" />
    <node concept="3Tm1VV" id="2N2MQGCMVqE" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1hX44vMVmqt">
    <property role="TrG5h" value="Getter" />
    <node concept="2tJIrI" id="1hX44vMVmqR" role="jymVt" />
    <node concept="3clFb_" id="1hX44vMVmr4" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="1hX44vMVmsA" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1hX44vMVmsW" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="1hX44vMVmva" role="3clF45">
        <ref role="16sUi3" node="1hX44vMVmuy" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="1hX44vMVmr7" role="1B3o_S" />
      <node concept="3clFbS" id="1hX44vMVmr8" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1hX44vMVmqW" role="jymVt" />
    <node concept="3Tm1VV" id="1hX44vMVmqu" role="1B3o_S" />
    <node concept="16euLQ" id="1hX44vMVmuy" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="1hX44vNlvEV">
    <property role="TrG5h" value="AbstractMacroTemplate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1hX44vNlvFZ" role="jymVt" />
    <node concept="3HP615" id="1eKXYsjvSZy" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="MacroTemplateAction" />
      <node concept="3clFb_" id="1eKXYsjvTXf" role="jymVt">
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="1eKXYsjvTZZ" role="3clF46">
          <property role="TrG5h" value="template" />
          <node concept="3uibUv" id="1eKXYsjvU1s" role="1tU5fm">
            <ref role="3uigEE" node="1hX44vNnjJ$" resolve="MacroTemplate" />
            <node concept="16syzq" id="1eKXYsjvU6M" role="11_B2D">
              <ref role="16sUi3" node="1eKXYsjvTOg" resolve="Cfg" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="1eKXYsjwskj" role="3clF45">
          <ref role="16sUi3" node="1eKXYsjws1d" resolve="R" />
        </node>
        <node concept="3Tm1VV" id="1eKXYsjvTXi" role="1B3o_S" />
        <node concept="3clFbS" id="1eKXYsjvTXj" role="3clF47" />
        <node concept="16euLQ" id="1eKXYsjvTOg" role="16eVyc">
          <property role="TrG5h" value="Cfg" />
          <node concept="3uibUv" id="1eKXYsjvTPL" role="3ztrMU">
            <ref role="3uigEE" node="1eKXYsjvsOy" resolve="MacroTemplate.Config" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1eKXYsjxjKN" role="1B3o_S" />
      <node concept="16euLQ" id="1eKXYsjws1d" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
    </node>
    <node concept="2tJIrI" id="60NbDCXFVbR" role="jymVt" />
    <node concept="3clFb_" id="1eKXYsjvsWg" role="jymVt">
      <property role="TrG5h" value="withInputNode" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="1eKXYsjvsWh" role="3clF46">
        <property role="TrG5h" value="inputNode" />
        <node concept="3Tqbb2" id="1eKXYsjvsWi" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="1eKXYsjvtcb" role="3clF45">
        <ref role="16sUi3" node="1hX44vNlw2n" resolve="Cfg" />
      </node>
      <node concept="3Tmbuc" id="60NbDCXHdjy" role="1B3o_S" />
      <node concept="3clFbS" id="1eKXYsjvsWl" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MEOIDG7xoH" role="jymVt" />
    <node concept="3Tm1VV" id="1hX44vNlvEW" role="1B3o_S" />
    <node concept="16euLQ" id="1hX44vNlw2n" role="16eVyc">
      <property role="TrG5h" value="Cfg" />
      <node concept="3uibUv" id="1eKXYsjvytI" role="3ztrMU">
        <ref role="3uigEE" node="1eKXYsjvsOy" resolve="MacroTemplate.Config" />
      </node>
    </node>
    <node concept="3uibUv" id="1hX44vNnjSd" role="EKbjA">
      <ref role="3uigEE" node="1hX44vNnjJ$" resolve="MacroTemplate" />
      <node concept="16syzq" id="1eKXYsjvyP6" role="11_B2D">
        <ref role="16sUi3" node="1hX44vNlw2n" resolve="Cfg" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1hX44vNnjJ$">
    <property role="TrG5h" value="MacroTemplate" />
    <node concept="2tJIrI" id="1hX44vNnkEr" role="jymVt" />
    <node concept="3HP615" id="1eKXYsjvsOy" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Config" />
      <node concept="3Tm1VV" id="1eKXYsjvsOz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4MEOIDEhyKf" role="jymVt" />
    <node concept="312cEu" id="4MEOIDEhyPY" role="jymVt">
      <property role="TrG5h" value="ID" />
      <node concept="2tJIrI" id="4MEOIDEhz0j" role="jymVt" />
      <node concept="2YIFZL" id="4MEOIDEhz4d" role="jymVt">
        <property role="TrG5h" value="forReference" />
        <node concept="37vLTG" id="4MEOIDEhznZ" role="3clF46">
          <property role="TrG5h" value="ref" />
          <node concept="3uibUv" id="4MEOIDEipRS" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
        <node concept="3uibUv" id="4MEOIDEhzcj" role="3clF45">
          <ref role="3uigEE" node="4MEOIDEhyPY" resolve="MacroTemplate.ID" />
        </node>
        <node concept="3Tm1VV" id="4MEOIDEhz4g" role="1B3o_S" />
        <node concept="3clFbS" id="4MEOIDEhz4h" role="3clF47">
          <node concept="3clFbF" id="4MEOIDEhACe" role="3cqZAp">
            <node concept="2ShNRf" id="4MEOIDEhACa" role="3clFbG">
              <node concept="1pGfFk" id="4MEOIDEhARU" role="2ShVmc">
                <ref role="37wK5l" node="4MEOIDEh_LW" resolve="MacroTemplate.ID" />
                <node concept="2OqwBi" id="4MEOIDEhAWq" role="37wK5m">
                  <node concept="37vLTw" id="4MEOIDEhAYV" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MEOIDEhznZ" resolve="ref" />
                  </node>
                  <node concept="liA8E" id="4MEOIDEhAWs" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEh$RD" role="jymVt" />
      <node concept="2YIFZL" id="4MEOIDEip_0" role="jymVt">
        <property role="TrG5h" value="forNode" />
        <node concept="37vLTG" id="4MEOIDEip_1" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="4MEOIDEip_2" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="4MEOIDEip_3" role="3clF45">
          <ref role="3uigEE" node="4MEOIDEhyPY" resolve="MacroTemplate.ID" />
        </node>
        <node concept="3Tm1VV" id="4MEOIDEip_4" role="1B3o_S" />
        <node concept="3clFbS" id="4MEOIDEip_5" role="3clF47">
          <node concept="3clFbF" id="4MEOIDEip_6" role="3cqZAp">
            <node concept="2ShNRf" id="4MEOIDEip_7" role="3clFbG">
              <node concept="1pGfFk" id="4MEOIDEip_8" role="2ShVmc">
                <ref role="37wK5l" node="4MEOIDEh_LW" resolve="MacroTemplate.ID" />
                <node concept="2OqwBi" id="4MEOIDEip_9" role="37wK5m">
                  <node concept="2JrnkZ" id="4MEOIDEip_b" role="2Oq$k0">
                    <node concept="37vLTw" id="4MEOIDEip_c" role="2JrQYb">
                      <ref role="3cqZAo" node="4MEOIDEip_1" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4MEOIDEip_e" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEip$Z" role="jymVt" />
      <node concept="3clFb_" id="4MEOIDEi5VO" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4MEOIDEi5VP" role="1B3o_S" />
        <node concept="17QB3L" id="5hSMZ_lGZu6" role="3clF45" />
        <node concept="3clFbS" id="4MEOIDEi5VS" role="3clF47">
          <node concept="3clFbF" id="4MEOIDEi6jx" role="3cqZAp">
            <node concept="2OqwBi" id="4MEOIDEi6qK" role="3clFbG">
              <node concept="37vLTw" id="4MEOIDEi6jw" role="2Oq$k0">
                <ref role="3cqZAo" node="4MEOIDEh_rV" resolve="nodeId" />
              </node>
              <node concept="liA8E" id="4MEOIDEi6Bi" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4MEOIDEi5VT" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEi65J" role="jymVt" />
      <node concept="3clFbW" id="4MEOIDEh_LW" role="jymVt">
        <node concept="37vLTG" id="4MEOIDEh_Rv" role="3clF46">
          <property role="TrG5h" value="nodeId" />
          <node concept="3uibUv" id="4MEOIDEh_Tz" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
        <node concept="3cqZAl" id="4MEOIDEh_LY" role="3clF45" />
        <node concept="3Tm6S6" id="4MEOIDEh_Rg" role="1B3o_S" />
        <node concept="3clFbS" id="4MEOIDEh_M0" role="3clF47">
          <node concept="3clFbF" id="4MEOIDEhA70" role="3cqZAp">
            <node concept="37vLTI" id="4MEOIDEhAvZ" role="3clFbG">
              <node concept="37vLTw" id="4MEOIDEhA$B" role="37vLTx">
                <ref role="3cqZAo" node="4MEOIDEh_Rv" resolve="nodeId" />
              </node>
              <node concept="2OqwBi" id="4MEOIDEhAba" role="37vLTJ">
                <node concept="Xjq3P" id="4MEOIDEhA6Z" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MEOIDEhAlD" role="2OqNvi">
                  <ref role="2Oxat5" node="4MEOIDEh_rV" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEh_GM" role="jymVt" />
      <node concept="312cEg" id="4MEOIDEh_rV" role="jymVt">
        <property role="TrG5h" value="nodeId" />
        <node concept="3Tm6S6" id="4MEOIDEh_rW" role="1B3o_S" />
        <node concept="3uibUv" id="4MEOIDEh_AW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEhA0P" role="jymVt" />
      <node concept="3Tm1VV" id="4MEOIDEhyPZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1eKXYsjvsN9" role="jymVt" />
    <node concept="3clFb_" id="1eKXYsjvsWn" role="jymVt">
      <property role="TrG5h" value="withArgs" />
      <node concept="37vLTG" id="1eKXYsjvsWo" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="1eKXYsjvsWp" role="1tU5fm">
          <node concept="3uibUv" id="1eKXYsjvsWq" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="1eKXYsjvtmV" role="3clF45">
        <ref role="16sUi3" node="1eKXYsjvsL$" resolve="Cfg" />
      </node>
      <node concept="3Tm1VV" id="1eKXYsjvsWs" role="1B3o_S" />
      <node concept="3clFbS" id="1eKXYsjvsWt" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MEOIDG7Abc" role="jymVt" />
    <node concept="3clFb_" id="60NbDCXG$nh" role="jymVt">
      <property role="TrG5h" value="doExpand" />
      <node concept="3uibUv" id="60NbDCXG$ni" role="3clF45">
        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="60NbDCXG$nj" role="1B3o_S" />
      <node concept="3clFbS" id="60NbDCXG$nk" role="3clF47" />
      <node concept="37vLTG" id="60NbDCXG$nl" role="3clF46">
        <property role="TrG5h" value="inputNode" />
        <node concept="3Tqbb2" id="60NbDCXGA53" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="60NbDCXG$nn" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="1HWyn8j9WNN" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3uibUv" id="1HWyn8j9WQv" role="11_B2D">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="60NbDCXG$np" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="60NbDCXG$nq" role="1tU5fm">
          <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DOfTm$eR_X" role="jymVt" />
    <node concept="3clFb_" id="1eKXYsjvsWF" role="jymVt">
      <property role="TrG5h" value="doCall" />
      <node concept="3uibUv" id="1eKXYsjvsWG" role="3clF45">
        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="1eKXYsjvsWH" role="1B3o_S" />
      <node concept="3clFbS" id="1eKXYsjvsWI" role="3clF47" />
      <node concept="37vLTG" id="1eKXYsjvsWJ" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="16syzq" id="1eKXYsjvtUf" role="1tU5fm">
          <ref role="16sUi3" node="1eKXYsjvsL$" resolve="Cfg" />
        </node>
      </node>
      <node concept="37vLTG" id="1eKXYsjvsWL" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="1HWyn8j9WS8" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3uibUv" id="1HWyn8j9WVd" role="11_B2D">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1eKXYsjvsWN" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="1eKXYsjvsWO" role="1tU5fm">
          <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ya9Z$kGXv_" role="jymVt" />
    <node concept="3Tm1VV" id="1hX44vNnjJ_" role="1B3o_S" />
    <node concept="16euLQ" id="1eKXYsjvsL$" role="16eVyc">
      <property role="TrG5h" value="Cfg" />
      <node concept="3uibUv" id="1eKXYsjvsTm" role="3ztrMU">
        <ref role="3uigEE" node="1eKXYsjvsOy" resolve="MacroTemplate.Config" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="7IysFeAhp4q">
    <property role="TrG5h" value="Init" />
    <node concept="2tJIrI" id="7IysFeAhp9G" role="jymVt" />
    <node concept="3clFb_" id="7IysFeAhp5H" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="16syzq" id="7IysFeAhp7b" role="3clF45">
        <ref role="16sUi3" node="7IysFeAhp5y" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="7IysFeAhp5K" role="1B3o_S" />
      <node concept="3clFbS" id="7IysFeAhp5L" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7IysFeAhp93" role="jymVt" />
    <node concept="3Tm1VV" id="7IysFeAhp4r" role="1B3o_S" />
    <node concept="16euLQ" id="7IysFeAhp5y" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="4MEOIDFA48I">
    <property role="TrG5h" value="AbstractTermDeclaration" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4MEOIDFA4bd" role="jymVt" />
    <node concept="3clFb_" id="4MEOIDFA4bP" role="jymVt">
      <property role="TrG5h" value="getTerm" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="4MEOIDFA4e5" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
      </node>
      <node concept="3Tm1VV" id="4MEOIDFA4bS" role="1B3o_S" />
      <node concept="3clFbS" id="4MEOIDFA4bT" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MEOIDFA4bf" role="jymVt" />
    <node concept="3Tm1VV" id="4MEOIDFA48J" role="1B3o_S" />
  </node>
</model>

