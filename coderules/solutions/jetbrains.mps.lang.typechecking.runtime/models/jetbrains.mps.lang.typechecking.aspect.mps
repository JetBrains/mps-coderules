<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c2760840-3210-4ad4-9e64-a2dfd53620e1(jetbrains.mps.lang.typechecking.aspect)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
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
  <node concept="312cEu" id="7km57Pkjxf4">
    <property role="TrG5h" value="TypecheckingAspect" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2hteS6CndfK" role="jymVt" />
    <node concept="2YIFZL" id="78H58oeCAQS" role="jymVt">
      <property role="TrG5h" value="aspectLookup" />
      <node concept="3Tm1VV" id="78H58oeCBjF" role="1B3o_S" />
      <node concept="3uibUv" id="78H58oeCAQU" role="3clF45">
        <ref role="3uigEE" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
        <node concept="3uibUv" id="78H58oeCAQV" role="11_B2D">
          <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypecheckingAspect" />
        </node>
      </node>
      <node concept="3clFbS" id="78H58oeCAOe" role="3clF47">
        <node concept="3cpWs6" id="3KN3A4v4kbC" role="3cqZAp">
          <node concept="2YIFZM" id="3KN3A4v4kbD" role="3cqZAk">
            <ref role="37wK5l" to="fqlx:78H58oefSjC" resolve="lookup" />
            <ref role="1Pybhc" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
            <node concept="2YIFZM" id="3KN3A4v4kbE" role="37wK5m">
              <ref role="37wK5l" to="fqlx:78H58oefoaA" resolve="discoverable" />
              <ref role="1Pybhc" to="fqlx:NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
              <node concept="3VsKOn" id="3KN3A4v4kbF" role="37wK5m">
                <ref role="3VsUkX" node="7km57Pkjxf4" resolve="TypecheckingAspect" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6UWSvq5bjXg" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVPW9uU" role="jymVt">
      <property role="TrG5h" value="allForModel" />
      <node concept="37vLTG" id="7P_FdVPWb2y" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="7P_FdVPWp2I" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7P_FdVPWb2$" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7P_FdVPWb2_" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="7P_FdVPWaUF" role="3clF45">
        <node concept="3uibUv" id="3KN3A4v4ne1" role="3O5elw">
          <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="3uibUv" id="3KN3A4v4nj3" role="11_B2D">
            <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypecheckingAspect" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7P_FdVPW9uX" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPW9uY" role="3clF47">
        <node concept="3clFbF" id="NKt6ynqt5n" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynqt5o" role="3clFbG">
            <node concept="liA8E" id="NKt6ynqt5u" role="2OqNvi">
              <ref role="37wK5l" to="fqlx:NKt6ynoYr0" resolve="allForModel" />
              <node concept="37vLTw" id="NKt6ynqtVi" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVPWb2y" resolve="model" />
              </node>
              <node concept="37vLTw" id="NKt6ynqt5w" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVPWb2$" resolve="repository" />
              </node>
            </node>
            <node concept="2YIFZM" id="78H58oeCB43" role="2Oq$k0">
              <ref role="1Pybhc" node="7km57Pkjxf4" resolve="TypecheckingAspect" />
              <ref role="37wK5l" node="78H58oeCAQS" resolve="aspectLookup" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQ35vN" role="jymVt" />
    <node concept="3Tm1VV" id="7km57Pkjxf5" role="1B3o_S" />
    <node concept="3uibUv" id="NKt6yomOJv" role="EKbjA">
      <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
    </node>
    <node concept="3uibUv" id="7km57PkjxgV" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
    </node>
    <node concept="3UR2Jj" id="7P_FdVPWD2k" role="lGtFl">
      <node concept="TZ5HA" id="7P_FdVPWD2l" role="TZ5H$">
        <node concept="1dT_AC" id="7P_FdVPWD2m" role="1dT_Ay">
          <property role="1dT_AB" value="All allFor* methods return the list sorted in topological order, so that the extending" />
        </node>
      </node>
      <node concept="TZ5HA" id="7P_FdVPWEBW" role="TZ5H$">
        <node concept="1dT_AC" id="7P_FdVPWEBX" role="1dT_Ay">
          <property role="1dT_AB" value="aspects come first. " />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="NKt6yp1DsV" role="1zkMxy">
      <ref role="3uigEE" to="fqlx:NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
    </node>
  </node>
</model>

