<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4705c47f-1f99-4034-8b4c-899c3c0ef2b5(compiler.codeGeneration)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="fxg7" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="snqe" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#compiler.CHRIntermediateForm(jetbrains.mps.jchr.runtime/compiler.CHRIntermediateForm@java_stub)" />
    <import index="wtyy" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#compiler.options(jetbrains.mps.jchr.runtime/compiler.options@java_stub)" />
    <import index="1z61" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#compiler.codeGeneration(jetbrains.mps.jchr.runtime/compiler.codeGeneration@java_stub)" />
    <import index="k7g3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2546654756694997551" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTag" flags="ng" index="92FcH">
        <child id="2546654756694997556" name="reference" index="92FcQ" />
        <child id="3106559687488913694" name="line" index="2XjZqd" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
      </concept>
      <concept id="8970989240999019145" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentLinePart" flags="ng" index="1dT_AA">
        <child id="6962838954693749192" name="tag" index="qph3F" />
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
  <node concept="312cEu" id="41ox5Vn8Mb4">
    <property role="TrG5h" value="CodeGeneration2" />
    <node concept="2tJIrI" id="41ox5Vn8Mbo" role="jymVt" />
    <node concept="2YIFZL" id="41ox5Vn8Mb_" role="jymVt">
      <property role="TrG5h" value="generateAllSourceFiles" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="41ox5Vn8MbA" role="3clF46">
        <property role="TrG5h" value="cif" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="41ox5Vn9Agv" role="1tU5fm">
          <ref role="3uigEE" to="snqe:~ICHRIntermediateForm" resolve="ICHRIntermediateForm" />
        </node>
      </node>
      <node concept="37vLTG" id="41ox5Vn8MbC" role="3clF46">
        <property role="TrG5h" value="options" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="41ox5Vn9FwB" role="1tU5fm">
          <ref role="3uigEE" to="wtyy:~Options" resolve="Options" />
        </node>
      </node>
      <node concept="3uibUv" id="41ox5Vn8MbE" role="Sfmx6">
        <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="41ox5Vn9Lah" role="Sfmx6">
        <ref role="3uigEE" to="1z61:~GenerationException" resolve="GenerationException" />
      </node>
      <node concept="3clFbS" id="41ox5Vn8MbG" role="3clF47">
        <node concept="3cpWs8" id="41ox5Vn9NNd" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5Vn9NNe" role="3cpWs9">
            <property role="TrG5h" value="tuple" />
            <node concept="3uibUv" id="41ox5Vn9NNf" role="1tU5fm">
              <ref role="3uigEE" to="1z61:~CodeGeneration$Tuple" resolve="CodeGeneration.Tuple" />
            </node>
            <node concept="2YIFZM" id="41ox5Vn9Oft" role="33vP2m">
              <ref role="37wK5l" to="1z61:~CodeGeneration.doGenerateHandlerSourceFile(compiler.CHRIntermediateForm.ICHRIntermediateForm,compiler.options.Options):compiler.codeGeneration.CodeGeneration$Tuple" resolve="doGenerateHandlerSourceFile" />
              <ref role="1Pybhc" to="1z61:~CodeGeneration" resolve="CodeGeneration" />
              <node concept="37vLTw" id="41ox5Vn9SKv" role="37wK5m">
                <ref role="3cqZAo" node="41ox5Vn8MbA" resolve="cif" />
              </node>
              <node concept="37vLTw" id="41ox5Vn9SKw" role="37wK5m">
                <ref role="3cqZAo" node="41ox5Vn8MbC" resolve="options" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="41ox5Vn8Mct" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5Vn8Mcs" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="result" />
            <node concept="10Q1$e" id="41ox5Vn8Mcv" role="1tU5fm">
              <node concept="3uibUv" id="41ox5Vn8Mcu" role="10Q1$1">
                <ref role="3uigEE" to="fxg7:~File" resolve="File" />
              </node>
            </node>
            <node concept="2ShNRf" id="41ox5Vn8McA" role="33vP2m">
              <node concept="3$_iS1" id="41ox5Vn9Y7C" role="2ShVmc">
                <node concept="3$GHV9" id="41ox5Vn9Y7F" role="3$GQph">
                  <node concept="3cmrfG" id="41ox5Vn9Ygb" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3uibUv" id="41ox5Vn8Mcw" role="3$_nBY">
                  <ref role="3uigEE" to="fxg7:~File" resolve="File" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="41ox5Vn8McB" role="3cqZAp">
          <node concept="37vLTI" id="41ox5Vn8McC" role="3clFbG">
            <node concept="AH0OO" id="41ox5Vn8McD" role="37vLTJ">
              <node concept="37vLTw" id="41ox5Vn8McE" role="AHHXb">
                <ref role="3cqZAo" node="41ox5Vn8Mcs" resolve="result" />
              </node>
              <node concept="3cmrfG" id="41ox5Vn8McF" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="2OqwBi" id="41ox5Vn8Md6" role="37vLTx">
              <node concept="37vLTw" id="41ox5Vn9VOJ" role="2Oq$k0">
                <ref role="3cqZAo" node="41ox5Vn9NNe" resolve="tuple" />
              </node>
              <node concept="2OwXpG" id="41ox5Vn8Md7" role="2OqNvi">
                <ref role="2Oxat5" to="1z61:~CodeGeneration$Tuple.generatedFile" resolve="generatedFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="41ox5Vn8McO" role="3cqZAp">
          <node concept="37vLTw" id="41ox5Vn8McP" role="3cqZAk">
            <ref role="3cqZAo" node="41ox5Vn8Mcs" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="41ox5Vn8McQ" role="1B3o_S" />
      <node concept="10Q1$e" id="41ox5Vn8McS" role="3clF45">
        <node concept="3uibUv" id="41ox5Vn9$30" role="10Q1$1">
          <ref role="3uigEE" to="fxg7:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5Vn8Mbt" role="jymVt" />
    <node concept="3Tm1VV" id="41ox5Vn8Mb5" role="1B3o_S" />
    <node concept="3UR2Jj" id="41ox5Vnb3Ef" role="lGtFl">
      <node concept="TZ5HA" id="41ox5Vnb3Eg" role="TZ5H$">
        <node concept="1dT_AC" id="41ox5Vnb3Eh" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="41ox5Vnb3G1" role="TZ5H$">
        <node concept="1dT_AC" id="41ox5Vnb3G2" role="1dT_Ay">
          <property role="1dT_AB" value="This is a patch for " />
        </node>
        <node concept="1dT_AA" id="41ox5Vnb3Gm" role="1dT_Ay">
          <node concept="92FcH" id="41ox5Vnb5g_" role="qph3F">
            <node concept="TZ5HA" id="41ox5Vnb5gB" role="2XjZqd" />
            <node concept="VXe08" id="41ox5VnbwmN" role="92FcQ">
              <ref role="VXe09" to="1z61:~CodeGeneration" resolve="CodeGeneration" />
            </node>
          </node>
        </node>
        <node concept="1dT_AC" id="41ox5Vnb3Gl" role="1dT_Ay">
          <property role="1dT_AB" value=" class to avoid generating tuple classes." />
        </node>
      </node>
      <node concept="TZ5HA" id="41ox5VnbwyE" role="TZ5H$">
        <node concept="1dT_AC" id="41ox5VnbwyF" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="41ox5VnbwyT" role="TZ5H$">
        <node concept="1dT_AC" id="41ox5VnbwyU" role="1dT_Ay">
          <property role="1dT_AB" value="There is a problem with accessing package local fields from these tuple classes " />
        </node>
      </node>
      <node concept="TZ5HA" id="41ox5Vnbwza" role="TZ5H$">
        <node concept="1dT_AC" id="41ox5Vnbwzb" role="1dT_Ay">
          <property role="1dT_AB" value="if loaded by MPS module classloader. " />
        </node>
      </node>
      <node concept="TZ5HA" id="41ox5Vnbwzt" role="TZ5H$">
        <node concept="1dT_AC" id="41ox5Vnbwzu" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="41ox5VnbwzM" role="TZ5H$">
        <node concept="1dT_AC" id="41ox5VnbwzN" role="1dT_Ay">
          <property role="1dT_AB" value="We can provide all the necessary tuple classes as static code and avoid having" />
        </node>
      </node>
      <node concept="TZ5HA" id="41ox5Vnbw$9" role="TZ5H$">
        <node concept="1dT_AC" id="41ox5Vnbw$a" role="1dT_Ay">
          <property role="1dT_AB" value="to generate them ad hoc." />
        </node>
      </node>
      <node concept="TZ5HA" id="41ox5Vnb3Ga" role="TZ5H$">
        <node concept="1dT_AC" id="41ox5Vnb3Gb" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
    </node>
  </node>
</model>

