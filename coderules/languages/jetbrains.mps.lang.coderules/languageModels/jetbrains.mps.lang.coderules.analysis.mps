<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:48788b84-8ecd-41f5-ad03-cc8c09b1f186(jetbrains.mps.lang.coderules.analysis)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="96ee7a94-411d-4cf8-9b94-96cad7e52411" name="jetbrains.mps.baseLanguage.jdk7" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="3" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
  </imports>
  <registry>
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176921879268" name="jetbrains.mps.baseLanguage.collections.structure.IntersectOperation" flags="nn" index="60FfQ" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="2SkPIT_klnG">
    <property role="TrG5h" value="VarModificationAnalysisUtil" />
    <node concept="2tJIrI" id="2SkPIT_klC3" role="jymVt" />
    <node concept="3clFbW" id="2SkPIT_klCq" role="jymVt">
      <node concept="37vLTG" id="2SkPIT_klCT" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3Tqbb2" id="2SkPIT_klDj" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
        </node>
      </node>
      <node concept="37vLTG" id="5VJ3UjCeGfL" role="3clF46">
        <property role="TrG5h" value="assumeReadOnlyExprs" />
        <node concept="10P_77" id="5VJ3UjCeGfM" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2SkPIT_klCs" role="3clF45" />
      <node concept="3Tm6S6" id="5VJ3UjCeZ00" role="1B3o_S" />
      <node concept="3clFbS" id="2SkPIT_klCu" role="3clF47">
        <node concept="3clFbF" id="5VJ3UjCeHrR" role="3cqZAp">
          <node concept="37vLTI" id="5VJ3UjCeInV" role="3clFbG">
            <node concept="37vLTw" id="5VJ3UjCeIzJ" role="37vLTx">
              <ref role="3cqZAo" node="5VJ3UjCeGfL" resolve="assumeReadOnlyExprs" />
            </node>
            <node concept="2OqwBi" id="5VJ3UjCeHNk" role="37vLTJ">
              <node concept="Xjq3P" id="5VJ3UjCeHrP" role="2Oq$k0" />
              <node concept="2OwXpG" id="5VJ3UjCeHYv" role="2OqNvi">
                <ref role="2Oxat5" node="5VJ3UjCaTNf" resolve="assumeReadOnlyExprs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5VJ3UjCeJdz" role="3cqZAp">
          <node concept="37vLTI" id="5VJ3UjCeJWB" role="3clFbG">
            <node concept="37vLTw" id="5VJ3UjCeJYv" role="37vLTx">
              <ref role="3cqZAo" node="2SkPIT_klCT" resolve="rule" />
            </node>
            <node concept="2OqwBi" id="5VJ3UjCeJ_R" role="37vLTJ">
              <node concept="Xjq3P" id="5VJ3UjCeJdx" role="2Oq$k0" />
              <node concept="2OwXpG" id="5VJ3UjCeJGy" role="2OqNvi">
                <ref role="2Oxat5" node="5VJ3UjC4JLn" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5VJ3UjC4qGn" role="3cqZAp">
          <node concept="37vLTI" id="5VJ3UjC4rEy" role="3clFbG">
            <node concept="2ShNRf" id="5VJ3UjC4sKE" role="37vLTx">
              <node concept="2i4dXS" id="5VJ3UjC4tZ3" role="2ShVmc">
                <node concept="3Tqbb2" id="5VJ3UjC4uhv" role="HW$YZ">
                  <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                </node>
                <node concept="2OqwBi" id="7qe1GumDwzr" role="I$8f6">
                  <node concept="2OqwBi" id="7qe1GumDo8I" role="2Oq$k0">
                    <node concept="2OqwBi" id="7qe1GumDgS8" role="2Oq$k0">
                      <node concept="37vLTw" id="5VJ3UjC81eW" role="2Oq$k0">
                        <ref role="3cqZAo" node="5VJ3UjC4JLn" resolve="node" />
                      </node>
                      <node concept="3Tsc0h" id="7qe1GumDhtZ" role="2OqNvi">
                        <ref role="3TtcxE" to="wq2x:36tQV5AmIsU" resolve="head" />
                      </node>
                    </node>
                    <node concept="3goQfb" id="7qe1GumDpfT" role="2OqNvi">
                      <node concept="1bVj0M" id="7qe1GumDpfV" role="23t8la">
                        <node concept="3clFbS" id="7qe1GumDpfW" role="1bW5cS">
                          <node concept="3clFbF" id="7qe1GumDpD7" role="3cqZAp">
                            <node concept="2OqwBi" id="7qe1GumDqfT" role="3clFbG">
                              <node concept="37vLTw" id="7qe1GumDpD6" role="2Oq$k0">
                                <ref role="3cqZAo" node="7qe1GumDpfX" resolve="it" />
                              </node>
                              <node concept="2Rf3mk" id="7qe1GumDrjc" role="2OqNvi">
                                <node concept="1xMEDy" id="7qe1GumDrje" role="1xVPHs">
                                  <node concept="chp4Y" id="7qe1GumDrL8" role="ri$Ld">
                                    <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7qe1GumDpfX" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="7qe1GumDpfY" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="7qe1GumDxMn" role="2OqNvi">
                    <node concept="1bVj0M" id="7qe1GumDxMp" role="23t8la">
                      <node concept="3clFbS" id="7qe1GumDxMq" role="1bW5cS">
                        <node concept="3clFbF" id="7qe1GumDy58" role="3cqZAp">
                          <node concept="2OqwBi" id="7qe1GumDyE_" role="3clFbG">
                            <node concept="37vLTw" id="7qe1GumDy57" role="2Oq$k0">
                              <ref role="3cqZAo" node="7qe1GumDxMr" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="7qe1GumDz_g" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7qe1GumDxMr" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7qe1GumDxMs" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5VJ3UjCeW9G" role="37vLTJ">
              <node concept="Xjq3P" id="5VJ3UjCeVKE" role="2Oq$k0" />
              <node concept="2OwXpG" id="5VJ3UjCeWsH" role="2OqNvi">
                <ref role="2Oxat5" node="5VJ3UjC4qFD" resolve="nonLocalVars" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5VJ3UjCev15" role="jymVt" />
    <node concept="2YIFZL" id="5VJ3UjCeysT" role="jymVt">
      <property role="TrG5h" value="affectedVarsFor" />
      <node concept="37vLTG" id="5VJ3UjCe_2D" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3Tqbb2" id="5VJ3UjCe_2E" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
        </node>
      </node>
      <node concept="3clFbS" id="5VJ3UjCeysW" role="3clF47">
        <node concept="3clFbF" id="5VJ3UjCeWZ4" role="3cqZAp">
          <node concept="2OqwBi" id="5VJ3UjCeXFu" role="3clFbG">
            <node concept="2ShNRf" id="5VJ3UjCeWZ2" role="2Oq$k0">
              <node concept="1pGfFk" id="5VJ3UjCeXjq" role="2ShVmc">
                <ref role="37wK5l" node="2SkPIT_klCq" resolve="VarModificationAnalysisUtil" />
                <node concept="37vLTw" id="5VJ3UjCeXqU" role="37wK5m">
                  <ref role="3cqZAo" node="5VJ3UjCe_2D" resolve="rule" />
                </node>
                <node concept="3clFbT" id="5VJ3UjCeXyq" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5VJ3UjCeYwX" role="2OqNvi">
              <ref role="37wK5l" node="7qe1GumG1MJ" resolve="affectedVars" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5VJ3UjCex99" role="1B3o_S" />
      <node concept="A3Dl8" id="5VJ3UjCe$U_" role="3clF45">
        <node concept="3Tqbb2" id="5VJ3UjCe$UA" role="A3Ik2">
          <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5VJ3UjCeCkL" role="jymVt" />
    <node concept="2YIFZL" id="5VJ3UjCe_bo" role="jymVt">
      <property role="TrG5h" value="affectedVarsFor" />
      <node concept="37vLTG" id="5VJ3UjCe_bp" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3Tqbb2" id="5VJ3UjCe_bq" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
        </node>
      </node>
      <node concept="37vLTG" id="5VJ3UjCeDOr" role="3clF46">
        <property role="TrG5h" value="assumeReadOnlyExprs" />
        <node concept="10P_77" id="5VJ3UjCeDXy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5VJ3UjCeEw2" role="3clF46">
        <property role="TrG5h" value="checkWithMacros" />
        <node concept="10P_77" id="5VJ3UjCeEzt" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5VJ3UjCe_br" role="3clF47">
        <node concept="3clFbF" id="5VJ3UjCeYCg" role="3cqZAp">
          <node concept="2OqwBi" id="5VJ3UjCeYCh" role="3clFbG">
            <node concept="2ShNRf" id="5VJ3UjCeYCi" role="2Oq$k0">
              <node concept="1pGfFk" id="5VJ3UjCeYCj" role="2ShVmc">
                <ref role="37wK5l" node="2SkPIT_klCq" resolve="VarModificationAnalysisUtil" />
                <node concept="37vLTw" id="5VJ3UjCeYCk" role="37wK5m">
                  <ref role="3cqZAo" node="5VJ3UjCe_bp" resolve="rule" />
                </node>
                <node concept="37vLTw" id="5VJ3UjCeYMn" role="37wK5m">
                  <ref role="3cqZAo" node="5VJ3UjCeDOr" resolve="assumeReadOnlyExprs" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5VJ3UjCeYCn" role="2OqNvi">
              <ref role="37wK5l" node="7qe1GumG1MJ" resolve="affectedVars" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5VJ3UjCe_bs" role="1B3o_S" />
      <node concept="A3Dl8" id="5VJ3UjCe_bt" role="3clF45">
        <node concept="3Tqbb2" id="5VJ3UjCe_bu" role="A3Ik2">
          <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qe1GumFNd2" role="jymVt" />
    <node concept="3clFb_" id="7qe1GumG1MJ" role="jymVt">
      <property role="TrG5h" value="affectedVars" />
      <node concept="3clFbS" id="7qe1GumG1MK" role="3clF47">
        <node concept="3SKdUt" id="7qe1GumHKL1" role="3cqZAp">
          <node concept="1PaTwC" id="7qe1GumHKL2" role="3ndbpf">
            <node concept="3oM_SD" id="7qe1GumHKLP" role="1PaTwD">
              <property role="3oM_SC" value="reset" />
            </node>
            <node concept="3oM_SD" id="7qe1GumNxve" role="1PaTwD">
              <property role="3oM_SC" value="env" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qe1GumGWhg" role="3cqZAp">
          <node concept="37vLTI" id="7qe1GumH04t" role="3clFbG">
            <node concept="2OqwBi" id="7qe1GumGYqq" role="37vLTJ">
              <node concept="Xjq3P" id="7qe1GumGWhe" role="2Oq$k0" />
              <node concept="2OwXpG" id="7qe1GumGYVS" role="2OqNvi">
                <ref role="2Oxat5" node="7qe1GumFJuO" resolve="affectedEnv" />
              </node>
            </node>
            <node concept="2ShNRf" id="7qe1GumG1MP" role="37vLTx">
              <node concept="2i4dXS" id="7qe1GumG1MQ" role="2ShVmc">
                <node concept="3Tqbb2" id="7qe1GumG1MR" role="HW$YZ">
                  <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qe1GumHNxX" role="3cqZAp" />
        <node concept="3cpWs8" id="7qe1GumG1MU" role="3cqZAp">
          <node concept="3cpWsn" id="7qe1GumG1MV" role="3cpWs9">
            <property role="TrG5h" value="modificationLoci" />
            <node concept="A3Dl8" id="7qe1GumG1MW" role="1tU5fm">
              <node concept="3Tqbb2" id="7qe1GumG1MX" role="A3Ik2">
                <ref role="ehGHo" to="wq2x:6p0DfM0ajMA" resolve="AbstractConstraint" />
              </node>
            </node>
            <node concept="2OqwBi" id="7qe1GumG1MY" role="33vP2m">
              <node concept="2OqwBi" id="7qe1GumG1MZ" role="2Oq$k0">
                <node concept="37vLTw" id="7qe1GumG1N0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5VJ3UjC4JLn" resolve="node" />
                </node>
                <node concept="3Tsc0h" id="7qe1GumG1N1" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:36tQV5AmIsW" resolve="body" />
                </node>
              </node>
              <node concept="3goQfb" id="7qe1GumG1N2" role="2OqNvi">
                <node concept="1bVj0M" id="7qe1GumG1N3" role="23t8la">
                  <node concept="3clFbS" id="7qe1GumG1N4" role="1bW5cS">
                    <node concept="3clFbF" id="7qe1GumG1N5" role="3cqZAp">
                      <node concept="2OqwBi" id="7qe1GumG1N6" role="3clFbG">
                        <node concept="37vLTw" id="7qe1GumG1N7" role="2Oq$k0">
                          <ref role="3cqZAo" node="7qe1GumG1Nc" resolve="it" />
                        </node>
                        <node concept="2Rf3mk" id="7qe1GumG1N8" role="2OqNvi">
                          <node concept="3gmYPX" id="7qe1GumG1N9" role="1xVPHs">
                            <node concept="3gn64h" id="7qe1GumG1Na" role="3gmYPZ">
                              <ref role="3gnhBz" to="wq2x:6p0DfM0oBcI" resolve="UnifiesConstraint" />
                            </node>
                            <node concept="3gn64h" id="7qe1GumG1Nb" role="3gmYPZ">
                              <ref role="3gnhBz" to="wq2x:18kNIl0mxXI" resolve="PseudoConstraint" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7qe1GumG1Nc" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7qe1GumG1Nd" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7qe1GumIbTU" role="3cqZAp">
          <node concept="1PaTwC" id="7qe1GumIbTV" role="3ndbpf">
            <node concept="3oM_SD" id="7qe1GumIdLU" role="1PaTwD">
              <property role="3oM_SC" value="process" />
            </node>
            <node concept="3oM_SD" id="7qe1GumIdLW" role="1PaTwD">
              <property role="3oM_SC" value="everything" />
            </node>
            <node concept="3oM_SD" id="7qe1GumIdM7" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7qe1GumIdMb" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7qe1GumG1Ne" role="3cqZAp">
          <node concept="2GrKxI" id="7qe1GumG1Nf" role="2Gsz3X">
            <property role="TrG5h" value="mlocus" />
          </node>
          <node concept="37vLTw" id="7qe1GumG1Ng" role="2GsD0m">
            <ref role="3cqZAo" node="7qe1GumG1MV" resolve="modificationLoci" />
          </node>
          <node concept="3clFbS" id="7qe1GumG1Nh" role="2LFqv$">
            <node concept="3clFbF" id="7qe1GumNcoD" role="3cqZAp">
              <node concept="1rXfSq" id="7qe1GumNcoC" role="3clFbG">
                <ref role="37wK5l" node="7qe1GumHWqG" resolve="processModification" />
                <node concept="2GrUjf" id="7qe1GumNcA_" role="37wK5m">
                  <ref role="2Gs0qQ" node="7qe1GumG1Nf" resolve="mlocus" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7qe1GumNDQx" role="3cqZAp">
          <node concept="2OqwBi" id="7qe1GumNK83" role="3cqZAk">
            <node concept="37vLTw" id="7qe1GumNGQR" role="2Oq$k0">
              <ref role="3cqZAo" node="5VJ3UjC4qFD" resolve="nonLocalVars" />
            </node>
            <node concept="60FfQ" id="7qe1GumNNwz" role="2OqNvi">
              <node concept="37vLTw" id="7qe1GumNP9q" role="576Qk">
                <ref role="3cqZAo" node="7qe1GumFJuO" resolve="affectedEnv" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qe1GumG1ON" role="1B3o_S" />
      <node concept="A3Dl8" id="7qe1GumG1OO" role="3clF45">
        <node concept="3Tqbb2" id="7qe1GumG1OP" role="A3Ik2">
          <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qe1GumHPs4" role="jymVt" />
    <node concept="3clFb_" id="7qe1GumHWqG" role="jymVt">
      <property role="TrG5h" value="processModification" />
      <node concept="37vLTG" id="7qe1GumI1sC" role="3clF46">
        <property role="TrG5h" value="mlocus" />
        <node concept="3Tqbb2" id="7qe1GumI5$N" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:6p0DfM0ajMA" resolve="AbstractConstraint" />
        </node>
      </node>
      <node concept="3clFbS" id="7qe1GumHWqJ" role="3clF47">
        <node concept="3clFbJ" id="7qe1GumI6RQ" role="3cqZAp">
          <node concept="2OqwBi" id="7qe1GumI7aT" role="3clFbw">
            <node concept="37vLTw" id="7qe1GumI6U2" role="2Oq$k0">
              <ref role="3cqZAo" node="7qe1GumI1sC" resolve="mlocus" />
            </node>
            <node concept="1mIQ4w" id="7qe1GumI7p3" role="2OqNvi">
              <node concept="chp4Y" id="7qe1GumI7rt" role="cj9EA">
                <ref role="cht4Q" to="wq2x:6p0DfM0oBcI" resolve="UnifiesConstraint" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7qe1GumI6RS" role="3clFbx">
            <node concept="3clFbF" id="7qe1GumIB6w" role="3cqZAp">
              <node concept="1rXfSq" id="7qe1GumIB6v" role="3clFbG">
                <ref role="37wK5l" node="5VJ3UjC4MHJ" resolve="affectedUniVars" />
                <node concept="2OqwBi" id="7qe1GumICgO" role="37wK5m">
                  <node concept="1PxgMI" id="7qe1GumIBVL" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7qe1GumIC5j" role="3oSUPX">
                      <ref role="cht4Q" to="wq2x:6p0DfM0oBcI" resolve="UnifiesConstraint" />
                    </node>
                    <node concept="37vLTw" id="7qe1GumIBjz" role="1m5AlR">
                      <ref role="3cqZAo" node="7qe1GumI1sC" resolve="mlocus" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7qe1GumICyP" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:6p0DfM0oEeG" resolve="assignee" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7qe1GumIDdd" role="37wK5m">
                  <node concept="1PxgMI" id="7qe1GumIDde" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7qe1GumIDdf" role="3oSUPX">
                      <ref role="cht4Q" to="wq2x:6p0DfM0oBcI" resolve="UnifiesConstraint" />
                    </node>
                    <node concept="37vLTw" id="7qe1GumIDdg" role="1m5AlR">
                      <ref role="3cqZAo" node="7qe1GumI1sC" resolve="mlocus" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7qe1GumIDr9" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:6p0DfM0oEna" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7qe1GumI7vx" role="3eNLev">
            <node concept="2OqwBi" id="7qe1GumI7Jg" role="3eO9$A">
              <node concept="37vLTw" id="7qe1GumI7_v" role="2Oq$k0">
                <ref role="3cqZAo" node="7qe1GumI1sC" resolve="mlocus" />
              </node>
              <node concept="1mIQ4w" id="7qe1GumI8nK" role="2OqNvi">
                <node concept="chp4Y" id="7qe1GumI8qa" role="cj9EA">
                  <ref role="cht4Q" to="wq2x:18kNIl0mxXI" resolve="PseudoConstraint" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7qe1GumI7vz" role="3eOfB_">
              <node concept="3clFbF" id="7qe1GumJ6_R" role="3cqZAp">
                <node concept="1rXfSq" id="7qe1GumJ6_Q" role="3clFbG">
                  <ref role="37wK5l" node="5VJ3UjCfvBh" resolve="affectedMacroVars" />
                  <node concept="1PxgMI" id="7qe1GumJ7ar" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7qe1GumJ7k4" role="3oSUPX">
                      <ref role="cht4Q" to="wq2x:18kNIl0mxXI" resolve="PseudoConstraint" />
                    </node>
                    <node concept="37vLTw" id="7qe1GumJ6Pp" role="1m5AlR">
                      <ref role="3cqZAo" node="7qe1GumI1sC" resolve="mlocus" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7qe1GumHT_V" role="1B3o_S" />
      <node concept="3cqZAl" id="7qe1GumIfV_" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5VJ3UjC4_c3" role="jymVt" />
    <node concept="3clFb_" id="5VJ3UjCfvBh" role="jymVt">
      <property role="TrG5h" value="affectedMacroVars" />
      <node concept="37vLTG" id="5VJ3UjCfF2V" role="3clF46">
        <property role="TrG5h" value="macroUsage" />
        <node concept="3Tqbb2" id="5VJ3UjCfHMU" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:18kNIl0mxXI" resolve="PseudoConstraint" />
        </node>
      </node>
      <node concept="3clFbS" id="5VJ3UjCfvBk" role="3clF47">
        <node concept="3clFbJ" id="5VJ3UjCgwBb" role="3cqZAp">
          <node concept="2OqwBi" id="5VJ3UjCgwTA" role="3clFbw">
            <node concept="37vLTw" id="5VJ3UjCgwDb" role="2Oq$k0">
              <ref role="3cqZAo" node="5VJ3UjCfF2V" resolve="macroUsage" />
            </node>
            <node concept="1mIQ4w" id="5VJ3UjCgx83" role="2OqNvi">
              <node concept="chp4Y" id="5VJ3UjChml4" role="cj9EA">
                <ref role="cht4Q" to="wq2x:4MEOIDFfpSk" resolve="CallMacroPseudoConstraint" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5VJ3UjCgwBd" role="3clFbx">
            <node concept="3clFbF" id="7qe1GumJVdx" role="3cqZAp">
              <node concept="1rXfSq" id="7qe1GumJVdw" role="3clFbG">
                <ref role="37wK5l" node="7qe1GumJo4T" resolve="markAffected" />
                <node concept="2OqwBi" id="5VJ3UjChGpy" role="37wK5m">
                  <node concept="1PxgMI" id="5VJ3UjChBz2" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="5VJ3UjChDjP" role="3oSUPX">
                      <ref role="cht4Q" to="wq2x:4MEOIDFfpSk" resolve="CallMacroPseudoConstraint" />
                    </node>
                    <node concept="37vLTw" id="5VJ3UjChvH8" role="1m5AlR">
                      <ref role="3cqZAo" node="5VJ3UjCfF2V" resolve="macroUsage" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5VJ3UjChIOL" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:4MEOIDFfpT9" resolve="logical" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5VJ3UjChmrP" role="3eNLev">
            <node concept="3clFbS" id="5VJ3UjChmrR" role="3eOfB_">
              <node concept="3clFbF" id="7qe1GumJZRB" role="3cqZAp">
                <node concept="1rXfSq" id="7qe1GumJZRC" role="3clFbG">
                  <ref role="37wK5l" node="7qe1GumJo4T" resolve="markAffected" />
                  <node concept="2OqwBi" id="7qe1GumJZRD" role="37wK5m">
                    <node concept="1PxgMI" id="7qe1GumJZRE" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="7qe1GumK3kX" role="3oSUPX">
                        <ref role="cht4Q" to="wq2x:18kNIl0jL2T" resolve="ExpandPseudoConstraint" />
                      </node>
                      <node concept="37vLTw" id="7qe1GumJZRG" role="1m5AlR">
                        <ref role="3cqZAo" node="5VJ3UjCfF2V" resolve="macroUsage" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="7qe1GumNcjB" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:18kNIl0jL_z" resolve="logical" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5VJ3UjChmxV" role="3eO9$A">
              <node concept="37vLTw" id="5VJ3UjChmxW" role="2Oq$k0">
                <ref role="3cqZAo" node="5VJ3UjCfF2V" resolve="macroUsage" />
              </node>
              <node concept="1mIQ4w" id="5VJ3UjChmxX" role="2OqNvi">
                <node concept="chp4Y" id="5VJ3UjChmCo" role="cj9EA">
                  <ref role="cht4Q" to="wq2x:18kNIl0jL2T" resolve="ExpandPseudoConstraint" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5VJ3UjCft30" role="1B3o_S" />
      <node concept="3cqZAl" id="7qe1GumJ11i" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5VJ3UjCb3NI" role="jymVt" />
    <node concept="3clFb_" id="5VJ3UjC4MHJ" role="jymVt">
      <property role="TrG5h" value="affectedUniVars" />
      <node concept="37vLTG" id="5VJ3UjC4N21" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="5VJ3UjC4NkL" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
        </node>
      </node>
      <node concept="37vLTG" id="5VJ3UjCbv0p" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3Tqbb2" id="5VJ3UjCbyd$" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
        </node>
      </node>
      <node concept="3clFbS" id="5VJ3UjC4MHM" role="3clF47">
        <node concept="3clFbH" id="5VJ3UjC5IHC" role="3cqZAp" />
        <node concept="3clFbJ" id="5VJ3UjC5KkU" role="3cqZAp">
          <node concept="3clFbS" id="5VJ3UjC5KkV" role="3clFbx">
            <node concept="3clFbF" id="7qe1GumK6Jz" role="3cqZAp">
              <node concept="1rXfSq" id="5VJ3UjC6fQG" role="3clFbG">
                <ref role="37wK5l" node="5VJ3UjC5YJb" resolve="var2var" />
                <node concept="1PxgMI" id="5VJ3UjC6ojg" role="37wK5m">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VJ3UjC6qIJ" role="3oSUPX">
                    <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                  </node>
                  <node concept="37vLTw" id="5VJ3UjCbOM2" role="1m5AlR">
                    <ref role="3cqZAo" node="5VJ3UjC4N21" resolve="l" />
                  </node>
                </node>
                <node concept="1PxgMI" id="5VJ3UjC6sWi" role="37wK5m">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VJ3UjC6v1X" role="3oSUPX">
                    <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                  </node>
                  <node concept="37vLTw" id="5VJ3UjCbVqM" role="1m5AlR">
                    <ref role="3cqZAo" node="5VJ3UjCbv0p" resolve="r" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5VJ3UjCayK9" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="5VJ3UjC5KNI" role="3clFbw">
            <node concept="2OqwBi" id="5VJ3UjC5Kl1" role="3uHU7B">
              <node concept="37vLTw" id="5VJ3UjC5Kl3" role="2Oq$k0">
                <ref role="3cqZAo" node="5VJ3UjC4N21" resolve="l" />
              </node>
              <node concept="1mIQ4w" id="5VJ3UjC5Kl5" role="2OqNvi">
                <node concept="chp4Y" id="5VJ3UjC5Kl6" role="cj9EA">
                  <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5VJ3UjC5KWK" role="3uHU7w">
              <node concept="1mIQ4w" id="5VJ3UjC5KWO" role="2OqNvi">
                <node concept="chp4Y" id="5VJ3UjC5KWP" role="cj9EA">
                  <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                </node>
              </node>
              <node concept="37vLTw" id="5VJ3UjCbLhC" role="2Oq$k0">
                <ref role="3cqZAo" node="5VJ3UjCbv0p" resolve="r" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5VJ3UjC5PAI" role="3eNLev">
            <node concept="3clFbS" id="5VJ3UjC5PAK" role="3eOfB_">
              <node concept="3clFbF" id="7qe1GumK8wt" role="3cqZAp">
                <node concept="1rXfSq" id="5VJ3UjC6zG_" role="3clFbG">
                  <ref role="37wK5l" node="5VJ3UjC5POR" resolve="var2notvar" />
                  <node concept="1PxgMI" id="5VJ3UjC6zGA" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="5VJ3UjC6zGB" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                    </node>
                    <node concept="37vLTw" id="5VJ3UjC6zGD" role="1m5AlR">
                      <ref role="3cqZAo" node="5VJ3UjC4N21" resolve="l" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5VJ3UjCc3tv" role="37wK5m">
                    <ref role="3cqZAo" node="5VJ3UjCbv0p" resolve="r" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5VJ3UjCa_m$" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="5VJ3UjC5PBY" role="3eO9$A">
              <node concept="37vLTw" id="5VJ3UjC5PC0" role="2Oq$k0">
                <ref role="3cqZAo" node="5VJ3UjC4N21" resolve="l" />
              </node>
              <node concept="1mIQ4w" id="5VJ3UjC5PC2" role="2OqNvi">
                <node concept="chp4Y" id="5VJ3UjC5PC3" role="cj9EA">
                  <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5VJ3UjC5PKz" role="3eNLev">
            <node concept="3clFbS" id="5VJ3UjC5PK_" role="3eOfB_">
              <node concept="3clFbF" id="7qe1GumKdlf" role="3cqZAp">
                <node concept="1rXfSq" id="5VJ3UjC6Ckd" role="3clFbG">
                  <ref role="37wK5l" node="5VJ3UjC5POR" resolve="var2notvar" />
                  <node concept="1PxgMI" id="5VJ3UjC6Cke" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="5VJ3UjC6Ckf" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                    </node>
                    <node concept="37vLTw" id="5VJ3UjCckbw" role="1m5AlR">
                      <ref role="3cqZAo" node="5VJ3UjCbv0p" resolve="r" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5VJ3UjCch6u" role="37wK5m">
                    <ref role="3cqZAo" node="5VJ3UjC4N21" resolve="l" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5VJ3UjCaAVI" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="5VJ3UjC5PLV" role="3eO9$A">
              <node concept="1mIQ4w" id="5VJ3UjC5PLZ" role="2OqNvi">
                <node concept="chp4Y" id="5VJ3UjC5PM0" role="cj9EA">
                  <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                </node>
              </node>
              <node concept="37vLTw" id="5VJ3UjCcl$4" role="2Oq$k0">
                <ref role="3cqZAo" node="5VJ3UjCbv0p" resolve="r" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5VJ3UjC9tpq" role="3eNLev">
            <node concept="1Wc70l" id="5VJ3UjC9v2h" role="3eO9$A">
              <node concept="2OqwBi" id="5VJ3UjC9usA" role="3uHU7B">
                <node concept="1mIQ4w" id="5VJ3UjC9uDf" role="2OqNvi">
                  <node concept="chp4Y" id="5VJ3UjC9uG6" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:JOGAOsxanH" resolve="DataFormConstructor" />
                  </node>
                </node>
                <node concept="37vLTw" id="5VJ3UjCclRj" role="2Oq$k0">
                  <ref role="3cqZAo" node="5VJ3UjC4N21" resolve="l" />
                </node>
              </node>
              <node concept="2OqwBi" id="5VJ3UjC9v9s" role="3uHU7w">
                <node concept="1mIQ4w" id="5VJ3UjC9v9w" role="2OqNvi">
                  <node concept="chp4Y" id="5VJ3UjC9v9x" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:JOGAOsxanH" resolve="DataFormConstructor" />
                  </node>
                </node>
                <node concept="37vLTw" id="5VJ3UjCcm8F" role="2Oq$k0">
                  <ref role="3cqZAo" node="5VJ3UjCbv0p" resolve="r" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5VJ3UjC9tps" role="3eOfB_">
              <node concept="3clFbF" id="7qe1GumKicM" role="3cqZAp">
                <node concept="1rXfSq" id="5VJ3UjC9xyv" role="3clFbG">
                  <ref role="37wK5l" node="5VJ3UjC8TZF" resolve="dataform2dataform" />
                  <node concept="1PxgMI" id="5VJ3UjC9GQV" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="5VJ3UjC9GQW" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:JOGAOsxanH" resolve="DataFormConstructor" />
                    </node>
                    <node concept="37vLTw" id="5VJ3UjCcoBD" role="1m5AlR">
                      <ref role="3cqZAo" node="5VJ3UjC4N21" resolve="l" />
                    </node>
                  </node>
                  <node concept="1PxgMI" id="5VJ3UjC9CbJ" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="5VJ3UjC9EYR" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:JOGAOsxanH" resolve="DataFormConstructor" />
                    </node>
                    <node concept="37vLTw" id="5VJ3UjCcsl2" role="1m5AlR">
                      <ref role="3cqZAo" node="5VJ3UjCbv0p" resolve="r" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5VJ3UjCaCwS" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="5VJ3UjC9vnU" role="3eNLev">
            <node concept="1Wc70l" id="5VJ3UjC9vnV" role="3eO9$A">
              <node concept="2OqwBi" id="5VJ3UjC9vnW" role="3uHU7B">
                <node concept="1mIQ4w" id="5VJ3UjC9vo0" role="2OqNvi">
                  <node concept="chp4Y" id="5VJ3UjC9xmm" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
                  </node>
                </node>
                <node concept="37vLTw" id="5VJ3UjCc$oI" role="2Oq$k0">
                  <ref role="3cqZAo" node="5VJ3UjC4N21" resolve="l" />
                </node>
              </node>
              <node concept="2OqwBi" id="5VJ3UjC9vo2" role="3uHU7w">
                <node concept="1mIQ4w" id="5VJ3UjC9vo6" role="2OqNvi">
                  <node concept="chp4Y" id="5VJ3UjC9xum" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
                  </node>
                </node>
                <node concept="37vLTw" id="5VJ3UjCc$cx" role="2Oq$k0">
                  <ref role="3cqZAo" node="5VJ3UjCbv0p" resolve="r" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5VJ3UjC9vo8" role="3eOfB_">
              <node concept="3clFbF" id="7qe1GumKkS5" role="3cqZAp">
                <node concept="1rXfSq" id="5VJ3UjC9KEH" role="3clFbG">
                  <ref role="37wK5l" node="5VJ3UjC9PFy" resolve="datalit2datalit" />
                  <node concept="1PxgMI" id="5VJ3UjC9KEI" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="5VJ3UjC9KNj" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
                    </node>
                    <node concept="37vLTw" id="5VJ3UjCcwn_" role="1m5AlR">
                      <ref role="3cqZAo" node="5VJ3UjC4N21" resolve="l" />
                    </node>
                  </node>
                  <node concept="1PxgMI" id="5VJ3UjC9KEN" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="5VJ3UjC9NnN" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
                    </node>
                    <node concept="37vLTw" id="5VJ3UjCcyUO" role="1m5AlR">
                      <ref role="3cqZAo" node="5VJ3UjCbv0p" resolve="r" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7qe1GumTirE" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="7qe1GumOd3V" role="9aQIa">
            <node concept="3clFbS" id="7qe1GumOd3W" role="9aQI4">
              <node concept="3SKdUt" id="7qe1GumOge5" role="3cqZAp">
                <node concept="1PaTwC" id="7qe1GumOge6" role="3ndbpf">
                  <node concept="3oM_SD" id="7qe1GumOgek" role="1PaTwD">
                    <property role="3oM_SC" value="anything" />
                  </node>
                  <node concept="3oM_SD" id="7qe1GumOgeu" role="1PaTwD">
                    <property role="3oM_SC" value="else" />
                  </node>
                  <node concept="3oM_SD" id="7qe1GumOgfq" role="1PaTwD">
                    <property role="3oM_SC" value="needn't" />
                  </node>
                  <node concept="3oM_SD" id="7qe1GumOgfA" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="7qe1GumOgfN" role="1PaTwD">
                    <property role="3oM_SC" value="processed" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5VJ3UjCb1Dm" role="1B3o_S" />
      <node concept="3cqZAl" id="7qe1GumK3on" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5VJ3UjC60I2" role="jymVt" />
    <node concept="3clFb_" id="5VJ3UjC5YJb" role="jymVt">
      <property role="TrG5h" value="var2var" />
      <node concept="37vLTG" id="5VJ3UjC5YJc" role="3clF46">
        <property role="TrG5h" value="var1" />
        <node concept="3Tqbb2" id="5VJ3UjC5YJd" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
      </node>
      <node concept="37vLTG" id="5VJ3UjC5YJe" role="3clF46">
        <property role="TrG5h" value="var2" />
        <node concept="3Tqbb2" id="5VJ3UjC5YJf" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
      </node>
      <node concept="3clFbS" id="5VJ3UjC5YJg" role="3clF47">
        <node concept="3clFbJ" id="7qe1GumLqyo" role="3cqZAp">
          <node concept="3clFbS" id="7qe1GumLqyq" role="3clFbx">
            <node concept="3SKdUt" id="7qe1GumLBr$" role="3cqZAp">
              <node concept="1PaTwC" id="7qe1GumLBr_" role="3ndbpf">
                <node concept="3oM_SD" id="7qe1GumLFmA" role="1PaTwD">
                  <property role="3oM_SC" value="analysis" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFmC" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFmN" role="1PaTwD">
                  <property role="3oM_SC" value="simple" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFmR" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFmW" role="1PaTwD">
                  <property role="3oM_SC" value="conservative:" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFnx" role="1PaTwD">
                  <property role="3oM_SC" value="uni" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFnK" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFoz" role="1PaTwD">
                  <property role="3oM_SC" value="non-local" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFp4" role="1PaTwD">
                  <property role="3oM_SC" value="var" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFpm" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFpx" role="1PaTwD">
                  <property role="3oM_SC" value="anything" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFql" role="1PaTwD">
                  <property role="3oM_SC" value="marks" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFqy" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFqS" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="7qe1GumLFrf" role="1PaTwD">
                  <property role="3oM_SC" value="affected" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7qe1GumLiof" role="3cqZAp">
              <node concept="1rXfSq" id="7qe1GumLiog" role="3clFbG">
                <ref role="37wK5l" node="7qe1GumJo4T" resolve="markAffected" />
                <node concept="37vLTw" id="7qe1GumLioh" role="37wK5m">
                  <ref role="3cqZAo" node="5VJ3UjC5YJc" resolve="var1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7qe1GumKANc" role="3cqZAp">
              <node concept="1rXfSq" id="7qe1GumKANd" role="3clFbG">
                <ref role="37wK5l" node="7qe1GumJo4T" resolve="markAffected" />
                <node concept="37vLTw" id="7qe1GumLiAi" role="37wK5m">
                  <ref role="3cqZAo" node="5VJ3UjC5YJe" resolve="var2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="7qe1GumS_9b" role="3clFbw">
            <node concept="1rXfSq" id="7qe1GumS$wF" role="3uHU7B">
              <ref role="37wK5l" node="7qe1GumKNLd" resolve="isVolatile" />
              <node concept="37vLTw" id="7qe1GumS$wG" role="37wK5m">
                <ref role="3cqZAo" node="5VJ3UjC5YJc" resolve="var1" />
              </node>
            </node>
            <node concept="1rXfSq" id="7qe1GumLvgW" role="3uHU7w">
              <ref role="37wK5l" node="7qe1GumKNLd" resolve="isVolatile" />
              <node concept="37vLTw" id="7qe1GumLvud" role="37wK5m">
                <ref role="3cqZAo" node="5VJ3UjC5YJe" resolve="var2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5VJ3UjC5YJh" role="1B3o_S" />
      <node concept="3cqZAl" id="7qe1GumKxvG" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7qe1GumU7ih" role="jymVt">
      <property role="TrG5h" value="isNonVolatileVar" />
      <node concept="37vLTG" id="7qe1GumU9RV" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3Tqbb2" id="7qe1GumUbui" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
        </node>
      </node>
      <node concept="3clFbS" id="7qe1GumU7ik" role="3clF47">
        <node concept="3clFbF" id="7qe1GumUcU$" role="3cqZAp">
          <node concept="1Wc70l" id="7qe1GumUcUA" role="3clFbG">
            <node concept="2OqwBi" id="7qe1GumUcUB" role="3uHU7B">
              <node concept="37vLTw" id="7qe1GumUcUC" role="2Oq$k0">
                <ref role="3cqZAo" node="7qe1GumU9RV" resolve="item" />
              </node>
              <node concept="1mIQ4w" id="7qe1GumUcUD" role="2OqNvi">
                <node concept="chp4Y" id="7qe1GumUcUE" role="cj9EA">
                  <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7qe1GumUcUF" role="3uHU7w">
              <node concept="1rXfSq" id="7qe1GumUcUG" role="3fr31v">
                <ref role="37wK5l" node="7qe1GumKNLd" resolve="isVolatile" />
                <node concept="1PxgMI" id="7qe1GumUcUH" role="37wK5m">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="7qe1GumUcUI" role="3oSUPX">
                    <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                  </node>
                  <node concept="37vLTw" id="7qe1GumUcUJ" role="1m5AlR">
                    <ref role="3cqZAo" node="7qe1GumU9RV" resolve="item" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7qe1GumU4Ew" role="1B3o_S" />
      <node concept="10P_77" id="7qe1GumU6W7" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5VJ3UjC5POR" role="jymVt">
      <property role="TrG5h" value="var2notvar" />
      <node concept="37vLTG" id="5VJ3UjC5SRP" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="5VJ3UjC5UAO" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
      </node>
      <node concept="37vLTG" id="5VJ3UjC5UEh" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="5VJ3UjC5WnU" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
        </node>
      </node>
      <node concept="3clFbS" id="5VJ3UjC5POU" role="3clF47">
        <node concept="3clFbH" id="7qe1GumP26a" role="3cqZAp" />
        <node concept="3clFbJ" id="7qe1GumOFrD" role="3cqZAp">
          <node concept="3fqX7Q" id="7qe1GumSXjZ" role="3clFbw">
            <node concept="1rXfSq" id="7qe1GumSXk1" role="3fr31v">
              <ref role="37wK5l" node="7qe1GumKNLd" resolve="isVolatile" />
              <node concept="37vLTw" id="7qe1GumSXk2" role="37wK5m">
                <ref role="3cqZAo" node="5VJ3UjC5SRP" resolve="var" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7qe1GumOJav" role="3clFbx">
            <node concept="3clFbH" id="7qe1GumShlh" role="3cqZAp" />
            <node concept="3clFbJ" id="7qe1GumSahN" role="3cqZAp">
              <node concept="3clFbS" id="7qe1GumSahP" role="3clFbx">
                <node concept="3clFbJ" id="7qe1GumSgey" role="3cqZAp">
                  <node concept="3clFbS" id="7qe1GumSge$" role="3clFbx">
                    <node concept="3cpWs6" id="7qe1GumSjjF" role="3cqZAp" />
                  </node>
                  <node concept="1rXfSq" id="7qe1GumUgNs" role="3clFbw">
                    <ref role="37wK5l" node="7qe1GumU7ih" resolve="isNonVolatileVar" />
                    <node concept="2OqwBi" id="7qe1GumScUZ" role="37wK5m">
                      <node concept="1PxgMI" id="7qe1GumScnc" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="7qe1GumScG4" role="3oSUPX">
                          <ref role="cht4Q" to="wq2x:1HWyn8iJ_xB" resolve="CopyItem" />
                        </node>
                        <node concept="37vLTw" id="7qe1GumSbrj" role="1m5AlR">
                          <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7qe1GumSdfh" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:1HWyn8iJ_Iq" resolve="origin" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7qe1GumSav0" role="3clFbw">
                <node concept="37vLTw" id="7qe1GumSajp" role="2Oq$k0">
                  <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
                </node>
                <node concept="1mIQ4w" id="7qe1GumSaKs" role="2OqNvi">
                  <node concept="chp4Y" id="7qe1GumSaMQ" role="cj9EA">
                    <ref role="cht4Q" to="wq2x:1HWyn8iJ_xB" resolve="CopyItem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7qe1GumTWKx" role="3cqZAp">
              <node concept="3clFbS" id="7qe1GumTWKy" role="3clFbx">
                <node concept="3cpWs8" id="7qe1GumTXNK" role="3cqZAp">
                  <node concept="3cpWsn" id="7qe1GumTXNN" role="3cpWs9">
                    <property role="TrG5h" value="sub" />
                    <node concept="3Tqbb2" id="7qe1GumTXNI" role="1tU5fm">
                      <ref role="ehGHo" to="wq2x:3pMFS1zdeji" resolve="Substitution" />
                    </node>
                    <node concept="1PxgMI" id="7qe1GumTYC1" role="33vP2m">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="7qe1GumTYPm" role="3oSUPX">
                        <ref role="cht4Q" to="wq2x:3pMFS1zdeji" resolve="Substitution" />
                      </node>
                      <node concept="37vLTw" id="7qe1GumTY12" role="1m5AlR">
                        <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7qe1GumUhwQ" role="3cqZAp">
                  <node concept="3clFbS" id="7qe1GumUhwR" role="3clFbx">
                    <node concept="3cpWs6" id="7qe1GumUhwS" role="3cqZAp" />
                  </node>
                  <node concept="1rXfSq" id="7qe1GumUhwT" role="3clFbw">
                    <ref role="37wK5l" node="7qe1GumU7ih" resolve="isNonVolatileVar" />
                    <node concept="2OqwBi" id="7qe1GumUhwU" role="37wK5m">
                      <node concept="3TrEf2" id="7qe1GumUvsf" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:3pMFS1zdejv" resolve="origin" />
                      </node>
                      <node concept="37vLTw" id="7qe1GumUieK" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qe1GumTXNN" resolve="sub" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7qe1GumTWDw" role="3cqZAp">
                  <node concept="1PaTwC" id="7qe1GumTWDx" role="3ndbpf">
                    <node concept="3oM_SD" id="7qe1GumTWHF" role="1PaTwD">
                      <property role="3oM_SC" value="todo:" />
                    </node>
                    <node concept="3oM_SD" id="7qe1GumTWHH" role="1PaTwD">
                      <property role="3oM_SC" value="same" />
                    </node>
                    <node concept="3oM_SD" id="7qe1GumTWI0" role="1PaTwD">
                      <property role="3oM_SC" value="condition" />
                    </node>
                    <node concept="3oM_SD" id="7qe1GumTWK7" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                    </node>
                    <node concept="3oM_SD" id="7qe1GumTWIk" role="1PaTwD">
                      <property role="3oM_SC" value="somewhat" />
                    </node>
                    <node concept="3oM_SD" id="7qe1GumTWIp" role="1PaTwD">
                      <property role="3oM_SC" value="more" />
                    </node>
                    <node concept="3oM_SD" id="7qe1GumTWIv" role="1PaTwD">
                      <property role="3oM_SC" value="elaborate" />
                    </node>
                    <node concept="3oM_SD" id="7qe1GumTWIA" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="7qe1GumTWIY" role="1PaTwD">
                      <property role="3oM_SC" value="Substitution" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7qe1GumTWKS" role="3clFbw">
                <node concept="37vLTw" id="7qe1GumTWKT" role="2Oq$k0">
                  <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
                </node>
                <node concept="1mIQ4w" id="7qe1GumTWKU" role="2OqNvi">
                  <node concept="chp4Y" id="7qe1GumTXoK" role="cj9EA">
                    <ref role="cht4Q" to="wq2x:3pMFS1zdeji" resolve="Substitution" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7qe1GumSjk0" role="3cqZAp" />
            <node concept="3clFbF" id="7qe1GumSeDN" role="3cqZAp">
              <node concept="1rXfSq" id="7qe1GumSeDL" role="3clFbG">
                <ref role="37wK5l" node="7qe1GumJo4T" resolve="markAffected" />
                <node concept="37vLTw" id="7qe1GumSeT0" role="37wK5m">
                  <ref role="3cqZAo" node="5VJ3UjC5SRP" resolve="var" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7qe1GumOJQK" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="7qe1GumP7AD" role="3cqZAp" />
        <node concept="3SKdUt" id="7qe1GumP4RF" role="3cqZAp">
          <node concept="1PaTwC" id="7qe1GumP4RG" role="3ndbpf">
            <node concept="3oM_SD" id="7qe1GumP7_3" role="1PaTwD">
              <property role="3oM_SC" value="either" />
            </node>
            <node concept="3oM_SD" id="7qe1GumP7_5" role="1PaTwD">
              <property role="3oM_SC" value="non-local" />
            </node>
            <node concept="3oM_SD" id="7qe1GumP7_w" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="7qe1GumP7_$" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="7qe1GumP7_D" role="1PaTwD">
              <property role="3oM_SC" value="affected" />
            </node>
            <node concept="3oM_SD" id="7qe1GumP7_R" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="7qe1GumP7_Y" role="1PaTwD">
              <property role="3oM_SC" value="affected" />
            </node>
            <node concept="3oM_SD" id="7qe1GumP7Am" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qe1GumOWTC" role="3cqZAp">
          <node concept="1rXfSq" id="7qe1GumOWTA" role="3clFbG">
            <ref role="37wK5l" node="7qe1GumJo4T" resolve="markAffected" />
            <node concept="37vLTw" id="7qe1GumOYsf" role="37wK5m">
              <ref role="3cqZAo" node="5VJ3UjC5SRP" resolve="var" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5VJ3UjC8vpM" role="3cqZAp" />
        <node concept="3clFbJ" id="5VJ3UjC7Vtx" role="3cqZAp">
          <node concept="3eNFk2" id="5VJ3UjC8oAl" role="3eNLev">
            <node concept="1Wc70l" id="5VJ3UjC8KMz" role="3eO9$A">
              <node concept="1eOMI4" id="5VJ3UjC8KIi" role="3uHU7B">
                <node concept="22lmx$" id="5VJ3UjC8Jbr" role="1eOMHV">
                  <node concept="2OqwBi" id="5VJ3UjC7WI9" role="3uHU7B">
                    <node concept="37vLTw" id="5VJ3UjC7WDR" role="2Oq$k0">
                      <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
                    </node>
                    <node concept="1mIQ4w" id="5VJ3UjC7WLS" role="2OqNvi">
                      <node concept="chp4Y" id="5VJ3UjC84uH" role="cj9EA">
                        <ref role="cht4Q" to="wq2x:5WBVN_MT8FC" resolve="LateExpressionItem" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5VJ3UjC8Jyt" role="3uHU7w">
                    <node concept="37vLTw" id="5VJ3UjC8JkU" role="2Oq$k0">
                      <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
                    </node>
                    <node concept="1mIQ4w" id="5VJ3UjC8JGU" role="2OqNvi">
                      <node concept="chp4Y" id="5VJ3UjC8JK4" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:7lt0LtQg3tE" resolve="ExpressionItem" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5VJ3UjC85nD" role="3uHU7w">
                <node concept="37vLTw" id="5VJ3UjCaZ56" role="3fr31v">
                  <ref role="3cqZAo" node="5VJ3UjCaTNf" resolve="assumeReadOnlyExprs" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5VJ3UjC7Vtz" role="3eOfB_">
              <node concept="3clFbF" id="7qe1GumM$jZ" role="3cqZAp">
                <node concept="1rXfSq" id="7qe1GumM$k0" role="3clFbG">
                  <ref role="37wK5l" node="7qe1GumM4TS" resolve="markAllAffected" />
                  <node concept="37vLTw" id="7qe1GumM$k1" role="37wK5m">
                    <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7qe1GumM$LV" role="3cqZAp" />
            </node>
          </node>
          <node concept="22lmx$" id="5VJ3UjC8Nr$" role="3clFbw">
            <node concept="2OqwBi" id="5VJ3UjC8wOK" role="3uHU7B">
              <node concept="37vLTw" id="5VJ3UjC8wAS" role="2Oq$k0">
                <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
              </node>
              <node concept="1mIQ4w" id="5VJ3UjC8x4C" role="2OqNvi">
                <node concept="chp4Y" id="5VJ3UjC8xa6" role="cj9EA">
                  <ref role="cht4Q" to="5j4j:JOGAOsxanH" resolve="DataFormConstructor" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5VJ3UjC8MPH" role="3uHU7w">
              <node concept="37vLTw" id="5VJ3UjC8MDv" role="2Oq$k0">
                <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
              </node>
              <node concept="1mIQ4w" id="5VJ3UjC8MZG" role="2OqNvi">
                <node concept="chp4Y" id="5VJ3UjC8N0z" role="cj9EA">
                  <ref role="cht4Q" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5VJ3UjC8oAn" role="3clFbx">
            <node concept="3clFbF" id="7qe1GumMlQ3" role="3cqZAp">
              <node concept="1rXfSq" id="7qe1GumMlQ1" role="3clFbG">
                <ref role="37wK5l" node="7qe1GumM4TS" resolve="markAllAffected" />
                <node concept="37vLTw" id="7qe1GumMm8O" role="37wK5m">
                  <ref role="3cqZAo" node="5VJ3UjC5UEh" resolve="other" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7qe1GumM$Lc" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="5VJ3UjC8xe5" role="9aQIa">
            <node concept="3clFbS" id="5VJ3UjC8xe6" role="9aQI4">
              <node concept="3SKdUt" id="5VJ3UjC8xoM" role="3cqZAp">
                <node concept="1PaTwC" id="5VJ3UjC8xoN" role="3ndbpf">
                  <node concept="3oM_SD" id="5VJ3UjC8KUh" role="1PaTwD">
                    <property role="3oM_SC" value="ignore" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjC8xpj" role="1PaTwD">
                    <property role="3oM_SC" value="CopyItem," />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjC8xq6" role="1PaTwD">
                    <property role="3oM_SC" value="Substitution," />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjC8xr2" role="1PaTwD">
                    <property role="3oM_SC" value="ExpressionLogicalVariable," />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjC8KUB" role="1PaTwD">
                    <property role="3oM_SC" value="PatternLogicalVariable," />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjC8KSG" role="1PaTwD">
                    <property role="3oM_SC" value="NodeAnchor:" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjCb9Yr" role="1PaTwD">
                    <property role="3oM_SC" value="they" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjCb9YF" role="1PaTwD">
                    <property role="3oM_SC" value="don't" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjCb9YO" role="1PaTwD">
                    <property role="3oM_SC" value="contain" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjCb9Ze" role="1PaTwD">
                    <property role="3oM_SC" value="or" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjCb9ZD" role="1PaTwD">
                    <property role="3oM_SC" value="don't" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjCb9ZP" role="1PaTwD">
                    <property role="3oM_SC" value="affect" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjCba0i" role="1PaTwD">
                    <property role="3oM_SC" value="used" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjCba28" role="1PaTwD">
                    <property role="3oM_SC" value="logical" />
                  </node>
                  <node concept="3oM_SD" id="5VJ3UjCba2B" role="1PaTwD">
                    <property role="3oM_SC" value="vars" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5VJ3UjC8Qx3" role="1B3o_S" />
      <node concept="3cqZAl" id="7qe1GumLTan" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5VJ3UjC5L_v" role="jymVt" />
    <node concept="3clFb_" id="5VJ3UjC8TZF" role="jymVt">
      <property role="TrG5h" value="dataform2dataform" />
      <node concept="37vLTG" id="5VJ3UjC8TZG" role="3clF46">
        <property role="TrG5h" value="df1" />
        <node concept="3Tqbb2" id="5VJ3UjC8TZH" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:JOGAOsxanH" resolve="DataFormConstructor" />
        </node>
      </node>
      <node concept="37vLTG" id="5VJ3UjC8TZI" role="3clF46">
        <property role="TrG5h" value="df2" />
        <node concept="3Tqbb2" id="5VJ3UjC8TZJ" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:JOGAOsxanH" resolve="DataFormConstructor" />
        </node>
      </node>
      <node concept="3clFbS" id="5VJ3UjC8TZK" role="3clF47">
        <node concept="3SKdUt" id="5VJ3UjCbmMx" role="3cqZAp">
          <node concept="1PaTwC" id="5VJ3UjCbmMy" role="3ndbpf">
            <node concept="3oM_SD" id="5VJ3UjCbnTY" role="1PaTwD">
              <property role="3oM_SC" value="TODO:" />
            </node>
            <node concept="3oM_SD" id="5VJ3UjCbnU0" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="5VJ3UjCbnUj" role="1PaTwD">
              <property role="3oM_SC" value="recursive" />
            </node>
            <node concept="3oM_SD" id="5VJ3UjCbnUR" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5VJ3UjC8U11" role="1B3o_S" />
      <node concept="3cqZAl" id="7qe1GumNcDy" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5VJ3UjC8Sho" role="jymVt" />
    <node concept="3clFb_" id="5VJ3UjC9PFy" role="jymVt">
      <property role="TrG5h" value="datalit2datalit" />
      <node concept="37vLTG" id="5VJ3UjC9PFz" role="3clF46">
        <property role="TrG5h" value="dn1" />
        <node concept="3Tqbb2" id="5VJ3UjC9PF$" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
        </node>
      </node>
      <node concept="37vLTG" id="5VJ3UjC9PF_" role="3clF46">
        <property role="TrG5h" value="dn2" />
        <node concept="3Tqbb2" id="5VJ3UjC9PFA" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
        </node>
      </node>
      <node concept="3clFbS" id="5VJ3UjC9PFB" role="3clF47">
        <node concept="3SKdUt" id="5VJ3UjCcPvU" role="3cqZAp">
          <node concept="1PaTwC" id="5VJ3UjCcPvV" role="3ndbpf">
            <node concept="3oM_SD" id="5VJ3UjCcPvW" role="1PaTwD">
              <property role="3oM_SC" value="TODO:" />
            </node>
            <node concept="3oM_SD" id="5VJ3UjCcPvX" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="5VJ3UjCcPvY" role="1PaTwD">
              <property role="3oM_SC" value="recursive" />
            </node>
            <node concept="3oM_SD" id="5VJ3UjCcPvZ" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5VJ3UjC9PGF" role="1B3o_S" />
      <node concept="3cqZAl" id="7qe1GumNe_E" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7qe1GumMWaZ" role="jymVt" />
    <node concept="3clFb_" id="7qe1GumItlO" role="jymVt">
      <property role="TrG5h" value="isAffected" />
      <node concept="3clFbS" id="7qe1GumItlR" role="3clF47">
        <node concept="3clFbF" id="7qe1GumI$P3" role="3cqZAp">
          <node concept="2OqwBi" id="7qe1GumIA46" role="3clFbG">
            <node concept="37vLTw" id="7qe1GumI$P2" role="2Oq$k0">
              <ref role="3cqZAo" node="7qe1GumFJuO" resolve="affectedEnv" />
            </node>
            <node concept="3JPx81" id="7qe1GumIALE" role="2OqNvi">
              <node concept="2OqwBi" id="7qe1GumJvNu" role="25WWJ7">
                <node concept="37vLTw" id="7qe1GumIAS1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qe1GumIx2f" resolve="var" />
                </node>
                <node concept="3TrEf2" id="7qe1GumJwpc" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7qe1GumIpaP" role="1B3o_S" />
      <node concept="10P_77" id="7qe1GumIt82" role="3clF45" />
      <node concept="37vLTG" id="7qe1GumIx2f" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="7qe1GumIx2e" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qe1GumN1wK" role="jymVt" />
    <node concept="3clFb_" id="7qe1GumKNLd" role="jymVt">
      <property role="TrG5h" value="isVolatile" />
      <node concept="3clFbS" id="7qe1GumKNLe" role="3clF47">
        <node concept="3clFbF" id="7qe1GumL8ff" role="3cqZAp">
          <node concept="22lmx$" id="7qe1GumL8HH" role="3clFbG">
            <node concept="1rXfSq" id="7qe1GumL8UW" role="3uHU7w">
              <ref role="37wK5l" node="7qe1GumCPHi" resolve="isNonLocal" />
              <node concept="37vLTw" id="7qe1GumL97I" role="37wK5m">
                <ref role="3cqZAo" node="7qe1GumKNLo" resolve="var" />
              </node>
            </node>
            <node concept="1rXfSq" id="7qe1GumL8fe" role="3uHU7B">
              <ref role="37wK5l" node="7qe1GumItlO" resolve="isAffected" />
              <node concept="37vLTw" id="7qe1GumL8uH" role="37wK5m">
                <ref role="3cqZAo" node="7qe1GumKNLo" resolve="var" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7qe1GumKNLm" role="1B3o_S" />
      <node concept="10P_77" id="7qe1GumKNLn" role="3clF45" />
      <node concept="37vLTG" id="7qe1GumKNLo" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="7qe1GumKNLp" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qe1GumKK4U" role="jymVt" />
    <node concept="3clFb_" id="7qe1GumJo4T" role="jymVt">
      <property role="TrG5h" value="markAffected" />
      <node concept="3clFbS" id="7qe1GumJo4W" role="3clF47">
        <node concept="3clFbF" id="7qe1GumJFSB" role="3cqZAp">
          <node concept="2OqwBi" id="7qe1GumJGP4" role="3clFbG">
            <node concept="37vLTw" id="7qe1GumJFSA" role="2Oq$k0">
              <ref role="3cqZAo" node="7qe1GumFJuO" resolve="affectedEnv" />
            </node>
            <node concept="TSZUe" id="7qe1GumJHAu" role="2OqNvi">
              <node concept="2OqwBi" id="7qe1GumJJmk" role="25WWJ7">
                <node concept="37vLTw" id="7qe1GumJIEQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qe1GumJrtN" resolve="var" />
                </node>
                <node concept="3TrEf2" id="7qe1GumJK9e" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7qe1GumJl4y" role="1B3o_S" />
      <node concept="3cqZAl" id="7qe1GumJnWN" role="3clF45" />
      <node concept="37vLTG" id="7qe1GumJrtN" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="7qe1GumJrtM" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7qe1GumM4TS" role="jymVt">
      <property role="TrG5h" value="markAllAffected" />
      <node concept="3clFbS" id="7qe1GumM4TT" role="3clF47">
        <node concept="3clFbF" id="7qe1GumM4TU" role="3cqZAp">
          <node concept="2OqwBi" id="7qe1GumM4TV" role="3clFbG">
            <node concept="37vLTw" id="7qe1GumM4TW" role="2Oq$k0">
              <ref role="3cqZAo" node="7qe1GumFJuO" resolve="affectedEnv" />
            </node>
            <node concept="X8dFx" id="7qe1GumMbyv" role="2OqNvi">
              <node concept="2OqwBi" id="7qe1GumMePM" role="25WWJ7">
                <node concept="2OqwBi" id="7qe1GumMuJD" role="2Oq$k0">
                  <node concept="37vLTw" id="7qe1GumMep8" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qe1GumM4U3" resolve="item" />
                  </node>
                  <node concept="2Rf3mk" id="7qe1GumMwx7" role="2OqNvi">
                    <node concept="1xMEDy" id="7qe1GumMwx9" role="1xVPHs">
                      <node concept="chp4Y" id="7qe1GumMwIS" role="ri$Ld">
                        <ref role="cht4Q" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="7qe1GumMyVI" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3$u5V9" id="7qe1GumMh0r" role="2OqNvi">
                  <node concept="1bVj0M" id="7qe1GumMh0t" role="23t8la">
                    <node concept="3clFbS" id="7qe1GumMh0u" role="1bW5cS">
                      <node concept="3clFbF" id="7qe1GumMhZ4" role="3cqZAp">
                        <node concept="2OqwBi" id="7qe1GumMjmF" role="3clFbG">
                          <node concept="37vLTw" id="7qe1GumMhZ3" role="2Oq$k0">
                            <ref role="3cqZAo" node="7qe1GumMh0v" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="7qe1GumMjXV" role="2OqNvi">
                            <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7qe1GumMh0v" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7qe1GumMh0w" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7qe1GumM4U1" role="1B3o_S" />
      <node concept="3cqZAl" id="7qe1GumM4U2" role="3clF45" />
      <node concept="37vLTG" id="7qe1GumM4U3" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3Tqbb2" id="7qe1GumMrdg" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5VJ3UjC8Smt" role="jymVt" />
    <node concept="3clFb_" id="5VJ3UjC4APE" role="jymVt">
      <property role="TrG5h" value="isLocal" />
      <node concept="37vLTG" id="5VJ3UjC4B6I" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="5VJ3UjC4Bqs" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
      </node>
      <node concept="3clFbS" id="5VJ3UjC4APH" role="3clF47">
        <node concept="3clFbF" id="5VJ3UjC4D97" role="3cqZAp">
          <node concept="3fqX7Q" id="7qe1GumD9LV" role="3clFbG">
            <node concept="1rXfSq" id="7qe1GumDHwC" role="3fr31v">
              <ref role="37wK5l" node="7qe1GumCPHi" resolve="isNonLocal" />
              <node concept="37vLTw" id="7qe1GumDHH3" role="37wK5m">
                <ref role="3cqZAo" node="5VJ3UjC4B6I" resolve="var" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5VJ3UjC4AnS" role="1B3o_S" />
      <node concept="10P_77" id="5VJ3UjC4APt" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7qe1GumCWt2" role="jymVt" />
    <node concept="3clFb_" id="7qe1GumCPHi" role="jymVt">
      <property role="TrG5h" value="isNonLocal" />
      <node concept="37vLTG" id="7qe1GumCPHj" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="7qe1GumCPHk" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
      </node>
      <node concept="3clFbS" id="7qe1GumCPHl" role="3clF47">
        <node concept="3SKdUt" id="7qe1GumCPHm" role="3cqZAp">
          <node concept="1PaTwC" id="7qe1GumCPHn" role="3ndbpf">
            <node concept="3oM_SD" id="7qe1GumCPHo" role="1PaTwD">
              <property role="3oM_SC" value="'non" />
            </node>
            <node concept="3oM_SD" id="7qe1GumDa0L" role="1PaTwD">
              <property role="3oM_SC" value="local'" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHp" role="1PaTwD">
              <property role="3oM_SC" value="means" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHq" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHr" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHs" role="1PaTwD">
              <property role="3oM_SC" value="logical" />
            </node>
            <node concept="3oM_SD" id="7qe1GumDa0h" role="1PaTwD">
              <property role="3oM_SC" value="var" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHC" role="1PaTwD">
              <property role="3oM_SC" value="came" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHD" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHE" role="1PaTwD">
              <property role="3oM_SC" value="argument" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHF" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHG" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="7qe1GumD9Vg" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="7qe1GumD9VT" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHJ" role="1PaTwD">
              <property role="3oM_SC" value="head" />
            </node>
            <node concept="3oM_SD" id="7qe1GumCPHK" role="1PaTwD">
              <property role="3oM_SC" value="constraints" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qe1GumCPHL" role="3cqZAp">
          <node concept="2OqwBi" id="7qe1GumCPHM" role="3clFbG">
            <node concept="37vLTw" id="7qe1GumCPHN" role="2Oq$k0">
              <ref role="3cqZAo" node="5VJ3UjC4qFD" resolve="nonLocalVars" />
            </node>
            <node concept="3JPx81" id="7qe1GumCPHO" role="2OqNvi">
              <node concept="2OqwBi" id="7qe1GumCPHP" role="25WWJ7">
                <node concept="37vLTw" id="7qe1GumCPHQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qe1GumCPHj" resolve="var" />
                </node>
                <node concept="3TrEf2" id="7qe1GumCPHR" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7qe1GumCPHS" role="1B3o_S" />
      <node concept="10P_77" id="7qe1GumCPHT" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5VJ3UjC4A77" role="jymVt" />
    <node concept="312cEg" id="5VJ3UjC4JLn" role="jymVt">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="5VJ3UjC4JeE" role="1B3o_S" />
      <node concept="3Tqbb2" id="5VJ3UjC4JKT" role="1tU5fm">
        <ref role="ehGHo" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qe1GumOaUC" role="jymVt" />
    <node concept="312cEg" id="5VJ3UjC4qFD" role="jymVt">
      <property role="TrG5h" value="nonLocalVars" />
      <node concept="3Tm6S6" id="2SkPIT_klEv" role="1B3o_S" />
      <node concept="2hMVRd" id="2SkPIT_klER" role="1tU5fm">
        <node concept="3Tqbb2" id="5VJ3UjC4mcu" role="2hN53Y">
          <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7qe1GumFJuO" role="jymVt">
      <property role="TrG5h" value="affectedEnv" />
      <node concept="3Tm6S6" id="7qe1GumFJuP" role="1B3o_S" />
      <node concept="2hMVRd" id="7qe1GumFJuR" role="1tU5fm">
        <node concept="3Tqbb2" id="7qe1GumFJuS" role="2hN53Y">
          <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qe1GumO9gA" role="jymVt" />
    <node concept="312cEg" id="5VJ3UjCaTNf" role="jymVt">
      <property role="TrG5h" value="assumeReadOnlyExprs" />
      <node concept="3Tm6S6" id="5VJ3UjCaRGy" role="1B3o_S" />
      <node concept="10P_77" id="5VJ3UjCaTFC" role="1tU5fm" />
      <node concept="3clFbT" id="5VJ3UjCaVa0" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qe1GumNZm7" role="jymVt" />
    <node concept="3Tm1VV" id="2SkPIT_klnH" role="1B3o_S" />
  </node>
</model>

