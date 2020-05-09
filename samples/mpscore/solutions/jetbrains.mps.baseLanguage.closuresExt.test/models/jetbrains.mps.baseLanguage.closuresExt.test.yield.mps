<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5da568ce-4965-4c3e-b8b4-edfc36d00b67(jetbrains.mps.baseLanguage.closuresExt.test.yield)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="9e36d2ee-c59c-4580-9e81-646748d0614b" name="jetbrains.mps.baseLanguage.closuresExt" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="c1f5ad88-21f4-4e0e-927c-48b1ca0c2334" name="jetbrains.mps.baseLanguage.collectionsExt" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
    <use id="0fda14cc-a416-4c81-869a-2175d8b3325d" name="jetbrains.mps.baseLanguageExt" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1228997946467" name="jetbrains.mps.baseLanguage.closures.structure.YieldAllStatement" flags="nn" index="_Z6PX">
        <child id="1228997959377" name="expression" index="_Z9Zf" />
      </concept>
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation">
      <concept id="1942415814694854601" name="jetbrains.mps.typechecking.annotation.structure.ErrorAnnotation" flags="ng" index="1U20sH">
        <property id="1942415814694854612" name="text" index="1U20sK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4yZzE4kOzs1">
    <property role="TrG5h" value="ClosureSequence" />
    <node concept="2tJIrI" id="4yZzE4kOzs2" role="jymVt" />
    <node concept="312cEu" id="4yZzE4kOzs3" role="jymVt">
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="4yZzE4kOzs4" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="4yZzE4kOzs5" role="jymVt">
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="4yZzE4kOzs6" role="1B3o_S" />
      <node concept="3uibUv" id="4yZzE4kOzs7" role="1zkMxy">
        <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
      </node>
    </node>
    <node concept="312cEu" id="4yZzE4kOzs8" role="jymVt">
      <property role="TrG5h" value="C" />
      <node concept="3Tm1VV" id="4yZzE4kOzs9" role="1B3o_S" />
      <node concept="3uibUv" id="4yZzE4kOzsa" role="1zkMxy">
        <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
      </node>
    </node>
    <node concept="2tJIrI" id="4yZzE4kOzsb" role="jymVt" />
    <node concept="2tJIrI" id="4yZzE4kODFW" role="jymVt" />
    <node concept="3clFb_" id="4yZzE4kOzsv" role="jymVt">
      <property role="TrG5h" value="acceptT1" />
      <node concept="3clFbS" id="4yZzE4kOzsw" role="3clF47" />
      <node concept="3Tm1VV" id="4yZzE4kOzsx" role="1B3o_S" />
      <node concept="3cqZAl" id="4yZzE4kOzsy" role="3clF45" />
      <node concept="37vLTG" id="4yZzE4kOzsz" role="3clF46">
        <property role="TrG5h" value="block" />
        <node concept="1ajhzC" id="4yZzE4kOzs$" role="1tU5fm">
          <node concept="16syzq" id="4yZzE4kOzs_" role="1ajw0F">
            <ref role="16sUi3" node="4yZzE4kOzsC" resolve="TA" />
          </node>
          <node concept="16syzq" id="4yZzE4kOzsA" role="1ajl9A">
            <ref role="16sUi3" node="4yZzE4kOzsB" resolve="TR" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="4yZzE4kOzsB" role="16eVyc">
        <property role="TrG5h" value="TR" />
      </node>
      <node concept="16euLQ" id="4yZzE4kOzsC" role="16eVyc">
        <property role="TrG5h" value="TA" />
        <node concept="16syzq" id="4yZzE4kOzsD" role="3ztrMU">
          <ref role="16sUi3" node="4yZzE4kOzsB" resolve="TR" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4yZzE4kOzsN" role="jymVt" />
    <node concept="2tJIrI" id="4yZzE4kOzsO" role="jymVt" />
    <node concept="3clFb_" id="4yZzE4kOzsP" role="jymVt">
      <property role="TrG5h" value="foo" />
      <node concept="37vLTG" id="3MFPGC50T$L" role="3clF46">
        <property role="TrG5h" value="empts" />
        <node concept="A3Dl8" id="3MFPGC50TE1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3MFPGC51JFL" role="3clF46">
        <property role="TrG5h" value="xs" />
        <node concept="A3Dl8" id="3MFPGC51IiQ" role="1tU5fm">
          <node concept="3uibUv" id="6BFOg89IXI9" role="A3Ik2">
            <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC50J3L" role="3clF46">
        <property role="TrG5h" value="ys" />
        <node concept="A3Dl8" id="3MFPGC50J3M" role="1tU5fm">
          <node concept="3uibUv" id="6BFOg89IXLj" role="A3Ik2">
            <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC50J3O" role="3clF46">
        <property role="TrG5h" value="zs" />
        <node concept="A3Dl8" id="3MFPGC50J3P" role="1tU5fm">
          <node concept="3uibUv" id="6BFOg89IXJT" role="A3Ik2">
            <ref role="3uigEE" node="4yZzE4kOzs8" resolve="ClosureSequence.C" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6BFOg89IY7H" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="6BFOg89IY9G" role="1tU5fm">
          <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
        </node>
      </node>
      <node concept="37vLTG" id="6BFOg89IYbF" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="6BFOg89IYdJ" role="1tU5fm">
          <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
        </node>
      </node>
      <node concept="37vLTG" id="6BFOg89IYdM" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="6BFOg89IYg0" role="1tU5fm">
          <ref role="3uigEE" node="4yZzE4kOzs8" resolve="ClosureSequence.C" />
        </node>
      </node>
      <node concept="37vLTG" id="6BFOg89JAy4" role="3clF46">
        <property role="TrG5h" value="arra" />
        <node concept="10Q1$e" id="6BFOg89JADt" role="1tU5fm">
          <node concept="3uibUv" id="6BFOg89JADq" role="10Q1$1">
            <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6BFOg89JAN4" role="3clF46">
        <property role="TrG5h" value="arrb" />
        <node concept="10Q1$e" id="6BFOg89JAUx" role="1tU5fm">
          <node concept="3uibUv" id="6BFOg89JAUu" role="10Q1$1">
            <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6BFOg89JB3M" role="3clF46">
        <property role="TrG5h" value="arrc" />
        <node concept="10Q1$e" id="6BFOg89JBpE" role="1tU5fm">
          <node concept="3uibUv" id="6BFOg89JBpB" role="10Q1$1">
            <ref role="3uigEE" node="4yZzE4kOzs8" resolve="ClosureSequence.C" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4yZzE4kOzt5" role="3clF47">
        <node concept="3clFbH" id="6BFOg89JBFE" role="3cqZAp" />
        <node concept="3SKdUt" id="4yZzE4kOzt6" role="3cqZAp">
          <node concept="1PaTwC" id="4yZzE4kOzt7" role="3ndbpf">
            <node concept="3oM_SD" id="4yZzE4kOzt8" role="1PaTwD">
              <property role="3oM_SC" value="void" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzt9" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kODB_" role="1PaTwD">
              <property role="3oM_SC" value="&amp;" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kODBL" role="1PaTwD">
              <property role="3oM_SC" value="yield" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89JfXY" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89JfY1" role="3cpWs9">
            <property role="TrG5h" value="is1" />
            <node concept="A3Dl8" id="6BFOg89JfXV" role="1tU5fm" />
            <node concept="2Sg_IR" id="6BFOg89Jgo0" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89Jgo1" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89Jgo2" role="1bW5cS" />
              </node>
            </node>
            <node concept="1U20sH" id="6BFOg89Jgt4" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kOzv9" role="3cqZAp" />
        <node concept="3SKdUt" id="4yZzE4kOzva" role="3cqZAp">
          <node concept="1PaTwC" id="4yZzE4kOzvb" role="3ndbpf">
            <node concept="3oM_SD" id="4yZzE4kOzvc" role="1PaTwD">
              <property role="3oM_SC" value="basic" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvd" role="1PaTwD">
              <property role="3oM_SC" value="yields" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89IXXE" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89IXXH" role="3cpWs9">
            <property role="TrG5h" value="as1" />
            <node concept="A3Dl8" id="6BFOg89IXXB" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89IXZ6" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89J5yJ" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89J5yK" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89J5yL" role="1bW5cS">
                  <node concept="2n63Yl" id="6BFOg89J5yM" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89J5yN" role="2n6tg2">
                      <ref role="3cqZAo" node="6BFOg89IY7H" resolve="a" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89IYGq" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89IYGr" role="3cpWs9">
            <property role="TrG5h" value="as2" />
            <node concept="A3Dl8" id="6BFOg89IYGs" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89IYGt" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89J6Xh" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89J6Xi" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89J6Xj" role="1bW5cS">
                  <node concept="_Z6PX" id="6BFOg89J6Xk" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89J6Xl" role="_Z9Zf">
                      <ref role="3cqZAo" node="3MFPGC51JFL" resolve="xs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89JgvM" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89JgvN" role="3cpWs9">
            <property role="TrG5h" value="as3" />
            <node concept="A3Dl8" id="6BFOg89JgvO" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89JgvP" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89JgvQ" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89JgvR" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89JgvS" role="1bW5cS">
                  <node concept="3cpWs6" id="6BFOg89JgU4" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89JgX2" role="3cqZAk">
                      <ref role="3cqZAo" node="3MFPGC51JFL" resolve="xs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89JnKO" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89JnKP" role="3cpWs9">
            <property role="TrG5h" value="as4" />
            <node concept="A3Dl8" id="6BFOg89JnKQ" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89JnKR" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89JnKS" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89JnKT" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89JnKU" role="1bW5cS">
                  <node concept="3clFbF" id="6BFOg89Jo9U" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89JomI" role="3clFbG">
                      <ref role="3cqZAo" node="3MFPGC50J3L" resolve="ys" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89J6tw" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89J6tx" role="3cpWs9">
            <property role="TrG5h" value="as5" />
            <node concept="A3Dl8" id="6BFOg89J6ty" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89J6tz" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
              </node>
            </node>
            <node concept="2OqwBi" id="6BFOg89J6t$" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89J6t_" role="2Oq$k0">
                <node concept="3clFbS" id="6BFOg89J6tA" role="1bW5cS">
                  <node concept="_Z6PX" id="6BFOg89J6tB" role="3cqZAp">
                    <node concept="2Sg_IR" id="6BFOg89J7nG" role="_Z9Zf">
                      <node concept="1bVj0M" id="6BFOg89J7nH" role="2SgG2M">
                        <node concept="3clFbS" id="6BFOg89J7nI" role="1bW5cS">
                          <node concept="2n63Yl" id="6BFOg89J7nJ" role="3cqZAp">
                            <node concept="37vLTw" id="6BFOg89J7Dk" role="2n6tg2">
                              <ref role="3cqZAo" node="6BFOg89IYbF" resolve="b" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Bd96e" id="6BFOg89J6tD" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89JBNv" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89JBNw" role="3cpWs9">
            <property role="TrG5h" value="as6" />
            <node concept="A3Dl8" id="6BFOg89JBNx" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89JCWY" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89JBNz" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89JBN$" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89JBN_" role="1bW5cS">
                  <node concept="_Z6PX" id="6BFOg89JBNA" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89JDz_" role="_Z9Zf">
                      <ref role="3cqZAo" node="6BFOg89JB3M" resolve="arrc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89JD2v" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89JD2w" role="3cpWs9">
            <property role="TrG5h" value="as7" />
            <node concept="A3Dl8" id="6BFOg89JD2x" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89JD2y" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89JD2z" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89JD2$" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89JD2_" role="1bW5cS">
                  <node concept="_Z6PX" id="6BFOg89JD2A" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89JDgB" role="_Z9Zf">
                      <ref role="3cqZAo" node="6BFOg89JAy4" resolve="arra" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1U20sH" id="6BFOg89JDwq" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89JDOi" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89JDOj" role="3cpWs9">
            <property role="TrG5h" value="as8" />
            <node concept="A3Dl8" id="6BFOg89JDOk" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89JDOl" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89JDOm" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89JDOn" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89JDOo" role="1bW5cS">
                  <node concept="_Z6PX" id="6BFOg89JDOp" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89JE5e" role="_Z9Zf">
                      <ref role="3cqZAo" node="6BFOg89IY7H" resolve="a" />
                    </node>
                    <node concept="1U20sH" id="6BFOg89JMyV" role="lGtFl">
                      <property role="1U20sK" value="error" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6KIXGIaThKt" role="3cqZAp">
          <node concept="3cpWsn" id="6KIXGIaThKu" role="3cpWs9">
            <property role="TrG5h" value="as9" />
            <node concept="A3Dl8" id="6KIXGIaThKv" role="1tU5fm">
              <node concept="3uibUv" id="6KIXGIaTimn" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6KIXGIaThKx" role="33vP2m">
              <node concept="1bVj0M" id="6KIXGIaThKy" role="2SgG2M">
                <node concept="3clFbS" id="6KIXGIaThKz" role="1bW5cS">
                  <node concept="_Z6PX" id="6KIXGIaThK$" role="3cqZAp">
                    <node concept="37vLTw" id="6KIXGIaThK_" role="_Z9Zf">
                      <ref role="3cqZAo" node="3MFPGC51JFL" resolve="xs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1U20sH" id="7u0sJ20Oy3p" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kOzvh" role="3cqZAp" />
        <node concept="3clFbH" id="6BFOg89JkFh" role="3cqZAp" />
        <node concept="3SKdUt" id="6BFOg89Jam$" role="3cqZAp">
          <node concept="1PaTwC" id="6BFOg89Jam_" role="3ndbpf">
            <node concept="3oM_SD" id="6BFOg89JamB" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="6BFOg89JaqQ" role="1PaTwD">
              <property role="3oM_SC" value="yield" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89Jarh" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89Jari" role="3cpWs9">
            <property role="TrG5h" value="xs1" />
            <node concept="A3Dl8" id="6BFOg89Jarj" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89JbeT" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89Jarl" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89Jarm" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89Jarn" role="1bW5cS">
                  <node concept="3clFbJ" id="6BFOg89Jaro" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89Jarp" role="3clFbw">
                      <ref role="3cqZAo" node="6BFOg89Jarx" resolve="cond" />
                    </node>
                    <node concept="3clFbS" id="6BFOg89Jarq" role="3clFbx">
                      <node concept="2n63Yl" id="6BFOg89Jarr" role="3cqZAp">
                        <node concept="37vLTw" id="6BFOg89Jars" role="2n6tg2">
                          <ref role="3cqZAo" node="6BFOg89IYbF" resolve="b" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="6BFOg89Jart" role="9aQIa">
                      <node concept="3clFbS" id="6BFOg89Jaru" role="9aQI4">
                        <node concept="_Z6PX" id="6BFOg89Jarv" role="3cqZAp">
                          <node concept="37vLTw" id="6BFOg89JaEN" role="_Z9Zf">
                            <ref role="3cqZAo" node="3MFPGC50J3O" resolve="zs" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="6BFOg89Jarx" role="1bW2Oz">
                  <property role="TrG5h" value="cond" />
                  <node concept="10P_77" id="6BFOg89Jary" role="1tU5fm" />
                </node>
              </node>
              <node concept="3clFbT" id="6BFOg89Jarz" role="2SgHGx">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89JaQJ" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89JaQK" role="3cpWs9">
            <property role="TrG5h" value="xs2" />
            <node concept="A3Dl8" id="6BFOg89JaQL" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89Jbb1" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
              </node>
            </node>
            <node concept="1bVj0M" id="6BFOg89JaQO" role="33vP2m">
              <node concept="3clFbS" id="6BFOg89JaQP" role="1bW5cS">
                <node concept="3clFbJ" id="6BFOg89JaQQ" role="3cqZAp">
                  <node concept="37vLTw" id="6BFOg89JaQR" role="3clFbw">
                    <ref role="3cqZAo" node="6BFOg89JaQZ" resolve="cond" />
                  </node>
                  <node concept="3clFbS" id="6BFOg89JaQS" role="3clFbx">
                    <node concept="2n63Yl" id="6BFOg89JaQT" role="3cqZAp">
                      <node concept="37vLTw" id="6BFOg89JdKP" role="2n6tg2">
                        <ref role="3cqZAo" node="6BFOg89JaQZ" resolve="cond" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="6BFOg89JaQV" role="9aQIa">
                    <node concept="3clFbS" id="6BFOg89JaQW" role="9aQI4">
                      <node concept="_Z6PX" id="6BFOg89JaQX" role="3cqZAp">
                        <node concept="37vLTw" id="6BFOg89JaQY" role="_Z9Zf">
                          <ref role="3cqZAo" node="3MFPGC50J3O" resolve="zs" />
                        </node>
                        <node concept="1U20sH" id="7u0sJ2119TB" role="lGtFl">
                          <property role="1U20sK" value="error" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="6BFOg89JaQZ" role="1bW2Oz">
                <property role="TrG5h" value="cond" />
                <node concept="10P_77" id="6BFOg89JaR0" role="1tU5fm" />
              </node>
            </node>
            <node concept="1U20sH" id="7u0sJ2119ZB" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89JhTg" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89JhTh" role="3cpWs9">
            <property role="TrG5h" value="xs3" />
            <node concept="A3Dl8" id="6BFOg89JhTi" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89JhTj" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89JhTk" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89JhTl" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89JhTm" role="1bW5cS">
                  <node concept="3clFbJ" id="6BFOg89JhTn" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89JhTo" role="3clFbw">
                      <ref role="3cqZAo" node="6BFOg89JhTw" resolve="cond" />
                    </node>
                    <node concept="3clFbS" id="6BFOg89JhTp" role="3clFbx">
                      <node concept="_Z6PX" id="6BFOg89Jip_" role="3cqZAp">
                        <node concept="37vLTw" id="6BFOg89Ji$U" role="_Z9Zf">
                          <ref role="3cqZAo" node="3MFPGC50J3L" resolve="ys" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6BFOg89Jj42" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89JjCQ" role="3cqZAk">
                      <ref role="3cqZAo" node="3MFPGC50J3O" resolve="zs" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="6BFOg89JhTw" role="1bW2Oz">
                  <property role="TrG5h" value="cond" />
                  <node concept="10P_77" id="6BFOg89JhTx" role="1tU5fm" />
                </node>
                <node concept="1U20sH" id="7u0sJ20Rmeq" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
              <node concept="3clFbT" id="6BFOg89JhTy" role="2SgHGx">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6BFOg89JahY" role="3cqZAp" />
        <node concept="3clFbH" id="6BFOg89JkzR" role="3cqZAp" />
        <node concept="3SKdUt" id="4yZzE4kOzvi" role="3cqZAp">
          <node concept="1PaTwC" id="4yZzE4kOzvj" role="3ndbpf">
            <node concept="3oM_SD" id="4yZzE4kOzvk" role="1PaTwD">
              <property role="3oM_SC" value="combination" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvl" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvm" role="1PaTwD">
              <property role="3oM_SC" value="explicit" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvn" role="1PaTwD">
              <property role="3oM_SC" value="returns" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvo" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvp" role="1PaTwD">
              <property role="3oM_SC" value="yields" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvq" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvr" role="1PaTwD">
              <property role="3oM_SC" value="forbidden" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89Jf7H" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89Jf7I" role="3cpWs9">
            <property role="TrG5h" value="ys1" />
            <node concept="A3Dl8" id="6BFOg89Jf7J" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89Jf7K" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs3" resolve="ClosureSequence.A" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89Jf7L" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89Jf7M" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89Jf7N" role="1bW5cS">
                  <node concept="2n63Yl" id="6BFOg89Jf7O" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89Jfn4" role="2n6tg2">
                      <ref role="3cqZAo" node="6BFOg89IY7H" resolve="a" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6BFOg89JfuS" role="3cqZAp" />
                </node>
                <node concept="1U20sH" id="6BFOg89Jfw1" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6BFOg89J9mj" role="3cqZAp">
          <node concept="1PaTwC" id="6BFOg89J9mk" role="3ndbpf">
            <node concept="3oM_SD" id="6BFOg89J9mm" role="1PaTwD">
              <property role="3oM_SC" value="fixme:" />
            </node>
            <node concept="3oM_SD" id="7u0sJ20Oy6z" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="7u0sJ20Oy73" role="1PaTwD">
              <property role="3oM_SC" value="incremental" />
            </node>
            <node concept="3oM_SD" id="7u0sJ20Oy7G" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9r_" role="1PaTwD">
              <property role="3oM_SC" value="ret" />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9rO" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9rW" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9s5" role="1PaTwD">
              <property role="3oM_SC" value="yield" />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9sn" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9sE" role="1PaTwD">
              <property role="3oM_SC" value="changed" />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9sY" role="1PaTwD">
              <property role="3oM_SC" value="(e.g." />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9tb" role="1PaTwD">
              <property role="3oM_SC" value="b" />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9tx" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="6BFOg89J9tS" role="1PaTwD">
              <property role="3oM_SC" value="bool)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89J7JX" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89J7JY" role="3cpWs9">
            <property role="TrG5h" value="ys2" />
            <node concept="A3Dl8" id="6BFOg89J7JZ" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89Jeee" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89J8wY" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89J8wZ" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89J8x0" role="1bW5cS">
                  <node concept="3clFbJ" id="6BFOg89J8x1" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89J8x2" role="3clFbw">
                      <ref role="3cqZAo" node="6BFOg89J8x7" resolve="cond" />
                    </node>
                    <node concept="3clFbS" id="6BFOg89J8x3" role="3clFbx">
                      <node concept="2n63Yl" id="6BFOg89J8x4" role="3cqZAp">
                        <node concept="37vLTw" id="6BFOg89J9xa" role="2n6tg2">
                          <ref role="3cqZAo" node="6BFOg89IYbF" resolve="b" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6BFOg89Je5j" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89Je8T" role="3cqZAk">
                      <ref role="3cqZAo" node="6BFOg89IYdM" resolve="c" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="6BFOg89J8x7" role="1bW2Oz">
                  <property role="TrG5h" value="cond" />
                  <node concept="10P_77" id="6BFOg89J8x8" role="1tU5fm" />
                </node>
                <node concept="1U20sH" id="6BFOg89JehY" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
              <node concept="3clFbT" id="6BFOg89J8zB" role="2SgHGx" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kOzvv" role="3cqZAp" />
        <node concept="3SKdUt" id="4yZzE4kOzvw" role="3cqZAp">
          <node concept="1PaTwC" id="4yZzE4kOzvx" role="3ndbpf">
            <node concept="3oM_SD" id="4yZzE4kOzvy" role="1PaTwD">
              <property role="3oM_SC" value="combination" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvz" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzv$" role="1PaTwD">
              <property role="3oM_SC" value="implicit" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzv_" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvA" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvB" role="1PaTwD">
              <property role="3oM_SC" value="yield" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvC" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvD" role="1PaTwD">
              <property role="3oM_SC" value="ok:" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvE" role="1PaTwD">
              <property role="3oM_SC" value="implicit" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvF" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvG" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kOzvH" role="1PaTwD">
              <property role="3oM_SC" value="ignored" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6BFOg89Jem7" role="3cqZAp">
          <node concept="3cpWsn" id="6BFOg89Jema" role="3cpWs9">
            <property role="TrG5h" value="ws1" />
            <node concept="A3Dl8" id="6BFOg89Jemb" role="1tU5fm">
              <node concept="3uibUv" id="6BFOg89Jemc" role="A3Ik2">
                <ref role="3uigEE" node="4yZzE4kOzs5" resolve="ClosureSequence.B" />
              </node>
            </node>
            <node concept="2Sg_IR" id="6BFOg89Jemd" role="33vP2m">
              <node concept="1bVj0M" id="6BFOg89Jeme" role="2SgG2M">
                <node concept="3clFbS" id="6BFOg89Jemf" role="1bW5cS">
                  <node concept="3clFbJ" id="6BFOg89Jemg" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89Jemh" role="3clFbw">
                      <ref role="3cqZAo" node="6BFOg89Jemn" resolve="cond" />
                    </node>
                    <node concept="3clFbS" id="6BFOg89Jemi" role="3clFbx">
                      <node concept="2n63Yl" id="6BFOg89Jemj" role="3cqZAp">
                        <node concept="37vLTw" id="6BFOg89Jemk" role="2n6tg2">
                          <ref role="3cqZAo" node="6BFOg89IYbF" resolve="b" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6BFOg89JeB0" role="3cqZAp">
                    <node concept="37vLTw" id="6BFOg89JeAY" role="3clFbG">
                      <ref role="3cqZAo" node="6BFOg89IYdM" resolve="c" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="6BFOg89Jemn" role="1bW2Oz">
                  <property role="TrG5h" value="cond" />
                  <node concept="10P_77" id="6BFOg89Jemo" role="1tU5fm" />
                </node>
              </node>
              <node concept="3clFbT" id="6BFOg89Jemq" role="2SgHGx">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kOEGb" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="4yZzE4kOzw4" role="1B3o_S" />
      <node concept="3cqZAl" id="4yZzE4kOzw5" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4yZzE4kOzw6" role="jymVt" />
    <node concept="3Tm1VV" id="4yZzE4kOzwS" role="1B3o_S" />
  </node>
</model>

