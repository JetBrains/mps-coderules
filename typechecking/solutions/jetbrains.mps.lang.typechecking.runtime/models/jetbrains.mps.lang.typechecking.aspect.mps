<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c2760840-3210-4ad4-9e64-a2dfd53620e1(jetbrains.mps.lang.typechecking.aspect)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.coderules.macro)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
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
    <node concept="2YIFZL" id="2hteS6Cndm6" role="jymVt">
      <property role="TrG5h" value="forLanguage" />
      <node concept="37vLTG" id="2hteS6Cndm7" role="3clF46">
        <property role="TrG5h" value="slang" />
        <node concept="3uibUv" id="2hteS6Cndm8" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="2hteS6Cndm9" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3GlpCDS_m$F" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="NKt6yoQCF0" role="3clF45">
        <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
      </node>
      <node concept="3Tm1VV" id="2hteS6Cndmc" role="1B3o_S" />
      <node concept="3clFbS" id="2hteS6Cndmd" role="3clF47">
        <node concept="3clFbF" id="NKt6ynqkPu" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynqlte" role="3clFbG">
            <node concept="2ShNRf" id="NKt6ynqkPq" role="2Oq$k0">
              <node concept="1pGfFk" id="NKt6ynql7n" role="2ShVmc">
                <ref role="37wK5l" to="fqlx:NKt6yno$sR" resolve="AspectLookup" />
                <node concept="2ShNRf" id="NKt6ynql9X" role="37wK5m">
                  <node concept="HV5vD" id="NKt6ynqlji" role="2ShVmc">
                    <ref role="HV5vE" node="NKt6ynqgZw" resolve="TypecheckingAspect.CoderulesAspectDiscoverable" />
                  </node>
                </node>
                <node concept="3uibUv" id="NKt6yoQDGr" role="1pMfVU">
                  <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="NKt6ynqlFW" role="2OqNvi">
              <ref role="37wK5l" to="fqlx:NKt6ynp3Wc" resolve="forLanguage" />
              <node concept="37vLTw" id="NKt6ynqlMF" role="37wK5m">
                <ref role="3cqZAo" node="2hteS6Cndm7" resolve="slang" />
              </node>
              <node concept="37vLTw" id="NKt6ynqlZL" role="37wK5m">
                <ref role="3cqZAo" node="2hteS6Cndm9" resolve="repository" />
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
        <node concept="3uibUv" id="NKt6yoQCQN" role="3O5elw">
          <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7P_FdVPW9uX" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPW9uY" role="3clF47">
        <node concept="3clFbF" id="NKt6ynqt5n" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynqt5o" role="3clFbG">
            <node concept="2ShNRf" id="NKt6ynqt5p" role="2Oq$k0">
              <node concept="1pGfFk" id="NKt6ynqt5q" role="2ShVmc">
                <ref role="37wK5l" to="fqlx:NKt6yno$sR" resolve="AspectLookup" />
                <node concept="2ShNRf" id="NKt6ynqt5r" role="37wK5m">
                  <node concept="HV5vD" id="NKt6ynqt5s" role="2ShVmc">
                    <ref role="HV5vE" node="NKt6ynqgZw" resolve="TypecheckingAspect.CoderulesAspectDiscoverable" />
                  </node>
                </node>
                <node concept="3uibUv" id="NKt6yoQDx4" role="1pMfVU">
                  <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="NKt6ynqt5u" role="2OqNvi">
              <ref role="37wK5l" to="fqlx:NKt6ynoYr0" resolve="allForModel" />
              <node concept="37vLTw" id="NKt6ynqtVi" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVPWb2y" resolve="model" />
              </node>
              <node concept="37vLTw" id="NKt6ynqt5w" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVPWb2$" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQ35vN" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVPWn7D" role="jymVt">
      <property role="TrG5h" value="allForLanguage" />
      <node concept="37vLTG" id="7P_FdVPWn7E" role="3clF46">
        <property role="TrG5h" value="slang" />
        <node concept="3uibUv" id="7P_FdVPWn7F" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="7P_FdVPWn7G" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7P_FdVPWn7H" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="7P_FdVPWn7I" role="3clF45">
        <node concept="3uibUv" id="NKt6yoQCXl" role="3O5elw">
          <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7P_FdVPWn7K" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPWn7L" role="3clF47">
        <node concept="3clFbF" id="NKt6ynquya" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynquyb" role="3clFbG">
            <node concept="2ShNRf" id="NKt6ynquyc" role="2Oq$k0">
              <node concept="1pGfFk" id="NKt6ynquyd" role="2ShVmc">
                <ref role="37wK5l" to="fqlx:NKt6yno$sR" resolve="AspectLookup" />
                <node concept="2ShNRf" id="NKt6ynquye" role="37wK5m">
                  <node concept="HV5vD" id="NKt6ynquyf" role="2ShVmc">
                    <ref role="HV5vE" node="NKt6ynqgZw" resolve="TypecheckingAspect.CoderulesAspectDiscoverable" />
                  </node>
                </node>
                <node concept="3uibUv" id="NKt6yoQDlF" role="1pMfVU">
                  <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="NKt6ynquyh" role="2OqNvi">
              <ref role="37wK5l" to="fqlx:NKt6ynoU4W" resolve="allForLanguage" />
              <node concept="37vLTw" id="NKt6ynquyi" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVPWn7E" resolve="slang" />
              </node>
              <node concept="37vLTw" id="NKt6ynquyj" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVPWn7G" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPWn7C" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVPWjGf" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="allForLanguage" />
      <node concept="37vLTG" id="7P_FdVPWjGg" role="3clF46">
        <property role="TrG5h" value="langrt" />
        <node concept="3uibUv" id="7P_FdVPWjGh" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3clFbS" id="7P_FdVPWjGi" role="3clF47">
        <node concept="3clFbF" id="NKt6ynqzV4" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynqzV5" role="3clFbG">
            <node concept="2ShNRf" id="NKt6ynqzV6" role="2Oq$k0">
              <node concept="1pGfFk" id="NKt6ynqzV7" role="2ShVmc">
                <ref role="37wK5l" to="fqlx:NKt6yno$sR" resolve="AspectLookup" />
                <node concept="2ShNRf" id="NKt6ynqzV8" role="37wK5m">
                  <node concept="HV5vD" id="NKt6ynqzV9" role="2ShVmc">
                    <ref role="HV5vE" node="NKt6ynqgZw" resolve="TypecheckingAspect.CoderulesAspectDiscoverable" />
                  </node>
                </node>
                <node concept="3uibUv" id="NKt6yoQDam" role="1pMfVU">
                  <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="NKt6ynqzVb" role="2OqNvi">
              <ref role="37wK5l" to="fqlx:NKt6ynoAJU" resolve="allForLanguage" />
              <node concept="37vLTw" id="NKt6ynq$s_" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVPWjGg" resolve="langrt" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="7P_FdVPWlen" role="3clF45">
        <node concept="3uibUv" id="NKt6yoQD3Q" role="3O5elw">
          <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7P_FdVPWjGp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7P_FdVPWjGe" role="jymVt" />
    <node concept="312cEu" id="NKt6ynqgZw" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="CoderulesAspectDiscoverable" />
      <node concept="2tJIrI" id="NKt6ynqkgH" role="jymVt" />
      <node concept="3clFb_" id="NKt6ynqkof" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="discover" />
        <node concept="37vLTG" id="NKt6ynqkog" role="3clF46">
          <property role="TrG5h" value="lr" />
          <node concept="3uibUv" id="NKt6ynqkoh" role="1tU5fm">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
        <node concept="3uibUv" id="NKt6yp1BXm" role="3clF45">
          <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
        </node>
        <node concept="3Tm1VV" id="NKt6ynqkoj" role="1B3o_S" />
        <node concept="3clFbS" id="NKt6ynqkom" role="3clF47">
          <node concept="3cpWs8" id="NKt6ynqkuq" role="3cqZAp">
            <node concept="3cpWsn" id="NKt6ynqkur" role="3cpWs9">
              <property role="TrG5h" value="aspect" />
              <node concept="3uibUv" id="NKt6yp1FMk" role="1tU5fm">
                <ref role="3uigEE" to="fqlx:NKt6yp1COZ" resolve="DefaultCoderulesAspect" />
              </node>
              <node concept="2OqwBi" id="NKt6ynqkut" role="33vP2m">
                <node concept="37vLTw" id="NKt6ynqkuu" role="2Oq$k0">
                  <ref role="3cqZAo" node="NKt6ynqkog" resolve="lr" />
                </node>
                <node concept="liA8E" id="NKt6ynqkuv" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
                  <node concept="3VsKOn" id="NKt6ynqkuw" role="37wK5m">
                    <ref role="3VsUkX" to="fqlx:NKt6yp1COZ" resolve="DefaultCoderulesAspect" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="NKt6ynqkux" role="3cqZAp">
            <node concept="3clFbS" id="NKt6ynqkuy" role="3clFbx">
              <node concept="3clFbJ" id="NKt6ynqkA2" role="3cqZAp">
                <node concept="3clFbS" id="NKt6ynqkA3" role="3clFbx">
                  <node concept="3clFbF" id="NKt6ynqkA4" role="3cqZAp">
                    <node concept="2OqwBi" id="NKt6ynqkA5" role="3clFbG">
                      <node concept="37vLTw" id="NKt6ynqkAe" role="2Oq$k0">
                        <ref role="3cqZAo" node="NKt6ynqkur" resolve="aspect" />
                      </node>
                      <node concept="liA8E" id="NKt6ynqkA7" role="2OqNvi">
                        <ref role="37wK5l" to="fqlx:7P_FdVQ2EWw" resolve="setLanguageRuntime" />
                        <node concept="37vLTw" id="NKt6ynqkAf" role="37wK5m">
                          <ref role="3cqZAo" node="NKt6ynqkog" resolve="lr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="NKt6ynqkA9" role="3clFbw">
                  <node concept="10Nm6u" id="NKt6ynqkAa" role="3uHU7w" />
                  <node concept="2OqwBi" id="NKt6ynqkAb" role="3uHU7B">
                    <node concept="37vLTw" id="NKt6ynqkAg" role="2Oq$k0">
                      <ref role="3cqZAo" node="NKt6ynqkur" resolve="aspect" />
                    </node>
                    <node concept="liA8E" id="NKt6ynqkAd" role="2OqNvi">
                      <ref role="37wK5l" to="fqlx:7P_FdVQ2VEI" resolve="languageRuntime" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="NKt6ynqkuB" role="3clFbw">
              <node concept="10Nm6u" id="NKt6ynqkuC" role="3uHU7w" />
              <node concept="37vLTw" id="NKt6ynqkuD" role="3uHU7B">
                <ref role="3cqZAo" node="NKt6ynqkur" resolve="aspect" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="NKt6ynqkuE" role="3cqZAp">
            <node concept="37vLTw" id="NKt6ynqkuF" role="3clFbG">
              <ref role="3cqZAo" node="NKt6ynqkur" resolve="aspect" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="NKt6ynqkon" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="NKt6ynqgZx" role="1B3o_S" />
      <node concept="3uibUv" id="NKt6ynqkjf" role="EKbjA">
        <ref role="3uigEE" to="fqlx:NKt6ynom3d" resolve="AspectDiscoverable" />
        <node concept="3uibUv" id="NKt6yoQCkO" role="11_B2D">
          <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="NKt6ynqdSf" role="jymVt" />
    <node concept="3clFb_" id="2hteS6ClmbE" role="jymVt">
      <property role="TrG5h" value="createMacroManifest" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="2hteS6ClmeA" role="3clF45">
        <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
      </node>
      <node concept="3Tm1VV" id="2hteS6ClmbH" role="1B3o_S" />
      <node concept="3clFbS" id="2hteS6ClmbI" role="3clF47" />
      <node concept="2AHcQZ" id="NKt6yomP83" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hteS6Clmfw" role="jymVt" />
    <node concept="3clFb_" id="2hteS6ClmfS" role="jymVt">
      <property role="TrG5h" value="createRuleManifest" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="2hteS6Clmgy" role="3clF45">
        <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
      </node>
      <node concept="3Tm1VV" id="2hteS6ClmfV" role="1B3o_S" />
      <node concept="3clFbS" id="2hteS6ClmfW" role="3clF47" />
      <node concept="2AHcQZ" id="NKt6yomPxd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hteS6Cleqc" role="jymVt" />
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
      <ref role="3uigEE" to="fqlx:NKt6yp1COZ" resolve="DefaultCoderulesAspect" />
    </node>
  </node>
</model>

