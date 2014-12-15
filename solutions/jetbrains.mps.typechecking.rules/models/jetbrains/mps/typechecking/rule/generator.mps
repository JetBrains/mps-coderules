<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:22d5f1f3-a483-4725-abc3-c5e9c2c56292(jetbrains.mps.typechecking.rule.generator)">
  <persistence version="9" />
  <languages>
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="138j" ref="r:d390cf6e-3a05-4c9d-8eb3-bcdfbfd3bf8f(jetbrains.mps.typechecking.rule.collection)" />
    <import index="qiww" ref="r:7e0616dc-e55e-4c35-beca-da14b0c8f8bd(jetbrains.mps.lang.typesystem2.runtime.template)" />
    <import index="nc4n" ref="r:2a1eb048-898c-47a3-863b-36b04c4b9f7c(jetbrains.mps.lang.typesystem2.runtime.rule)" />
    <import index="4t1t" ref="r:703839e2-c38f-4b71-8602-72ccb87dd74e(jetbrains.mps.lang.typesystem2.runtime.util)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
    </language>
  </registry>
  <node concept="312cEu" id="12yN8DyF_E1">
    <property role="TrG5h" value="TypecheckingRuleGenerator" />
    <node concept="2tJIrI" id="5ntLU8GlxKW" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RSy_Op" role="jymVt">
      <node concept="3cqZAl" id="7Oc59RSy_Or" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RSy_Os" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSy_Ot" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSyA2f" role="3cqZAp">
          <node concept="37vLTI" id="7Oc59RSyA3S" role="3clFbG">
            <node concept="37vLTw" id="7Oc59RSyA55" role="37vLTx">
              <ref role="3cqZAo" node="7Oc59RSyA1q" resolve="collection" />
            </node>
            <node concept="37vLTw" id="7Oc59RSyA2e" role="37vLTJ">
              <ref role="3cqZAo" node="5ntLU8GlznG" resolve="ruleTemplateCollection" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Oc59RSyA1q" role="3clF46">
        <property role="TrG5h" value="collection" />
        <node concept="3uibUv" id="7Oc59RSyA1p" role="1tU5fm">
          <ref role="3uigEE" to="138j:6fdr4UgftiG" resolve="RuleTemplateCollection" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSy_Bt" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyNqcj" role="jymVt">
      <property role="TrG5h" value="generate" />
      <node concept="37vLTG" id="12yN8DyNqcH" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="12yN8DyNqcW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Oc59RSzYH5" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="7Oc59RSzYS5" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSFzo8" role="3clF45">
        <ref role="3uigEE" to="4t1t:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="12yN8DyNqcm" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqcn" role="3clF47">
        <node concept="3cpWs8" id="7Oc59RS_8eW" role="3cqZAp">
          <node concept="3cpWsn" id="7Oc59RS_8eX" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="_YKpA" id="7Oc59RS_8eO" role="1tU5fm">
              <node concept="3uibUv" id="7Oc59RSF$Ud" role="_ZDj9">
                <ref role="3uigEE" to="4t1t:7Oc59RSEjjA" resolve="ReportedError" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Oc59RS_8eY" role="33vP2m">
              <node concept="Tc6Ow" id="7Oc59RS_8eZ" role="2ShVmc">
                <node concept="3uibUv" id="7Oc59RSF_ME" role="HW$YZ">
                  <ref role="3uigEE" to="4t1t:7Oc59RSEjjA" resolve="ReportedError" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ntLU8Gm2U7" role="3cqZAp" />
        <node concept="3cpWs8" id="5ntLU8Gl_zM" role="3cqZAp">
          <node concept="3cpWsn" id="5ntLU8Gl_zN" role="3cpWs9">
            <property role="TrG5h" value="walker" />
            <node concept="3uibUv" id="5ntLU8Gl_zI" role="1tU5fm">
              <ref role="3uigEE" node="12yN8DyNqdl" resolve="NodeWalker" />
            </node>
            <node concept="2ShNRf" id="5ntLU8Gl_zO" role="33vP2m">
              <node concept="1pGfFk" id="5ntLU8Gl_zP" role="2ShVmc">
                <ref role="37wK5l" node="12yN8DyNqja" resolve="NodeWalker" />
                <node concept="2ShNRf" id="5ntLU8Gl_zQ" role="37wK5m">
                  <node concept="1pGfFk" id="5ntLU8GlTXo" role="2ShVmc">
                    <ref role="37wK5l" node="5ntLU8GlTO6" resolve="TypecheckingRuleGenerator.TemplateApplicator" />
                    <node concept="37vLTw" id="7Oc59RSy_5u" role="37wK5m">
                      <ref role="3cqZAo" node="7Oc59RSzYH5" resolve="handler" />
                    </node>
                    <node concept="37vLTw" id="7Oc59RS_a9v" role="37wK5m">
                      <ref role="3cqZAo" node="7Oc59RS_8eX" resolve="errors" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ntLU8GlxOR" role="3cqZAp">
          <node concept="2OqwBi" id="5ntLU8Gl_B2" role="3clFbG">
            <node concept="37vLTw" id="5ntLU8Gl_zT" role="2Oq$k0">
              <ref role="3cqZAo" node="5ntLU8Gl_zN" resolve="walker" />
            </node>
            <node concept="liA8E" id="5ntLU8Gl_No" role="2OqNvi">
              <ref role="37wK5l" node="12yN8DyNqZ$" resolve="walkAll" />
              <node concept="37vLTw" id="5ntLU8Gl_Oa" role="37wK5m">
                <ref role="3cqZAo" node="12yN8DyNqcH" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ntLU8Gm2Wi" role="3cqZAp" />
        <node concept="3cpWs6" id="7Oc59RS$Vdl" role="3cqZAp">
          <node concept="3K4zz7" id="7Oc59RS_Mb_" role="3cqZAk">
            <node concept="2YIFZM" id="7Oc59RSFpqp" role="3K4E3e">
              <ref role="37wK5l" to="4t1t:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="4t1t:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7Oc59RSFuTk" role="3K4GZi">
              <ref role="1Pybhc" to="4t1t:7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" to="4t1t:7Oc59RSFgim" resolve="FAIL" />
              <node concept="37vLTw" id="7Oc59RSFvPE" role="37wK5m">
                <ref role="3cqZAo" node="7Oc59RS_8eX" resolve="errors" />
              </node>
            </node>
            <node concept="2OqwBi" id="7Oc59RS$WHm" role="3K4Cdx">
              <node concept="37vLTw" id="7Oc59RS$VQI" role="2Oq$k0">
                <ref role="3cqZAo" node="7Oc59RS_8eX" resolve="errors" />
              </node>
              <node concept="1v1jN8" id="7Oc59RS_0ar" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RS_GdO" role="jymVt" />
    <node concept="2tJIrI" id="5ntLU8Glzbb" role="jymVt" />
    <node concept="312cEu" id="5ntLU8Glzc7" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TemplateApplicator" />
      <node concept="2tJIrI" id="5ntLU8Glzf8" role="jymVt" />
      <node concept="3clFbW" id="5ntLU8GlTO6" role="jymVt">
        <node concept="3cqZAl" id="5ntLU8GlTO8" role="3clF45" />
        <node concept="3Tm6S6" id="5ntLU8GlTO9" role="1B3o_S" />
        <node concept="3clFbS" id="5ntLU8GlTOa" role="3clF47">
          <node concept="3clFbF" id="7Oc59RSysWx" role="3cqZAp">
            <node concept="37vLTI" id="7Oc59RSysWz" role="3clFbG">
              <node concept="2OqwBi" id="7Oc59RSysWB" role="37vLTJ">
                <node concept="Xjq3P" id="7Oc59RSysWE" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Oc59RSysWA" role="2OqNvi">
                  <ref role="2Oxat5" node="7Oc59RSysWt" resolve="handler" />
                </node>
              </node>
              <node concept="37vLTw" id="7Oc59RSysWF" role="37vLTx">
                <ref role="3cqZAo" node="5ntLU8GlU0F" resolve="handler" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Oc59RS_6Wb" role="3cqZAp">
            <node concept="37vLTI" id="7Oc59RS_7Ej" role="3clFbG">
              <node concept="37vLTw" id="7Oc59RS_7Nz" role="37vLTx">
                <ref role="3cqZAo" node="7Oc59RS_5y5" resolve="errors" />
              </node>
              <node concept="2OqwBi" id="7Oc59RS_6Zh" role="37vLTJ">
                <node concept="Xjq3P" id="7Oc59RS_6W9" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Oc59RS_7h3" role="2OqNvi">
                  <ref role="2Oxat5" node="7Oc59RS$NXD" resolve="errors" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5ntLU8GlU0F" role="3clF46">
          <property role="TrG5h" value="handler" />
          <node concept="3uibUv" id="7Oc59RSyq$6" role="1tU5fm">
            <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
          </node>
        </node>
        <node concept="37vLTG" id="7Oc59RS_5y5" role="3clF46">
          <property role="TrG5h" value="errors" />
          <node concept="3vKaQO" id="7Oc59RS_5Ix" role="1tU5fm">
            <node concept="3uibUv" id="7Oc59RSFmYR" role="3O5elw">
              <ref role="3uigEE" to="4t1t:7Oc59RSEjjA" resolve="ReportedError" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5ntLU8Gl$$1" role="jymVt" />
      <node concept="3clFb_" id="5ntLU8GlzgF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="5ntLU8GlzgG" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="5ntLU8GlzgH" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="5ntLU8GlzgI" role="3clF45" />
        <node concept="3Tm1VV" id="5ntLU8GlzgJ" role="1B3o_S" />
        <node concept="3clFbS" id="5ntLU8GlzgL" role="3clF47">
          <node concept="3cpWs8" id="5ntLU8GlzSI" role="3cqZAp">
            <node concept="3cpWsn" id="5ntLU8GlzSJ" role="3cpWs9">
              <property role="TrG5h" value="allTemplates" />
              <node concept="A3Dl8" id="5ntLU8GlzSt" role="1tU5fm">
                <node concept="3uibUv" id="5ntLU8GlzSw" role="A3Ik2">
                  <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                </node>
              </node>
              <node concept="2OqwBi" id="5ntLU8GlzSK" role="33vP2m">
                <node concept="37vLTw" id="5ntLU8GlzSL" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ntLU8GlznG" resolve="ruleTemplateCollection" />
                </node>
                <node concept="liA8E" id="5ntLU8GlzSM" role="2OqNvi">
                  <ref role="37wK5l" to="138j:6fdr4UgfuGk" resolve="allTemplates" />
                  <node concept="37vLTw" id="5ntLU8GlzSN" role="37wK5m">
                    <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                  </node>
                  <node concept="2ShNRf" id="5ntLU8GlzSO" role="37wK5m">
                    <node concept="2i4dXS" id="5ntLU8GlzSP" role="2ShVmc">
                      <node concept="3uibUv" id="5ntLU8GlzSQ" role="HW$YZ">
                        <ref role="3uigEE" to="138j:6fdr4UgftiG" resolve="RuleTemplateCollection" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5ntLU8GlzY6" role="3cqZAp" />
          <node concept="1DcWWT" id="5ntLU8Gl$6x" role="3cqZAp">
            <node concept="3clFbS" id="5ntLU8Gl$6y" role="2LFqv$">
              <node concept="3clFbH" id="5ntLU8GlRHV" role="3cqZAp" />
              <node concept="3cpWs8" id="5ntLU8GlS48" role="3cqZAp">
                <node concept="3cpWsn" id="5ntLU8GlS49" role="3cpWs9">
                  <property role="TrG5h" value="builder" />
                  <node concept="3uibUv" id="5ntLU8GlS47" role="1tU5fm">
                    <ref role="3uigEE" to="nc4n:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                  <node concept="2ShNRf" id="5ntLU8GlS4a" role="33vP2m">
                    <node concept="1pGfFk" id="5ntLU8GlS4b" role="2ShVmc">
                      <ref role="37wK5l" to="nc4n:7eGEHDlc$ar" resolve="RuleBuilder" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7Oc59RSFYKJ" role="3cqZAp">
                <node concept="3clFbS" id="7Oc59RSFYKM" role="3clFbx">
                  <node concept="3clFbH" id="7Oc59RSGwSC" role="3cqZAp" />
                  <node concept="SfApY" id="7Oc59RS$Mz9" role="3cqZAp">
                    <node concept="3clFbS" id="7Oc59RS$Mza" role="SfCbr">
                      <node concept="3cpWs8" id="5ntLU8GlTne" role="3cqZAp">
                        <node concept="3cpWsn" id="5ntLU8GlTnf" role="3cpWs9">
                          <property role="TrG5h" value="rule" />
                          <node concept="3uibUv" id="5ntLU8GlTna" role="1tU5fm">
                            <ref role="3uigEE" to="nc4n:7eGEHDlc$9y" resolve="ConstraintRule" />
                          </node>
                          <node concept="2OqwBi" id="5ntLU8GlTng" role="33vP2m">
                            <node concept="37vLTw" id="5ntLU8GlTnh" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ntLU8GlS49" resolve="builder" />
                            </node>
                            <node concept="liA8E" id="5ntLU8GlTni" role="2OqNvi">
                              <ref role="37wK5l" to="nc4n:7eGEHDlc$ck" resolve="toRule" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7Oc59RSyw5c" role="3cqZAp">
                        <node concept="2OqwBi" id="7Oc59RSyw91" role="3clFbG">
                          <node concept="37vLTw" id="7Oc59RSyw5a" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Oc59RSysWt" resolve="handler" />
                          </node>
                          <node concept="liA8E" id="7Oc59RSywmV" role="2OqNvi">
                            <ref role="37wK5l" to="nc4n:7eGEHDlcF9o" resolve="addRule" />
                            <node concept="37vLTw" id="7Oc59RS$MUp" role="37wK5m">
                              <ref role="3cqZAo" node="5ntLU8GlTnf" resolve="rule" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7Oc59RS$N4$" role="3cqZAp" />
                    </node>
                    <node concept="TDmWw" id="7Oc59RS$Mz5" role="TEbGg">
                      <node concept="3clFbS" id="7Oc59RS$Mz6" role="TDEfX">
                        <node concept="3clFbF" id="7Oc59RS$PEq" role="3cqZAp">
                          <node concept="2OqwBi" id="7Oc59RS$Q8D" role="3clFbG">
                            <node concept="37vLTw" id="7Oc59RS$PEp" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Oc59RS$NXD" resolve="errors" />
                            </node>
                            <node concept="TSZUe" id="7Oc59RS$SoF" role="2OqNvi">
                              <node concept="2ShNRf" id="7Oc59RSAFf7" role="25WWJ7">
                                <node concept="1pGfFk" id="7Oc59RSAF$f" role="2ShVmc">
                                  <ref role="37wK5l" to="4t1t:7Oc59RSAqpA" resolve="ReportedError" />
                                  <node concept="2OqwBi" id="7Oc59RS$SHK" role="37wK5m">
                                    <node concept="37vLTw" id="7Oc59RS$SAU" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7Oc59RS$Mz7" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="7Oc59RS$ThJ" role="2OqNvi">
                                      <ref role="37wK5l" to="e2lb:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="7Oc59RS$Mz7" role="TDEfY">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="7Oc59RS$Mz8" role="1tU5fm">
                          <ref role="3uigEE" to="nc4n:7Oc59RS$wKP" resolve="InvalidRuleException" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7Oc59RSG3zJ" role="3cqZAp" />
                </node>
                <node concept="1rXfSq" id="7Oc59RSG2yV" role="3clFbw">
                  <ref role="37wK5l" node="5ntLU8GlSnU" resolve="applyTemplate" />
                  <node concept="37vLTw" id="7Oc59RSG2yW" role="37wK5m">
                    <ref role="3cqZAo" node="5ntLU8Gl$6_" resolve="tpl" />
                  </node>
                  <node concept="37vLTw" id="7Oc59RSG2yX" role="37wK5m">
                    <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="7Oc59RSG2yY" role="37wK5m">
                    <ref role="3cqZAo" node="5ntLU8GlS49" resolve="builder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5ntLU8Gl$6_" role="1Duv9x">
              <property role="TrG5h" value="tpl" />
              <node concept="3uibUv" id="5ntLU8Gl$6D" role="1tU5fm">
                <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
              </node>
            </node>
            <node concept="37vLTw" id="5ntLU8Gl$6E" role="1DdaDG">
              <ref role="3cqZAo" node="5ntLU8GlzSJ" resolve="allTemplates" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSyviB" role="jymVt" />
      <node concept="3Tm6S6" id="5ntLU8Glzld" role="1B3o_S" />
      <node concept="3uibUv" id="5ntLU8Glzg8" role="EKbjA">
        <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
      </node>
      <node concept="3clFb_" id="5ntLU8GlSnU" role="jymVt">
        <property role="TrG5h" value="applyTemplate" />
        <node concept="3Tm6S6" id="5ntLU8GlSnV" role="1B3o_S" />
        <node concept="10P_77" id="7Oc59RSG6HK" role="3clF45" />
        <node concept="37vLTG" id="5ntLU8GlSnJ" role="3clF46">
          <property role="TrG5h" value="tpl" />
          <node concept="3uibUv" id="5ntLU8GlSnK" role="1tU5fm">
            <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
          </node>
        </node>
        <node concept="37vLTG" id="5ntLU8GlSnL" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="5ntLU8GlSnM" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5ntLU8GlSnN" role="3clF46">
          <property role="TrG5h" value="builder" />
          <node concept="3uibUv" id="5ntLU8GlSnO" role="1tU5fm">
            <ref role="3uigEE" to="nc4n:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
        <node concept="3clFbS" id="5ntLU8GlSnC" role="3clF47">
          <node concept="SfApY" id="7Oc59RSA9rg" role="3cqZAp">
            <node concept="3clFbS" id="7Oc59RSA9ri" role="SfCbr">
              <node concept="3clFbF" id="5ntLU8GlSnD" role="3cqZAp">
                <node concept="2OqwBi" id="5ntLU8GlSnE" role="3clFbG">
                  <node concept="37vLTw" id="5ntLU8GlSnQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="5ntLU8GlSnG" role="2OqNvi">
                    <ref role="37wK5l" to="qiww:5k_shARMugD" resolve="apply" />
                    <node concept="37vLTw" id="5ntLU8GlSnP" role="37wK5m">
                      <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="5ntLU8GlSnR" role="37wK5m">
                      <ref role="3cqZAo" node="5ntLU8GlSnN" resolve="builder" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7Oc59RSFW0W" role="3cqZAp" />
            </node>
            <node concept="TDmWw" id="7Oc59RSA9rj" role="TEbGg">
              <node concept="3cpWsn" id="7Oc59RSA9rl" role="TDEfY">
                <property role="TrG5h" value="ex" />
                <node concept="3uibUv" id="7Oc59RSA9CO" role="1tU5fm">
                  <ref role="3uigEE" to="e2lb:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
              <node concept="3clFbS" id="7Oc59RSA9rp" role="TDEfX">
                <node concept="3clFbF" id="7Oc59RSG8Vt" role="3cqZAp">
                  <node concept="2OqwBi" id="7Oc59RSG9XO" role="3clFbG">
                    <node concept="37vLTw" id="7Oc59RSG8Vr" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Oc59RS$NXD" resolve="errors" />
                    </node>
                    <node concept="TSZUe" id="7Oc59RSGbRU" role="2OqNvi">
                      <node concept="2ShNRf" id="7Oc59RSFTze" role="25WWJ7">
                        <node concept="1pGfFk" id="7Oc59RSFTzf" role="2ShVmc">
                          <ref role="37wK5l" to="4t1t:7Oc59RSAq_i" resolve="ReportedError" />
                          <node concept="3cpWs3" id="7Oc59RSFTzg" role="37wK5m">
                            <node concept="Xl_RD" id="7Oc59RSFTzh" role="3uHU7w">
                              <property role="Xl_RC" value=")" />
                            </node>
                            <node concept="3cpWs3" id="7Oc59RSFTzi" role="3uHU7B">
                              <node concept="Xl_RD" id="7Oc59RSFTzj" role="3uHU7B">
                                <property role="Xl_RC" value="Error applying template (" />
                              </node>
                              <node concept="37vLTw" id="7Oc59RSFTzk" role="3uHU7w">
                                <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="7Oc59RSFTzl" role="37wK5m">
                            <ref role="3cqZAo" node="7Oc59RSA9rl" resolve="ex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7Oc59RSGjYG" role="3cqZAp">
                  <node concept="3clFbT" id="7Oc59RSGlHx" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7Oc59RSGrnc" role="3cqZAp" />
          <node concept="3cpWs6" id="7Oc59RSGs_K" role="3cqZAp">
            <node concept="3clFbT" id="7Oc59RSGs_L" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSFIrK" role="jymVt" />
      <node concept="312cEg" id="7Oc59RSysWt" role="jymVt">
        <property role="TrG5h" value="handler" />
        <node concept="3Tm6S6" id="7Oc59RSysWu" role="1B3o_S" />
        <node concept="3uibUv" id="7Oc59RSysWw" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RS_cml" role="jymVt" />
      <node concept="312cEg" id="7Oc59RS$NXD" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="errors" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="7Oc59RS$N_2" role="1B3o_S" />
        <node concept="3vKaQO" id="7Oc59RS_6ag" role="1tU5fm">
          <node concept="3uibUv" id="7Oc59RSFlpG" role="3O5elw">
            <ref role="3uigEE" to="4t1t:7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8GlzbG" role="jymVt" />
    <node concept="2tJIrI" id="5ntLU8GlzmA" role="jymVt" />
    <node concept="312cEg" id="5ntLU8GlznG" role="jymVt">
      <property role="TrG5h" value="ruleTemplateCollection" />
      <node concept="3Tm6S6" id="5ntLU8GlznH" role="1B3o_S" />
      <node concept="3uibUv" id="5ntLU8Glzou" role="1tU5fm">
        <ref role="3uigEE" to="138j:6fdr4UgftiG" resolve="RuleTemplateCollection" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RS$Nb0" role="jymVt" />
    <node concept="3Tm1VV" id="12yN8DyF_E2" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="12yN8DyNqdl">
    <property role="TrG5h" value="NodeWalker" />
    <node concept="2tJIrI" id="12yN8DyNqdN" role="jymVt" />
    <node concept="3clFbW" id="12yN8DyNqja" role="jymVt">
      <node concept="37vLTG" id="12yN8DyNqjA" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="3uibUv" id="12yN8DyNqjI" role="1tU5fm">
          <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
        </node>
      </node>
      <node concept="3cqZAl" id="12yN8DyNqjc" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8DyNqjd" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqje" role="3clF47">
        <node concept="3clFbF" id="12yN8DyNqkk" role="3cqZAp">
          <node concept="37vLTI" id="12yN8DyNqkm" role="3clFbG">
            <node concept="2OqwBi" id="12yN8DyNqkq" role="37vLTJ">
              <node concept="Xjq3P" id="12yN8DyNqkt" role="2Oq$k0" />
              <node concept="2OwXpG" id="12yN8DyNqkp" role="2OqNvi">
                <ref role="2Oxat5" node="12yN8DyNqkg" resolve="action" />
              </node>
            </node>
            <node concept="37vLTw" id="12yN8DyNqku" role="37vLTx">
              <ref role="3cqZAo" node="12yN8DyNqjA" resolve="action" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqiy" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyNqvo" role="jymVt">
      <property role="TrG5h" value="walkInterfacePart" />
      <node concept="37vLTG" id="12yN8DyNqQ$" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="12yN8DyNqUH" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="12yN8DyNqvq" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8DyNqvr" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqvs" role="3clF47">
        <node concept="3clFbF" id="5ntLU8Gjyd7" role="3cqZAp">
          <node concept="1rXfSq" id="5ntLU8Gjyd6" role="3clFbG">
            <ref role="37wK5l" node="5ntLU8GjaTf" resolve="walk" />
            <node concept="37vLTw" id="5ntLU8GjydW" role="37wK5m">
              <ref role="3cqZAo" node="12yN8DyNqQ$" resolve="root" />
            </node>
            <node concept="3clFbT" id="5ntLU8Gjyff" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqiM" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyNqZ$" role="jymVt">
      <property role="TrG5h" value="walkAll" />
      <node concept="37vLTG" id="12yN8DyNrfg" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="12yN8DyNrkx" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="12yN8DyNqZA" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8DyNqZB" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqZC" role="3clF47">
        <node concept="3clFbF" id="5ntLU8GjygK" role="3cqZAp">
          <node concept="1rXfSq" id="5ntLU8GjygL" role="3clFbG">
            <ref role="37wK5l" node="5ntLU8GjaTf" resolve="walk" />
            <node concept="37vLTw" id="5ntLU8GjygM" role="37wK5m">
              <ref role="3cqZAo" node="12yN8DyNrfg" resolve="root" />
            </node>
            <node concept="3clFbT" id="5ntLU8GjygN" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqUW" role="jymVt" />
    <node concept="3clFb_" id="5ntLU8GjaTf" role="jymVt">
      <property role="TrG5h" value="walk" />
      <node concept="37vLTG" id="5ntLU8Gjb4M" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="5ntLU8Gjb8A" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5ntLU8Gjb8L" role="3clF46">
        <property role="TrG5h" value="intefacePart" />
        <node concept="10P_77" id="5ntLU8GjbcG" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5ntLU8GjaTh" role="3clF45" />
      <node concept="3Tm6S6" id="5ntLU8GjaXn" role="1B3o_S" />
      <node concept="3clFbS" id="5ntLU8GjaTj" role="3clF47">
        <node concept="3cpWs8" id="5ntLU8GiXRv" role="3cqZAp">
          <node concept="3cpWsn" id="5ntLU8GiXRy" role="3cpWs9">
            <property role="TrG5h" value="queue" />
            <node concept="3O6Q9H" id="5ntLU8GiXRr" role="1tU5fm">
              <node concept="3Tqbb2" id="5ntLU8GiXRS" role="3O5elw" />
            </node>
            <node concept="2ShNRf" id="5ntLU8GiYea" role="33vP2m">
              <node concept="2Jqq0_" id="5ntLU8GiYe4" role="2ShVmc">
                <node concept="3Tqbb2" id="5ntLU8GiYe5" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ntLU8Gj6X8" role="3cqZAp">
          <node concept="2OqwBi" id="5ntLU8Gj7bS" role="3clFbG">
            <node concept="37vLTw" id="5ntLU8Gj6X6" role="2Oq$k0">
              <ref role="3cqZAo" node="5ntLU8GiXRy" resolve="queue" />
            </node>
            <node concept="2Ke9KJ" id="5ntLU8Gjaym" role="2OqNvi">
              <node concept="37vLTw" id="5ntLU8Gja$Z" role="25WWJ7">
                <ref role="3cqZAo" node="5ntLU8Gjb4M" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ntLU8GjaBB" role="3cqZAp" />
        <node concept="2$JKZl" id="5ntLU8Gj3Mc" role="3cqZAp">
          <node concept="3clFbS" id="5ntLU8Gj3Me" role="2LFqv$">
            <node concept="3cpWs8" id="5ntLU8GjaFF" role="3cqZAp">
              <node concept="3cpWsn" id="5ntLU8GjaFG" role="3cpWs9">
                <property role="TrG5h" value="next" />
                <node concept="3Tqbb2" id="5ntLU8GjaFx" role="1tU5fm" />
                <node concept="2OqwBi" id="5ntLU8GjaFH" role="33vP2m">
                  <node concept="37vLTw" id="5ntLU8GjaFI" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ntLU8GiXRy" resolve="queue" />
                  </node>
                  <node concept="2Kt2Hk" id="5ntLU8GjaFJ" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5ntLU8GjaJ$" role="3cqZAp" />
            <node concept="3clFbF" id="5ntLU8Gjd9g" role="3cqZAp">
              <node concept="1rXfSq" id="5ntLU8Gjd9f" role="3clFbG">
                <ref role="37wK5l" node="5ntLU8Gjd9b" resolve="nodeAction" />
                <node concept="37vLTw" id="5ntLU8Gjd9e" role="37wK5m">
                  <ref role="3cqZAo" node="5ntLU8GjaFG" resolve="next" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5ntLU8Gjdvg" role="3cqZAp" />
            <node concept="1DcWWT" id="5ntLU8GjrK4" role="3cqZAp">
              <node concept="3clFbS" id="5ntLU8GjrK5" role="2LFqv$">
                <node concept="3clFbJ" id="5ntLU8Gjse1" role="3cqZAp">
                  <property role="TyiWK" value="true" />
                  <property role="TyiWL" value="false" />
                  <node concept="3clFbS" id="5ntLU8Gjse2" role="3clFbx">
                    <node concept="3N13vt" id="5ntLU8GjvGb" role="3cqZAp" />
                  </node>
                  <node concept="1Wc70l" id="5ntLU8GjuOu" role="3clFbw">
                    <node concept="1eOMI4" id="5ntLU8GjuTd" role="3uHU7w">
                      <node concept="1Wc70l" id="5ntLU8GjvA5" role="1eOMHV">
                        <node concept="3fqX7Q" id="5ntLU8GjvAb" role="3uHU7B">
                          <node concept="2OqwBi" id="5ntLU8GjvAc" role="3fr31v">
                            <node concept="37vLTw" id="5ntLU8GjvAd" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ntLU8GjaFG" resolve="next" />
                            </node>
                            <node concept="1mIQ4w" id="5ntLU8GjvAe" role="2OqNvi">
                              <node concept="chp4Y" id="5ntLU8GjvAf" role="cj9EA">
                                <ref role="cht4Q" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5ntLU8GjvA7" role="3uHU7w">
                          <node concept="37vLTw" id="5ntLU8GjvA8" role="2Oq$k0">
                            <ref role="3cqZAo" node="5ntLU8GjaFG" resolve="next" />
                          </node>
                          <node concept="1mIQ4w" id="5ntLU8GjvA9" role="2OqNvi">
                            <node concept="chp4Y" id="5ntLU8GjvAa" role="cj9EA">
                              <ref role="cht4Q" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5ntLU8GjseD" role="3uHU7B">
                      <ref role="3cqZAo" node="5ntLU8Gjb8L" resolve="intefacePart" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5ntLU8GjvGd" role="3cqZAp" />
                <node concept="3clFbF" id="5ntLU8GjvNU" role="3cqZAp">
                  <node concept="2OqwBi" id="5ntLU8Gjwkf" role="3clFbG">
                    <node concept="37vLTw" id="5ntLU8GjvNS" role="2Oq$k0">
                      <ref role="3cqZAo" node="5ntLU8GiXRy" resolve="queue" />
                    </node>
                    <node concept="2Ke9KJ" id="5ntLU8GjxXc" role="2OqNvi">
                      <node concept="37vLTw" id="5ntLU8GjxZX" role="25WWJ7">
                        <ref role="3cqZAo" node="5ntLU8GjrK8" resolve="ch" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5ntLU8GjrK8" role="1Duv9x">
                <property role="TrG5h" value="ch" />
                <node concept="3Tqbb2" id="5ntLU8GjrKc" role="1tU5fm" />
              </node>
              <node concept="2OqwBi" id="5ntLU8GjrKd" role="1DdaDG">
                <node concept="37vLTw" id="5ntLU8GjrKe" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ntLU8GjaFG" resolve="next" />
                </node>
                <node concept="32TBzR" id="5ntLU8GjrKf" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5ntLU8Gj50h" role="2$JKZa">
            <node concept="2OqwBi" id="5ntLU8Gj50i" role="3fr31v">
              <node concept="37vLTw" id="5ntLU8Gj50j" role="2Oq$k0">
                <ref role="3cqZAo" node="5ntLU8GiXRy" resolve="queue" />
              </node>
              <node concept="1v1jN8" id="5ntLU8Gj50k" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8GjdgN" role="jymVt" />
    <node concept="3clFb_" id="5ntLU8Gjd9b" role="jymVt">
      <property role="TrG5h" value="nodeAction" />
      <node concept="3Tm6S6" id="5ntLU8Gjd9c" role="1B3o_S" />
      <node concept="3cqZAl" id="5ntLU8Gjd9d" role="3clF45" />
      <node concept="37vLTG" id="5ntLU8Gjd96" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="3Tqbb2" id="5ntLU8Gjd97" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5ntLU8Gjd90" role="3clF47">
        <node concept="3SKdUt" id="5ntLU8GjdpF" role="3cqZAp">
          <node concept="3SKdUq" id="5ntLU8Gjdrq" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="5ntLU8Gjd91" role="3cqZAp">
          <node concept="2OqwBi" id="5ntLU8Gjd92" role="3clFbG">
            <node concept="37vLTw" id="5ntLU8Gjd93" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
            </node>
            <node concept="liA8E" id="5ntLU8Gjd94" role="2OqNvi">
              <ref role="37wK5l" node="12yN8DyNqeO" resolve="doAction" />
              <node concept="37vLTw" id="5ntLU8Gjd98" role="37wK5m">
                <ref role="3cqZAo" node="5ntLU8Gjd96" resolve="next" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqdS" role="jymVt" />
    <node concept="3HP615" id="12yN8DyNqe8" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="NodeAction" />
      <node concept="2tJIrI" id="12yN8DyNqeC" role="jymVt" />
      <node concept="3clFb_" id="12yN8DyNqeO" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="12yN8DyNqfm" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="12yN8DyNqgv" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="12yN8DyNqeQ" role="3clF45" />
        <node concept="3Tm1VV" id="12yN8DyNqeR" role="1B3o_S" />
        <node concept="3clFbS" id="12yN8DyNqeS" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="12yN8DyNqfE" role="jymVt" />
      <node concept="3Tm1VV" id="12yN8DyNqe9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5ntLU8GjA47" role="jymVt" />
    <node concept="3Tm1VV" id="12yN8DyNqdm" role="1B3o_S" />
    <node concept="312cEg" id="12yN8DyNqkg" role="jymVt">
      <property role="TrG5h" value="action" />
      <node concept="3Tm6S6" id="12yN8DyNqkh" role="1B3o_S" />
      <node concept="3uibUv" id="12yN8DyNqkj" role="1tU5fm">
        <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
      </node>
    </node>
  </node>
</model>

