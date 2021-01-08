<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5da568ce-4965-4c3e-b8b4-edfc36d00b67(jetbrains.mps.baseLanguage.closuresExt.test.collections)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="9e36d2ee-c59c-4580-9e81-646748d0614b" name="jetbrains.mps.baseLanguage.closuresExt" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
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
          <node concept="1PaTwC" id="4yZzE4kOzt7" role="1aUNEU">
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
          <node concept="1PaTwC" id="4yZzE4kOzvb" role="1aUNEU">
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
          <node concept="1PaTwC" id="6BFOg89Jam_" role="1aUNEU">
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
          <node concept="1PaTwC" id="4yZzE4kOzvj" role="1aUNEU">
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
          <node concept="1PaTwC" id="6BFOg89J9mk" role="1aUNEU">
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
          <node concept="1PaTwC" id="4yZzE4kOzvx" role="1aUNEU">
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
  <node concept="312cEu" id="554EtBHyc2K">
    <property role="TrG5h" value="ClosureParamInference" />
    <node concept="2tJIrI" id="554EtBHyc2L" role="jymVt" />
    <node concept="312cEu" id="554EtBHyc2M" role="jymVt">
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="554EtBHyc2N" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="554EtBHyc2O" role="jymVt">
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="554EtBHyc2P" role="1B3o_S" />
      <node concept="3uibUv" id="554EtBHyc2Q" role="1zkMxy">
        <ref role="3uigEE" node="554EtBHyc2M" resolve="ClosureParamInference.A" />
      </node>
    </node>
    <node concept="312cEu" id="554EtBHyc2R" role="jymVt">
      <property role="TrG5h" value="C" />
      <node concept="3Tm1VV" id="554EtBHyc2S" role="1B3o_S" />
      <node concept="3uibUv" id="554EtBHyc2T" role="1zkMxy">
        <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
      </node>
    </node>
    <node concept="2tJIrI" id="554EtBHzd8e" role="jymVt" />
    <node concept="2tJIrI" id="554EtBHzfpg" role="jymVt" />
    <node concept="3HP615" id="4AYiKM_PGtX" role="jymVt">
      <property role="TrG5h" value="IWorker" />
      <node concept="3clFb_" id="4AYiKM_PGw8" role="jymVt">
        <property role="TrG5h" value="doWork" />
        <node concept="3clFbS" id="4AYiKM_PGwb" role="3clF47" />
        <node concept="3Tm1VV" id="4AYiKM_PGwc" role="1B3o_S" />
        <node concept="3cqZAl" id="554EtBHzdrS" role="3clF45" />
        <node concept="37vLTG" id="4AYiKM_PGwU" role="3clF46">
          <property role="TrG5h" value="arg1" />
          <node concept="16syzq" id="554EtBHzdtJ" role="1tU5fm">
            <ref role="16sUi3" node="554EtBHzdoM" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="4AYiKM_PGya" role="3clF46">
          <property role="TrG5h" value="arg2" />
          <node concept="16syzq" id="554EtBHzeDf" role="1tU5fm">
            <ref role="16sUi3" node="554EtBHzeB3" resolve="S" />
          </node>
        </node>
        <node concept="16euLQ" id="554EtBHzdoM" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="554EtBHzd_l" role="3ztrMU">
            <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
          </node>
        </node>
        <node concept="16euLQ" id="554EtBHzeB3" role="16eVyc">
          <property role="TrG5h" value="S" />
          <node concept="16syzq" id="554EtBHzeCT" role="3ztrMU">
            <ref role="16sUi3" node="554EtBHzdoM" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4AYiKM_PGtz" role="1B3o_S" />
    </node>
    <node concept="3HP615" id="554EtBHzfwS" role="jymVt">
      <property role="TrG5h" value="GWorker" />
      <node concept="3clFb_" id="554EtBHzfwT" role="jymVt">
        <property role="TrG5h" value="doWork" />
        <node concept="3clFbS" id="554EtBHzfwU" role="3clF47" />
        <node concept="3Tm1VV" id="554EtBHzfwV" role="1B3o_S" />
        <node concept="3cqZAl" id="554EtBHzfwW" role="3clF45" />
        <node concept="37vLTG" id="554EtBHzfwX" role="3clF46">
          <property role="TrG5h" value="arg1" />
          <node concept="16syzq" id="554EtBHzfLM" role="1tU5fm">
            <ref role="16sUi3" node="554EtBHzfEx" resolve="Tw" />
          </node>
        </node>
        <node concept="37vLTG" id="554EtBHzfwZ" role="3clF46">
          <property role="TrG5h" value="arg2" />
          <node concept="16syzq" id="554EtBHzfLj" role="1tU5fm">
            <ref role="16sUi3" node="554EtBHzfGv" resolve="Sw" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="554EtBHzfx5" role="1B3o_S" />
      <node concept="16euLQ" id="554EtBHzfEx" role="16eVyc">
        <property role="TrG5h" value="Tw" />
        <node concept="3uibUv" id="554EtBHzfGz" role="3ztrMU">
          <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
        </node>
      </node>
      <node concept="16euLQ" id="554EtBHzfGv" role="16eVyc">
        <property role="TrG5h" value="Sw" />
        <node concept="16syzq" id="554EtBHzfIR" role="3ztrMU">
          <ref role="16sUi3" node="554EtBHzfEx" resolve="Tw" />
        </node>
      </node>
    </node>
    <node concept="3HP615" id="554EtBHOWUr" role="jymVt">
      <property role="TrG5h" value="GGWorker" />
      <node concept="3clFb_" id="554EtBHOWUs" role="jymVt">
        <property role="TrG5h" value="doWork" />
        <node concept="3clFbS" id="554EtBHOWUt" role="3clF47" />
        <node concept="3Tm1VV" id="554EtBHOWUu" role="1B3o_S" />
        <node concept="3cqZAl" id="554EtBHOWUv" role="3clF45" />
        <node concept="37vLTG" id="554EtBHOWUw" role="3clF46">
          <property role="TrG5h" value="arg1" />
          <node concept="16syzq" id="554EtBHOXze" role="1tU5fm">
            <ref role="16sUi3" node="554EtBHOXmW" resolve="Ty" />
          </node>
        </node>
        <node concept="37vLTG" id="554EtBHOWUy" role="3clF46">
          <property role="TrG5h" value="arg2" />
          <node concept="16syzq" id="554EtBHOX$c" role="1tU5fm">
            <ref role="16sUi3" node="554EtBHOXuA" resolve="Sy" />
          </node>
        </node>
        <node concept="16euLQ" id="554EtBHOXmW" role="16eVyc">
          <property role="TrG5h" value="Ty" />
          <node concept="16syzq" id="554EtBHOXu9" role="3ztrMU">
            <ref role="16sUi3" node="554EtBHOWU_" resolve="Tx" />
          </node>
        </node>
        <node concept="16euLQ" id="554EtBHOXuA" role="16eVyc">
          <property role="TrG5h" value="Sy" />
          <node concept="16syzq" id="554EtBHOXyL" role="3ztrMU">
            <ref role="16sUi3" node="554EtBHOWUB" resolve="Sx" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="554EtBHOWU$" role="1B3o_S" />
      <node concept="16euLQ" id="554EtBHOWU_" role="16eVyc">
        <property role="TrG5h" value="Tx" />
        <node concept="3uibUv" id="554EtBHOWUA" role="3ztrMU">
          <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
        </node>
      </node>
      <node concept="16euLQ" id="554EtBHOWUB" role="16eVyc">
        <property role="TrG5h" value="Sx" />
        <node concept="16syzq" id="554EtBHOWUC" role="3ztrMU">
          <ref role="16sUi3" node="554EtBHOWU_" resolve="Tx" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6yxoGioisG7" role="jymVt" />
    <node concept="2tJIrI" id="6yxoGioiw2q" role="jymVt" />
    <node concept="312cEu" id="6yxoGioixtS" role="jymVt">
      <property role="TrG5h" value="PairBox" />
      <node concept="312cEg" id="6yxoGioizVQ" role="jymVt">
        <property role="TrG5h" value="el1" />
        <node concept="3Tm6S6" id="6yxoGioizSy" role="1B3o_S" />
        <node concept="16syzq" id="6yxoGioizVv" role="1tU5fm">
          <ref role="16sUi3" node="6yxoGioiymc" resolve="TBox1" />
        </node>
      </node>
      <node concept="312cEg" id="6yxoGioi$4o" role="jymVt">
        <property role="TrG5h" value="el2" />
        <node concept="3Tm6S6" id="6yxoGioi$4p" role="1B3o_S" />
        <node concept="16syzq" id="6yxoGioi$7M" role="1tU5fm">
          <ref role="16sUi3" node="6yxoGioiyIt" resolve="SBox1" />
        </node>
      </node>
      <node concept="2tJIrI" id="6yxoGioi$8c" role="jymVt" />
      <node concept="3clFb_" id="6yxoGioiyzB" role="jymVt">
        <property role="TrG5h" value="processElement" />
        <node concept="37vLTG" id="6yxoGioiy_C" role="3clF46">
          <property role="TrG5h" value="worker" />
          <node concept="3uibUv" id="6yxoGioiyBB" role="1tU5fm">
            <ref role="3uigEE" node="554EtBHOWUr" resolve="ClosureParamInference.GGWorker" />
            <node concept="16syzq" id="6yxoGioiyFR" role="11_B2D">
              <ref role="16sUi3" node="6yxoGioiymc" resolve="TBox1" />
            </node>
            <node concept="16syzq" id="6yxoGioiyL6" role="11_B2D">
              <ref role="16sUi3" node="6yxoGioiyIt" resolve="SBox1" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6yxoGioiyzE" role="3clF47">
          <node concept="3clFbF" id="6yxoGioizAr" role="3cqZAp">
            <node concept="2OqwBi" id="6yxoGioizG2" role="3clFbG">
              <node concept="37vLTw" id="6yxoGioizAq" role="2Oq$k0">
                <ref role="3cqZAo" node="6yxoGioiy_C" resolve="worker" />
              </node>
              <node concept="liA8E" id="6yxoGioizNi" role="2OqNvi">
                <ref role="37wK5l" node="554EtBHOWUs" resolve="doWork" />
                <node concept="37vLTw" id="6yxoGioi$dT" role="37wK5m">
                  <ref role="3cqZAo" node="6yxoGioizVQ" resolve="el1" />
                </node>
                <node concept="37vLTw" id="6yxoGioi$kt" role="37wK5m">
                  <ref role="3cqZAo" node="6yxoGioi$4o" resolve="el2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6yxoGioiyx$" role="1B3o_S" />
        <node concept="3cqZAl" id="6yxoGioiyzq" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="6yxoGioiwOy" role="1B3o_S" />
      <node concept="16euLQ" id="6yxoGioiymc" role="16eVyc">
        <property role="TrG5h" value="TBox1" />
        <node concept="3uibUv" id="6yxoGioiyq0" role="3ztrMU">
          <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
        </node>
      </node>
      <node concept="16euLQ" id="6yxoGioiyIt" role="16eVyc">
        <property role="TrG5h" value="SBox1" />
        <node concept="16syzq" id="6yxoGioiyKQ" role="3ztrMU">
          <ref role="16sUi3" node="6yxoGioiymc" resolve="TBox1" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="554EtBHzfuY" role="jymVt" />
    <node concept="2tJIrI" id="6yxoGioiyML" role="jymVt" />
    <node concept="3clFb_" id="554EtBHzfep" role="jymVt">
      <property role="TrG5h" value="acceptIWorker" />
      <node concept="37vLTG" id="554EtBHzfil" role="3clF46">
        <property role="TrG5h" value="worker" />
        <node concept="3uibUv" id="554EtBHzfke" role="1tU5fm">
          <ref role="3uigEE" node="4AYiKM_PGtX" resolve="ClosureParamInference.IWorker" />
        </node>
      </node>
      <node concept="3clFbS" id="554EtBHzfes" role="3clF47" />
      <node concept="3Tm1VV" id="554EtBHzf9l" role="1B3o_S" />
      <node concept="3cqZAl" id="554EtBHzfd6" role="3clF45" />
    </node>
    <node concept="3clFb_" id="554EtBHzfSX" role="jymVt">
      <property role="TrG5h" value="acceptGWorker" />
      <node concept="37vLTG" id="554EtBHzfSY" role="3clF46">
        <property role="TrG5h" value="worker" />
        <node concept="3uibUv" id="554EtBHzg03" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHzfwS" resolve="ClosureParamInference.GWorker" />
          <node concept="3uibUv" id="554EtBHzg3G" role="11_B2D">
            <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
          </node>
          <node concept="3uibUv" id="554EtBHzgeN" role="11_B2D">
            <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="554EtBHzfT0" role="3clF47" />
      <node concept="3Tm1VV" id="554EtBHzfT1" role="1B3o_S" />
      <node concept="3cqZAl" id="554EtBHzfT2" role="3clF45" />
    </node>
    <node concept="3clFb_" id="554EtBHU7RA" role="jymVt">
      <property role="TrG5h" value="acceptGGWorker" />
      <node concept="37vLTG" id="554EtBHU7RB" role="3clF46">
        <property role="TrG5h" value="worker" />
        <node concept="3uibUv" id="554EtBHU7RC" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHOWUr" resolve="ClosureParamInference.GGWorker" />
          <node concept="3uibUv" id="554EtBHU7RD" role="11_B2D">
            <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
          </node>
          <node concept="3uibUv" id="554EtBHU7RE" role="11_B2D">
            <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="554EtBHU7RF" role="3clF47" />
      <node concept="3Tm1VV" id="554EtBHU7RG" role="1B3o_S" />
      <node concept="3cqZAl" id="554EtBHU7RH" role="3clF45" />
    </node>
    <node concept="3clFb_" id="554EtBHzeFe" role="jymVt">
      <property role="TrG5h" value="acceptT1" />
      <node concept="3clFbS" id="554EtBHzeFf" role="3clF47" />
      <node concept="3Tm1VV" id="554EtBHzeFg" role="1B3o_S" />
      <node concept="3cqZAl" id="554EtBHzeFh" role="3clF45" />
      <node concept="37vLTG" id="554EtBHzeFi" role="3clF46">
        <property role="TrG5h" value="block" />
        <node concept="1ajhzC" id="554EtBHzeFj" role="1tU5fm">
          <node concept="16syzq" id="554EtBHzeFk" role="1ajw0F">
            <ref role="16sUi3" node="554EtBHzeFn" resolve="S1" />
          </node>
          <node concept="3cqZAl" id="554EtBHzeX5" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="554EtBHziok" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="16syzq" id="554EtBHzivz" role="1tU5fm">
          <ref role="16sUi3" node="554EtBHzeFm" resolve="T1" />
        </node>
      </node>
      <node concept="16euLQ" id="554EtBHzeFm" role="16eVyc">
        <property role="TrG5h" value="T1" />
        <node concept="3uibUv" id="554EtBHzePi" role="3ztrMU">
          <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
        </node>
      </node>
      <node concept="16euLQ" id="554EtBHzeFn" role="16eVyc">
        <property role="TrG5h" value="S1" />
        <node concept="16syzq" id="554EtBHzeFo" role="3ztrMU">
          <ref role="16sUi3" node="554EtBHzeFm" resolve="T1" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="554EtBHyc2W" role="jymVt">
      <property role="TrG5h" value="acceptT0" />
      <node concept="3clFbS" id="554EtBHyc2X" role="3clF47" />
      <node concept="3Tm1VV" id="554EtBHyc2Y" role="1B3o_S" />
      <node concept="3cqZAl" id="554EtBHyc2Z" role="3clF45" />
      <node concept="37vLTG" id="554EtBHyc30" role="3clF46">
        <property role="TrG5h" value="block" />
        <node concept="1ajhzC" id="554EtBHyc31" role="1tU5fm">
          <node concept="16syzq" id="554EtBHyc32" role="1ajw0F">
            <ref role="16sUi3" node="554EtBHyc35" resolve="TA" />
          </node>
          <node concept="16syzq" id="554EtBHyc33" role="1ajl9A">
            <ref role="16sUi3" node="554EtBHyc34" resolve="TR" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="554EtBHzizf" role="3clF46">
        <property role="TrG5h" value="init" />
        <node concept="16syzq" id="554EtBHziCO" role="1tU5fm">
          <ref role="16sUi3" node="554EtBHyc34" resolve="TR" />
        </node>
      </node>
      <node concept="16euLQ" id="554EtBHyc34" role="16eVyc">
        <property role="TrG5h" value="TR" />
      </node>
      <node concept="16euLQ" id="554EtBHyc35" role="16eVyc">
        <property role="TrG5h" value="TA" />
        <node concept="16syzq" id="554EtBHyc36" role="3ztrMU">
          <ref role="16sUi3" node="554EtBHyc34" resolve="TR" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="554EtBHyc37" role="jymVt" />
    <node concept="2tJIrI" id="554EtBHyc38" role="jymVt" />
    <node concept="3clFb_" id="554EtBHyc39" role="jymVt">
      <property role="TrG5h" value="generics" />
      <node concept="37vLTG" id="554EtBHyc3l" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="554EtBHyc3m" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHyc2M" resolve="ClosureParamInference.A" />
        </node>
      </node>
      <node concept="37vLTG" id="554EtBHyc3n" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="554EtBHyc3o" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
        </node>
      </node>
      <node concept="37vLTG" id="554EtBHyc3p" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="554EtBHyc3q" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
        </node>
      </node>
      <node concept="37vLTG" id="554EtBHyc3r" role="3clF46">
        <property role="TrG5h" value="arra" />
        <node concept="10Q1$e" id="554EtBHyc3s" role="1tU5fm">
          <node concept="3uibUv" id="554EtBHyc3t" role="10Q1$1">
            <ref role="3uigEE" node="554EtBHyc2M" resolve="ClosureParamInference.A" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="554EtBHyc3u" role="3clF46">
        <property role="TrG5h" value="arrb" />
        <node concept="10Q1$e" id="554EtBHyc3v" role="1tU5fm">
          <node concept="3uibUv" id="554EtBHyc3w" role="10Q1$1">
            <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="554EtBHyc3x" role="3clF46">
        <property role="TrG5h" value="arrc" />
        <node concept="10Q1$e" id="554EtBHyc3y" role="1tU5fm">
          <node concept="3uibUv" id="554EtBHyc3z" role="10Q1$1">
            <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="554EtBHyc3$" role="3clF47">
        <node concept="3clFbH" id="554EtBHzgK0" role="3cqZAp" />
        <node concept="3clFbF" id="554EtBHzgAh" role="3cqZAp">
          <node concept="1rXfSq" id="554EtBHzgAf" role="3clFbG">
            <ref role="37wK5l" node="554EtBHzfep" resolve="acceptIWorker" />
            <node concept="1bVj0M" id="554EtBHzgE7" role="37wK5m">
              <node concept="3clFbS" id="554EtBHzgE8" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHzhw8" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHzhHU" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHzhLS" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHzh6z" resolve="itS" />
                    </node>
                    <node concept="37vLTw" id="554EtBHzhzS" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHzgEb" resolve="itT" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHzgEb" role="1bW2Oz">
                <property role="TrG5h" value="itT" />
                <node concept="2jxLKc" id="554EtBHzgEc" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHzh6z" role="1bW2Oz">
                <property role="TrG5h" value="itS" />
                <node concept="2jxLKc" id="554EtBHzh6$" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3ZtutRa1_uX" role="3cqZAp">
          <node concept="1PaTwC" id="3ZtutRa1_uY" role="1aUNEU">
            <node concept="3oM_SD" id="3ZtutRa1_uZ" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_VU" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_W5" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_Wh" role="1PaTwD">
              <property role="3oM_SC" value="vars" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_Wm" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_W$" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_WF" role="1PaTwD">
              <property role="3oM_SC" value="resolved" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1AZA" role="1PaTwD">
              <property role="3oM_SC" value="(inferred)" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_WV" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_X4" role="1PaTwD">
              <property role="3oM_SC" value="B," />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_Xu" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_XL" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1_XX" role="1PaTwD">
              <property role="3oM_SC" value="passes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="554EtBHMN1W" role="3cqZAp">
          <node concept="1rXfSq" id="554EtBHMN1X" role="3clFbG">
            <ref role="37wK5l" node="554EtBHzfep" resolve="acceptIWorker" />
            <node concept="1bVj0M" id="554EtBHMN1Y" role="37wK5m">
              <node concept="3clFbS" id="554EtBHMN1Z" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHMN20" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHMN21" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHMNkQ" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHMN24" resolve="itT" />
                    </node>
                    <node concept="37vLTw" id="554EtBHMNgJ" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHMN26" resolve="itS" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHMN24" role="1bW2Oz">
                <property role="TrG5h" value="itT" />
                <node concept="2jxLKc" id="554EtBHMN25" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHMN26" role="1bW2Oz">
                <property role="TrG5h" value="itS" />
                <node concept="2jxLKc" id="554EtBHMN27" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="554EtBHOuED" role="3cqZAp">
          <node concept="3cpWsn" id="554EtBHOuEE" role="3cpWs9">
            <property role="TrG5h" value="iw1" />
            <node concept="3uibUv" id="554EtBHOuEF" role="1tU5fm">
              <ref role="3uigEE" node="4AYiKM_PGtX" resolve="ClosureParamInference.IWorker" />
            </node>
            <node concept="1bVj0M" id="554EtBHOuZR" role="33vP2m">
              <node concept="3clFbS" id="554EtBHOuZS" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHOuZT" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHOuZU" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHOvr2" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHOv00" resolve="itS" />
                    </node>
                    <node concept="37vLTw" id="554EtBHOvtN" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHOuZY" resolve="itT" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHOuZY" role="1bW2Oz">
                <property role="TrG5h" value="itT" />
                <node concept="2jxLKc" id="554EtBHOuZZ" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHOv00" role="1bW2Oz">
                <property role="TrG5h" value="itS" />
                <node concept="2jxLKc" id="554EtBHOv01" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="554EtBHOCAL" role="3cqZAp">
          <node concept="37vLTI" id="554EtBHOCWX" role="3clFbG">
            <node concept="37vLTw" id="554EtBHOCAJ" role="37vLTJ">
              <ref role="3cqZAo" node="554EtBHOuEE" resolve="iw1" />
            </node>
            <node concept="1bVj0M" id="554EtBHODg3" role="37vLTx">
              <node concept="3clFbS" id="554EtBHODg4" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHODg5" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHODg6" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHODg7" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHODgb" resolve="itS" />
                    </node>
                    <node concept="37vLTw" id="554EtBHODg8" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHODg9" resolve="itT" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHODg9" role="1bW2Oz">
                <property role="TrG5h" value="itT" />
                <node concept="2jxLKc" id="554EtBHODga" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHODgb" role="1bW2Oz">
                <property role="TrG5h" value="itS" />
                <node concept="2jxLKc" id="554EtBHODgc" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="554EtBHOtvd" role="3cqZAp" />
        <node concept="3clFbH" id="554EtBHOW5q" role="3cqZAp" />
        <node concept="3clFbF" id="554EtBHFrrz" role="3cqZAp">
          <node concept="1rXfSq" id="554EtBHFrr$" role="3clFbG">
            <ref role="37wK5l" node="554EtBHzfSX" resolve="acceptGWorker" />
            <node concept="1bVj0M" id="554EtBHFrr_" role="37wK5m">
              <node concept="3clFbS" id="554EtBHFrrA" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHFrrB" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHFrrC" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHFrrD" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHFrrH" resolve="itC" />
                    </node>
                    <node concept="37vLTw" id="554EtBHFrrE" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHFrrF" resolve="itB" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHFrrF" role="1bW2Oz">
                <property role="TrG5h" value="itB" />
                <node concept="2jxLKc" id="554EtBHFrrG" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHFrrH" role="1bW2Oz">
                <property role="TrG5h" value="itC" />
                <node concept="2jxLKc" id="554EtBHFrrI" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="554EtBHOlwg" role="3cqZAp">
          <node concept="1rXfSq" id="554EtBHOlwh" role="3clFbG">
            <ref role="37wK5l" node="554EtBHzfSX" resolve="acceptGWorker" />
            <node concept="1bVj0M" id="554EtBHOlwi" role="37wK5m">
              <node concept="3clFbS" id="554EtBHOlwj" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHOlwk" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHOlwl" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHOlQq" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHOlwo" resolve="itB" />
                    </node>
                    <node concept="37vLTw" id="554EtBHOlPv" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHOlwq" resolve="itC" />
                    </node>
                    <node concept="1U20sH" id="554EtBHOlZe" role="lGtFl">
                      <property role="1U20sK" value="error" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHOlwo" role="1bW2Oz">
                <property role="TrG5h" value="itB" />
                <node concept="2jxLKc" id="554EtBHOlwp" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHOlwq" role="1bW2Oz">
                <property role="TrG5h" value="itC" />
                <node concept="2jxLKc" id="554EtBHOlwr" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="554EtBHOmWp" role="3cqZAp">
          <node concept="3cpWsn" id="554EtBHOmWv" role="3cpWs9">
            <property role="TrG5h" value="gw1" />
            <node concept="3uibUv" id="554EtBHOmWx" role="1tU5fm">
              <ref role="3uigEE" node="554EtBHzfwS" resolve="ClosureParamInference.GWorker" />
              <node concept="3uibUv" id="554EtBHOnfm" role="11_B2D">
                <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
              </node>
              <node concept="3uibUv" id="554EtBHOnkj" role="11_B2D">
                <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
              </node>
            </node>
            <node concept="1bVj0M" id="554EtBHOnp6" role="33vP2m">
              <node concept="3clFbS" id="554EtBHOnp7" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHOnp8" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHOnp9" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHOnpa" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHOnpe" resolve="itC" />
                    </node>
                    <node concept="37vLTw" id="554EtBHOnpb" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHOnpc" resolve="itB" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHOnpc" role="1bW2Oz">
                <property role="TrG5h" value="itB" />
                <node concept="2jxLKc" id="554EtBHOnpd" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHOnpe" role="1bW2Oz">
                <property role="TrG5h" value="itC" />
                <node concept="2jxLKc" id="554EtBHOnpf" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="554EtBHOAhp" role="3cqZAp">
          <node concept="37vLTI" id="554EtBHOAEt" role="3clFbG">
            <node concept="37vLTw" id="554EtBHOAhn" role="37vLTJ">
              <ref role="3cqZAo" node="554EtBHOmWv" resolve="gw1" />
            </node>
            <node concept="1bVj0M" id="554EtBHOAXX" role="37vLTx">
              <node concept="3clFbS" id="554EtBHOAXY" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHOAXZ" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHOAY0" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHOAY1" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHOAY5" resolve="itC" />
                    </node>
                    <node concept="37vLTw" id="554EtBHOAY2" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHOAY3" resolve="itB" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHOAY3" role="1bW2Oz">
                <property role="TrG5h" value="itB" />
                <node concept="2jxLKc" id="554EtBHOAY4" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHOAY5" role="1bW2Oz">
                <property role="TrG5h" value="itC" />
                <node concept="2jxLKc" id="554EtBHOAY6" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="554EtBHU5Nd" role="3cqZAp" />
        <node concept="3SKdUt" id="5pvXCF9t1xs" role="3cqZAp">
          <node concept="1PaTwC" id="5pvXCF9t1xt" role="1aUNEU">
            <node concept="3oM_SD" id="5pvXCF9t1xu" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2lk" role="1PaTwD">
              <property role="3oM_SC" value="complex" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2lv" role="1PaTwD">
              <property role="3oM_SC" value="inference:" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2lN" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2m0" role="1PaTwD">
              <property role="3oM_SC" value="classifier" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2mm" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2mt" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2mH" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2mQ" role="1PaTwD">
              <property role="3oM_SC" value="generic," />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2n8" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2nj" role="1PaTwD">
              <property role="3oM_SC" value="dependent" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2nR" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="5pvXCF9t2oc" role="1PaTwD">
              <property role="3oM_SC" value="vars" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="554EtBHU6Yx" role="3cqZAp">
          <node concept="1rXfSq" id="554EtBHU6Yy" role="3clFbG">
            <ref role="37wK5l" node="554EtBHU7RA" resolve="acceptGGWorker" />
            <node concept="1bVj0M" id="554EtBHU6Yz" role="37wK5m">
              <node concept="3clFbS" id="554EtBHU6Y$" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHU6Y_" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHU6YA" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHU6YB" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHU6YF" resolve="itC" />
                    </node>
                    <node concept="37vLTw" id="554EtBHU6YC" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHU6YD" resolve="itB" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHU6YD" role="1bW2Oz">
                <property role="TrG5h" value="itB" />
                <node concept="2jxLKc" id="554EtBHU6YE" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHU6YF" role="1bW2Oz">
                <property role="TrG5h" value="itC" />
                <node concept="2jxLKc" id="554EtBHU6YG" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="554EtBHU6YH" role="3cqZAp">
          <node concept="1rXfSq" id="554EtBHU6YI" role="3clFbG">
            <ref role="37wK5l" node="554EtBHU7RA" resolve="acceptGGWorker" />
            <node concept="1bVj0M" id="554EtBHU6YJ" role="37wK5m">
              <node concept="3clFbS" id="554EtBHU6YK" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHU6YL" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHU6YM" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHU6YN" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHU6YQ" resolve="itB" />
                    </node>
                    <node concept="37vLTw" id="554EtBHU6YO" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHU6YS" resolve="itC" />
                    </node>
                    <node concept="1U20sH" id="554EtBHU6YP" role="lGtFl">
                      <property role="1U20sK" value="error" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHU6YQ" role="1bW2Oz">
                <property role="TrG5h" value="itB" />
                <node concept="2jxLKc" id="554EtBHU6YR" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHU6YS" role="1bW2Oz">
                <property role="TrG5h" value="itC" />
                <node concept="2jxLKc" id="554EtBHU6YT" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="554EtBHU6YU" role="3cqZAp">
          <node concept="3cpWsn" id="554EtBHU6YV" role="3cpWs9">
            <property role="TrG5h" value="ggw1" />
            <node concept="3uibUv" id="554EtBHU6YW" role="1tU5fm">
              <ref role="3uigEE" node="554EtBHOWUr" resolve="ClosureParamInference.GGWorker" />
              <node concept="3uibUv" id="554EtBHU6YX" role="11_B2D">
                <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
              </node>
              <node concept="3uibUv" id="554EtBHU6YY" role="11_B2D">
                <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
              </node>
            </node>
            <node concept="1bVj0M" id="554EtBHU6YZ" role="33vP2m">
              <node concept="3clFbS" id="554EtBHU6Z0" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHU6Z1" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHU6Z2" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHU6Z3" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHU6Z7" resolve="itC" />
                    </node>
                    <node concept="37vLTw" id="554EtBHU6Z4" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHU6Z5" resolve="itB" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHU6Z5" role="1bW2Oz">
                <property role="TrG5h" value="itB" />
                <node concept="2jxLKc" id="554EtBHU6Z6" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHU6Z7" role="1bW2Oz">
                <property role="TrG5h" value="itC" />
                <node concept="2jxLKc" id="554EtBHU6Z8" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="554EtBHU6Z9" role="3cqZAp">
          <node concept="37vLTI" id="554EtBHU6Za" role="3clFbG">
            <node concept="37vLTw" id="554EtBHU6Zb" role="37vLTJ">
              <ref role="3cqZAo" node="554EtBHU6YV" resolve="ggw1" />
            </node>
            <node concept="1bVj0M" id="554EtBHU6Zc" role="37vLTx">
              <node concept="3clFbS" id="554EtBHU6Zd" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHU6Ze" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHU6Zf" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHU6Zg" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHU6Zk" resolve="itC" />
                    </node>
                    <node concept="37vLTw" id="554EtBHU6Zh" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHU6Zi" resolve="itB" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHU6Zi" role="1bW2Oz">
                <property role="TrG5h" value="itB" />
                <node concept="2jxLKc" id="554EtBHU6Zj" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="554EtBHU6Zk" role="1bW2Oz">
                <property role="TrG5h" value="itC" />
                <node concept="2jxLKc" id="554EtBHU6Zl" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="554EtBHU6tx" role="3cqZAp" />
        <node concept="3SKdUt" id="554EtBHU5b$" role="3cqZAp">
          <node concept="1PaTwC" id="554EtBHU5b_" role="1aUNEU">
            <node concept="3oM_SD" id="554EtBHU5bA" role="1PaTwD">
              <property role="3oM_SC" value="wrong" />
            </node>
            <node concept="3oM_SD" id="554EtBHU5K_" role="1PaTwD">
              <property role="3oM_SC" value="arg" />
            </node>
            <node concept="3oM_SD" id="554EtBHU5KK" role="1PaTwD">
              <property role="3oM_SC" value="number" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="554EtBHPowF" role="3cqZAp">
          <node concept="1rXfSq" id="554EtBHPowG" role="3clFbG">
            <ref role="37wK5l" node="554EtBHzeFe" resolve="acceptT1" />
            <node concept="1bVj0M" id="554EtBHPowH" role="37wK5m">
              <node concept="3clFbS" id="554EtBHPowI" role="1bW5cS">
                <node concept="3clFbF" id="554EtBHPowJ" role="3cqZAp">
                  <node concept="37vLTI" id="554EtBHPowK" role="3clFbG">
                    <node concept="37vLTw" id="554EtBHPowL" role="37vLTx">
                      <ref role="3cqZAo" node="554EtBHPowQ" resolve="itS" />
                    </node>
                    <node concept="37vLTw" id="554EtBHPowM" role="37vLTJ">
                      <ref role="3cqZAo" node="554EtBHPowN" resolve="itT" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHPowN" role="1bW2Oz">
                <property role="TrG5h" value="itT" />
                <node concept="2jxLKc" id="554EtBHPowO" role="1tU5fm" />
                <node concept="1U20sH" id="554EtBHPowP" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
              <node concept="Rh6nW" id="554EtBHPowQ" role="1bW2Oz">
                <property role="TrG5h" value="itS" />
                <node concept="2jxLKc" id="554EtBHPowR" role="1tU5fm" />
                <node concept="1U20sH" id="554EtBHPowS" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="554EtBHyc7D" role="1B3o_S" />
      <node concept="3cqZAl" id="554EtBHyc7E" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6yxoGioiBc4" role="jymVt" />
    <node concept="3clFb_" id="6yxoGioiBpr" role="jymVt">
      <property role="TrG5h" value="stranger" />
      <node concept="37vLTG" id="6yxoGioiBps" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="6yxoGioiBpt" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHyc2M" resolve="ClosureParamInference.A" />
        </node>
      </node>
      <node concept="37vLTG" id="6yxoGioiBpu" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="6yxoGioiBpv" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
        </node>
      </node>
      <node concept="37vLTG" id="6yxoGioiBpw" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="6yxoGioiBpx" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
        </node>
      </node>
      <node concept="3clFbS" id="6yxoGioiBpF" role="3clF47">
        <node concept="3SKdUt" id="6yxoGioiBsu" role="3cqZAp">
          <node concept="1PaTwC" id="6yxoGioiBsv" role="1aUNEU">
            <node concept="3oM_SD" id="6yxoGioiBsw" role="1PaTwD">
              <property role="3oM_SC" value="Other" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiBsx" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiBsy" role="1PaTwD">
              <property role="3oM_SC" value="complex" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZzXM" role="1PaTwD">
              <property role="3oM_SC" value="(&amp;" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZzYr" role="1PaTwD">
              <property role="3oM_SC" value="stranger" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZzZl" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZzZw" role="1PaTwD">
              <property role="3oM_SC" value="less" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZzZG" role="1PaTwD">
              <property role="3oM_SC" value="definite)" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDk7" role="1PaTwD">
              <property role="3oM_SC" value="examples" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3ZtutR9ZD8T" role="3cqZAp">
          <node concept="1PaTwC" id="3ZtutR9ZD8U" role="1aUNEU">
            <node concept="3oM_SD" id="3ZtutR9ZDkr" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCY2" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDuZ" role="1PaTwD">
              <property role="3oM_SC" value="inference" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDD8" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDjj" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDjA" role="1PaTwD">
              <property role="3oM_SC" value="false" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1D4A" role="1PaTwD">
              <property role="3oM_SC" value="positives" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3ZtutRa1D4Y" role="3cqZAp">
          <node concept="1PaTwC" id="3ZtutRa1D4X" role="1aUNEU">
            <node concept="3oM_SD" id="3ZtutRa1D4W" role="1PaTwD">
              <property role="3oM_SC" value="(because" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1D4f" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1D2z" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1D2P" role="1PaTwD">
              <property role="3oM_SC" value="guarantee" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1D3g" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1D3s" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1DhV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1DiY" role="1PaTwD">
              <property role="3oM_SC" value="best" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1Dj8" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1Djr" role="1PaTwD">
              <property role="3oM_SC" value="even" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1DjJ" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1Dir" role="1PaTwD">
              <property role="3oM_SC" value="solution)," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3ZtutR9ZDJq" role="3cqZAp">
          <node concept="1PaTwC" id="3ZtutR9ZDJp" role="1aUNEU">
            <node concept="3oM_SD" id="3ZtutR9ZDJo" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDHb" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDHB" role="1PaTwD">
              <property role="3oM_SC" value="false" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDHO" role="1PaTwD">
              <property role="3oM_SC" value="negatives," />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDIa" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa1DiG" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDIp" role="1PaTwD">
              <property role="3oM_SC" value="shouldn't" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDG7" role="1PaTwD">
              <property role="3oM_SC" value="miss" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZDGi" role="1PaTwD">
              <property role="3oM_SC" value="errors." />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6yxoGiolck3" role="3cqZAp" />
        <node concept="3clFbF" id="6yxoGioiBsB" role="3cqZAp">
          <node concept="1rXfSq" id="6yxoGioiBsC" role="3clFbG">
            <ref role="37wK5l" node="554EtBHzeFe" resolve="acceptT1" />
            <node concept="1bVj0M" id="6yxoGioiBsD" role="37wK5m">
              <node concept="3clFbS" id="6yxoGioiBsE" role="1bW5cS">
                <node concept="3clFbF" id="6yxoGioiBsF" role="3cqZAp">
                  <node concept="37vLTI" id="6yxoGioiBsG" role="3clFbG">
                    <node concept="10Nm6u" id="6yxoGioiBsH" role="37vLTx" />
                    <node concept="37vLTw" id="6yxoGioiBsI" role="37vLTJ">
                      <ref role="3cqZAo" node="6yxoGioiBsJ" resolve="itS" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="6yxoGioiBsJ" role="1bW2Oz">
                <property role="TrG5h" value="itS" />
                <node concept="2jxLKc" id="6yxoGioiBsK" role="1tU5fm" />
              </node>
            </node>
            <node concept="37vLTw" id="6yxoGioiBsL" role="37wK5m">
              <ref role="3cqZAo" node="6yxoGioiBpu" resolve="b" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yxoGioiBsM" role="3cqZAp">
          <node concept="1rXfSq" id="6yxoGioiBsN" role="3clFbG">
            <ref role="37wK5l" node="554EtBHzeFe" resolve="acceptT1" />
            <node concept="1bVj0M" id="6yxoGioiBsO" role="37wK5m">
              <node concept="3clFbS" id="6yxoGioiBsP" role="1bW5cS">
                <node concept="3clFbF" id="6yxoGioiBsQ" role="3cqZAp">
                  <node concept="37vLTI" id="6yxoGioiBsR" role="3clFbG">
                    <node concept="37vLTw" id="6yxoGioiBsS" role="37vLTJ">
                      <ref role="3cqZAo" node="6yxoGioiBpu" resolve="b" />
                    </node>
                    <node concept="37vLTw" id="6yxoGioiBsT" role="37vLTx">
                      <ref role="3cqZAo" node="6yxoGioiBsU" resolve="itS" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="6yxoGioiBsU" role="1bW2Oz">
                <property role="TrG5h" value="itS" />
                <node concept="2jxLKc" id="6yxoGioiBsV" role="1tU5fm" />
              </node>
            </node>
            <node concept="37vLTw" id="6yxoGioiBsW" role="37wK5m">
              <ref role="3cqZAo" node="6yxoGioiBpu" resolve="b" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3ZtutR9ZCxD" role="3cqZAp">
          <node concept="1PaTwC" id="3ZtutR9ZCxE" role="1aUNEU">
            <node concept="3oM_SD" id="3ZtutR9ZCxF" role="1PaTwD">
              <property role="3oM_SC" value="while" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxG" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxH" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxI" role="1PaTwD">
              <property role="3oM_SC" value="solution," />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxJ" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxK" role="1PaTwD">
              <property role="3oM_SC" value="inference" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxL" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxM" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxN" role="1PaTwD">
              <property role="3oM_SC" value="designed" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxO" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxP" role="1PaTwD">
              <property role="3oM_SC" value="such" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxQ" role="1PaTwD">
              <property role="3oM_SC" value="full" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZCxR" role="1PaTwD">
              <property role="3oM_SC" value="inference" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="3ZtutR9ZCJU" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="6yxoGioiBsX" role="8Wnug">
            <node concept="1rXfSq" id="6yxoGioiBsY" role="3clFbG">
              <ref role="37wK5l" node="554EtBHzeFe" resolve="acceptT1" />
              <node concept="1bVj0M" id="6yxoGioiBsZ" role="37wK5m">
                <node concept="3clFbS" id="6yxoGioiBt0" role="1bW5cS">
                  <node concept="3clFbF" id="6yxoGioiBt1" role="3cqZAp">
                    <node concept="37vLTI" id="6yxoGioiBt2" role="3clFbG">
                      <node concept="10Nm6u" id="6yxoGioiBt3" role="37vLTx" />
                      <node concept="37vLTw" id="6yxoGioiBt4" role="37vLTJ">
                        <ref role="3cqZAo" node="6yxoGioiBt5" resolve="itS" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6yxoGioiBt5" role="1bW2Oz">
                  <property role="TrG5h" value="itS" />
                  <node concept="2jxLKc" id="6yxoGioiBt6" role="1tU5fm" />
                </node>
              </node>
              <node concept="10Nm6u" id="6yxoGioiBt7" role="37wK5m">
                <node concept="1U20sH" id="3ZtutR9ZzuF" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3ZtutR9ZBzu" role="3cqZAp">
          <node concept="1PaTwC" id="3ZtutR9ZBzv" role="1aUNEU">
            <node concept="3oM_SD" id="3ZtutR9ZBzw" role="1PaTwD">
              <property role="3oM_SC" value="while" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBOJ" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBOU" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBP6" role="1PaTwD">
              <property role="3oM_SC" value="solution," />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBPz" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBPD" role="1PaTwD">
              <property role="3oM_SC" value="inference" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBQp" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBQx" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBQE" role="1PaTwD">
              <property role="3oM_SC" value="designed" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBRc" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBS0" role="1PaTwD">
              <property role="3oM_SC" value="such" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBSk" role="1PaTwD">
              <property role="3oM_SC" value="full" />
            </node>
            <node concept="3oM_SD" id="3ZtutR9ZBSx" role="1PaTwD">
              <property role="3oM_SC" value="inference" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="3ZtutR9ZBSR" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="6yxoGioiBt8" role="8Wnug">
            <node concept="1rXfSq" id="6yxoGioiBt9" role="3clFbG">
              <ref role="37wK5l" node="554EtBHzeFe" resolve="acceptT1" />
              <node concept="1bVj0M" id="6yxoGioiBta" role="37wK5m">
                <node concept="3clFbS" id="6yxoGioiBtb" role="1bW5cS">
                  <node concept="3clFbF" id="6yxoGioiBtc" role="3cqZAp">
                    <node concept="37vLTI" id="6yxoGioiBtd" role="3clFbG">
                      <node concept="37vLTw" id="6yxoGioiBte" role="37vLTJ">
                        <ref role="3cqZAo" node="6yxoGioiBpu" resolve="b" />
                      </node>
                      <node concept="37vLTw" id="6yxoGioiBtf" role="37vLTx">
                        <ref role="3cqZAo" node="6yxoGioiBtg" resolve="itS" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6yxoGioiBtg" role="1bW2Oz">
                  <property role="TrG5h" value="itS" />
                  <node concept="2jxLKc" id="6yxoGioiBth" role="1tU5fm" />
                </node>
              </node>
              <node concept="37vLTw" id="6yxoGioiBti" role="37wK5m">
                <ref role="3cqZAo" node="6yxoGioiBpw" resolve="c" />
                <node concept="1U20sH" id="3ZtutR9ZzSm" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yxoGioiBtj" role="3cqZAp">
          <node concept="1rXfSq" id="6yxoGioiBtk" role="3clFbG">
            <ref role="37wK5l" node="554EtBHzeFe" resolve="acceptT1" />
            <node concept="1bVj0M" id="6yxoGioiBtl" role="37wK5m">
              <node concept="3clFbS" id="6yxoGioiBtm" role="1bW5cS">
                <node concept="3clFbF" id="6yxoGioiBtn" role="3cqZAp">
                  <node concept="37vLTI" id="6yxoGioiBto" role="3clFbG">
                    <node concept="37vLTw" id="6yxoGioiBtp" role="37vLTx">
                      <ref role="3cqZAo" node="6yxoGioiBpu" resolve="b" />
                    </node>
                    <node concept="37vLTw" id="6yxoGioiBtq" role="37vLTJ">
                      <ref role="3cqZAo" node="6yxoGioiBts" resolve="itS" />
                    </node>
                    <node concept="1U20sH" id="6yxoGioiBtr" role="lGtFl">
                      <property role="1U20sK" value="error" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="6yxoGioiBts" role="1bW2Oz">
                <property role="TrG5h" value="itS" />
                <node concept="2jxLKc" id="6yxoGioiBtt" role="1tU5fm" />
              </node>
            </node>
            <node concept="37vLTw" id="6yxoGioiBtu" role="37wK5m">
              <ref role="3cqZAo" node="6yxoGioiBpu" resolve="b" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6yxoGioiBtN" role="1B3o_S" />
      <node concept="3cqZAl" id="6yxoGioiBtO" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6yxoGioiBiJ" role="jymVt" />
    <node concept="3clFb_" id="6yxoGioiMym" role="jymVt">
      <property role="TrG5h" value="genericCollection" />
      <node concept="37vLTG" id="6yxoGioiNsG" role="3clF46">
        <property role="TrG5h" value="box" />
        <node concept="3uibUv" id="6yxoGioiOgU" role="1tU5fm">
          <ref role="3uigEE" node="6yxoGioixtS" resolve="ClosureParamInference.PairBox" />
          <node concept="3uibUv" id="6yxoGioiOkZ" role="11_B2D">
            <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
          </node>
          <node concept="3uibUv" id="6yxoGioiOri" role="11_B2D">
            <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6yxoGioiOCZ" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="6yxoGioiOD0" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHyc2M" resolve="ClosureParamInference.A" />
        </node>
      </node>
      <node concept="37vLTG" id="6yxoGioiOD1" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="6yxoGioiOD2" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
        </node>
      </node>
      <node concept="37vLTG" id="6yxoGioiOD3" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="6yxoGioiOD4" role="1tU5fm">
          <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
        </node>
      </node>
      <node concept="3clFbS" id="6yxoGioiMyp" role="3clF47">
        <node concept="3SKdUt" id="6yxoGioiR8Z" role="3cqZAp">
          <node concept="1PaTwC" id="6yxoGioiR90" role="1aUNEU">
            <node concept="3oM_SD" id="6yxoGioiR91" role="1PaTwD">
              <property role="3oM_SC" value="Checks" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRg4" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRgf" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRhj" role="1PaTwD">
              <property role="3oM_SC" value="var" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRhC" role="1PaTwD">
              <property role="3oM_SC" value="substitutions" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRhQ" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRi5" role="1PaTwD">
              <property role="3oM_SC" value="context" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRil" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRjz" role="1PaTwD">
              <property role="3oM_SC" value="taken" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRrr" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRsv" role="1PaTwD">
              <property role="3oM_SC" value="account" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRsN" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRt0" role="1PaTwD">
              <property role="3oM_SC" value="properly" />
            </node>
            <node concept="3oM_SD" id="6yxoGioiRtm" role="1PaTwD">
              <property role="3oM_SC" value="handled" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6yxoGioiSbT" role="3cqZAp" />
        <node concept="3clFbH" id="3ZtutRa2EWS" role="3cqZAp" />
        <node concept="3cpWs8" id="6yxoGioiQwH" role="3cqZAp">
          <node concept="3cpWsn" id="6yxoGioiQwI" role="3cpWs9">
            <property role="TrG5h" value="ggw1" />
            <node concept="3uibUv" id="6yxoGioiQwJ" role="1tU5fm">
              <ref role="3uigEE" node="554EtBHOWUr" resolve="ClosureParamInference.GGWorker" />
              <node concept="3uibUv" id="6yxoGioiQwK" role="11_B2D">
                <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
              </node>
              <node concept="3uibUv" id="6yxoGioiQwL" role="11_B2D">
                <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
              </node>
            </node>
            <node concept="1bVj0M" id="6yxoGioiQwM" role="33vP2m">
              <node concept="3clFbS" id="6yxoGioiQwN" role="1bW5cS">
                <node concept="3clFbF" id="6yxoGioiQwO" role="3cqZAp">
                  <node concept="37vLTI" id="6yxoGioiQwP" role="3clFbG">
                    <node concept="37vLTw" id="6yxoGioiQwQ" role="37vLTx">
                      <ref role="3cqZAo" node="6yxoGioiQwU" resolve="itC" />
                    </node>
                    <node concept="37vLTw" id="6yxoGioiQwR" role="37vLTJ">
                      <ref role="3cqZAo" node="6yxoGioiQwS" resolve="itB" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="6yxoGioiQwS" role="1bW2Oz">
                <property role="TrG5h" value="itB" />
                <node concept="2jxLKc" id="6yxoGioiQwT" role="1tU5fm" />
              </node>
              <node concept="Rh6nW" id="6yxoGioiQwU" role="1bW2Oz">
                <property role="TrG5h" value="itC" />
                <node concept="2jxLKc" id="6yxoGioiQwV" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yxoGioiSj2" role="3cqZAp">
          <node concept="2OqwBi" id="6yxoGioiSj3" role="3clFbG">
            <node concept="37vLTw" id="6yxoGioiSj4" role="2Oq$k0">
              <ref role="3cqZAo" node="6yxoGioiNsG" resolve="box" />
            </node>
            <node concept="liA8E" id="6yxoGioiSj5" role="2OqNvi">
              <ref role="37wK5l" node="6yxoGioiyzB" resolve="processElement" />
              <node concept="37vLTw" id="6yxoGioiS_W" role="37wK5m">
                <ref role="3cqZAo" node="6yxoGioiQwI" resolve="ggw1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6yxoGioiRkg" role="3cqZAp" />
        <node concept="3clFbF" id="3ZtutRa2FHn" role="3cqZAp">
          <node concept="2OqwBi" id="3ZtutRa2FHo" role="3clFbG">
            <node concept="37vLTw" id="3ZtutRa2FHp" role="2Oq$k0">
              <ref role="3cqZAo" node="6yxoGioiNsG" resolve="box" />
            </node>
            <node concept="liA8E" id="3ZtutRa2FHq" role="2OqNvi">
              <ref role="37wK5l" node="6yxoGioiyzB" resolve="processElement" />
              <node concept="1bVj0M" id="3ZtutRa2FHr" role="37wK5m">
                <node concept="37vLTG" id="3ZtutRa2Gks" role="1bW2Oz">
                  <property role="TrG5h" value="bb" />
                  <node concept="3uibUv" id="3ZtutRa2Gm2" role="1tU5fm">
                    <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
                  </node>
                </node>
                <node concept="37vLTG" id="3ZtutRa2GuP" role="1bW2Oz">
                  <property role="TrG5h" value="cc" />
                  <node concept="3uibUv" id="3ZtutRa2GyH" role="1tU5fm">
                    <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
                  </node>
                </node>
                <node concept="3clFbS" id="3ZtutRa2FHs" role="1bW5cS">
                  <node concept="3clFbF" id="3ZtutRa2FHt" role="3cqZAp">
                    <node concept="37vLTI" id="3ZtutRa2FHu" role="3clFbG">
                      <node concept="37vLTw" id="3ZtutRa2GH7" role="37vLTx">
                        <ref role="3cqZAo" node="3ZtutRa2GuP" resolve="cc" />
                      </node>
                      <node concept="37vLTw" id="3ZtutRa2GE3" role="37vLTJ">
                        <ref role="3cqZAo" node="3ZtutRa2Gks" resolve="bb" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3ZtutRa2OA5" role="3cqZAp">
          <node concept="1PaTwC" id="3ZtutRa2OA6" role="1aUNEU">
            <node concept="3oM_SD" id="3ZtutRa2OA7" role="1PaTwD">
              <property role="3oM_SC" value="contravariant" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa2ORu" role="1PaTwD">
              <property role="3oM_SC" value="args," />
            </node>
            <node concept="3oM_SD" id="3ZtutRa2ORx" role="1PaTwD">
              <property role="3oM_SC" value="ok" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ZtutRa2KMu" role="3cqZAp">
          <node concept="2OqwBi" id="3ZtutRa2KMv" role="3clFbG">
            <node concept="37vLTw" id="3ZtutRa2KMw" role="2Oq$k0">
              <ref role="3cqZAo" node="6yxoGioiNsG" resolve="box" />
            </node>
            <node concept="liA8E" id="3ZtutRa2KMx" role="2OqNvi">
              <ref role="37wK5l" node="6yxoGioiyzB" resolve="processElement" />
              <node concept="1bVj0M" id="3ZtutRa2KMy" role="37wK5m">
                <node concept="37vLTG" id="3ZtutRa2KMz" role="1bW2Oz">
                  <property role="TrG5h" value="aa1" />
                  <node concept="3uibUv" id="3ZtutRa2O5s" role="1tU5fm">
                    <ref role="3uigEE" node="554EtBHyc2M" resolve="ClosureParamInference.A" />
                  </node>
                </node>
                <node concept="37vLTG" id="3ZtutRa2KM_" role="1bW2Oz">
                  <property role="TrG5h" value="aa2" />
                  <node concept="3uibUv" id="3ZtutRa2LrO" role="1tU5fm">
                    <ref role="3uigEE" node="554EtBHyc2M" resolve="ClosureParamInference.A" />
                  </node>
                </node>
                <node concept="3clFbS" id="3ZtutRa2KMB" role="1bW5cS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ZtutRa2OT4" role="3cqZAp">
          <node concept="2OqwBi" id="3ZtutRa2OT5" role="3clFbG">
            <node concept="37vLTw" id="3ZtutRa2OT6" role="2Oq$k0">
              <ref role="3cqZAo" node="6yxoGioiNsG" resolve="box" />
            </node>
            <node concept="liA8E" id="3ZtutRa2OT7" role="2OqNvi">
              <ref role="37wK5l" node="6yxoGioiyzB" resolve="processElement" />
              <node concept="1bVj0M" id="3ZtutRa2OT8" role="37wK5m">
                <node concept="37vLTG" id="3ZtutRa2OT9" role="1bW2Oz">
                  <property role="TrG5h" value="cc1" />
                  <node concept="3uibUv" id="3ZtutRa2Pl9" role="1tU5fm">
                    <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
                  </node>
                </node>
                <node concept="37vLTG" id="3ZtutRa2OTb" role="1bW2Oz">
                  <property role="TrG5h" value="cc2" />
                  <node concept="3uibUv" id="3ZtutRa2PpD" role="1tU5fm">
                    <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
                  </node>
                </node>
                <node concept="3clFbS" id="3ZtutRa2OTd" role="1bW5cS" />
                <node concept="1U20sH" id="3ZtutRa2QMv" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3ZtutRa2WgF" role="3cqZAp" />
        <node concept="3SKdUt" id="3ZtutRa368f" role="3cqZAp">
          <node concept="1PaTwC" id="3ZtutRa368g" role="1aUNEU">
            <node concept="3oM_SD" id="3ZtutRa368h" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa36wo" role="1PaTwD">
              <property role="3oM_SC" value="vars" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa36wG" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa36x0" role="1PaTwD">
              <property role="3oM_SC" value="mix" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa36xd" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa36xj" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa36xy" role="1PaTwD">
              <property role="3oM_SC" value="ground" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa36xM" role="1PaTwD">
              <property role="3oM_SC" value="types" />
            </node>
            <node concept="3oM_SD" id="3ZtutRa36xV" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ZtutRa2Xt8" role="3cqZAp">
          <node concept="2OqwBi" id="3ZtutRa2Xt9" role="3clFbG">
            <node concept="37vLTw" id="3ZtutRa2Xta" role="2Oq$k0">
              <ref role="3cqZAo" node="6yxoGioiNsG" resolve="box" />
            </node>
            <node concept="liA8E" id="3ZtutRa2Xtb" role="2OqNvi">
              <ref role="37wK5l" node="6yxoGioiyzB" resolve="processElement" />
              <node concept="1bVj0M" id="3ZtutRa2Xtc" role="37wK5m">
                <node concept="37vLTG" id="3ZtutRa2Xtd" role="1bW2Oz">
                  <property role="TrG5h" value="yy" />
                  <node concept="16syzq" id="3ZtutRa2Yzv" role="1tU5fm">
                    <ref role="16sUi3" node="3ZtutRa2Ukq" resolve="Y1" />
                  </node>
                </node>
                <node concept="37vLTG" id="3ZtutRa2Xtf" role="1bW2Oz">
                  <property role="TrG5h" value="zz" />
                  <node concept="16syzq" id="3ZtutRa2ZKW" role="1tU5fm">
                    <ref role="16sUi3" node="3ZtutRa2VcN" resolve="Z1" />
                  </node>
                </node>
                <node concept="3clFbS" id="3ZtutRa2Xth" role="1bW5cS" />
                <node concept="1U20sH" id="3ZtutRa35DM" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ZtutRa2ZVO" role="3cqZAp">
          <node concept="2OqwBi" id="3ZtutRa2ZVP" role="3clFbG">
            <node concept="37vLTw" id="3ZtutRa2ZVQ" role="2Oq$k0">
              <ref role="3cqZAo" node="6yxoGioiNsG" resolve="box" />
            </node>
            <node concept="liA8E" id="3ZtutRa2ZVR" role="2OqNvi">
              <ref role="37wK5l" node="6yxoGioiyzB" resolve="processElement" />
              <node concept="1bVj0M" id="3ZtutRa2ZVS" role="37wK5m">
                <node concept="37vLTG" id="3ZtutRa2ZVT" role="1bW2Oz">
                  <property role="TrG5h" value="zz1" />
                  <node concept="16syzq" id="3ZtutRa30_m" role="1tU5fm">
                    <ref role="16sUi3" node="3ZtutRa2VcN" resolve="Z1" />
                  </node>
                </node>
                <node concept="37vLTG" id="3ZtutRa2ZVV" role="1bW2Oz">
                  <property role="TrG5h" value="zz2" />
                  <node concept="16syzq" id="3ZtutRa2ZVW" role="1tU5fm">
                    <ref role="16sUi3" node="3ZtutRa2VcN" resolve="Z1" />
                  </node>
                </node>
                <node concept="3clFbS" id="3ZtutRa2ZVX" role="1bW5cS" />
                <node concept="1U20sH" id="3ZtutRa30Fr" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3ZtutRa2Wiq" role="3cqZAp" />
        <node concept="3clFbF" id="6yxoGioiQEz" role="3cqZAp">
          <node concept="2OqwBi" id="6yxoGioiQJB" role="3clFbG">
            <node concept="37vLTw" id="6yxoGioiQEx" role="2Oq$k0">
              <ref role="3cqZAo" node="6yxoGioiNsG" resolve="box" />
            </node>
            <node concept="liA8E" id="6yxoGioiQSn" role="2OqNvi">
              <ref role="37wK5l" node="6yxoGioiyzB" resolve="processElement" />
              <node concept="1bVj0M" id="6yxoGioiQUE" role="37wK5m">
                <node concept="3clFbS" id="6yxoGioiQUF" role="1bW5cS">
                  <node concept="3clFbF" id="6yxoGioiQUG" role="3cqZAp">
                    <node concept="37vLTI" id="6yxoGioiQUH" role="3clFbG">
                      <node concept="37vLTw" id="6yxoGioiQUI" role="37vLTx">
                        <ref role="3cqZAo" node="6yxoGioiQUM" resolve="itC" />
                      </node>
                      <node concept="37vLTw" id="6yxoGioiQUJ" role="37vLTJ">
                        <ref role="3cqZAo" node="6yxoGioiQUK" resolve="itB" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6yxoGioiQUK" role="1bW2Oz">
                  <property role="TrG5h" value="itB" />
                  <node concept="2jxLKc" id="6yxoGioiQUL" role="1tU5fm" />
                </node>
                <node concept="Rh6nW" id="6yxoGioiQUM" role="1bW2Oz">
                  <property role="TrG5h" value="itC" />
                  <node concept="2jxLKc" id="6yxoGioiQUN" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ZtutRa2Re4" role="3cqZAp">
          <node concept="2OqwBi" id="3ZtutRa2Re5" role="3clFbG">
            <node concept="37vLTw" id="3ZtutRa2Re6" role="2Oq$k0">
              <ref role="3cqZAo" node="6yxoGioiNsG" resolve="box" />
            </node>
            <node concept="liA8E" id="3ZtutRa2Re7" role="2OqNvi">
              <ref role="37wK5l" node="6yxoGioiyzB" resolve="processElement" />
              <node concept="1bVj0M" id="3ZtutRa2Re8" role="37wK5m">
                <node concept="3clFbS" id="3ZtutRa2Re9" role="1bW5cS">
                  <node concept="3clFbF" id="3ZtutRa2Rea" role="3cqZAp">
                    <node concept="37vLTI" id="3ZtutRa2Reb" role="3clFbG">
                      <node concept="37vLTw" id="3ZtutRa2Rec" role="37vLTx">
                        <ref role="3cqZAo" node="3ZtutRa2Reg" resolve="itC" />
                      </node>
                      <node concept="37vLTw" id="3ZtutRa2SEJ" role="37vLTJ">
                        <ref role="3cqZAo" node="3ZtutRa2SqM" resolve="cc1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="3ZtutRa2SqM" role="1bW2Oz">
                  <property role="TrG5h" value="cc1" />
                  <node concept="3uibUv" id="3ZtutRa2SqN" role="1tU5fm">
                    <ref role="3uigEE" node="554EtBHyc2R" resolve="ClosureParamInference.C" />
                  </node>
                </node>
                <node concept="Rh6nW" id="3ZtutRa2Reg" role="1bW2Oz">
                  <property role="TrG5h" value="itC" />
                  <node concept="2jxLKc" id="3ZtutRa2Reh" role="1tU5fm" />
                </node>
                <node concept="1U20sH" id="3ZtutRa2TUl" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6yxoGioiAg_" role="1B3o_S" />
      <node concept="3cqZAl" id="6yxoGioiBat" role="3clF45" />
      <node concept="16euLQ" id="3ZtutRa2YM8" role="16eVyc">
        <property role="TrG5h" value="X1" />
        <node concept="3uibUv" id="3ZtutRa2ZC2" role="3ztrMU">
          <ref role="3uigEE" node="554EtBHyc2M" resolve="ClosureParamInference.A" />
        </node>
      </node>
      <node concept="16euLQ" id="3ZtutRa2Ukq" role="16eVyc">
        <property role="TrG5h" value="Y1" />
        <node concept="3uibUv" id="3ZtutRa2VcR" role="3ztrMU">
          <ref role="3uigEE" node="554EtBHyc2O" resolve="ClosureParamInference.B" />
        </node>
      </node>
      <node concept="16euLQ" id="3ZtutRa2VcN" role="16eVyc">
        <property role="TrG5h" value="Z1" />
        <node concept="16syzq" id="3ZtutRa32QD" role="3ztrMU">
          <ref role="16sUi3" node="3ZtutRa2Ukq" resolve="Y1" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="554EtBHyc7F" role="jymVt" />
    <node concept="3Tm1VV" id="554EtBHyc7G" role="1B3o_S" />
  </node>
</model>

