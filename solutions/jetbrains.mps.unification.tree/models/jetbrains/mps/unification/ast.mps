<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a96ed64c-59f1-465b-8d59-dbd0e8856971(jetbrains.mps.unification.ast)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="jfki" ref="f:java_stub#7526e0cf-1ce7-46f8-a555-9eca1e06c23b#jetbrains.mps.unification(jetbrains.mps.unification@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1R$Cm9qIi2j">
    <property role="TrG5h" value="AstBuilder" />
    <property role="IEkAT" value="false" />
    <node concept="2tJIrI" id="1R$Cm9qIjZy" role="jymVt" />
    <node concept="2YIFZL" id="1R$Cm9qHxAg" role="jymVt">
      <property role="TrG5h" value="node" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1R$Cm9qHxAj" role="3clF46">
        <property role="TrG5h" value="children" />
        <node concept="8X2XB" id="1R$Cm9qHxAk" role="1tU5fm">
          <node concept="3uibUv" id="1R$Cm9qHxAl" role="8Xvag">
            <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Branch" />
            <node concept="3qTvmN" id="6$jH9oLfEP0" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1R$Cm9qHxAn" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qIM2J" role="3cqZAp">
          <node concept="2YIFZM" id="1R$Cm9qIM3p" role="3clFbG">
            <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
            <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
            <node concept="Xl_RD" id="1R$Cm9qIM5C" role="37wK5m">
              <property role="Xl_RC" value="node" />
            </node>
            <node concept="37vLTw" id="1R$Cm9qIMdu" role="37wK5m">
              <ref role="3cqZAo" node="1R$Cm9qHxAj" resolve="children" />
            </node>
            <node concept="16syzq" id="1R$Cm9qIMoB" role="3PaCim">
              <ref role="16sUi3" node="1R$Cm9qHxAw" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R$Cm9qHxAt" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qHxAu" role="3clF45">
        <ref role="3uigEE" to="ie8e:5JQSuNswOXL" resolve="ChildrenBranch" />
        <node concept="16syzq" id="1R$Cm9qHxAv" role="11_B2D">
          <ref role="16sUi3" node="1R$Cm9qHxAw" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="1R$Cm9qHxAw" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03dQQY" role="3ztrMU">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="3OPtF03dR2_" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qIKee" role="jymVt" />
    <node concept="2YIFZL" id="1R$Cm9qIKEy" role="jymVt">
      <property role="TrG5h" value="nodeVariable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="uNmovXjpHG" role="3clF46">
        <property role="TrG5h" value="varNames" />
        <node concept="8X2XB" id="uNmovXjzqN" role="1tU5fm">
          <node concept="17QB3L" id="6SkxsMz$UX0" role="8Xvag" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R$Cm9qIK_P" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qIKCh" role="3clF45">
        <ref role="3uigEE" to="ie8e:uNmovXiSQ6" resolve="VariableBranch" />
      </node>
      <node concept="3clFbS" id="1R$Cm9qIMzi" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qIMzg" role="3cqZAp">
          <node concept="2YIFZM" id="1R$Cm9qIMzB" role="3clFbG">
            <ref role="37wK5l" to="ie8e:uNmovXjpCg" resolve="variable" />
            <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
            <node concept="Xl_RD" id="1R$Cm9qIM$J" role="37wK5m">
              <property role="Xl_RC" value="node" />
            </node>
            <node concept="37vLTw" id="1R$Cm9qIMBa" role="37wK5m">
              <ref role="3cqZAo" node="uNmovXjpHG" resolve="varNames" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qIjZ$" role="jymVt" />
    <node concept="2YIFZL" id="6$jH9oLaYQA" role="jymVt">
      <property role="TrG5h" value="nodeList" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="6$jH9oLhhp2" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6$jH9oLhhVz" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6$jH9oLaYQB" role="3clF46">
        <property role="TrG5h" value="children" />
        <node concept="8X2XB" id="6$jH9oLaYQC" role="1tU5fm">
          <node concept="3uibUv" id="1bm7a6F18Nx" role="8Xvag">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6$jH9oLaYQF" role="3clF47">
        <node concept="3clFbF" id="6$jH9oLfPDC" role="3cqZAp">
          <node concept="2YIFZM" id="6$jH9oLfPDZ" role="3clFbG">
            <ref role="37wK5l" to="ie8e:3OPtF03lcom" resolve="create" />
            <ref role="1Pybhc" to="ie8e:3OPtF03lco4" resolve="ListBranch" />
            <node concept="37vLTw" id="6$jH9oLhk3M" role="37wK5m">
              <ref role="3cqZAo" node="6$jH9oLhhp2" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="6$jH9oLfQ7$" role="37wK5m">
              <ref role="3cqZAo" node="6$jH9oLaYQB" resolve="children" />
            </node>
            <node concept="16syzq" id="6$jH9oLkcFT" role="3PaCim">
              <ref role="16sUi3" node="6$jH9oLaYQO" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$jH9oLaYQL" role="1B3o_S" />
      <node concept="3uibUv" id="6$jH9oLaYQM" role="3clF45">
        <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="6$jH9oLkczs" role="11_B2D">
          <ref role="16sUi3" node="6$jH9oLaYQO" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="6$jH9oLaYQO" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="1bm7a6F15XH" role="3ztrMU">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$jH9oLi0c8" role="jymVt" />
    <node concept="2tJIrI" id="6$jH9oLaVYW" role="jymVt" />
    <node concept="3Tm1VV" id="1R$Cm9qIi2k" role="1B3o_S" />
    <node concept="3uibUv" id="1R$Cm9qIjGu" role="1zkMxy">
      <ref role="3uigEE" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
    </node>
    <node concept="2AHcQZ" id="5s497VqlHwo" role="2AJF6D">
      <ref role="2AI5Lk" to="e2lb:~Deprecated" resolve="Deprecated" />
    </node>
    <node concept="3UR2Jj" id="5s497VqlHMp" role="lGtFl">
      <node concept="TZ5HA" id="5s497VqlHMq" role="TZ5H$">
        <node concept="1dT_AC" id="5s497VqlHMr" role="1dT_Ay">
          <property role="1dT_AB" value="TODO: Let's not use this." />
        </node>
      </node>
    </node>
  </node>
</model>

