<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8120c428-409e-4440-ae27-dee0e1ff9b30(jetbrains.mps.baseLanguage.closuresExt.test.closures)" doNotGenerate="true">
  <persistence version="9" />
  <languages>
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="9e36d2ee-c59c-4580-9e81-646748d0614b" name="jetbrains.mps.baseLanguage.closuresExt" version="0" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
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
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
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
  </registry>
  <node concept="312cEu" id="4E290qQ09_i">
    <property role="TrG5h" value="ClosureConversions" />
    <node concept="2tJIrI" id="4E290qQ0cQU" role="jymVt" />
    <node concept="3HP615" id="1VVYAp1Nyuf" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="I" />
      <node concept="3Tm1VV" id="1VVYAp1Nysz" role="1B3o_S" />
    </node>
    <node concept="3HP615" id="1VVYAp1Nyx1" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="J" />
      <node concept="3Tm1VV" id="1VVYAp1Nyx2" role="1B3o_S" />
      <node concept="3uibUv" id="1VVYAp1NyAB" role="3HQHJm">
        <ref role="3uigEE" node="1VVYAp1Nyuf" resolve="ClosureConversions.I" />
      </node>
    </node>
    <node concept="3HP615" id="1VVYAp1NyyQ" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="K" />
      <node concept="3Tm1VV" id="1VVYAp1NyyR" role="1B3o_S" />
      <node concept="3uibUv" id="1VVYAp1NyAc" role="3HQHJm">
        <ref role="3uigEE" node="1VVYAp1Nyx1" resolve="ClosureConversions.J" />
      </node>
    </node>
    <node concept="2tJIrI" id="1VVYAp1NyqU" role="jymVt" />
    <node concept="312cEu" id="4E290qQ0cUR" role="jymVt">
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="4E290qQ0cSQ" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="4E290qQ0cZA" role="jymVt">
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="4E290qQ0cZB" role="1B3o_S" />
      <node concept="3uibUv" id="4E290qQ0d2B" role="1zkMxy">
        <ref role="3uigEE" node="4E290qQ0cUR" resolve="ClosureConversions.A" />
      </node>
    </node>
    <node concept="312cEu" id="1VVYAp1NymX" role="jymVt">
      <property role="TrG5h" value="C" />
      <node concept="3Tm1VV" id="1VVYAp1NymY" role="1B3o_S" />
      <node concept="3uibUv" id="1VVYAp1Nyp5" role="1zkMxy">
        <ref role="3uigEE" node="4E290qQ0cZA" resolve="ClosureConversions.B" />
      </node>
    </node>
    <node concept="2tJIrI" id="6jkHA5M_Kj7" role="jymVt" />
    <node concept="3clFb_" id="6jkHA5M_Kng" role="jymVt">
      <property role="TrG5h" value="accept1" />
      <node concept="3clFbS" id="6jkHA5M_Knh" role="3clF47">
        <node concept="3clFbF" id="4$mmEcR7mxj" role="3cqZAp">
          <node concept="2Sg_IR" id="4$mmEcR7mTt" role="3clFbG">
            <node concept="10Nm6u" id="4$mmEcR7N6e" role="2SgHGx" />
            <node concept="37vLTw" id="4$mmEcR7mTu" role="2SgG2M">
              <ref role="3cqZAo" node="6jkHA5M_Knk" resolve="bl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6jkHA5M_Kni" role="1B3o_S" />
      <node concept="16syzq" id="4$mmEcR7hXE" role="3clF45">
        <ref role="16sUi3" node="6jkHA5M_Kno" resolve="TR" />
      </node>
      <node concept="37vLTG" id="6jkHA5M_Knk" role="3clF46">
        <property role="TrG5h" value="bl" />
        <node concept="1ajhzC" id="6jkHA5M_Knl" role="1tU5fm">
          <node concept="16syzq" id="6jkHA5M_Knm" role="1ajw0F">
            <ref role="16sUi3" node="6jkHA5M_Knp" resolve="TA" />
          </node>
          <node concept="16syzq" id="6jkHA5M_Knn" role="1ajl9A">
            <ref role="16sUi3" node="6jkHA5M_Kno" resolve="TR" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6jkHA5M_Kno" role="16eVyc">
        <property role="TrG5h" value="TR" />
      </node>
      <node concept="16euLQ" id="6jkHA5M_Knp" role="16eVyc">
        <property role="TrG5h" value="TA" />
      </node>
    </node>
    <node concept="2tJIrI" id="6cpb0qWvLWV" role="jymVt" />
    <node concept="3clFb_" id="1VVYAp1NxpJ" role="jymVt">
      <property role="TrG5h" value="subtypingNoArgs" />
      <node concept="37vLTG" id="1VVYAp1Nxw6" role="3clF46">
        <property role="TrG5h" value="enterTheVoid" />
        <node concept="1ajhzC" id="1VVYAp1NxwL" role="1tU5fm">
          <node concept="3cqZAl" id="1VVYAp1Nxxb" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="1VVYAp1NxqT" role="3clF46">
        <property role="TrG5h" value="getA" />
        <node concept="1ajhzC" id="1VVYAp1Nxrt" role="1tU5fm">
          <node concept="3uibUv" id="1VVYAp1NxrR" role="1ajl9A">
            <ref role="3uigEE" node="4E290qQ0cUR" resolve="ClosureConversions.A" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1VVYAp1NxtP" role="3clF46">
        <property role="TrG5h" value="getB" />
        <node concept="1ajhzC" id="1VVYAp1Nxuy" role="1tU5fm">
          <node concept="3uibUv" id="1VVYAp1NxuW" role="1ajl9A">
            <ref role="3uigEE" node="4E290qQ0cZA" resolve="ClosureConversions.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1VVYAp1NxD0" role="3clF46">
        <property role="TrG5h" value="getObject" />
        <node concept="1ajhzC" id="1VVYAp1NxDI" role="1tU5fm">
          <node concept="3uibUv" id="1VVYAp1NxE8" role="1ajl9A">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1VVYAp1NxpM" role="3clF47">
        <node concept="3clFbF" id="1VVYAp1N$5V" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1N$6M" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1N$7A" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1Nxw6" resolve="enterTheVoid" />
            </node>
            <node concept="37vLTw" id="1VVYAp1N$5T" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1Nxw6" resolve="enterTheVoid" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VVYAp1N$99" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1N$a4" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1N$aS" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1NxD0" resolve="getObject" />
            </node>
            <node concept="37vLTw" id="1VVYAp1N$97" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1NxD0" resolve="getObject" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1VVYAp1N$bD" role="3cqZAp" />
        <node concept="3clFbF" id="1VVYAp1Nx$Y" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1Nx_z" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1NxG9" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1NxD0" resolve="getObject" />
            </node>
            <node concept="37vLTw" id="1VVYAp1Nx$W" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1Nxw6" resolve="enterTheVoid" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VVYAp1NxBH" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1NxCm" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1NxI9" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1Nxw6" resolve="enterTheVoid" />
            </node>
            <node concept="37vLTw" id="1VVYAp1NxHp" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1NxD0" resolve="getObject" />
            </node>
            <node concept="1U20sH" id="1VVYAp1NxKg" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VVYAp1NxLN" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1NxMx" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1NxNl" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1NxtP" resolve="getB" />
            </node>
            <node concept="37vLTw" id="1VVYAp1NxLL" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1NxqT" resolve="getA" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VVYAp1NxPu" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1NxQg" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1NxR4" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1NxqT" resolve="getA" />
            </node>
            <node concept="37vLTw" id="1VVYAp1NxPs" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1NxtP" resolve="getB" />
            </node>
            <node concept="1U20sH" id="1VVYAp1NxTt" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6jkHA5M_OIH" role="3cqZAp" />
        <node concept="3clFbF" id="6jkHA5M_Yt4" role="3cqZAp">
          <node concept="1rXfSq" id="6jkHA5M_Yt5" role="3clFbG">
            <ref role="37wK5l" node="6jkHA5M_Kng" resolve="accept1" />
            <node concept="37vLTw" id="6jkHA5M_Yt6" role="37wK5m">
              <ref role="3cqZAo" node="1VVYAp1NxtP" resolve="getB" />
              <node concept="1U20sH" id="6jkHA5M_Yt7" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6jkHA5M_VRS" role="3cqZAp">
          <node concept="1rXfSq" id="6jkHA5M_VRT" role="3clFbG">
            <ref role="37wK5l" node="6jkHA5M_Kng" resolve="accept1" />
            <node concept="37vLTw" id="6jkHA5M_VRU" role="37wK5m">
              <ref role="3cqZAo" node="1VVYAp1Nxw6" resolve="enterTheVoid" />
              <node concept="1U20sH" id="6jkHA5M_VRV" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1VVYAp1Nxpd" role="3clF45" />
      <node concept="3Tm1VV" id="1VVYAp1NxUM" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1VVYAp1Ny21" role="jymVt" />
    <node concept="3clFb_" id="1VVYAp1NxVj" role="jymVt">
      <property role="TrG5h" value="subtyping2" />
      <node concept="37vLTG" id="1VVYAp1NxVn" role="3clF46">
        <property role="TrG5h" value="f2" />
        <node concept="1ajhzC" id="1VVYAp1NxVo" role="1tU5fm">
          <node concept="3cqZAl" id="1VVYAp1Nz0j" role="1ajl9A" />
          <node concept="3uibUv" id="1VVYAp1NyLK" role="1ajw0F">
            <ref role="3uigEE" node="1VVYAp1Nyx1" resolve="ClosureConversions.J" />
          </node>
          <node concept="3uibUv" id="1VVYAp1NyPL" role="1ajw0F">
            <ref role="3uigEE" node="4E290qQ0cZA" resolve="ClosureConversions.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1VVYAp1NxVq" role="3clF46">
        <property role="TrG5h" value="f1" />
        <node concept="1ajhzC" id="1VVYAp1NxVr" role="1tU5fm">
          <node concept="3uibUv" id="1VVYAp1Nza1" role="1ajw0F">
            <ref role="3uigEE" node="1VVYAp1Nyuf" resolve="ClosureConversions.I" />
          </node>
          <node concept="3uibUv" id="1VVYAp1NziI" role="1ajw0F">
            <ref role="3uigEE" node="4E290qQ0cUR" resolve="ClosureConversions.A" />
          </node>
          <node concept="3cqZAl" id="1VVYAp1Nz2S" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="3ySbbJmuj43" role="3clF46">
        <property role="TrG5h" value="enterTheVoid" />
        <node concept="1ajhzC" id="3ySbbJmuj44" role="1tU5fm">
          <node concept="3uibUv" id="3ySbbJmuj45" role="1ajw0F">
            <ref role="3uigEE" node="1VVYAp1Nyx1" resolve="ClosureConversions.J" />
          </node>
          <node concept="3cqZAl" id="3ySbbJmukyC" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="1VVYAp1Nzuk" role="3clF46">
        <property role="TrG5h" value="g2" />
        <node concept="1ajhzC" id="1VVYAp1NzxX" role="1tU5fm">
          <node concept="3uibUv" id="1VVYAp1NzzD" role="1ajw0F">
            <ref role="3uigEE" node="1VVYAp1Nyx1" resolve="ClosureConversions.J" />
          </node>
          <node concept="3uibUv" id="1VVYAp1Nzyn" role="1ajl9A">
            <ref role="3uigEE" node="4E290qQ0cUR" resolve="ClosureConversions.A" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1VVYAp1Nz$W" role="3clF46">
        <property role="TrG5h" value="g1" />
        <node concept="1ajhzC" id="1VVYAp1Nz$X" role="1tU5fm">
          <node concept="3uibUv" id="1VVYAp1NzFA" role="1ajw0F">
            <ref role="3uigEE" node="1VVYAp1Nyuf" resolve="ClosureConversions.I" />
          </node>
          <node concept="3uibUv" id="1VVYAp1NzEE" role="1ajl9A">
            <ref role="3uigEE" node="4E290qQ0cZA" resolve="ClosureConversions.B" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1VVYAp1NxVw" role="3clF47">
        <node concept="3clFbF" id="1VVYAp1N$do" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1N$eq" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1N$fp" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1NxVn" resolve="f2" />
            </node>
            <node concept="37vLTw" id="1VVYAp1N$dm" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1NxVn" resolve="f2" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VVYAp1NzTS" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1NzVt" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1NzWu" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1Nzuk" resolve="g2" />
            </node>
            <node concept="37vLTw" id="1VVYAp1NzUQ" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1Nzuk" resolve="g2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1VVYAp1N$cd" role="3cqZAp" />
        <node concept="3clFbF" id="1VVYAp1NzHo" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1NzIO" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1NzJP" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1Nz$W" resolve="g1" />
            </node>
            <node concept="37vLTw" id="1VVYAp1NzId" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1Nzuk" resolve="g2" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VVYAp1NzNd" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1NzOb" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1NzPc" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1Nzuk" resolve="g2" />
            </node>
            <node concept="37vLTw" id="1VVYAp1NzNb" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1Nz$W" resolve="g1" />
            </node>
            <node concept="1U20sH" id="1VVYAp1NzRW" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VVYAp1NxVE" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1NxVF" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1NxVG" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1NxVq" resolve="f1" />
            </node>
            <node concept="37vLTw" id="1VVYAp1NxVH" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1NxVn" resolve="f2" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VVYAp1NxVI" role="3cqZAp">
          <node concept="37vLTI" id="1VVYAp1NxVJ" role="3clFbG">
            <node concept="37vLTw" id="1VVYAp1NxVK" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1NxVn" resolve="f2" />
            </node>
            <node concept="37vLTw" id="1VVYAp1NxVL" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1NxVq" resolve="f1" />
            </node>
            <node concept="1U20sH" id="1VVYAp1NxVM" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4S1mDSNO6bG" role="3cqZAp" />
        <node concept="3clFbF" id="4S1mDSNO6cT" role="3cqZAp">
          <node concept="37vLTI" id="4S1mDSNO6e0" role="3clFbG">
            <node concept="37vLTw" id="4S1mDSNO6fe" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1Nz$W" resolve="g1" />
            </node>
            <node concept="37vLTw" id="4S1mDSNO6cR" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1NxVn" resolve="f2" />
            </node>
            <node concept="1U20sH" id="4S1mDSNO6mM" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4S1mDSNO6hn" role="3cqZAp">
          <node concept="37vLTI" id="4S1mDSNO6ig" role="3clFbG">
            <node concept="37vLTw" id="4S1mDSNO6hl" role="37vLTJ">
              <ref role="3cqZAo" node="1VVYAp1Nz$W" resolve="g1" />
            </node>
            <node concept="37vLTw" id="4S1mDSNO6ly" role="37vLTx">
              <ref role="3cqZAo" node="1VVYAp1NxVn" resolve="f2" />
            </node>
            <node concept="1U20sH" id="4S1mDSNO6o3" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6jkHA5M_SFT" role="3cqZAp" />
        <node concept="3clFbF" id="6jkHA5M_S7C" role="3cqZAp">
          <node concept="1rXfSq" id="6jkHA5M_S7D" role="3clFbG">
            <ref role="37wK5l" node="6jkHA5M_Kng" resolve="accept1" />
            <node concept="37vLTw" id="6jkHA5M_UBk" role="37wK5m">
              <ref role="3cqZAo" node="1VVYAp1Nz$W" resolve="g1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ySbbJmukQJ" role="3cqZAp">
          <node concept="1rXfSq" id="3ySbbJmukQK" role="3clFbG">
            <ref role="37wK5l" node="6jkHA5M_Kng" resolve="accept1" />
            <node concept="37vLTw" id="3ySbbJmukQL" role="37wK5m">
              <ref role="3cqZAo" node="1VVYAp1Nz$W" resolve="g1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6jkHA5M_TLR" role="3cqZAp">
          <node concept="1rXfSq" id="6jkHA5M_TLS" role="3clFbG">
            <ref role="37wK5l" node="6jkHA5M_Kng" resolve="accept1" />
            <node concept="37vLTw" id="3ySbbJmulOT" role="37wK5m">
              <ref role="3cqZAo" node="3ySbbJmuj43" resolve="enterTheVoid" />
              <node concept="1U20sH" id="3ySbbJmumLc" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6jkHA5M_SGx" role="3cqZAp" />
      </node>
      <node concept="3cqZAl" id="1VVYAp1NxVN" role="3clF45" />
      <node concept="3Tm1VV" id="1VVYAp1NxVO" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4E290qQ09_j" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4S1mDSNPBsJ">
    <property role="TrG5h" value="ClosureInvocations" />
    <node concept="2tJIrI" id="4S1mDSNPBtp" role="jymVt" />
    <node concept="312cEu" id="4S1mDSNPBAM" role="jymVt">
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="4S1mDSNPBAN" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="4S1mDSNPBAO" role="jymVt">
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="4S1mDSNPBAP" role="1B3o_S" />
      <node concept="3uibUv" id="4S1mDSNPBAQ" role="1zkMxy">
        <ref role="3uigEE" node="4S1mDSNPBAM" resolve="ClosureInvocations.A" />
      </node>
    </node>
    <node concept="312cEu" id="4S1mDSNPBAR" role="jymVt">
      <property role="TrG5h" value="C" />
      <node concept="3Tm1VV" id="4S1mDSNPBAS" role="1B3o_S" />
      <node concept="3uibUv" id="4S1mDSNPBAT" role="1zkMxy">
        <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
      </node>
    </node>
    <node concept="2tJIrI" id="4S1mDSNPBAi" role="jymVt" />
    <node concept="3clFb_" id="4S1mDSNPBud" role="jymVt">
      <property role="TrG5h" value="basicInvoke" />
      <node concept="37vLTG" id="4S1mDSNPC0n" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="4S1mDSNPD6O" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~Serializable" resolve="Serializable" />
        </node>
      </node>
      <node concept="37vLTG" id="4S1mDSNPBCP" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="4S1mDSNPBDC" role="1tU5fm">
          <ref role="3uigEE" node="4S1mDSNPBAM" resolve="ClosureInvocations.A" />
        </node>
      </node>
      <node concept="37vLTG" id="4S1mDSNPBEu" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="4S1mDSNPBFm" role="1tU5fm">
          <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
        </node>
      </node>
      <node concept="37vLTG" id="4S1mDSNPBFp" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="4S1mDSNPBGr" role="1tU5fm">
          <ref role="3uigEE" node="4S1mDSNPBAR" resolve="ClosureInvocations.C" />
        </node>
      </node>
      <node concept="37vLTG" id="4S1mDSNPBuC" role="3clF46">
        <property role="TrG5h" value="f1" />
        <node concept="1ajhzC" id="4S1mDSNPBv0" role="1tU5fm">
          <node concept="3uibUv" id="4S1mDSNPBHy" role="1ajl9A">
            <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4S1mDSNPBvL" role="3clF46">
        <property role="TrG5h" value="f2" />
        <node concept="1ajhzC" id="4S1mDSNPBwh" role="1tU5fm">
          <node concept="3uibUv" id="4S1mDSNPByR" role="1ajw0F">
            <ref role="3uigEE" to="guwi:~Serializable" resolve="Serializable" />
          </node>
          <node concept="3uibUv" id="4S1mDSNPBIf" role="1ajw0F">
            <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
          </node>
          <node concept="3uibUv" id="4S1mDSNPBJ3" role="1ajl9A">
            <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4S1mDSNPBug" role="3clF47">
        <node concept="3cpWs8" id="4S1mDSNPBPo" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNPBPp" role="3cpWs9">
            <property role="TrG5h" value="o1" />
            <node concept="3uibUv" id="4S1mDSNPBR2" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2Sg_IR" id="4S1mDSNPBPr" role="33vP2m">
              <node concept="37vLTw" id="4S1mDSNPBPs" role="2SgG2M">
                <ref role="3cqZAo" node="4S1mDSNPBuC" resolve="f1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4S1mDSNPB$H" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNPB$I" role="3cpWs9">
            <property role="TrG5h" value="b1" />
            <node concept="3uibUv" id="4S1mDSNPBJQ" role="1tU5fm">
              <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
            </node>
            <node concept="2Sg_IR" id="4S1mDSNPBLB" role="33vP2m">
              <node concept="37vLTw" id="4S1mDSNPBLC" role="2SgG2M">
                <ref role="3cqZAo" node="4S1mDSNPBuC" resolve="f1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4S1mDSNPBMC" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNPBMD" role="3cpWs9">
            <property role="TrG5h" value="c1" />
            <node concept="3uibUv" id="4S1mDSNPBOo" role="1tU5fm">
              <ref role="3uigEE" node="4S1mDSNPBAR" resolve="ClosureInvocations.C" />
            </node>
            <node concept="2Sg_IR" id="4S1mDSNPBMF" role="33vP2m">
              <node concept="37vLTw" id="4S1mDSNPBMG" role="2SgG2M">
                <ref role="3cqZAo" node="4S1mDSNPBuC" resolve="f1" />
              </node>
            </node>
            <node concept="1U20sH" id="4S1mDSNPBP8" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4S1mDSNPDy5" role="3cqZAp" />
        <node concept="3cpWs8" id="4S1mDSNPDk$" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNPDk_" role="3cpWs9">
            <property role="TrG5h" value="o2" />
            <node concept="3uibUv" id="4S1mDSNPDkA" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2Sg_IR" id="4S1mDSNPDkB" role="33vP2m">
              <node concept="37vLTw" id="4S1mDSNPDqy" role="2SgHGx">
                <ref role="3cqZAo" node="4S1mDSNPBEu" resolve="b" />
              </node>
              <node concept="37vLTw" id="4S1mDSNPDkC" role="2SgG2M">
                <ref role="3cqZAo" node="4S1mDSNPBuC" resolve="f1" />
              </node>
              <node concept="1U20sH" id="4S1mDSNPDxq" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4S1mDSNPDzs" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNPDzt" role="3cpWs9">
            <property role="TrG5h" value="o3" />
            <node concept="3uibUv" id="4S1mDSNPDzu" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2Sg_IR" id="4S1mDSNPDzv" role="33vP2m">
              <node concept="37vLTw" id="4S1mDSNPDzw" role="2SgHGx">
                <ref role="3cqZAo" node="4S1mDSNPBEu" resolve="b" />
              </node>
              <node concept="37vLTw" id="4S1mDSNPD_V" role="2SgG2M">
                <ref role="3cqZAo" node="4S1mDSNPBvL" resolve="f2" />
              </node>
              <node concept="1U20sH" id="4S1mDSNPDzy" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4S1mDSNPBUU" role="3cqZAp" />
        <node concept="3cpWs8" id="4S1mDSNPBVv" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNPBVw" role="3cpWs9">
            <property role="TrG5h" value="o4" />
            <node concept="3uibUv" id="4S1mDSNPBVx" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2Sg_IR" id="4S1mDSNPBVy" role="33vP2m">
              <node concept="37vLTw" id="4S1mDSNPBZq" role="2SgG2M">
                <ref role="3cqZAo" node="4S1mDSNPBvL" resolve="f2" />
              </node>
              <node concept="37vLTw" id="4S1mDSNPD8p" role="2SgHGx">
                <ref role="3cqZAo" node="4S1mDSNPC0n" resolve="s" />
              </node>
              <node concept="37vLTw" id="4S1mDSNPDf1" role="2SgHGx">
                <ref role="3cqZAo" node="4S1mDSNPBEu" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4S1mDSNPBV$" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNPBV_" role="3cpWs9">
            <property role="TrG5h" value="b2" />
            <node concept="3uibUv" id="4S1mDSNPBVA" role="1tU5fm">
              <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
            </node>
            <node concept="2Sg_IR" id="4S1mDSNPBVB" role="33vP2m">
              <node concept="37vLTw" id="4S1mDSNPDhw" role="2SgHGx">
                <ref role="3cqZAo" node="4S1mDSNPC0n" resolve="s" />
              </node>
              <node concept="37vLTw" id="4S1mDSNPDD2" role="2SgHGx">
                <ref role="3cqZAo" node="4S1mDSNPBFp" resolve="c" />
              </node>
              <node concept="37vLTw" id="4S1mDSNPBVC" role="2SgG2M">
                <ref role="3cqZAo" node="4S1mDSNPBuC" resolve="f1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4S1mDSNPBVD" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNPBVE" role="3cpWs9">
            <property role="TrG5h" value="a2" />
            <node concept="3uibUv" id="4S1mDSNPDHH" role="1tU5fm">
              <ref role="3uigEE" node="4S1mDSNPBAM" resolve="ClosureInvocations.A" />
            </node>
            <node concept="2Sg_IR" id="4S1mDSNPBVG" role="33vP2m">
              <node concept="37vLTw" id="4S1mDSNPDEO" role="2SgHGx">
                <ref role="3cqZAo" node="4S1mDSNPC0n" resolve="s" />
              </node>
              <node concept="37vLTw" id="4S1mDSNPDFY" role="2SgHGx">
                <ref role="3cqZAo" node="4S1mDSNPBCP" resolve="a" />
              </node>
              <node concept="37vLTw" id="4S1mDSNPBVH" role="2SgG2M">
                <ref role="3cqZAo" node="4S1mDSNPBuC" resolve="f1" />
              </node>
              <node concept="1U20sH" id="4S1mDSNPDH2" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4S1mDSNPBtM" role="1B3o_S" />
      <node concept="3cqZAl" id="4S1mDSNPBu2" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4yZzE4kOF11" role="jymVt" />
    <node concept="3clFb_" id="4yZzE4kOF3I" role="jymVt">
      <property role="TrG5h" value="invokeOp" />
      <node concept="37vLTG" id="4yZzE4kOF3J" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="4yZzE4kOF3K" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~Serializable" resolve="Serializable" />
        </node>
      </node>
      <node concept="37vLTG" id="4yZzE4kOF3L" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="4yZzE4kOF3M" role="1tU5fm">
          <ref role="3uigEE" node="4S1mDSNPBAM" resolve="ClosureInvocations.A" />
        </node>
      </node>
      <node concept="37vLTG" id="4yZzE4kOF3N" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="4yZzE4kOF3O" role="1tU5fm">
          <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
        </node>
      </node>
      <node concept="37vLTG" id="4yZzE4kOF3P" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="4yZzE4kOF3Q" role="1tU5fm">
          <ref role="3uigEE" node="4S1mDSNPBAR" resolve="ClosureInvocations.C" />
        </node>
      </node>
      <node concept="37vLTG" id="4yZzE4kOF3R" role="3clF46">
        <property role="TrG5h" value="f1" />
        <node concept="1ajhzC" id="4yZzE4kOF3S" role="1tU5fm">
          <node concept="3uibUv" id="4yZzE4kOF3T" role="1ajl9A">
            <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4yZzE4kOF3U" role="3clF46">
        <property role="TrG5h" value="f2" />
        <node concept="1ajhzC" id="4yZzE4kOF3V" role="1tU5fm">
          <node concept="3uibUv" id="4yZzE4kOF3W" role="1ajw0F">
            <ref role="3uigEE" to="guwi:~Serializable" resolve="Serializable" />
          </node>
          <node concept="3uibUv" id="4yZzE4kOF3X" role="1ajw0F">
            <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
          </node>
          <node concept="3uibUv" id="4yZzE4kOF3Y" role="1ajl9A">
            <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4yZzE4kOF3Z" role="3clF47">
        <node concept="3cpWs8" id="4yZzE4kOF40" role="3cqZAp">
          <node concept="3cpWsn" id="4yZzE4kOF41" role="3cpWs9">
            <property role="TrG5h" value="o1" />
            <node concept="3uibUv" id="4yZzE4kOF42" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="4yZzE4kOFkc" role="33vP2m">
              <node concept="37vLTw" id="4yZzE4kOF44" role="2Oq$k0">
                <ref role="3cqZAo" node="4yZzE4kOF3R" resolve="f1" />
              </node>
              <node concept="1Bd96e" id="4yZzE4kOFmU" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4yZzE4kOF45" role="3cqZAp">
          <node concept="3cpWsn" id="4yZzE4kOF46" role="3cpWs9">
            <property role="TrG5h" value="b1" />
            <node concept="3uibUv" id="4yZzE4kOF47" role="1tU5fm">
              <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
            </node>
            <node concept="2OqwBi" id="4yZzE4kOFqw" role="33vP2m">
              <node concept="37vLTw" id="4yZzE4kOF49" role="2Oq$k0">
                <ref role="3cqZAo" node="4yZzE4kOF3R" resolve="f1" />
              </node>
              <node concept="1Bd96e" id="4yZzE4kOFte" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4yZzE4kOF4a" role="3cqZAp">
          <node concept="3cpWsn" id="4yZzE4kOF4b" role="3cpWs9">
            <property role="TrG5h" value="c1" />
            <node concept="3uibUv" id="4yZzE4kOF4c" role="1tU5fm">
              <ref role="3uigEE" node="4S1mDSNPBAR" resolve="ClosureInvocations.C" />
            </node>
            <node concept="2OqwBi" id="4yZzE4kOFvu" role="33vP2m">
              <node concept="37vLTw" id="4yZzE4kOF4e" role="2Oq$k0">
                <ref role="3cqZAo" node="4yZzE4kOF3R" resolve="f1" />
              </node>
              <node concept="1Bd96e" id="4yZzE4kOFyc" role="2OqNvi" />
            </node>
            <node concept="1U20sH" id="4yZzE4kOF4f" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kOF4g" role="3cqZAp" />
        <node concept="3cpWs8" id="4yZzE4kOF4h" role="3cqZAp">
          <node concept="3cpWsn" id="4yZzE4kOF4i" role="3cpWs9">
            <property role="TrG5h" value="o2" />
            <node concept="3uibUv" id="4yZzE4kOF4j" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="4yZzE4kOF$q" role="33vP2m">
              <node concept="37vLTw" id="4yZzE4kOF4m" role="2Oq$k0">
                <ref role="3cqZAo" node="4yZzE4kOF3R" resolve="f1" />
              </node>
              <node concept="1Bd96e" id="4yZzE4kOFB8" role="2OqNvi">
                <node concept="37vLTw" id="4yZzE4kOFFl" role="1BdPVh">
                  <ref role="3cqZAo" node="4yZzE4kOF3N" resolve="b" />
                </node>
                <node concept="1U20sH" id="4yZzE4kOFI4" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4yZzE4kOF4o" role="3cqZAp">
          <node concept="3cpWsn" id="4yZzE4kOF4p" role="3cpWs9">
            <property role="TrG5h" value="o3" />
            <node concept="3uibUv" id="4yZzE4kOF4q" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="4yZzE4kOIo2" role="33vP2m">
              <node concept="37vLTw" id="4yZzE4kOF4t" role="2Oq$k0">
                <ref role="3cqZAo" node="4yZzE4kOF3U" resolve="f2" />
              </node>
              <node concept="1Bd96e" id="4yZzE4kOIt6" role="2OqNvi">
                <node concept="37vLTw" id="4yZzE4kOIuK" role="1BdPVh">
                  <ref role="3cqZAo" node="4yZzE4kOF3N" resolve="b" />
                </node>
                <node concept="1U20sH" id="4yZzE4kOIwb" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kOF4v" role="3cqZAp" />
        <node concept="3cpWs8" id="4yZzE4kOF4w" role="3cqZAp">
          <node concept="3cpWsn" id="4yZzE4kOF4x" role="3cpWs9">
            <property role="TrG5h" value="o4" />
            <node concept="3uibUv" id="4yZzE4kOF4y" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="4yZzE4kOIyu" role="33vP2m">
              <node concept="37vLTw" id="4yZzE4kOF4$" role="2Oq$k0">
                <ref role="3cqZAo" node="4yZzE4kOF3U" resolve="f2" />
              </node>
              <node concept="1Bd96e" id="4yZzE4kOIBy" role="2OqNvi">
                <node concept="37vLTw" id="4yZzE4kOICh" role="1BdPVh">
                  <ref role="3cqZAo" node="4yZzE4kOF3J" resolve="s" />
                </node>
                <node concept="37vLTw" id="4yZzE4kOIKL" role="1BdPVh">
                  <ref role="3cqZAo" node="4yZzE4kOF3N" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4yZzE4kOF4B" role="3cqZAp">
          <node concept="3cpWsn" id="4yZzE4kOF4C" role="3cpWs9">
            <property role="TrG5h" value="b2" />
            <node concept="3uibUv" id="4yZzE4kOF4D" role="1tU5fm">
              <ref role="3uigEE" node="4S1mDSNPBAO" resolve="ClosureInvocations.B" />
            </node>
            <node concept="2OqwBi" id="4yZzE4kOIO2" role="33vP2m">
              <node concept="37vLTw" id="4yZzE4kOF4H" role="2Oq$k0">
                <ref role="3cqZAo" node="4yZzE4kOF3R" resolve="f1" />
              </node>
              <node concept="1Bd96e" id="4yZzE4kOIQK" role="2OqNvi">
                <node concept="37vLTw" id="4yZzE4kOISx" role="1BdPVh">
                  <ref role="3cqZAo" node="4yZzE4kOF3J" resolve="s" />
                </node>
                <node concept="37vLTw" id="4yZzE4kOIUI" role="1BdPVh">
                  <ref role="3cqZAo" node="4yZzE4kOF3P" resolve="c" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4yZzE4kOF4I" role="3cqZAp">
          <node concept="3cpWsn" id="4yZzE4kOF4J" role="3cpWs9">
            <property role="TrG5h" value="a2" />
            <node concept="3uibUv" id="4yZzE4kOF4K" role="1tU5fm">
              <ref role="3uigEE" node="4S1mDSNPBAM" resolve="ClosureInvocations.A" />
            </node>
            <node concept="2OqwBi" id="4yZzE4kOIXg" role="33vP2m">
              <node concept="37vLTw" id="4yZzE4kOF4O" role="2Oq$k0">
                <ref role="3cqZAo" node="4yZzE4kOF3R" resolve="f1" />
              </node>
              <node concept="1Bd96e" id="4yZzE4kOIZY" role="2OqNvi">
                <node concept="37vLTw" id="4yZzE4kOJ2l" role="1BdPVh">
                  <ref role="3cqZAo" node="4yZzE4kOF3J" resolve="s" />
                </node>
                <node concept="37vLTw" id="4yZzE4kOJ4w" role="1BdPVh">
                  <ref role="3cqZAo" node="4yZzE4kOF3L" resolve="a" />
                </node>
                <node concept="1U20sH" id="4yZzE4kOJ84" role="lGtFl">
                  <property role="1U20sK" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4yZzE4kOF4Q" role="1B3o_S" />
      <node concept="3cqZAl" id="4yZzE4kOF4R" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4yZzE4kOF2n" role="jymVt" />
    <node concept="3Tm1VV" id="4S1mDSNPBsK" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="zb1Nk79_lP">
    <property role="TrG5h" value="ClosureLiterals" />
    <node concept="2tJIrI" id="zb1Nk79_lQ" role="jymVt" />
    <node concept="312cEu" id="zb1Nk79_lR" role="jymVt">
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="zb1Nk79_lS" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="zb1Nk79_lT" role="jymVt">
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="zb1Nk79_lU" role="1B3o_S" />
      <node concept="3uibUv" id="zb1Nk79_lV" role="1zkMxy">
        <ref role="3uigEE" node="zb1Nk79_lR" resolve="ClosureLiterals.A" />
      </node>
    </node>
    <node concept="312cEu" id="zb1Nk79_lW" role="jymVt">
      <property role="TrG5h" value="C" />
      <node concept="3Tm1VV" id="zb1Nk79_lX" role="1B3o_S" />
      <node concept="3uibUv" id="zb1Nk79_lY" role="1zkMxy">
        <ref role="3uigEE" node="zb1Nk79_lT" resolve="ClosureLiterals.B" />
      </node>
    </node>
    <node concept="2tJIrI" id="4yZzE4kLMAx" role="jymVt" />
    <node concept="2tJIrI" id="4yZzE4kLNNX" role="jymVt" />
    <node concept="3clFb_" id="4yZzE4kG4oW" role="jymVt">
      <property role="TrG5h" value="accept0" />
      <node concept="37vLTG" id="4yZzE4kG6kr" role="3clF46">
        <property role="TrG5h" value="voidy" />
        <node concept="1ajhzC" id="4yZzE4kG6wp" role="1tU5fm">
          <node concept="3cqZAl" id="4yZzE4kG6BV" role="1ajl9A" />
        </node>
      </node>
      <node concept="3clFbS" id="4yZzE4kG4oZ" role="3clF47">
        <node concept="3clFbF" id="4yZzE4kG6QZ" role="3cqZAp">
          <node concept="2Sg_IR" id="4yZzE4kG73J" role="3clFbG">
            <node concept="37vLTw" id="4yZzE4kG73K" role="2SgG2M">
              <ref role="3cqZAo" node="4yZzE4kG6kr" resolve="voidy" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4yZzE4kG489" role="1B3o_S" />
      <node concept="3cqZAl" id="4yZzE4kG4jl" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4yZzE4kLVua" role="jymVt">
      <property role="TrG5h" value="accept1" />
      <node concept="3clFbS" id="4yZzE4kLVub" role="3clF47" />
      <node concept="3Tm1VV" id="4yZzE4kLVuc" role="1B3o_S" />
      <node concept="3cqZAl" id="4yZzE4kLVud" role="3clF45" />
      <node concept="37vLTG" id="4yZzE4kLVue" role="3clF46">
        <property role="TrG5h" value="block" />
        <node concept="1ajhzC" id="4yZzE4kLVuf" role="1tU5fm">
          <node concept="3uibUv" id="4yZzE4kLW7P" role="1ajw0F">
            <ref role="3uigEE" node="zb1Nk79_lT" resolve="ClosureLiterals.B" />
          </node>
          <node concept="3uibUv" id="4yZzE4kLW97" role="1ajl9A">
            <ref role="3uigEE" node="zb1Nk79_lR" resolve="ClosureLiterals.A" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="zb1Nk79_Ee" role="jymVt">
      <property role="TrG5h" value="acceptT1" />
      <node concept="3clFbS" id="zb1Nk79_Eh" role="3clF47" />
      <node concept="3Tm1VV" id="zb1Nk79_Cu" role="1B3o_S" />
      <node concept="3cqZAl" id="zb1Nk79_DU" role="3clF45" />
      <node concept="37vLTG" id="zb1Nk79_Ho" role="3clF46">
        <property role="TrG5h" value="block" />
        <node concept="1ajhzC" id="zb1Nk79_Hm" role="1tU5fm">
          <node concept="16syzq" id="6jkHA5M_GQN" role="1ajw0F">
            <ref role="16sUi3" node="6jkHA5M_GC$" resolve="TA" />
          </node>
          <node concept="16syzq" id="6jkHA5M_GX9" role="1ajl9A">
            <ref role="16sUi3" node="6jkHA5M_Gvc" resolve="TR" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6jkHA5M_Gvc" role="16eVyc">
        <property role="TrG5h" value="TR" />
      </node>
      <node concept="16euLQ" id="6jkHA5M_GC$" role="16eVyc">
        <property role="TrG5h" value="TA" />
        <node concept="16syzq" id="4yZzE4kLSv0" role="3ztrMU">
          <ref role="16sUi3" node="6jkHA5M_Gvc" resolve="TR" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="zb1Nk7afOA" role="jymVt">
      <property role="TrG5h" value="accept2" />
      <node concept="3clFbS" id="zb1Nk7afOB" role="3clF47" />
      <node concept="3Tm1VV" id="zb1Nk7afOC" role="1B3o_S" />
      <node concept="3cqZAl" id="zb1Nk7afOD" role="3clF45" />
      <node concept="37vLTG" id="zb1Nk7afOE" role="3clF46">
        <property role="TrG5h" value="block" />
        <node concept="1ajhzC" id="zb1Nk7afOF" role="1tU5fm">
          <node concept="3uibUv" id="4yZzE4kMq1p" role="1ajw0F">
            <ref role="3uigEE" node="zb1Nk79_lW" resolve="ClosureLiterals.C" />
          </node>
          <node concept="3uibUv" id="4yZzE4kMs2I" role="1ajw0F">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
          <node concept="3uibUv" id="zb1Nk7afWw" role="1ajl9A">
            <ref role="3uigEE" node="zb1Nk79_lT" resolve="ClosureLiterals.B" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4yZzE4kLN_K" role="jymVt" />
    <node concept="2tJIrI" id="zb1Nk79_lZ" role="jymVt" />
    <node concept="3clFb_" id="zb1Nk79_m0" role="jymVt">
      <property role="TrG5h" value="foo" />
      <node concept="37vLTG" id="zb1Nk79_m1" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="zb1Nk79_m2" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~Serializable" resolve="Serializable" />
        </node>
      </node>
      <node concept="37vLTG" id="4yZzE4kNksr" role="3clF46">
        <property role="TrG5h" value="bool" />
        <node concept="10P_77" id="4yZzE4kNkSK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="zb1Nk79_m3" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="zb1Nk79_m4" role="1tU5fm">
          <ref role="3uigEE" node="zb1Nk79_lR" resolve="ClosureLiterals.A" />
        </node>
      </node>
      <node concept="37vLTG" id="zb1Nk79_m5" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="zb1Nk79_m6" role="1tU5fm">
          <ref role="3uigEE" node="zb1Nk79_lT" resolve="ClosureLiterals.B" />
        </node>
      </node>
      <node concept="37vLTG" id="zb1Nk79_m7" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="zb1Nk79_m8" role="1tU5fm">
          <ref role="3uigEE" node="zb1Nk79_lW" resolve="ClosureLiterals.C" />
        </node>
      </node>
      <node concept="37vLTG" id="zb1Nk79_m9" role="3clF46">
        <property role="TrG5h" value="f1" />
        <node concept="1ajhzC" id="zb1Nk79_ma" role="1tU5fm">
          <node concept="3uibUv" id="zb1Nk79_mb" role="1ajl9A">
            <ref role="3uigEE" node="zb1Nk79_lT" resolve="ClosureLiterals.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4yZzE4kNa6M" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="4yZzE4kNazj" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="zb1Nk79_mh" role="3clF47">
        <node concept="3SKdUt" id="4yZzE4kN2tw" role="3cqZAp">
          <node concept="1PaTwC" id="4yZzE4kN2tx" role="3ndbpf">
            <node concept="3oM_SD" id="4yZzE4kN2tz" role="1PaTwD">
              <property role="3oM_SC" value="void" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kN2Kq" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6jkHA5M_Hdv" role="3cqZAp">
          <node concept="1rXfSq" id="6jkHA5M_Hdt" role="3clFbG">
            <ref role="37wK5l" node="4yZzE4kG4oW" resolve="accept0" />
            <node concept="1bVj0M" id="6jkHA5M_HrO" role="37wK5m">
              <node concept="3clFbS" id="6jkHA5M_HrP" role="1bW5cS" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kN1el" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kN1em" role="3clFbG">
            <ref role="37wK5l" node="4yZzE4kG4oW" resolve="accept0" />
            <node concept="1bVj0M" id="4yZzE4kN1en" role="37wK5m">
              <node concept="3clFbS" id="4yZzE4kN1eo" role="1bW5cS">
                <node concept="3cpWs6" id="4yZzE4kN1Fp" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kLSy2" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kLSy3" role="3clFbG">
            <ref role="37wK5l" node="zb1Nk79_Ee" resolve="acceptT1" />
            <node concept="1bVj0M" id="4yZzE4kLSy4" role="37wK5m">
              <node concept="3clFbS" id="4yZzE4kLSy5" role="1bW5cS" />
              <node concept="1U20sH" id="4yZzE4kLSy6" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kN1HR" role="3cqZAp" />
        <node concept="3SKdUt" id="4yZzE4kN582" role="3cqZAp">
          <node concept="1PaTwC" id="4yZzE4kN583" role="3ndbpf">
            <node concept="3oM_SD" id="4yZzE4kN585" role="1PaTwD">
              <property role="3oM_SC" value="basic" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kN5Au" role="1PaTwD">
              <property role="3oM_SC" value="implicit" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kN5Ax" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kN5A_" role="1PaTwD">
              <property role="3oM_SC" value="explicit" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kN5AV" role="1PaTwD">
              <property role="3oM_SC" value="returns" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kLWs1" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kLWs2" role="3clFbG">
            <ref role="37wK5l" node="4yZzE4kLVua" resolve="accept1" />
            <node concept="1bVj0M" id="4yZzE4kLWs3" role="37wK5m">
              <node concept="37vLTG" id="4yZzE4kLWs4" role="1bW2Oz">
                <property role="TrG5h" value="smth" />
                <node concept="3uibUv" id="4yZzE4kLWs5" role="1tU5fm">
                  <ref role="3uigEE" node="zb1Nk79_lT" resolve="ClosureLiterals.B" />
                </node>
              </node>
              <node concept="3clFbS" id="4yZzE4kLWs6" role="1bW5cS">
                <node concept="3clFbF" id="4yZzE4kLWs7" role="3cqZAp">
                  <node concept="2ShNRf" id="4yZzE4kLWs8" role="3clFbG">
                    <node concept="HV5vD" id="4yZzE4kLWs9" role="2ShVmc">
                      <ref role="HV5vE" node="zb1Nk79_lR" resolve="ClosureLiterals.A" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kLWsa" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kLWsb" role="3clFbG">
            <ref role="37wK5l" node="4yZzE4kLVua" resolve="accept1" />
            <node concept="1bVj0M" id="4yZzE4kLWsc" role="37wK5m">
              <node concept="37vLTG" id="4yZzE4kLWsd" role="1bW2Oz">
                <property role="TrG5h" value="smth" />
                <node concept="3uibUv" id="4yZzE4kLWse" role="1tU5fm">
                  <ref role="3uigEE" node="zb1Nk79_lR" resolve="ClosureLiterals.A" />
                </node>
              </node>
              <node concept="3clFbS" id="4yZzE4kLWsf" role="1bW5cS">
                <node concept="3clFbF" id="4yZzE4kLWsg" role="3cqZAp">
                  <node concept="2ShNRf" id="4yZzE4kLWsh" role="3clFbG">
                    <node concept="HV5vD" id="4yZzE4kLWsi" role="2ShVmc">
                      <ref role="HV5vE" node="zb1Nk79_lW" resolve="ClosureLiterals.C" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kMZAm" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kMZAn" role="3clFbG">
            <ref role="37wK5l" node="4yZzE4kLVua" resolve="accept1" />
            <node concept="1bVj0M" id="4yZzE4kMZAo" role="37wK5m">
              <node concept="37vLTG" id="4yZzE4kMZAp" role="1bW2Oz">
                <property role="TrG5h" value="smth" />
                <node concept="3uibUv" id="4yZzE4kMZAq" role="1tU5fm">
                  <ref role="3uigEE" node="zb1Nk79_lR" resolve="ClosureLiterals.A" />
                </node>
              </node>
              <node concept="3clFbS" id="4yZzE4kMZAr" role="1bW5cS">
                <node concept="3cpWs6" id="4yZzE4kN18V" role="3cqZAp">
                  <node concept="37vLTw" id="4yZzE4kN1bI" role="3cqZAk">
                    <ref role="3cqZAo" node="zb1Nk79_m7" resolve="c" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kLT6W" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kLT6X" role="3clFbG">
            <ref role="37wK5l" node="zb1Nk79_Ee" resolve="acceptT1" />
            <node concept="1bVj0M" id="4yZzE4kLT6Y" role="37wK5m">
              <node concept="37vLTG" id="4yZzE4kLT6Z" role="1bW2Oz">
                <property role="TrG5h" value="smth" />
                <node concept="3uibUv" id="4yZzE4kLUpb" role="1tU5fm">
                  <ref role="3uigEE" node="zb1Nk79_lT" resolve="ClosureLiterals.B" />
                </node>
              </node>
              <node concept="3clFbS" id="4yZzE4kLT71" role="1bW5cS">
                <node concept="3clFbF" id="4yZzE4kLT72" role="3cqZAp">
                  <node concept="37vLTw" id="4yZzE4kMlyo" role="3clFbG">
                    <ref role="3cqZAo" node="zb1Nk79_m3" resolve="a" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kLTBc" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kLTBd" role="3clFbG">
            <ref role="37wK5l" node="zb1Nk79_Ee" resolve="acceptT1" />
            <node concept="1bVj0M" id="4yZzE4kLTBe" role="37wK5m">
              <node concept="37vLTG" id="4yZzE4kLTBf" role="1bW2Oz">
                <property role="TrG5h" value="smth" />
                <node concept="3uibUv" id="4yZzE4kLTBg" role="1tU5fm">
                  <ref role="3uigEE" node="zb1Nk79_lR" resolve="ClosureLiterals.A" />
                </node>
              </node>
              <node concept="3clFbS" id="4yZzE4kLTBh" role="1bW5cS">
                <node concept="3clFbF" id="4yZzE4kLTBi" role="3cqZAp">
                  <node concept="37vLTw" id="4yZzE4kMlBm" role="3clFbG">
                    <ref role="3cqZAo" node="zb1Nk79_m7" resolve="c" />
                  </node>
                </node>
              </node>
              <node concept="1U20sH" id="4yZzE4kLU$7" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kN3eT" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kN3eU" role="3clFbG">
            <ref role="37wK5l" node="zb1Nk79_Ee" resolve="acceptT1" />
            <node concept="1bVj0M" id="4yZzE4kN3eV" role="37wK5m">
              <node concept="37vLTG" id="4yZzE4kN3eW" role="1bW2Oz">
                <property role="TrG5h" value="smth" />
                <node concept="3uibUv" id="4yZzE4kN3eX" role="1tU5fm">
                  <ref role="3uigEE" node="zb1Nk79_lR" resolve="ClosureLiterals.A" />
                </node>
              </node>
              <node concept="3clFbS" id="4yZzE4kN3eY" role="1bW5cS">
                <node concept="3cpWs6" id="4yZzE4kN3Ho" role="3cqZAp">
                  <node concept="37vLTw" id="4yZzE4kN3KG" role="3cqZAk">
                    <ref role="3cqZAo" node="zb1Nk79_m7" resolve="c" />
                  </node>
                </node>
              </node>
              <node concept="1U20sH" id="4yZzE4kN3f1" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kN7R4" role="3cqZAp" />
        <node concept="3SKdUt" id="4yZzE4kMZ9P" role="3cqZAp">
          <node concept="1PaTwC" id="4yZzE4kMZ9Q" role="3ndbpf">
            <node concept="3oM_SD" id="4yZzE4kMZzG" role="1PaTwD">
              <property role="3oM_SC" value="combination" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kMZzI" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kMZzT" role="1PaTwD">
              <property role="3oM_SC" value="returns" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kMZ$5" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kMZ$q" role="1PaTwD">
              <property role="3oM_SC" value="implicit" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kMZ$C" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kLPcV" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kLPcW" role="3clFbG">
            <ref role="37wK5l" node="zb1Nk7afOA" resolve="accept2" />
            <node concept="1bVj0M" id="4yZzE4kLPcX" role="37wK5m">
              <node concept="37vLTG" id="4yZzE4kMsbb" role="1bW2Oz">
                <property role="TrG5h" value="bbb" />
                <node concept="3uibUv" id="4yZzE4kMsgE" role="1tU5fm">
                  <ref role="3uigEE" node="zb1Nk79_lT" resolve="ClosureLiterals.B" />
                </node>
              </node>
              <node concept="37vLTG" id="4yZzE4kLPcY" role="1bW2Oz">
                <property role="TrG5h" value="condition" />
                <node concept="10P_77" id="4yZzE4kLPBb" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="4yZzE4kLPd0" role="1bW5cS">
                <node concept="3clFbJ" id="4yZzE4kLPuG" role="3cqZAp">
                  <node concept="3clFbS" id="4yZzE4kLPuI" role="3clFbx">
                    <node concept="3cpWs6" id="4yZzE4kLPxO" role="3cqZAp">
                      <node concept="37vLTw" id="4yZzE4kMxuf" role="3cqZAk">
                        <ref role="3cqZAo" node="4yZzE4kMsbb" resolve="bbb" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4yZzE4kLPD_" role="3clFbw">
                    <ref role="3cqZAo" node="4yZzE4kLPcY" resolve="condition" />
                  </node>
                  <node concept="3eNFk2" id="4yZzE4kLQWQ" role="3eNLev">
                    <node concept="3clFbS" id="4yZzE4kLQWR" role="3eOfB_">
                      <node concept="3cpWs6" id="4yZzE4kLR2c" role="3cqZAp">
                        <node concept="37vLTw" id="4yZzE4kMsWA" role="3cqZAk">
                          <ref role="3cqZAo" node="zb1Nk79_m7" resolve="c" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="4yZzE4kLQYy" role="3eO9$A">
                      <node concept="37vLTw" id="4yZzE4kLR0o" role="3fr31v">
                        <ref role="3cqZAo" node="4yZzE4kLPcY" resolve="condition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4yZzE4kMNuh" role="3cqZAp">
                  <node concept="37vLTw" id="4yZzE4kNb2X" role="3clFbG">
                    <ref role="3cqZAo" node="4yZzE4kNa6M" resolve="obj" />
                    <node concept="1U20sH" id="4yZzE4kNbwa" role="lGtFl">
                      <property role="1U20sK" value="error" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kO0Uq" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kO0Ur" role="3clFbG">
            <ref role="37wK5l" node="zb1Nk7afOA" resolve="accept2" />
            <node concept="1bVj0M" id="4yZzE4kO0Us" role="37wK5m">
              <node concept="37vLTG" id="4yZzE4kO0Ut" role="1bW2Oz">
                <property role="TrG5h" value="bbb" />
                <node concept="3uibUv" id="4yZzE4kO0Uu" role="1tU5fm">
                  <ref role="3uigEE" node="zb1Nk79_lT" resolve="ClosureLiterals.B" />
                </node>
              </node>
              <node concept="37vLTG" id="4yZzE4kO0Uv" role="1bW2Oz">
                <property role="TrG5h" value="condition" />
                <node concept="10P_77" id="4yZzE4kO0Uw" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="4yZzE4kO0Ux" role="1bW5cS">
                <node concept="3clFbJ" id="4yZzE4kO0Uy" role="3cqZAp">
                  <node concept="3clFbS" id="4yZzE4kO0Uz" role="3clFbx">
                    <node concept="3cpWs6" id="4yZzE4kO0U$" role="3cqZAp">
                      <node concept="37vLTw" id="4yZzE4kOwcQ" role="3cqZAk">
                        <ref role="3cqZAo" node="zb1Nk79_m3" resolve="a" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4yZzE4kO0UA" role="3clFbw">
                    <ref role="3cqZAo" node="4yZzE4kO0Uv" resolve="condition" />
                  </node>
                  <node concept="3eNFk2" id="4yZzE4kO0UB" role="3eNLev">
                    <node concept="3clFbS" id="4yZzE4kO0UC" role="3eOfB_">
                      <node concept="3cpWs6" id="4yZzE4kO0UD" role="3cqZAp">
                        <node concept="37vLTw" id="4yZzE4kO0UE" role="3cqZAk">
                          <ref role="3cqZAo" node="zb1Nk79_m7" resolve="c" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="4yZzE4kO0UF" role="3eO9$A">
                      <node concept="37vLTw" id="4yZzE4kO0UG" role="3fr31v">
                        <ref role="3cqZAo" node="4yZzE4kO0Uv" resolve="condition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4yZzE4kO0UH" role="3cqZAp">
                  <node concept="37vLTw" id="4yZzE4kOwm1" role="3clFbG">
                    <ref role="3cqZAo" node="4yZzE4kO0Ut" resolve="bbb" />
                  </node>
                </node>
              </node>
              <node concept="1U20sH" id="4yZzE4kO1LF" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kMXMj" role="3cqZAp" />
        <node concept="3SKdUt" id="4yZzE4kMYuP" role="3cqZAp">
          <node concept="1PaTwC" id="4yZzE4kMYuQ" role="3ndbpf">
            <node concept="3oM_SD" id="4yZzE4kO6Kp" role="1PaTwD">
              <property role="3oM_SC" value="void" />
            </node>
            <node concept="3oM_SD" id="4yZzE4kMYJ9" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kOAVp" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kOAVq" role="3clFbG">
            <ref role="37wK5l" node="4yZzE4kG4oW" resolve="accept0" />
            <node concept="1bVj0M" id="4yZzE4kOAVr" role="37wK5m">
              <node concept="3clFbS" id="4yZzE4kOAVs" role="1bW5cS">
                <node concept="3clFbJ" id="4yZzE4kOAVt" role="3cqZAp">
                  <node concept="3clFbS" id="4yZzE4kOAVu" role="3clFbx">
                    <node concept="3cpWs6" id="4yZzE4kOAVv" role="3cqZAp" />
                  </node>
                  <node concept="37vLTw" id="4yZzE4kOAV_" role="3clFbw">
                    <ref role="3cqZAo" node="4yZzE4kNksr" resolve="bool" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kOB_6" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kOB_7" role="3clFbG">
            <ref role="37wK5l" node="4yZzE4kG4oW" resolve="accept0" />
            <node concept="1bVj0M" id="4yZzE4kOB_8" role="37wK5m">
              <node concept="3clFbS" id="4yZzE4kOB_9" role="1bW5cS">
                <node concept="3clFbJ" id="4yZzE4kOB_a" role="3cqZAp">
                  <node concept="3clFbS" id="4yZzE4kOB_b" role="3clFbx">
                    <node concept="3cpWs6" id="4yZzE4kOB_c" role="3cqZAp" />
                  </node>
                  <node concept="37vLTw" id="4yZzE4kOB_d" role="3clFbw">
                    <ref role="3cqZAo" node="4yZzE4kNksr" resolve="bool" />
                  </node>
                </node>
                <node concept="3cpWs6" id="4yZzE4kOB_e" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yZzE4kNfWb" role="3cqZAp">
          <node concept="1rXfSq" id="4yZzE4kNfWc" role="3clFbG">
            <ref role="37wK5l" node="4yZzE4kG4oW" resolve="accept0" />
            <node concept="1bVj0M" id="4yZzE4kNfWd" role="37wK5m">
              <node concept="3clFbS" id="4yZzE4kNfWe" role="1bW5cS">
                <node concept="3clFbJ" id="4yZzE4kNfWf" role="3cqZAp">
                  <node concept="3clFbS" id="4yZzE4kNfWg" role="3clFbx">
                    <node concept="3cpWs6" id="4yZzE4kNfWh" role="3cqZAp" />
                  </node>
                  <node concept="9aQIb" id="4yZzE4kNitO" role="9aQIa">
                    <node concept="3clFbS" id="4yZzE4kNitP" role="9aQI4">
                      <node concept="3cpWs6" id="4yZzE4kNitQ" role="3cqZAp">
                        <node concept="37vLTw" id="4yZzE4kNldg" role="3cqZAk">
                          <ref role="3cqZAo" node="zb1Nk79_m3" resolve="a" />
                          <node concept="1U20sH" id="4yZzE4kO1NU" role="lGtFl">
                            <property role="1U20sK" value="error" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4yZzE4kNkX1" role="3clFbw">
                    <ref role="3cqZAo" node="4yZzE4kNksr" resolve="bool" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yZzE4kOyDQ" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="zb1Nk79_n8" role="1B3o_S" />
      <node concept="3cqZAl" id="zb1Nk79_n9" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4yZzE4kOCxK" role="jymVt" />
    <node concept="3Tm1VV" id="zb1Nk79_na" role="1B3o_S" />
  </node>
</model>

