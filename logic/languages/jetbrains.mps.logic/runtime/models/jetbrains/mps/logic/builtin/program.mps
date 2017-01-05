<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:475a2e92-d7d4-41c3-98e3-172d70b6f018(jetbrains.mps.logic.builtin.program)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1224500799915" name="jetbrains.mps.baseLanguage.structure.BitwiseXorExpression" flags="nn" index="pVQyQ" />
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
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
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
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5rhZO$TYZJM">
    <property role="TrG5h" value="ChrProgramBuilder" />
    <node concept="2tJIrI" id="5rhZO$TZ4oM" role="jymVt" />
    <node concept="3clFbW" id="5rhZO$TZ9Ji" role="jymVt">
      <node concept="3cqZAl" id="5rhZO$TZ9Jk" role="3clF45" />
      <node concept="3Tm1VV" id="5rhZO$TZ9Jl" role="1B3o_S" />
      <node concept="3clFbS" id="5rhZO$TZ9Jm" role="3clF47">
        <node concept="3clFbF" id="2pvEdqupY9F" role="3cqZAp">
          <node concept="37vLTI" id="2pvEdqupYhL" role="3clFbG">
            <node concept="2ShNRf" id="7ISVfSJNAZ" role="37vLTx">
              <node concept="HV5vD" id="7ISVfSK4LO" role="2ShVmc">
                <ref role="HV5vE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
              </node>
            </node>
            <node concept="2OqwBi" id="2pvEdqupYaI" role="37vLTJ">
              <node concept="Xjq3P" id="2pvEdqupY9D" role="2Oq$k0" />
              <node concept="2OwXpG" id="2pvEdqupYds" role="2OqNvi">
                <ref role="2Oxat5" node="7eGEHDldhr$" resolve="registry" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rhZO$TZKTG" role="3cqZAp">
          <node concept="37vLTI" id="5rhZO$TZL1A" role="3clFbG">
            <node concept="2ShNRf" id="5rhZO$TZL2G" role="37vLTx">
              <node concept="HV5vD" id="5rhZO$TZLzV" role="2ShVmc">
                <ref role="HV5vE" node="5rhZO$TZtac" resolve="LocalVarIndex" />
              </node>
            </node>
            <node concept="2OqwBi" id="5rhZO$TZKUD" role="37vLTJ">
              <node concept="Xjq3P" id="5rhZO$TZKTE" role="2Oq$k0" />
              <node concept="2OwXpG" id="5rhZO$TZKYj" role="2OqNvi">
                <ref role="2Oxat5" node="5rhZO$TZK6u" resolve="localVarIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUS5TY" role="jymVt" />
    <node concept="3clFb_" id="5rhZO$TZiL1" role="jymVt">
      <property role="TrG5h" value="toProgram" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="5rhZO$TZiL2" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5rhZO$TZiL3" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5rhZO$U0jE9" role="3clF45">
        <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
      </node>
      <node concept="3Tm1VV" id="5rhZO$TZiL7" role="1B3o_S" />
      <node concept="3clFbS" id="5rhZO$TZiL9" role="3clF47">
        <node concept="1gVbGN" id="4MqhgXURQew" role="3cqZAp">
          <node concept="pVQyQ" id="4MqhgXURRRp" role="1gVkn0">
            <node concept="3fqX7Q" id="4MqhgXURV8E" role="3uHU7w">
              <node concept="2OqwBi" id="4MqhgXURV8G" role="3fr31v">
                <node concept="37vLTw" id="4MqhgXURV8H" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXULVBA" resolve="handlers" />
                </node>
                <node concept="liA8E" id="4MqhgXURV8I" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="4MqhgXURUx9" role="3uHU7B">
              <node concept="2OqwBi" id="4MqhgXURUxb" role="3fr31v">
                <node concept="37vLTw" id="4MqhgXURUxc" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rhZO$TZNO3" resolve="rules" />
                </node>
                <node concept="liA8E" id="4MqhgXURUxd" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4MqhgXURU2s" role="3cqZAp" />
        <node concept="3clFbF" id="5rhZO$TZjg5" role="3cqZAp">
          <node concept="2ShNRf" id="5rhZO$TZjg3" role="3clFbG">
            <node concept="1pGfFk" id="5rhZO$TZlOE" role="2ShVmc">
              <ref role="37wK5l" node="7eGEHDlcF69" resolve="ChrProgram" />
              <node concept="37vLTw" id="5rhZO$TZlPA" role="37wK5m">
                <ref role="3cqZAo" node="5rhZO$TZiL2" resolve="name" />
              </node>
              <node concept="2YIFZM" id="5rhZO$TZR_0" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="5rhZO$TZRBt" role="37wK5m">
                  <ref role="3cqZAo" node="5rhZO$TZNO3" resolve="rules" />
                </node>
              </node>
              <node concept="2YIFZM" id="4MqhgXUS4Rt" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="4MqhgXUS57F" role="37wK5m">
                  <ref role="3cqZAo" node="4MqhgXULVBA" resolve="handlers" />
                </node>
              </node>
              <node concept="37vLTw" id="5rhZO$TZmsR" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDldhr$" resolve="registry" />
              </node>
              <node concept="37vLTw" id="5rhZO$TZLAz" role="37wK5m">
                <ref role="3cqZAo" node="5rhZO$TZK6u" resolve="localVarIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZio3" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUQoOL" role="jymVt">
      <property role="TrG5h" value="addHandler" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="4MqhgXUQrZn" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="4MqhgXUQsf0" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3cqZAl" id="4MqhgXUQoON" role="3clF45" />
      <node concept="3Tm1VV" id="4MqhgXUQoOO" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUQoOP" role="3clF47">
        <node concept="SfApY" id="4MqhgXUQtfM" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUQtfO" role="SfCbr">
            <node concept="1DcWWT" id="4MqhgXUQtEm" role="3cqZAp">
              <node concept="3clFbS" id="4MqhgXUQtEp" role="2LFqv$">
                <node concept="3clFbF" id="4MqhgXUQtNT" role="3cqZAp">
                  <node concept="1rXfSq" id="4MqhgXUQtNU" role="3clFbG">
                    <ref role="37wK5l" node="7eGEHDldbFC" resolve="updateConstraintRegistry" />
                    <node concept="37vLTw" id="4MqhgXUQtNV" role="37wK5m">
                      <ref role="3cqZAo" node="4MqhgXUQtEq" resolve="rule" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4MqhgXUQtEq" role="1Duv9x">
                <property role="TrG5h" value="rule" />
                <node concept="3uibUv" id="4MqhgXUQtEu" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
              <node concept="2OqwBi" id="4MqhgXUQtEv" role="1DdaDG">
                <node concept="37vLTw" id="4MqhgXUQtEw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUQrZn" resolve="handler" />
                </node>
                <node concept="liA8E" id="4MqhgXUQtEx" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Handler.rules():java.lang.Iterable" resolve="rules" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUQtuw" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="4MqhgXUQtfP" role="TEbGg">
            <node concept="3cpWsn" id="4MqhgXUQtfR" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4MqhgXUQthM" role="1tU5fm">
                <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
              </node>
            </node>
            <node concept="3clFbS" id="4MqhgXUQtfV" role="TDEfX">
              <node concept="YS8fn" id="4MqhgXUQtUn" role="3cqZAp">
                <node concept="2ShNRf" id="4MqhgXUQtUo" role="YScLw">
                  <node concept="1pGfFk" id="4MqhgXUQtUp" role="2ShVmc">
                    <ref role="37wK5l" to="av0y:~InvalidRuleException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="InvalidRuleException" />
                    <node concept="3cpWs3" id="4MqhgXUQtUq" role="37wK5m">
                      <node concept="2OqwBi" id="4MqhgXUQtUr" role="3uHU7w">
                        <node concept="37vLTw" id="4MqhgXUQtUs" role="2Oq$k0">
                          <ref role="3cqZAo" node="4MqhgXUQtfR" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4MqhgXUQtUt" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4MqhgXUQtUu" role="3uHU7B">
                        <property role="Xl_RC" value="Invalid rule/constraint: " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4MqhgXUQtUv" role="37wK5m">
                      <ref role="3cqZAo" node="4MqhgXUQtfR" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXUQuKx" role="3cqZAp">
          <node concept="2OqwBi" id="4MqhgXUQv8b" role="3clFbG">
            <node concept="37vLTw" id="4MqhgXUQuKv" role="2Oq$k0">
              <ref role="3cqZAo" node="4MqhgXULVBA" resolve="handlers" />
            </node>
            <node concept="liA8E" id="4MqhgXUQvxp" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="4MqhgXUQvRp" role="37wK5m">
                <ref role="3cqZAo" node="4MqhgXUQrZn" resolve="handler" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4MqhgXUQsXS" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUQozc" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlcF9o" role="jymVt">
      <property role="TrG5h" value="addRule" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="7eGEHDlcFbs" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="7eGEHDlcFct" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3cqZAl" id="7eGEHDlcF9q" role="3clF45" />
      <node concept="3Tm1VV" id="7eGEHDlcF9r" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlcF9s" role="3clF47">
        <node concept="SfApY" id="7Oc59RSI60w" role="3cqZAp">
          <node concept="3clFbS" id="7Oc59RSI60x" role="SfCbr">
            <node concept="3clFbF" id="7Oc59RSI5I7" role="3cqZAp">
              <node concept="1rXfSq" id="7Oc59RSI5I9" role="3clFbG">
                <ref role="37wK5l" node="7eGEHDldbFC" resolve="updateConstraintRegistry" />
                <node concept="37vLTw" id="7Oc59RSI5Ia" role="37wK5m">
                  <ref role="3cqZAo" node="7eGEHDlcFbs" resolve="rule" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUQova" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="7Oc59RSI60s" role="TEbGg">
            <node concept="3clFbS" id="7Oc59RSI60t" role="TDEfX">
              <node concept="YS8fn" id="7eGEHDlfYpR" role="3cqZAp">
                <node concept="2ShNRf" id="7eGEHDlfYqe" role="YScLw">
                  <node concept="1pGfFk" id="7eGEHDlfYFY" role="2ShVmc">
                    <ref role="37wK5l" to="av0y:~InvalidRuleException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="InvalidRuleException" />
                    <node concept="3cpWs3" id="7eGEHDlg7tx" role="37wK5m">
                      <node concept="2OqwBi" id="7Oc59RSI7ly" role="3uHU7w">
                        <node concept="37vLTw" id="7Oc59RSI7hx" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Oc59RSI60u" resolve="e" />
                        </node>
                        <node concept="liA8E" id="7Oc59RSI7xh" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7eGEHDlfYIn" role="3uHU7B">
                        <property role="Xl_RC" value="Invalid rule/constraint: " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7Oc59RSI7PF" role="37wK5m">
                      <ref role="3cqZAo" node="7Oc59RSI60u" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7Oc59RSI60u" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="7Oc59RSI60v" role="1tU5fm">
                <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Oc59RSI5wg" role="3cqZAp" />
        <node concept="3clFbF" id="7eGEHDlcT0a" role="3cqZAp">
          <node concept="2OqwBi" id="7eGEHDlcT93" role="3clFbG">
            <node concept="37vLTw" id="7eGEHDlcT09" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZNO3" resolve="rules" />
            </node>
            <node concept="liA8E" id="7eGEHDlcTyK" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="7eGEHDlcTIH" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlcFbs" resolve="rule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSHX2Z" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="429xoypV6tp" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDldbFC" role="jymVt">
      <property role="TrG5h" value="updateConstraintRegistry" />
      <node concept="37vLTG" id="7eGEHDldi8e" role="3clF46">
        <property role="TrG5h" value="rule" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7eGEHDldikz" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3cqZAl" id="7Oc59RSHXMC" role="3clF45" />
      <node concept="3Tm6S6" id="7eGEHDlemfL" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDldbFG" role="3clF47">
        <node concept="3SKdUt" id="7Oc59RSI2zT" role="3cqZAp">
          <node concept="3SKdUq" id="7Oc59RSI2HK" role="3SKWNk">
            <property role="3SKdUp" value="catch invalid constraints early to avoid adding a broken rule" />
          </node>
        </node>
        <node concept="1DcWWT" id="7eGEHDldjbC" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDldjbD" role="2LFqv$">
            <node concept="3clFbF" id="7Oc59RSHYHZ" role="3cqZAp">
              <node concept="2OqwBi" id="7Oc59RSHYI1" role="3clFbG">
                <node concept="37vLTw" id="7Oc59RSHYI2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDldhr$" resolve="registry" />
                </node>
                <node concept="liA8E" id="7Oc59RSHYI3" role="2OqNvi">
                  <ref role="37wK5l" node="7eGEHDldpbj" resolve="checkValidConstraint" />
                  <node concept="37vLTw" id="7Oc59RSHYI4" role="37wK5m">
                    <ref role="3cqZAo" node="7eGEHDldjbG" resolve="item" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7eGEHDldjbG" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <node concept="3uibUv" id="5uFPQ7BHdLO" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
            </node>
          </node>
          <node concept="2OqwBi" id="7eGEHDldjbL" role="1DdaDG">
            <node concept="37vLTw" id="7eGEHDldjbM" role="2Oq$k0">
              <ref role="3cqZAo" node="7eGEHDldi8e" resolve="rule" />
            </node>
            <node concept="liA8E" id="7eGEHDldjbN" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~Rule.all():java.lang.Iterable" resolve="all" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Oc59RSI3vp" role="3cqZAp" />
        <node concept="1DcWWT" id="7eGEHDlf0NZ" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDlf0O0" role="2LFqv$">
            <node concept="3clFbF" id="7eGEHDlf0O4" role="3cqZAp">
              <node concept="2OqwBi" id="7eGEHDlf0O5" role="3clFbG">
                <node concept="37vLTw" id="7eGEHDlf0O6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDldhr$" resolve="registry" />
                </node>
                <node concept="liA8E" id="7eGEHDlf0O7" role="2OqNvi">
                  <ref role="37wK5l" node="7eGEHDlefwa" resolve="introduceConstraint" />
                  <node concept="37vLTw" id="7eGEHDlf0O8" role="37wK5m">
                    <ref role="3cqZAo" node="7eGEHDlf0Og" resolve="item" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7eGEHDlf0Og" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <node concept="3uibUv" id="5uFPQ7BHdOW" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
            </node>
          </node>
          <node concept="2OqwBi" id="7eGEHDlf0Oi" role="1DdaDG">
            <node concept="37vLTw" id="7eGEHDlf0Oj" role="2Oq$k0">
              <ref role="3cqZAo" node="7eGEHDldi8e" resolve="rule" />
            </node>
            <node concept="liA8E" id="7eGEHDlf0Ok" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~Rule.all():java.lang.Iterable" resolve="all" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aFQeb4jooe" role="3cqZAp" />
        <node concept="3clFbF" id="5rhZO$TZT8H" role="3cqZAp">
          <node concept="2OqwBi" id="5rhZO$TZUVi" role="3clFbG">
            <node concept="37vLTw" id="5rhZO$TZV02" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZK6u" resolve="localVarIndex" />
            </node>
            <node concept="liA8E" id="5rhZO$TZUVl" role="2OqNvi">
              <ref role="37wK5l" node="5rhZO$TZT8C" resolve="updateIndex" />
              <node concept="37vLTw" id="5rhZO$TZT8F" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDldi8e" resolve="rule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSI0zY" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZNO2" role="jymVt" />
    <node concept="312cEg" id="5rhZO$TZNO3" role="jymVt">
      <property role="TrG5h" value="rules" />
      <node concept="3Tm6S6" id="5rhZO$TZNO4" role="1B3o_S" />
      <node concept="3uibUv" id="5rhZO$TZNO5" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5rhZO$TZNO6" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="2ShNRf" id="5rhZO$TZNO7" role="33vP2m">
        <node concept="1pGfFk" id="5rhZO$TZNO8" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5rhZO$TZNO9" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4MqhgXULVBA" role="jymVt">
      <property role="TrG5h" value="handlers" />
      <node concept="3Tm6S6" id="4MqhgXULVBB" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXULVBC" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="4MqhgXULVY5" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="2ShNRf" id="4MqhgXULVBE" role="33vP2m">
        <node concept="1pGfFk" id="4MqhgXULVBF" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="4MqhgXULW7z" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7eGEHDldhr$" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="registry" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7eGEHDldh6O" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDldhly" role="1tU5fm">
        <ref role="3uigEE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
      </node>
      <node concept="2ShNRf" id="5rhZO$TZPDc" role="33vP2m">
        <node concept="HV5vD" id="5rhZO$TZPU6" role="2ShVmc">
          <ref role="HV5vE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5rhZO$TZK6u" role="jymVt">
      <property role="TrG5h" value="localVarIndex" />
      <node concept="3Tm6S6" id="5rhZO$TZK6v" role="1B3o_S" />
      <node concept="3uibUv" id="5rhZO$TZK6w" role="1tU5fm">
        <ref role="3uigEE" node="5rhZO$TZtac" resolve="LocalVarIndex" />
      </node>
      <node concept="2ShNRf" id="5rhZO$TZPZ5" role="33vP2m">
        <node concept="HV5vD" id="5rhZO$TZQf4" role="2ShVmc">
          <ref role="HV5vE" node="5rhZO$TZtac" resolve="LocalVarIndex" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZJK3" role="jymVt" />
    <node concept="3Tm1VV" id="18cJbc1659x" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7eGEHDlcEJ0">
    <property role="TrG5h" value="ChrProgram" />
    <node concept="3uibUv" id="78CwJJcTnG5" role="1zkMxy">
      <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
    </node>
    <node concept="2tJIrI" id="78CwJJd1ZwT" role="jymVt" />
    <node concept="3clFbW" id="7eGEHDlcF69" role="jymVt">
      <node concept="3Tm1VV" id="506k$zeU2T8" role="1B3o_S" />
      <node concept="37vLTG" id="7Oc59RSE6Q3" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7Oc59RSE6Qh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5rhZO$TZMH3" role="3clF46">
        <property role="TrG5h" value="rules" />
        <node concept="3uibUv" id="5rhZO$TZMNx" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5rhZO$TZMSL" role="11_B2D">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4MqhgXUS0Q6" role="3clF46">
        <property role="TrG5h" value="handlers" />
        <node concept="3uibUv" id="4MqhgXUS0Q7" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4MqhgXUS0Q8" role="11_B2D">
            <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5rhZO$TZmur" role="3clF46">
        <property role="TrG5h" value="constraintRegistry" />
        <node concept="3uibUv" id="5rhZO$TZm$4" role="1tU5fm">
          <ref role="3uigEE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
        </node>
      </node>
      <node concept="37vLTG" id="5rhZO$TZKuM" role="3clF46">
        <property role="TrG5h" value="localVarIndex" />
        <node concept="3uibUv" id="5rhZO$TZKBa" role="1tU5fm">
          <ref role="3uigEE" node="5rhZO$TZtac" resolve="LocalVarIndex" />
        </node>
      </node>
      <node concept="3cqZAl" id="7eGEHDlcF6b" role="3clF45" />
      <node concept="3clFbS" id="7eGEHDlcF6d" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSE6QA" role="3cqZAp">
          <node concept="37vLTI" id="7Oc59RSE6QC" role="3clFbG">
            <node concept="2OqwBi" id="7Oc59RSE6QG" role="37vLTJ">
              <node concept="Xjq3P" id="7Oc59RSE6QJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="7Oc59RSE6QF" role="2OqNvi">
                <ref role="2Oxat5" node="7Oc59RSE6Qy" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="7Oc59RSE6QK" role="37vLTx">
              <ref role="3cqZAo" node="7Oc59RSE6Q3" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rhZO$TZN2t" role="3cqZAp">
          <node concept="37vLTI" id="5rhZO$TZNA$" role="3clFbG">
            <node concept="37vLTw" id="5rhZO$TZNG$" role="37vLTx">
              <ref role="3cqZAo" node="5rhZO$TZMH3" resolve="rules" />
            </node>
            <node concept="2OqwBi" id="5rhZO$TZN4J" role="37vLTJ">
              <node concept="Xjq3P" id="5rhZO$TZN2r" role="2Oq$k0" />
              <node concept="2OwXpG" id="5rhZO$TZN8u" role="2OqNvi">
                <ref role="2Oxat5" node="7eGEHDlcFpc" resolve="rules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXURWMC" role="3cqZAp">
          <node concept="37vLTI" id="4MqhgXURWMD" role="3clFbG">
            <node concept="37vLTw" id="4MqhgXURWME" role="37vLTx">
              <ref role="3cqZAo" node="4MqhgXUS0Q6" resolve="handlers" />
            </node>
            <node concept="2OqwBi" id="4MqhgXURWMF" role="37vLTJ">
              <node concept="Xjq3P" id="4MqhgXURWMG" role="2Oq$k0" />
              <node concept="2OwXpG" id="4MqhgXURZ4o" role="2OqNvi">
                <ref role="2Oxat5" node="4MqhgXULUc0" resolve="handlers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rhZO$TZmCy" role="3cqZAp">
          <node concept="37vLTI" id="5rhZO$TZoeN" role="3clFbG">
            <node concept="37vLTw" id="5rhZO$TZoiD" role="37vLTx">
              <ref role="3cqZAo" node="5rhZO$TZmur" resolve="constraintRegistry" />
            </node>
            <node concept="2OqwBi" id="5rhZO$TZmE8" role="37vLTJ">
              <node concept="Xjq3P" id="5rhZO$TZmCw" role="2Oq$k0" />
              <node concept="2OwXpG" id="5rhZO$TZoak" role="2OqNvi">
                <ref role="2Oxat5" node="5rhZO$TZnaE" resolve="registry" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rhZO$TZKG2" role="3cqZAp">
          <node concept="37vLTI" id="5rhZO$TZKNO" role="3clFbG">
            <node concept="37vLTw" id="5rhZO$TZKRA" role="37vLTx">
              <ref role="3cqZAo" node="5rhZO$TZKuM" resolve="localVarIndex" />
            </node>
            <node concept="2OqwBi" id="5rhZO$TZKHY" role="37vLTJ">
              <node concept="Xjq3P" id="5rhZO$TZKG0" role="2Oq$k0" />
              <node concept="2OwXpG" id="5rhZO$TZKLB" role="2OqNvi">
                <ref role="2Oxat5" node="5rhZO$TZwzS" resolve="localVarIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXURXJo" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcXhUF" role="jymVt">
      <property role="TrG5h" value="constraintArgumentTypes" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="78CwJJcXhUG" role="3clF46">
        <property role="TrG5h" value="constraintSymbol" />
        <node concept="3uibUv" id="78CwJJcXhUH" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="78CwJJcXhUI" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="78CwJJcXhUJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="78CwJJcXhUK" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcXhUL" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcXhUN" role="3clF47">
        <node concept="3clFbF" id="78CwJJcXjXI" role="3cqZAp">
          <node concept="2OqwBi" id="78CwJJcXk1o" role="3clFbG">
            <node concept="37vLTw" id="78CwJJcXjXH" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZnaE" resolve="registry" />
            </node>
            <node concept="liA8E" id="78CwJJcXq47" role="2OqNvi">
              <ref role="37wK5l" node="78CwJJcXcEs" resolve="constraintArgTypes" />
              <node concept="37vLTw" id="78CwJJcXq6w" role="37wK5m">
                <ref role="3cqZAo" node="78CwJJcXhUG" resolve="constraintSymbol" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcWPAF" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcTorQ" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="78CwJJcTorR" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="78CwJJcTorS" role="11_B2D">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcTorT" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcTorV" role="3clF47">
        <node concept="3clFbF" id="78CwJJcWNUm" role="3cqZAp">
          <node concept="2OqwBi" id="78CwJJcWNVb" role="3clFbG">
            <node concept="37vLTw" id="78CwJJcWNUl" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZnaE" resolve="registry" />
            </node>
            <node concept="liA8E" id="78CwJJcWNY_" role="2OqNvi">
              <ref role="37wK5l" node="78CwJJcXKoo" resolve="constraintSymbols" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="78CwJJcWS94" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcWRd_" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcTos7" role="jymVt">
      <property role="TrG5h" value="predicateSymbols" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="78CwJJcTos8" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="78CwJJcTos9" role="11_B2D">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcTosa" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcTosc" role="3clF47">
        <node concept="3clFbF" id="78CwJJcXJZt" role="3cqZAp">
          <node concept="2OqwBi" id="78CwJJcXRZo" role="3clFbG">
            <node concept="37vLTw" id="78CwJJcXJZs" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZnaE" resolve="registry" />
            </node>
            <node concept="liA8E" id="78CwJJcXS0z" role="2OqNvi">
              <ref role="37wK5l" node="ZqZbw4RIlL" resolve="predicateSymbols" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="16gGH0VyPQh" role="jymVt" />
    <node concept="3clFb_" id="16gGH0Vz2Uo" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="16gGH0Vz6sJ" role="3clF45" />
      <node concept="3Tm1VV" id="16gGH0Vz2Ur" role="1B3o_S" />
      <node concept="3clFbS" id="16gGH0Vz2Us" role="3clF47">
        <node concept="3clFbF" id="16gGH0Vz6t9" role="3cqZAp">
          <node concept="37vLTw" id="16gGH0Vz6t8" role="3clFbG">
            <ref role="3cqZAo" node="7Oc59RSE6Qy" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ZqZbw4QkdO" role="jymVt" />
    <node concept="3clFb_" id="ZqZbw4Qln6" role="jymVt">
      <property role="TrG5h" value="rules" />
      <node concept="2AHcQZ" id="78CwJJcTu6z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="ZqZbw4QmIw" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="ZqZbw4Qnai" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="ZqZbw4Qln9" role="1B3o_S" />
      <node concept="3clFbS" id="ZqZbw4Qlna" role="3clF47">
        <node concept="3clFbJ" id="4MqhgXUSSEM" role="3cqZAp">
          <node concept="3fqX7Q" id="4MqhgXUSUgy" role="3clFbw">
            <node concept="2OqwBi" id="4MqhgXUSUg$" role="3fr31v">
              <node concept="37vLTw" id="4MqhgXUSUg_" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlcFpc" resolve="rules" />
              </node>
              <node concept="liA8E" id="4MqhgXUSUgA" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4MqhgXUSSEO" role="3clFbx">
            <node concept="3cpWs6" id="4MqhgXUSUEn" role="3cqZAp">
              <node concept="37vLTw" id="4MqhgXUSUER" role="3cqZAk">
                <ref role="3cqZAo" node="7eGEHDlcFpc" resolve="rules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4MqhgXUTosS" role="3cqZAp" />
        <node concept="3cpWs8" id="4MqhgXUT7Q3" role="3cqZAp">
          <node concept="3cpWsn" id="4MqhgXUT7Q4" role="3cpWs9">
            <property role="TrG5h" value="allRules" />
            <node concept="3uibUv" id="4MqhgXUT9dy" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="4MqhgXUT9LG" role="11_B2D">
                <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
              </node>
            </node>
            <node concept="2ShNRf" id="4MqhgXUT7Q5" role="33vP2m">
              <node concept="1pGfFk" id="4MqhgXUT7Q6" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="4MqhgXUT7Q7" role="1pMfVU">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4MqhgXUT2x_" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUT2xC" role="2LFqv$">
            <node concept="1DcWWT" id="4MqhgXUTrT3" role="3cqZAp">
              <node concept="3clFbS" id="4MqhgXUTrT6" role="2LFqv$">
                <node concept="3clFbF" id="4MqhgXUTsAK" role="3cqZAp">
                  <node concept="2OqwBi" id="4MqhgXUTsWR" role="3clFbG">
                    <node concept="37vLTw" id="4MqhgXUTsAJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUT7Q4" resolve="allRules" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUTtlu" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="37vLTw" id="4MqhgXUTtUa" role="37wK5m">
                        <ref role="3cqZAo" node="4MqhgXUTrT7" resolve="rule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4MqhgXUTrT7" role="1Duv9x">
                <property role="TrG5h" value="rule" />
                <node concept="3uibUv" id="4MqhgXUTrTb" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
              <node concept="2OqwBi" id="4MqhgXUTrTc" role="1DdaDG">
                <node concept="37vLTw" id="4MqhgXUTrTd" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUT2xD" resolve="handler" />
                </node>
                <node concept="liA8E" id="4MqhgXUTrTe" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Handler.rules():java.lang.Iterable" resolve="rules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4MqhgXUT2xD" role="1Duv9x">
            <property role="TrG5h" value="handler" />
            <node concept="3uibUv" id="4MqhgXUT2xH" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
            </node>
          </node>
          <node concept="37vLTw" id="4MqhgXUT2xI" role="1DdaDG">
            <ref role="3cqZAo" node="4MqhgXULUc0" resolve="handlers" />
          </node>
        </node>
        <node concept="3clFbH" id="4MqhgXUTy5V" role="3cqZAp" />
        <node concept="3clFbF" id="4MqhgXUTi6i" role="3cqZAp">
          <node concept="2YIFZM" id="4MqhgXUTjwc" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="4MqhgXUTjK4" role="37wK5m">
              <ref role="3cqZAo" node="4MqhgXUT7Q4" resolve="allRules" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUKhGR" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUKgMc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="handlers" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4MqhgXUKgMd" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXUKgMf" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="4MqhgXUKgMg" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3clFbS" id="4MqhgXUKgMh" role="3clF47">
        <node concept="3clFbF" id="4MqhgXUT$0V" role="3cqZAp">
          <node concept="2YIFZM" id="4MqhgXUT$36" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="4MqhgXUT$4h" role="37wK5m">
              <ref role="3cqZAo" node="4MqhgXULUc0" resolve="handlers" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4MqhgXUKgMi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jCHAT2R0T$" role="jymVt" />
    <node concept="3clFb_" id="5jCHAT2QZ9K" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="occurrenceArguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5jCHAT2QZ9L" role="1B3o_S" />
      <node concept="3uibUv" id="5jCHAT2QZ9N" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="5jCHAT2QZ9O" role="11_B2D" />
      </node>
      <node concept="37vLTG" id="5jCHAT2QZ9P" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="5jCHAT2QZ9Q" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="5jCHAT2QZ9R" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="5jCHAT2QZ9S" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3clFbS" id="5jCHAT2QZ9T" role="3clF47">
        <node concept="3cpWs8" id="4TCblo5Nofp" role="3cqZAp">
          <node concept="3cpWsn" id="4TCblo5Nofq" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="4TCblo5Noff" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="4TCblo5Nofi" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="4TCblo5Nofr" role="33vP2m">
              <node concept="1pGfFk" id="4TCblo5Nofs" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="2OqwBi" id="4TCblo5Noft" role="37wK5m">
                  <node concept="2OqwBi" id="5jCHAT2R4gj" role="2Oq$k0">
                    <node concept="37vLTw" id="5jCHAT2R4td" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jCHAT2QZ9P" resolve="constraint" />
                    </node>
                    <node concept="liA8E" id="5jCHAT2R4gm" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4TCblo5Zn2F" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                  </node>
                </node>
                <node concept="3uibUv" id="4TCblo5Nofw" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4TCblo5NoSa" role="3cqZAp">
          <node concept="3clFbS" id="4TCblo5NoSc" role="2LFqv$">
            <node concept="3clFbJ" id="4TCblo5Npl3" role="3cqZAp">
              <node concept="3eNFk2" id="4TCblo5Z7hN" role="3eNLev">
                <node concept="2ZW3vV" id="4TCblo5Z7_w" role="3eO9$A">
                  <node concept="3uibUv" id="4TCblo5Z7CL" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                  </node>
                  <node concept="37vLTw" id="4TCblo5Z7xU" role="2ZW6bz">
                    <ref role="3cqZAo" node="4TCblo5NoSd" resolve="a" />
                  </node>
                </node>
                <node concept="3clFbS" id="4TCblo5Z7hP" role="3eOfB_">
                  <node concept="3clFbF" id="4TCblo5Z7IR" role="3cqZAp">
                    <node concept="2OqwBi" id="4TCblo5Z7IS" role="3clFbG">
                      <node concept="37vLTw" id="4TCblo5Z7IT" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TCblo5Nofq" resolve="res" />
                      </node>
                      <node concept="liA8E" id="4TCblo5Z7IU" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2OqwBi" id="4TCblo5Z8fU" role="37wK5m">
                          <node concept="37vLTw" id="4TCblo5Z86K" role="2Oq$k0">
                            <ref role="3cqZAo" node="5jCHAT2QZ9R" resolve="logicalContext" />
                          </node>
                          <node concept="liA8E" id="4TCblo5Z8s6" role="2OqNvi">
                            <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical):jetbrains.mps.logic.reactor.logical.Logical" resolve="variable" />
                            <node concept="10QFUN" id="4TCblo5Z8y1" role="37wK5m">
                              <node concept="37vLTw" id="4TCblo5Z97c" role="10QFUP">
                                <ref role="3cqZAo" node="4TCblo5NoSd" resolve="a" />
                              </node>
                              <node concept="3uibUv" id="4TCblo5Z8NB" role="10QFUM">
                                <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                                <node concept="3uibUv" id="4TCblo5Z9P0" role="11_B2D">
                                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TCblo5Z7FY" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbS" id="4TCblo5Npl5" role="3clFbx">
                <node concept="3clFbF" id="4TCblo5NpB6" role="3cqZAp">
                  <node concept="2OqwBi" id="4TCblo5NpQT" role="3clFbG">
                    <node concept="37vLTw" id="4TCblo5NpB4" role="2Oq$k0">
                      <ref role="3cqZAo" node="4TCblo5Nofq" resolve="res" />
                    </node>
                    <node concept="liA8E" id="4TCblo5NqAb" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2YIFZM" id="4TCblo5Nr7d" role="37wK5m">
                        <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
                        <ref role="37wK5l" to="yg8f:4TCblo5NqWF" resolve="instantiateMetaLogicals" />
                        <node concept="10QFUN" id="4TCblo5Nskr" role="37wK5m">
                          <node concept="3uibUv" id="4TCblo5Nskp" role="10QFUM">
                            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                          </node>
                          <node concept="37vLTw" id="4TCblo5NsuL" role="10QFUP">
                            <ref role="3cqZAo" node="4TCblo5NoSd" resolve="a" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4TCblo5NsHZ" role="37wK5m">
                          <ref role="3cqZAo" node="5jCHAT2QZ9R" resolve="logicalContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TCblo5Yuzk" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="4TCblo5NptX" role="3clFbw">
                <node concept="3uibUv" id="4TCblo5NpxS" role="2ZW6by">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                </node>
                <node concept="37vLTw" id="4TCblo5Nppi" role="2ZW6bz">
                  <ref role="3cqZAo" node="4TCblo5NoSd" resolve="a" />
                </node>
              </node>
              <node concept="9aQIb" id="4TCblo5NsUE" role="9aQIa">
                <node concept="3clFbS" id="4TCblo5NsUF" role="9aQI4">
                  <node concept="3clFbF" id="4TCblo5Nt4I" role="3cqZAp">
                    <node concept="2OqwBi" id="4TCblo5Ntkx" role="3clFbG">
                      <node concept="37vLTw" id="4TCblo5Nt4H" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TCblo5Nofq" resolve="res" />
                      </node>
                      <node concept="liA8E" id="4TCblo5Nu3N" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="37vLTw" id="4TCblo5Nuf1" role="37wK5m">
                          <ref role="3cqZAo" node="4TCblo5NoSd" resolve="a" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4TCblo5NoSd" role="1Duv9x">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="4TCblo5NoWE" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="2OqwBi" id="5jCHAT2R4NQ" role="1DdaDG">
            <node concept="37vLTw" id="5jCHAT2R53E" role="2Oq$k0">
              <ref role="3cqZAo" node="5jCHAT2QZ9P" resolve="constraint" />
            </node>
            <node concept="liA8E" id="5jCHAT2R4NT" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TCblo5NpdK" role="3cqZAp">
          <node concept="37vLTw" id="4TCblo5NpdI" role="3clFbG">
            <ref role="3cqZAo" node="4TCblo5Nofq" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jCHAT2QZ9U" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="aFQeb4jPwW" role="jymVt" />
    <node concept="3clFb_" id="5rhZO$TZwZl" role="jymVt">
      <property role="TrG5h" value="getLocalVarIndex" />
      <node concept="3uibUv" id="5rhZO$TZxjG" role="3clF45">
        <ref role="3uigEE" node="5rhZO$TZtac" resolve="LocalVarIndex" />
      </node>
      <node concept="3Tm1VV" id="5rhZO$TZwZo" role="1B3o_S" />
      <node concept="3clFbS" id="5rhZO$TZwZp" role="3clF47">
        <node concept="3clFbF" id="5rhZO$TZyr2" role="3cqZAp">
          <node concept="37vLTw" id="5rhZO$TZyr1" role="3clFbG">
            <ref role="3cqZAo" node="5rhZO$TZwzS" resolve="localVarIndex" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFIHPE" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSE1WF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7Oc59RSE1WG" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHR" role="3clF45" />
      <node concept="3clFbS" id="7Oc59RSE1WJ" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSE2Pm" role="3cqZAp">
          <node concept="3cpWs3" id="7Oc59RSE4SY" role="3clFbG">
            <node concept="Xl_RD" id="7Oc59RSE4T8" role="3uHU7w">
              <property role="Xl_RC" value=" rules}" />
            </node>
            <node concept="3cpWs3" id="7Oc59RSE3JM" role="3uHU7B">
              <node concept="3cpWs3" id="7Oc59RSE3vq" role="3uHU7B">
                <node concept="3cpWs3" id="7Oc59RSE80q" role="3uHU7B">
                  <node concept="37vLTw" id="7Oc59RSE8b2" role="3uHU7w">
                    <ref role="3cqZAo" node="7Oc59RSE6Qy" resolve="name" />
                  </node>
                  <node concept="3cpWs3" id="7Oc59RSE7HS" role="3uHU7B">
                    <node concept="2OqwBi" id="7Oc59RSE3ij" role="3uHU7B">
                      <node concept="1rXfSq" id="7Oc59RSE2Pl" role="2Oq$k0">
                        <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                      </node>
                      <node concept="liA8E" id="7Oc59RSE3pt" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getSimpleName():java.lang.String" resolve="getSimpleName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7Oc59RSE7MB" role="3uHU7w">
                      <property role="Xl_RC" value="(" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="7Oc59RSE3v$" role="3uHU7w">
                  <property role="Xl_RC" value=") {" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Oc59RSE48e" role="3uHU7w">
                <node concept="37vLTw" id="7Oc59RSE3UI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlcFpc" resolve="rules" />
                </node>
                <node concept="liA8E" id="7Oc59RSE4y6" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Oc59RSE1WK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSE2oP" role="jymVt" />
    <node concept="312cEg" id="7Oc59RSE6Qy" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="7Oc59RSE6Qz" role="1B3o_S" />
      <node concept="17QB3L" id="7Oc59RSE6Q_" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7eGEHDlcFpc" role="jymVt">
      <property role="TrG5h" value="rules" />
      <node concept="3Tm6S6" id="7eGEHDlcFpd" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDlcFrm" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7eGEHDlcFuc" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4MqhgXULUc0" role="jymVt">
      <property role="TrG5h" value="handlers" />
      <node concept="3Tm6S6" id="4MqhgXULUc1" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXULV52" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="4MqhgXULVdx" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4KV3U" role="jymVt" />
    <node concept="312cEg" id="5rhZO$TZnaE" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="registry" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5rhZO$TZnaF" role="1B3o_S" />
      <node concept="3uibUv" id="5rhZO$TZnaG" role="1tU5fm">
        <ref role="3uigEE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
      </node>
    </node>
    <node concept="312cEg" id="5rhZO$TZwzS" role="jymVt">
      <property role="TrG5h" value="localVarIndex" />
      <node concept="3Tm6S6" id="5rhZO$TZwzT" role="1B3o_S" />
      <node concept="3uibUv" id="5rhZO$TZwRC" role="1tU5fm">
        <ref role="3uigEE" node="5rhZO$TZtac" resolve="LocalVarIndex" />
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZmJb" role="jymVt" />
    <node concept="3Tm1VV" id="7nPD14O5B_4" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7eGEHDldgwf">
    <property role="TrG5h" value="ConstraintRegistry" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="78CwJJcXKoy" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcXKoo" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <node concept="3uibUv" id="78CwJJcXKop" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="78CwJJcXKoq" role="11_B2D">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcXKor" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcXKos" role="3clF47">
        <node concept="3clFbF" id="78CwJJcXKot" role="3cqZAp">
          <node concept="2YIFZM" id="78CwJJcXKou" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set):java.util.Set" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2OqwBi" id="78CwJJcXKov" role="37wK5m">
              <node concept="37vLTw" id="78CwJJcXKow" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
              </node>
              <node concept="liA8E" id="78CwJJcXKox" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.keySet():java.util.Set" resolve="keySet" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSJx7i" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcXcEs" role="jymVt">
      <property role="TrG5h" value="constraintArgTypes" />
      <node concept="3uibUv" id="78CwJJcXkY_" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="78CwJJcXlA4" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="78CwJJcXlAG" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcXcEv" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcXcEw" role="3clF47">
        <node concept="3clFbF" id="78CwJJcXfFE" role="3cqZAp">
          <node concept="2YIFZM" id="78CwJJcXnYO" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2OqwBi" id="78CwJJcXo6Q" role="37wK5m">
              <node concept="37vLTw" id="78CwJJcXo2d" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
              </node>
              <node concept="liA8E" id="78CwJJcXofr" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="78CwJJcXpeO" role="37wK5m">
                  <ref role="3cqZAo" node="78CwJJcXom8" resolve="constraintSymbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="78CwJJcXom8" role="3clF46">
        <property role="TrG5h" value="constraintSymbol" />
        <node concept="3uibUv" id="78CwJJcXom7" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2fk6$tOrcbX" role="jymVt" />
    <node concept="3clFb_" id="ZqZbw4RIlL" role="jymVt">
      <property role="TrG5h" value="predicateSymbols" />
      <node concept="3uibUv" id="ZqZbw4RJ9K" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="78CwJJcXOef" role="11_B2D">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="ZqZbw4RIlO" role="1B3o_S" />
      <node concept="3clFbS" id="ZqZbw4RIlP" role="3clF47">
        <node concept="3clFbF" id="ZqZbw4RKWT" role="3cqZAp">
          <node concept="2YIFZM" id="ZqZbw4RKXF" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set):java.util.Set" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="78CwJJcXRtE" role="37wK5m">
              <ref role="3cqZAo" node="7ISVfSJtsW" resolve="solvers" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcXbSO" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDldpbj" role="jymVt">
      <property role="TrG5h" value="checkValidConstraint" />
      <node concept="3cqZAl" id="7Oc59RSHNKF" role="3clF45" />
      <node concept="3Tmbuc" id="5rhZO$U00JE" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDldpbn" role="3clF47">
        <node concept="3clFbJ" id="5uFPQ7BEi6d" role="3cqZAp">
          <node concept="3clFbS" id="5uFPQ7BEi6f" role="3clFbx">
            <node concept="3cpWs8" id="5uFPQ7BEo4v" role="3cqZAp">
              <node concept="3cpWsn" id="5uFPQ7BEo4w" role="3cpWs9">
                <property role="TrG5h" value="cst" />
                <node concept="3uibUv" id="5uFPQ7BEo4s" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                </node>
                <node concept="10QFUN" id="5uFPQ7BEo4x" role="33vP2m">
                  <node concept="37vLTw" id="5uFPQ7BEo4y" role="10QFUP">
                    <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
                  </node>
                  <node concept="3uibUv" id="5uFPQ7BEo4z" role="10QFUM">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7eGEHDlg3RR" role="3cqZAp">
              <node concept="3cpWsn" id="7eGEHDlg3RS" role="3cpWs9">
                <property role="TrG5h" value="matches" />
                <node concept="10P_77" id="7eGEHDlg3RE" role="1tU5fm" />
                <node concept="3clFbC" id="7eGEHDlg3RT" role="33vP2m">
                  <node concept="2OqwBi" id="30XHGaOWf5H" role="3uHU7w">
                    <node concept="2OqwBi" id="7eGEHDlg3RU" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEp2v" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                      </node>
                      <node concept="liA8E" id="30XHGaOWeZv" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="liA8E" id="30XHGaOWfgx" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7eGEHDlg3RX" role="3uHU7B">
                    <node concept="2OqwBi" id="30XHGaP5pkH" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEoPo" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                      </node>
                      <node concept="liA8E" id="30XHGaP5pQG" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7eGEHDlg3RZ" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Symbol.arity():int" resolve="arity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7eGEHDlg4M0" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="7eGEHDlg4M3" role="3clFbx">
                <node concept="YS8fn" id="7Oc59RSHOPS" role="3cqZAp">
                  <node concept="2ShNRf" id="7Oc59RSHPbM" role="YScLw">
                    <node concept="1pGfFk" id="7Oc59RSHPxc" role="2ShVmc">
                      <ref role="37wK5l" to="av0y:~InvalidConstraintException.&lt;init&gt;(java.lang.String)" resolve="InvalidConstraintException" />
                      <node concept="3cpWs3" id="7Oc59RSHQew" role="37wK5m">
                        <node concept="2YIFZM" id="7Oc59RSHQex" role="3uHU7w">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                          <node concept="2OqwBi" id="7Oc59RSHQey" role="37wK5m">
                            <node concept="37vLTw" id="5uFPQ7BEpeQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                            </node>
                            <node concept="liA8E" id="7Oc59RSHQe$" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7Oc59RSHQe_" role="3uHU7B">
                          <property role="Xl_RC" value="arity mismatch for " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7eGEHDlg51Y" role="3clFbw">
                <node concept="37vLTw" id="7eGEHDlg57r" role="3fr31v">
                  <ref role="3cqZAo" node="7eGEHDlg3RS" resolve="matches" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1zN1RIln3l9" role="3cqZAp" />
            <node concept="3clFbJ" id="7eGEHDleMeh" role="3cqZAp">
              <node concept="3clFbS" id="7eGEHDleMei" role="3clFbx">
                <node concept="3clFbJ" id="1zN1RIlmYBW" role="3cqZAp">
                  <node concept="3clFbS" id="1zN1RIlmYBY" role="3clFbx">
                    <node concept="3clFbH" id="78CwJJcX4mm" role="3cqZAp" />
                    <node concept="YS8fn" id="1zN1RIln3iC" role="3cqZAp">
                      <node concept="2ShNRf" id="1zN1RIln3iD" role="YScLw">
                        <node concept="1pGfFk" id="1zN1RIln3iE" role="2ShVmc">
                          <ref role="37wK5l" to="av0y:~InvalidConstraintException.&lt;init&gt;(java.lang.String)" resolve="InvalidConstraintException" />
                          <node concept="3cpWs3" id="4sSe4$prVxK" role="37wK5m">
                            <node concept="3cpWs3" id="4sSe4$prSVy" role="3uHU7B">
                              <node concept="3cpWs3" id="4sSe4$prRB1" role="3uHU7B">
                                <node concept="3cpWs3" id="4sSe4$prPGF" role="3uHU7B">
                                  <node concept="3cpWs3" id="1zN1RIln3iF" role="3uHU7B">
                                    <node concept="Xl_RD" id="1zN1RIln3iK" role="3uHU7B">
                                      <property role="Xl_RC" value="argument type mismatch for " />
                                    </node>
                                    <node concept="2YIFZM" id="1zN1RIln3iG" role="3uHU7w">
                                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                                      <node concept="2OqwBi" id="1zN1RIln3iH" role="37wK5m">
                                        <node concept="37vLTw" id="5uFPQ7BEsjZ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                        </node>
                                        <node concept="liA8E" id="1zN1RIln3iJ" role="2OqNvi">
                                          <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="4sSe4$prQnq" role="3uHU7w">
                                    <property role="Xl_RC" value=": " />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4sSe4$prSgv" role="3uHU7w">
                                  <node concept="37vLTw" id="4sSe4$prSgw" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                  </node>
                                  <node concept="liA8E" id="4sSe4$prSgx" role="2OqNvi">
                                    <ref role="37wK5l" to="av0y:~Constraint.argumentTypes():java.util.List" resolve="argumentTypes" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="4sSe4$prSVN" role="3uHU7w">
                                <property role="Xl_RC" value=" != " />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4sSe4$prWcR" role="3uHU7w">
                              <node concept="37vLTw" id="4sSe4$prWcS" role="2Oq$k0">
                                <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                              </node>
                              <node concept="liA8E" id="4sSe4$prWcT" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                <node concept="2OqwBi" id="4sSe4$prWcU" role="37wK5m">
                                  <node concept="37vLTw" id="4sSe4$prWcV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                  </node>
                                  <node concept="liA8E" id="4sSe4$prWcW" role="2OqNvi">
                                    <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="1zN1RIlmYCN" role="3clFbw">
                    <node concept="2OqwBi" id="78CwJJcX3XB" role="3fr31v">
                      <node concept="2OqwBi" id="78CwJJcX3Qz" role="2Oq$k0">
                        <node concept="37vLTw" id="78CwJJcX3Pp" role="2Oq$k0">
                          <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                        </node>
                        <node concept="liA8E" id="78CwJJcX3RX" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Constraint.argumentTypes():java.util.List" resolve="argumentTypes" />
                        </node>
                      </node>
                      <node concept="liA8E" id="78CwJJcX49I" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="2OqwBi" id="30XHGaP5H3s" role="37wK5m">
                          <node concept="37vLTw" id="30XHGaP5H3t" role="2Oq$k0">
                            <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                          </node>
                          <node concept="liA8E" id="30XHGaP5H3u" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                            <node concept="2OqwBi" id="30XHGaP5H3v" role="37wK5m">
                              <node concept="37vLTw" id="5uFPQ7BEs2s" role="2Oq$k0">
                                <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                              </node>
                              <node concept="liA8E" id="30XHGaP5H3x" role="2OqNvi">
                                <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7eGEHDleL6q" role="3clFbw">
                <node concept="37vLTw" id="7eGEHDleIbQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                </node>
                <node concept="liA8E" id="7eGEHDleLnR" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                  <node concept="2OqwBi" id="7eGEHDleLtw" role="37wK5m">
                    <node concept="37vLTw" id="5uFPQ7BEppf" role="2Oq$k0">
                      <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                    </node>
                    <node concept="liA8E" id="7eGEHDleLzH" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5uFPQ7BEtME" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="5uFPQ7BEjM3" role="3clFbw">
            <node concept="3uibUv" id="5uFPQ7BEk3l" role="2ZW6by">
              <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
            </node>
            <node concept="37vLTw" id="5uFPQ7BEjxn" role="2ZW6bz">
              <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
            </node>
          </node>
          <node concept="3eNFk2" id="5uFPQ7BEsMn" role="3eNLev">
            <node concept="2ZW3vV" id="5uFPQ7BEtf6" role="3eO9$A">
              <node concept="3uibUv" id="5uFPQ7BEtlm" role="2ZW6by">
                <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
              </node>
              <node concept="37vLTw" id="5uFPQ7BEt9u" role="2ZW6bz">
                <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
              </node>
            </node>
            <node concept="3clFbS" id="5uFPQ7BEsMp" role="3eOfB_">
              <node concept="3cpWs8" id="5uFPQ7BEu6y" role="3cqZAp">
                <node concept="3cpWsn" id="5uFPQ7BEu6z" role="3cpWs9">
                  <property role="TrG5h" value="pred" />
                  <node concept="3uibUv" id="5uFPQ7BEu6w" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                  </node>
                  <node concept="10QFUN" id="5uFPQ7BEu6$" role="33vP2m">
                    <node concept="37vLTw" id="5uFPQ7BEu6_" role="10QFUP">
                      <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
                    </node>
                    <node concept="3uibUv" id="5uFPQ7BEu6A" role="10QFUM">
                      <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2pvEdquuzfg" role="3cqZAp">
                <property role="TyiWK" value="true" />
                <property role="TyiWL" value="false" />
                <node concept="3clFbS" id="2pvEdquuzfh" role="3clFbx">
                  <node concept="YS8fn" id="2pvEdquuFKC" role="3cqZAp">
                    <node concept="2ShNRf" id="2pvEdquuFKD" role="YScLw">
                      <node concept="1pGfFk" id="2pvEdquuFKE" role="2ShVmc">
                        <ref role="37wK5l" to="av0y:~InvalidConstraintException.&lt;init&gt;(java.lang.String)" resolve="InvalidConstraintException" />
                        <node concept="3cpWs3" id="2pvEdquuFKF" role="37wK5m">
                          <node concept="2YIFZM" id="2pvEdquuFKG" role="3uHU7w">
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                            <node concept="2OqwBi" id="2pvEdquuFKH" role="37wK5m">
                              <node concept="37vLTw" id="5uFPQ7BEvpY" role="2Oq$k0">
                                <ref role="3cqZAo" node="5uFPQ7BEu6z" resolve="pred" />
                              </node>
                              <node concept="liA8E" id="2pvEdquuFKJ" role="2OqNvi">
                                <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2pvEdquuFKK" role="3uHU7B">
                            <property role="Xl_RC" value="arity mismatch for " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="2pvEdquuFm2" role="3clFbw">
                  <node concept="2OqwBi" id="30XHGaOWeKw" role="3uHU7B">
                    <node concept="2OqwBi" id="2pvEdquuFmc" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEvh9" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEu6z" resolve="pred" />
                      </node>
                      <node concept="liA8E" id="30XHGaOWeEi" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="liA8E" id="30XHGaOWeVo" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2pvEdquuFm4" role="3uHU7w">
                    <node concept="2OqwBi" id="2pvEdquuFm5" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEvly" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEu6z" resolve="pred" />
                      </node>
                      <node concept="liA8E" id="2pvEdquuFma" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2pvEdquuFmb" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Symbol.arity():int" resolve="arity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5uFPQ7BEhJz" role="3cqZAp" />
        <node concept="1DcWWT" id="2KVRGowW$Kl" role="3cqZAp">
          <node concept="3clFbS" id="2KVRGowW$Km" role="2LFqv$">
            <node concept="3clFbJ" id="2KVRGowW_mo" role="3cqZAp">
              <node concept="3clFbS" id="2KVRGowW_mp" role="3clFbx">
                <node concept="YS8fn" id="2KVRGowW_uZ" role="3cqZAp">
                  <node concept="2ShNRf" id="2KVRGowW_w4" role="YScLw">
                    <node concept="1pGfFk" id="2KVRGowWD9N" role="2ShVmc">
                      <ref role="37wK5l" to="av0y:~InvalidConstraintException.&lt;init&gt;(java.lang.String)" resolve="InvalidConstraintException" />
                      <node concept="3cpWs3" id="2KVRGowWD$u" role="37wK5m">
                        <node concept="2YIFZM" id="2KVRGowWDMj" role="3uHU7w">
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="2OqwBi" id="2KVRGowWE4s" role="37wK5m">
                            <node concept="37vLTw" id="2KVRGowWDWb" role="2Oq$k0">
                              <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
                            </node>
                            <node concept="liA8E" id="2KVRGowWEea" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~AndItem.symbol():jetbrains.mps.logic.reactor.program.Symbol" resolve="symbol" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2KVRGowWDb8" role="3uHU7B">
                          <property role="Xl_RC" value="argument is null in " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5uFPQ7BH4xL" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="2KVRGowW_pF" role="3clFbw">
                <node concept="10Nm6u" id="2KVRGowW_qV" role="3uHU7w" />
                <node concept="37vLTw" id="2KVRGowW_ol" role="3uHU7B">
                  <ref role="3cqZAo" node="2KVRGowW$Kp" resolve="arg" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2KVRGowW$Kp" role="1Duv9x">
            <property role="TrG5h" value="arg" />
            <node concept="3uibUv" id="2KVRGowW$Kt" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="2OqwBi" id="2KVRGowW$Ku" role="1DdaDG">
            <node concept="37vLTw" id="2KVRGowW$Kv" role="2Oq$k0">
              <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
            </node>
            <node concept="liA8E" id="2KVRGowW$Kw" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eGEHDldphF" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="5uFPQ7BEg4K" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSHN4l" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
      </node>
    </node>
    <node concept="2tJIrI" id="7eGEHDldnO1" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlefwa" role="jymVt">
      <property role="TrG5h" value="introduceConstraint" />
      <node concept="3cqZAl" id="7Oc59RSHdhK" role="3clF45" />
      <node concept="3clFbS" id="7eGEHDlefwc" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSHTjZ" role="3cqZAp">
          <node concept="1rXfSq" id="7Oc59RSHTjX" role="3clFbG">
            <ref role="37wK5l" node="7eGEHDldpbj" resolve="checkValidConstraint" />
            <node concept="37vLTw" id="7Oc59RSHTE1" role="37wK5m">
              <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5uFPQ7BH0cX" role="3cqZAp">
          <node concept="3clFbS" id="5uFPQ7BH0cZ" role="3clFbx">
            <node concept="3cpWs8" id="5uFPQ7BH1yI" role="3cqZAp">
              <node concept="3cpWsn" id="5uFPQ7BH1yJ" role="3cpWs9">
                <property role="TrG5h" value="cst" />
                <node concept="3uibUv" id="5uFPQ7BH1yG" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                </node>
                <node concept="10QFUN" id="5uFPQ7BH1yK" role="33vP2m">
                  <node concept="37vLTw" id="5uFPQ7BH1yL" role="10QFUP">
                    <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
                  </node>
                  <node concept="3uibUv" id="5uFPQ7BH1yM" role="10QFUM">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7eGEHDleQCQ" role="3cqZAp">
              <node concept="2OqwBi" id="7eGEHDleQIf" role="3clFbG">
                <node concept="37vLTw" id="7eGEHDleQCP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                </node>
                <node concept="liA8E" id="7eGEHDleQZ$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                  <node concept="2OqwBi" id="7eGEHDleR63" role="37wK5m">
                    <node concept="37vLTw" id="5uFPQ7BH1JL" role="2Oq$k0">
                      <ref role="3cqZAo" node="5uFPQ7BH1yJ" resolve="cst" />
                    </node>
                    <node concept="liA8E" id="7eGEHDleRaS" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="78CwJJcWZ_9" role="37wK5m">
                    <node concept="37vLTw" id="78CwJJcWZx1" role="2Oq$k0">
                      <ref role="3cqZAo" node="5uFPQ7BH1yJ" resolve="cst" />
                    </node>
                    <node concept="liA8E" id="78CwJJcWZFx" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Constraint.argumentTypes():java.util.List" resolve="argumentTypes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="78CwJJcXaLt" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="5uFPQ7BH0Nf" role="3clFbw">
            <node concept="3uibUv" id="5uFPQ7BH0W3" role="2ZW6by">
              <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
            </node>
            <node concept="37vLTw" id="5uFPQ7BH0oU" role="2ZW6bz">
              <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
            </node>
          </node>
          <node concept="3eNFk2" id="5uFPQ7BH23e" role="3eNLev">
            <node concept="2ZW3vV" id="5uFPQ7BH2ms" role="3eO9$A">
              <node concept="3uibUv" id="5uFPQ7BH2ni" role="2ZW6by">
                <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
              </node>
              <node concept="37vLTw" id="5uFPQ7BH2j_" role="2ZW6bz">
                <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
              </node>
            </node>
            <node concept="3clFbS" id="5uFPQ7BH23g" role="3eOfB_">
              <node concept="3cpWs8" id="5uFPQ7BH2qS" role="3cqZAp">
                <node concept="3cpWsn" id="5uFPQ7BH2qT" role="3cpWs9">
                  <property role="TrG5h" value="pred" />
                  <node concept="3uibUv" id="5uFPQ7BH2qQ" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                  </node>
                  <node concept="10QFUN" id="5uFPQ7BH2qU" role="33vP2m">
                    <node concept="37vLTw" id="5uFPQ7BH2qV" role="10QFUP">
                      <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
                    </node>
                    <node concept="3uibUv" id="5uFPQ7BH2qW" role="10QFUM">
                      <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ISVfSJv16" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSJvhy" role="3clFbG">
                  <node concept="37vLTw" id="7ISVfSJv14" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ISVfSJtsW" resolve="solvers" />
                  </node>
                  <node concept="liA8E" id="7ISVfSJvtA" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
                    <node concept="2OqwBi" id="78CwJJcX$kh" role="37wK5m">
                      <node concept="37vLTw" id="78CwJJcX$fr" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BH2qT" resolve="pred" />
                      </node>
                      <node concept="liA8E" id="78CwJJcX$qQ" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5uFPQ7BH2PB" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="5uFPQ7BH2T$" role="9aQIa">
            <node concept="3clFbS" id="5uFPQ7BH2T_" role="9aQI4">
              <node concept="YS8fn" id="54i3FxcRWd9" role="3cqZAp">
                <node concept="2ShNRf" id="54i3FxcRWee" role="YScLw">
                  <node concept="1pGfFk" id="54i3FxcRX6D" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="54i3FxcRXPF" role="37wK5m">
                      <node concept="Xl_RD" id="54i3FxcRXPT" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                      <node concept="3cpWs3" id="54i3FxcRYkz" role="3uHU7B">
                        <node concept="37vLTw" id="54i3FxcRYpR" role="3uHU7w">
                          <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
                        </node>
                        <node concept="Xl_RD" id="54i3FxcRXaq" role="3uHU7B">
                          <property role="Xl_RC" value="unknown item '" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eGEHDleg3E" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="5uFPQ7BGZBH" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSHLFV" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
      </node>
      <node concept="3Tmbuc" id="5rhZO$U01k6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1zN1RIlmLd2" role="jymVt" />
    <node concept="2tJIrI" id="2pvEdquu$2W" role="jymVt" />
    <node concept="312cEg" id="7ISVfSJtsW" role="jymVt">
      <property role="TrG5h" value="solvers" />
      <node concept="3Tm6S6" id="7ISVfSJtsX" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSJtsY" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="78CwJJcXzcn" role="11_B2D">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="2ShNRf" id="7ISVfSJtt0" role="33vP2m">
        <node concept="1pGfFk" id="7ISVfSJtt1" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="78CwJJcXzNm" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2pvEdquuHIN" role="jymVt" />
    <node concept="312cEg" id="7eGEHDley5W" role="jymVt">
      <property role="TrG5h" value="constraintArgTypes" />
      <node concept="3Tm6S6" id="7eGEHDley5X" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDley91" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="30XHGaP58dI" role="11_B2D">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
        <node concept="3uibUv" id="78CwJJcX046" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="78CwJJcX0tv" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qTvmN" id="78CwJJcX1kP" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7eGEHDleyjJ" role="33vP2m">
        <node concept="1pGfFk" id="7eGEHDle_f8" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="30XHGaP58v0" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
          </node>
          <node concept="3uibUv" id="78CwJJcX2Zu" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="30XHGaP5wzw" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="30XHGaP5wzx" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcX5vW" role="jymVt" />
  </node>
  <node concept="312cEu" id="5rhZO$TZtac">
    <property role="TrG5h" value="LocalVarIndex" />
    <node concept="2tJIrI" id="5rhZO$TZtbl" role="jymVt" />
    <node concept="3clFb_" id="aFQeb4jQA$" role="jymVt">
      <property role="TrG5h" value="localVariables" />
      <node concept="3uibUv" id="aFQeb4jRC4" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="7nPD14NOXoR" role="11_B2D">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
        </node>
      </node>
      <node concept="3Tm1VV" id="aFQeb4jQAB" role="1B3o_S" />
      <node concept="3clFbS" id="aFQeb4jQAC" role="3clF47">
        <node concept="3clFbF" id="aFQeb4jXC5" role="3cqZAp">
          <node concept="2YIFZM" id="aFQeb4jXCR" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set):java.util.Set" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2OqwBi" id="2$F5QpuudLQ" role="37wK5m">
              <node concept="37vLTw" id="aFQeb4jXEp" role="2Oq$k0">
                <ref role="3cqZAo" node="aFQeb4jLOF" resolve="localVar2Rule" />
              </node>
              <node concept="liA8E" id="2$F5QpuudSC" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.keySet():java.util.Set" resolve="keySet" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZvPQ" role="jymVt" />
    <node concept="3clFb_" id="2$F5QpuufjQ" role="jymVt">
      <property role="TrG5h" value="declaringRule" />
      <node concept="37vLTG" id="2$F5QpuuhMO" role="3clF46">
        <property role="TrG5h" value="metaLogical" />
        <node concept="3uibUv" id="7HUwyZaOE2P" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
        </node>
      </node>
      <node concept="3uibUv" id="2$F5Qpuug7j" role="3clF45">
        <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
      </node>
      <node concept="3Tm1VV" id="2$F5QpuufjT" role="1B3o_S" />
      <node concept="3clFbS" id="2$F5QpuufjU" role="3clF47">
        <node concept="3clFbJ" id="2$F5Qpuuidk" role="3cqZAp">
          <node concept="3clFbS" id="2$F5Qpuuidl" role="3clFbx">
            <node concept="3cpWs6" id="2$F5QpuuiC3" role="3cqZAp">
              <node concept="2OqwBi" id="2$F5QpuukuJ" role="3cqZAk">
                <node concept="37vLTw" id="2$F5Qpuuk7p" role="2Oq$k0">
                  <ref role="3cqZAo" node="aFQeb4jLOF" resolve="localVar2Rule" />
                </node>
                <node concept="liA8E" id="2$F5QpuukTd" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="37vLTw" id="2$F5Qpuulil" role="37wK5m">
                    <ref role="3cqZAo" node="2$F5QpuuhMO" resolve="metaLogical" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2$F5QpuumQa" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2$F5Qpuuihz" role="3clFbw">
            <node concept="37vLTw" id="2$F5QpuuieO" role="2Oq$k0">
              <ref role="3cqZAo" node="aFQeb4jLOF" resolve="localVar2Rule" />
            </node>
            <node concept="liA8E" id="2$F5QpuuiyI" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
              <node concept="37vLTw" id="2$F5Qpuui_h" role="37wK5m">
                <ref role="3cqZAo" node="2$F5QpuuhMO" resolve="metaLogical" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2$F5Qpuum83" role="3eNLev">
            <node concept="2OqwBi" id="2$F5QpuumBk" role="3eO9$A">
              <node concept="37vLTw" id="2$F5Qpuum$z" role="2Oq$k0">
                <ref role="3cqZAo" node="2$F5QpusuSB" resolve="headVar2Rule" />
              </node>
              <node concept="liA8E" id="2$F5QpuumLh" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="2$F5QpuumNQ" role="37wK5m">
                  <ref role="3cqZAo" node="2$F5QpuuhMO" resolve="metaLogical" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2$F5Qpuum85" role="3eOfB_">
              <node concept="3cpWs6" id="2$F5Qpuunic" role="3cqZAp">
                <node concept="2OqwBi" id="2$F5Qpuuo6u" role="3cqZAk">
                  <node concept="37vLTw" id="2$F5QpuunHn" role="2Oq$k0">
                    <ref role="3cqZAo" node="2$F5QpusuSB" resolve="headVar2Rule" />
                  </node>
                  <node concept="liA8E" id="2$F5Qpuuo_N" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                    <node concept="37vLTw" id="2$F5QpuuoZt" role="37wK5m">
                      <ref role="3cqZAo" node="2$F5QpuuhMO" resolve="metaLogical" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2$F5QpuutHJ" role="3cqZAp" />
        <node concept="YS8fn" id="2$F5QpuurEd" role="3cqZAp">
          <node concept="2ShNRf" id="2$F5Qpuus90" role="YScLw">
            <node concept="1pGfFk" id="2$F5Qpuusui" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~NoSuchElementException.&lt;init&gt;()" resolve="NoSuchElementException" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZvt_" role="jymVt" />
    <node concept="3clFb_" id="5rhZO$TZT8C" role="jymVt">
      <property role="TrG5h" value="updateIndex" />
      <node concept="3cqZAl" id="5rhZO$TZT8E" role="3clF45" />
      <node concept="37vLTG" id="5rhZO$TZT8r" role="3clF46">
        <property role="TrG5h" value="rule" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5rhZO$TZT8s" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3clFbS" id="5rhZO$TZT5j" role="3clF47">
        <node concept="1DcWWT" id="5rhZO$TZT5k" role="3cqZAp">
          <node concept="3clFbS" id="5rhZO$TZT5l" role="2LFqv$">
            <node concept="1DcWWT" id="5rhZO$TZT5m" role="3cqZAp">
              <node concept="3clFbS" id="5rhZO$TZT5n" role="2LFqv$">
                <node concept="3clFbJ" id="5rhZO$TZT5o" role="3cqZAp">
                  <node concept="3clFbS" id="5rhZO$TZT5p" role="3clFbx">
                    <node concept="3clFbF" id="5rhZO$TZT5q" role="3cqZAp">
                      <node concept="2OqwBi" id="5rhZO$TZT5r" role="3clFbG">
                        <node concept="2OqwBi" id="5rhZO$TZT5s" role="2Oq$k0">
                          <node concept="Xjq3P" id="5rhZO$TZT5t" role="2Oq$k0" />
                          <node concept="2OwXpG" id="5rhZO$TZT5u" role="2OqNvi">
                            <ref role="2Oxat5" node="2$F5QpusuSB" resolve="headVar2Rule" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5rhZO$TZT5v" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                          <node concept="10QFUN" id="5rhZO$TZT5w" role="37wK5m">
                            <node concept="3uibUv" id="5rhZO$TZT5x" role="10QFUM">
                              <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                            </node>
                            <node concept="37vLTw" id="5rhZO$TZT5y" role="10QFUP">
                              <ref role="3cqZAo" node="5rhZO$TZT5B" resolve="arg" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5rhZO$TZT8$" role="37wK5m">
                            <ref role="3cqZAo" node="5rhZO$TZT8r" resolve="rule" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="5rhZO$TZT5$" role="3clFbw">
                    <node concept="3uibUv" id="5rhZO$TZT5_" role="2ZW6by">
                      <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                    </node>
                    <node concept="37vLTw" id="5rhZO$TZT5A" role="2ZW6bz">
                      <ref role="3cqZAo" node="5rhZO$TZT5B" resolve="arg" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5rhZO$TZT5B" role="1Duv9x">
                <property role="TrG5h" value="arg" />
                <node concept="3uibUv" id="5rhZO$TZT5C" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="2OqwBi" id="5rhZO$TZT5D" role="1DdaDG">
                <node concept="37vLTw" id="5rhZO$TZT5E" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rhZO$TZT5G" resolve="cst" />
                </node>
                <node concept="liA8E" id="5rhZO$TZT5F" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5rhZO$TZT5G" role="1Duv9x">
            <property role="TrG5h" value="cst" />
            <node concept="3uibUv" id="5rhZO$TZT5H" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
            </node>
          </node>
          <node concept="2OqwBi" id="5rhZO$TZT5I" role="1DdaDG">
            <node concept="37vLTw" id="5rhZO$TZT8x" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZT8r" resolve="rule" />
            </node>
            <node concept="liA8E" id="5rhZO$TZT5K" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~Rule.headKept():java.lang.Iterable" resolve="headKept" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5rhZO$TZT5L" role="3cqZAp">
          <node concept="3clFbS" id="5rhZO$TZT5M" role="2LFqv$">
            <node concept="1DcWWT" id="5rhZO$TZT5N" role="3cqZAp">
              <node concept="3clFbS" id="5rhZO$TZT5O" role="2LFqv$">
                <node concept="3clFbJ" id="5rhZO$TZT5P" role="3cqZAp">
                  <node concept="3clFbS" id="5rhZO$TZT5Q" role="3clFbx">
                    <node concept="3clFbF" id="5rhZO$TZT5R" role="3cqZAp">
                      <node concept="2OqwBi" id="5rhZO$TZT5S" role="3clFbG">
                        <node concept="2OqwBi" id="5rhZO$TZT5T" role="2Oq$k0">
                          <node concept="Xjq3P" id="5rhZO$TZT5U" role="2Oq$k0" />
                          <node concept="2OwXpG" id="5rhZO$TZT5V" role="2OqNvi">
                            <ref role="2Oxat5" node="2$F5QpusuSB" resolve="headVar2Rule" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5rhZO$TZT5W" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                          <node concept="10QFUN" id="5rhZO$TZT5X" role="37wK5m">
                            <node concept="3uibUv" id="5rhZO$TZT5Y" role="10QFUM">
                              <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                            </node>
                            <node concept="37vLTw" id="5rhZO$TZT5Z" role="10QFUP">
                              <ref role="3cqZAo" node="5rhZO$TZT64" resolve="arg" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5rhZO$TZT8z" role="37wK5m">
                            <ref role="3cqZAo" node="5rhZO$TZT8r" resolve="rule" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="5rhZO$TZT61" role="3clFbw">
                    <node concept="3uibUv" id="5rhZO$TZT62" role="2ZW6by">
                      <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                    </node>
                    <node concept="37vLTw" id="5rhZO$TZT63" role="2ZW6bz">
                      <ref role="3cqZAo" node="5rhZO$TZT64" resolve="arg" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5rhZO$TZT64" role="1Duv9x">
                <property role="TrG5h" value="arg" />
                <node concept="3uibUv" id="5rhZO$TZT65" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="2OqwBi" id="5rhZO$TZT66" role="1DdaDG">
                <node concept="37vLTw" id="5rhZO$TZT67" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rhZO$TZT69" resolve="cst" />
                </node>
                <node concept="liA8E" id="5rhZO$TZT68" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5rhZO$TZT69" role="1Duv9x">
            <property role="TrG5h" value="cst" />
            <node concept="3uibUv" id="5rhZO$TZT6a" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
            </node>
          </node>
          <node concept="2OqwBi" id="5rhZO$TZT6b" role="1DdaDG">
            <node concept="37vLTw" id="5rhZO$TZT8_" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZT8r" resolve="rule" />
            </node>
            <node concept="liA8E" id="5rhZO$TZT6d" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~Rule.headReplaced():java.lang.Iterable" resolve="headReplaced" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5rhZO$TZT6e" role="3cqZAp" />
        <node concept="1DcWWT" id="5rhZO$TZT6f" role="3cqZAp">
          <node concept="3clFbS" id="5rhZO$TZT6g" role="2LFqv$">
            <node concept="3SKdUt" id="5rhZO$TZT6h" role="3cqZAp">
              <node concept="3SKdUq" id="5rhZO$TZT6i" role="3SKWNk">
                <property role="3SKdUp" value="FIXME: process guard" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5rhZO$TZT6j" role="1Duv9x">
            <property role="TrG5h" value="pred" />
            <node concept="3uibUv" id="5rhZO$TZT6k" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
            </node>
          </node>
          <node concept="2OqwBi" id="5rhZO$TZT6l" role="1DdaDG">
            <node concept="37vLTw" id="5rhZO$TZT8y" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZT8r" resolve="rule" />
            </node>
            <node concept="liA8E" id="5rhZO$TZT6n" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~Rule.guard():java.lang.Iterable" resolve="guard" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5rhZO$TZT6o" role="3cqZAp" />
        <node concept="1DcWWT" id="TYqmVPGczO" role="3cqZAp">
          <node concept="3clFbS" id="TYqmVPGczQ" role="2LFqv$">
            <node concept="1DcWWT" id="5rhZO$TZT6p" role="3cqZAp">
              <node concept="3clFbS" id="5rhZO$TZT6q" role="2LFqv$">
                <node concept="1DcWWT" id="5rhZO$TZT6r" role="3cqZAp">
                  <node concept="3clFbS" id="5rhZO$TZT6s" role="2LFqv$">
                    <node concept="3clFbJ" id="5rhZO$TZT6t" role="3cqZAp">
                      <node concept="3clFbS" id="5rhZO$TZT6u" role="3clFbx">
                        <node concept="3clFbF" id="5rhZO$TZT6v" role="3cqZAp">
                          <node concept="2OqwBi" id="5rhZO$TZT6w" role="3clFbG">
                            <node concept="37vLTw" id="5rhZO$TZT6x" role="2Oq$k0">
                              <ref role="3cqZAo" node="aFQeb4jLOF" resolve="localVar2Rule" />
                            </node>
                            <node concept="liA8E" id="5rhZO$TZT6y" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                              <node concept="10QFUN" id="5rhZO$TZT6z" role="37wK5m">
                                <node concept="3uibUv" id="7nPD14NOWJl" role="10QFUM">
                                  <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                                </node>
                                <node concept="37vLTw" id="5rhZO$TZT6_" role="10QFUP">
                                  <ref role="3cqZAo" node="5rhZO$TZT8h" resolve="arg" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5rhZO$TZT8w" role="37wK5m">
                                <ref role="3cqZAo" node="5rhZO$TZT8r" resolve="rule" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="5rhZO$TZT6B" role="3cqZAp" />
                      </node>
                      <node concept="2ZW3vV" id="5rhZO$TZT6C" role="3clFbw">
                        <node concept="3uibUv" id="5rhZO$TZT6D" role="2ZW6by">
                          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                        </node>
                        <node concept="37vLTw" id="5rhZO$TZT6E" role="2ZW6bz">
                          <ref role="3cqZAo" node="5rhZO$TZT8h" resolve="arg" />
                        </node>
                      </node>
                      <node concept="3eNFk2" id="5rhZO$TZT6F" role="3eNLev">
                        <node concept="2ZW3vV" id="5rhZO$TZT6G" role="3eO9$A">
                          <node concept="3uibUv" id="5rhZO$TZT6H" role="2ZW6by">
                            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                          </node>
                          <node concept="37vLTw" id="5rhZO$TZT6I" role="2ZW6bz">
                            <ref role="3cqZAo" node="5rhZO$TZT8h" resolve="arg" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="5rhZO$TZT6J" role="3eOfB_">
                          <node concept="3SKdUt" id="5rhZO$TZT6K" role="3cqZAp">
                            <node concept="3SKdUq" id="5rhZO$TZT6L" role="3SKWNk">
                              <property role="3SKdUp" value="all variables used as substitutions within the tree need to be declared" />
                            </node>
                          </node>
                          <node concept="3clFbF" id="5rhZO$TZT6M" role="3cqZAp">
                            <node concept="2OqwBi" id="5rhZO$TZT6N" role="3clFbG">
                              <node concept="2ShNRf" id="5rhZO$TZT6O" role="2Oq$k0">
                                <node concept="1pGfFk" id="5rhZO$TZT6P" role="2ShVmc">
                                  <ref role="37wK5l" to="6exd:47nvOnTQN6Q" resolve="TreeFormWalk" />
                                  <node concept="2ShNRf" id="5rhZO$TZT6Q" role="37wK5m">
                                    <node concept="YeOm9" id="5rhZO$TZT6R" role="2ShVmc">
                                      <node concept="1Y3b0j" id="5rhZO$TZT6S" role="YeSDq">
                                        <property role="2bfB8j" value="true" />
                                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                        <ref role="1Y3XeK" to="6exd:2ev$9JFHDMZ" resolve="TreeFormWalk.IdleWalker" />
                                        <node concept="3Tm1VV" id="5rhZO$TZT6T" role="1B3o_S" />
                                        <node concept="3clFb_" id="5rhZO$TZT6U" role="jymVt">
                                          <property role="1EzhhJ" value="false" />
                                          <property role="TrG5h" value="walkValues" />
                                          <node concept="3uibUv" id="5rhZO$TZT6V" role="3clF45">
                                            <ref role="3uigEE" to="6exd:2q_78a95hAL" resolve="Action" />
                                          </node>
                                          <node concept="3Tm1VV" id="5rhZO$TZT6W" role="1B3o_S" />
                                          <node concept="16euLQ" id="5rhZO$TZT6X" role="16eVyc">
                                            <property role="TrG5h" value="V" />
                                          </node>
                                          <node concept="3clFbS" id="5rhZO$TZT6Y" role="3clF47">
                                            <node concept="1DcWWT" id="5rhZO$TZT6Z" role="3cqZAp">
                                              <node concept="3clFbS" id="5rhZO$TZT70" role="2LFqv$">
                                                <node concept="3clFbJ" id="5rhZO$TZT71" role="3cqZAp">
                                                  <node concept="3clFbS" id="5rhZO$TZT72" role="3clFbx">
                                                    <node concept="3clFbF" id="5rhZO$TZT73" role="3cqZAp">
                                                      <node concept="2OqwBi" id="5rhZO$TZT74" role="3clFbG">
                                                        <node concept="37vLTw" id="5rhZO$TZT75" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="aFQeb4jLOF" resolve="localVar2Rule" />
                                                        </node>
                                                        <node concept="liA8E" id="5rhZO$TZT76" role="2OqNvi">
                                                          <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                                                          <node concept="2OqwBi" id="7nPD14NHhhQ" role="37wK5m">
                                                            <node concept="1eOMI4" id="7nPD14NHhhR" role="2Oq$k0">
                                                              <node concept="10QFUN" id="7nPD14NHhhS" role="1eOMHV">
                                                                <node concept="3uibUv" id="7nPD14NHhhT" role="10QFUM">
                                                                  <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalTreeForm" />
                                                                </node>
                                                                <node concept="37vLTw" id="7nPD14NHhhU" role="10QFUP">
                                                                  <ref role="3cqZAo" node="5rhZO$TZT7p" resolve="val" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="liA8E" id="7nPD14NHhhV" role="2OqNvi">
                                                              <ref role="37wK5l" to="oy3s:514BAS_Xsp_" resolve="metaLogical" />
                                                            </node>
                                                          </node>
                                                          <node concept="37vLTw" id="5rhZO$TZT8u" role="37wK5m">
                                                            <ref role="3cqZAo" node="5rhZO$TZT8r" resolve="rule" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="1Wc70l" id="5rhZO$TZT7e" role="3clFbw">
                                                    <node concept="3fqX7Q" id="5rhZO$TZT7f" role="3uHU7w">
                                                      <node concept="2OqwBi" id="5rhZO$TZT7g" role="3fr31v">
                                                        <node concept="1eOMI4" id="5rhZO$TZT7h" role="2Oq$k0">
                                                          <node concept="10QFUN" id="5rhZO$TZT7i" role="1eOMHV">
                                                            <node concept="3uibUv" id="5rhZO$TZT7j" role="10QFUM">
                                                              <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalTreeForm" />
                                                            </node>
                                                            <node concept="37vLTw" id="5rhZO$TZT7k" role="10QFUP">
                                                              <ref role="3cqZAo" node="5rhZO$TZT7p" resolve="val" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="5rhZO$TZT7l" role="2OqNvi">
                                                          <ref role="37wK5l" to="oy3s:7HUwyZbdP0v" resolve="isWildcard" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2ZW3vV" id="5rhZO$TZT7m" role="3uHU7B">
                                                      <node concept="3uibUv" id="5rhZO$TZT7n" role="2ZW6by">
                                                        <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalTreeForm" />
                                                      </node>
                                                      <node concept="37vLTw" id="5rhZO$TZT7o" role="2ZW6bz">
                                                        <ref role="3cqZAo" node="5rhZO$TZT7p" resolve="val" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3cpWsn" id="5rhZO$TZT7p" role="1Duv9x">
                                                <property role="TrG5h" value="val" />
                                                <node concept="16syzq" id="5rhZO$TZT7q" role="1tU5fm">
                                                  <ref role="16sUi3" node="5rhZO$TZT6X" resolve="V" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="5rhZO$TZT7r" role="1DdaDG">
                                                <node concept="37vLTw" id="5rhZO$TZT7s" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5rhZO$TZT7x" resolve="valb" />
                                                </node>
                                                <node concept="liA8E" id="5rhZO$TZT7t" role="2OqNvi">
                                                  <ref role="37wK5l" to="6exd:5YIOneOMEJi" resolve="values" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="5rhZO$TZT7u" role="3cqZAp">
                                              <node concept="Rm8GO" id="5rhZO$TZT7v" role="3clFbG">
                                                <ref role="Rm8GQ" to="6exd:2q_78a95hAN" resolve="CONTINUE" />
                                                <ref role="1Px2BO" to="6exd:2q_78a95hAL" resolve="Action" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2AHcQZ" id="5rhZO$TZT7w" role="2AJF6D">
                                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                          </node>
                                          <node concept="37vLTG" id="5rhZO$TZT7x" role="3clF46">
                                            <property role="TrG5h" value="valb" />
                                            <node concept="3uibUv" id="5rhZO$TZT7y" role="1tU5fm">
                                              <ref role="3uigEE" to="6exd:1msb0mq99GH" resolve="ValueNode" />
                                              <node concept="16syzq" id="5rhZO$TZT7z" role="11_B2D">
                                                <ref role="16sUi3" node="5rhZO$TZT6X" resolve="V" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFb_" id="5rhZO$TZT7$" role="jymVt">
                                          <property role="1EzhhJ" value="false" />
                                          <property role="TrG5h" value="walkList" />
                                          <node concept="3uibUv" id="5rhZO$TZT7_" role="3clF45">
                                            <ref role="3uigEE" to="6exd:2q_78a95hAL" resolve="Action" />
                                          </node>
                                          <node concept="3Tm1VV" id="5rhZO$TZT7A" role="1B3o_S" />
                                          <node concept="3clFbS" id="5rhZO$TZT7B" role="3clF47">
                                            <node concept="1DcWWT" id="5rhZO$TZT7C" role="3cqZAp">
                                              <node concept="3clFbS" id="5rhZO$TZT7D" role="2LFqv$">
                                                <node concept="3clFbJ" id="5rhZO$TZT7E" role="3cqZAp">
                                                  <node concept="3clFbS" id="5rhZO$TZT7F" role="3clFbx">
                                                    <node concept="3clFbF" id="5rhZO$TZT7G" role="3cqZAp">
                                                      <node concept="2OqwBi" id="5rhZO$TZT7H" role="3clFbG">
                                                        <node concept="37vLTw" id="5rhZO$TZT7I" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="aFQeb4jLOF" resolve="localVar2Rule" />
                                                        </node>
                                                        <node concept="liA8E" id="5rhZO$TZT7J" role="2OqNvi">
                                                          <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                                                          <node concept="2OqwBi" id="7nPD14NHhso" role="37wK5m">
                                                            <node concept="1eOMI4" id="7nPD14NHhsp" role="2Oq$k0">
                                                              <node concept="10QFUN" id="7nPD14NHhsq" role="1eOMHV">
                                                                <node concept="3uibUv" id="7nPD14NHhsr" role="10QFUM">
                                                                  <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalTreeForm" />
                                                                </node>
                                                                <node concept="37vLTw" id="7nPD14NHhss" role="10QFUP">
                                                                  <ref role="3cqZAo" node="5rhZO$TZT82" resolve="a" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="liA8E" id="7nPD14NHhst" role="2OqNvi">
                                                              <ref role="37wK5l" to="oy3s:514BAS_Xsp_" resolve="metaLogical" />
                                                            </node>
                                                          </node>
                                                          <node concept="37vLTw" id="5rhZO$TZT8v" role="37wK5m">
                                                            <ref role="3cqZAo" node="5rhZO$TZT8r" resolve="rule" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="1Wc70l" id="5rhZO$TZT7R" role="3clFbw">
                                                    <node concept="2ZW3vV" id="5rhZO$TZT7S" role="3uHU7B">
                                                      <node concept="3uibUv" id="5rhZO$TZT7T" role="2ZW6by">
                                                        <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalTreeForm" />
                                                      </node>
                                                      <node concept="37vLTw" id="5rhZO$TZT7U" role="2ZW6bz">
                                                        <ref role="3cqZAo" node="5rhZO$TZT82" resolve="a" />
                                                      </node>
                                                    </node>
                                                    <node concept="3fqX7Q" id="5rhZO$TZT7V" role="3uHU7w">
                                                      <node concept="2OqwBi" id="5rhZO$TZT7W" role="3fr31v">
                                                        <node concept="1eOMI4" id="5rhZO$TZT7X" role="2Oq$k0">
                                                          <node concept="10QFUN" id="5rhZO$TZT7Y" role="1eOMHV">
                                                            <node concept="3uibUv" id="5rhZO$TZT7Z" role="10QFUM">
                                                              <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalTreeForm" />
                                                            </node>
                                                            <node concept="37vLTw" id="5rhZO$TZT80" role="10QFUP">
                                                              <ref role="3cqZAo" node="5rhZO$TZT82" resolve="a" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="5rhZO$TZT81" role="2OqNvi">
                                                          <ref role="37wK5l" to="oy3s:7HUwyZbdP0v" resolve="isWildcard" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3cpWsn" id="5rhZO$TZT82" role="1Duv9x">
                                                <property role="TrG5h" value="a" />
                                                <node concept="3uibUv" id="5rhZO$TZT83" role="1tU5fm">
                                                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="5rhZO$TZT84" role="1DdaDG">
                                                <node concept="37vLTw" id="5rhZO$TZT85" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5rhZO$TZT8a" resolve="listb" />
                                                </node>
                                                <node concept="liA8E" id="5rhZO$TZT86" role="2OqNvi">
                                                  <ref role="37wK5l" to="6exd:5YIOneOT0Zn" resolve="contents" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="5rhZO$TZT87" role="3cqZAp">
                                              <node concept="Rm8GO" id="5rhZO$TZT88" role="3clFbG">
                                                <ref role="Rm8GQ" to="6exd:2q_78a95hAN" resolve="CONTINUE" />
                                                <ref role="1Px2BO" to="6exd:2q_78a95hAL" resolve="Action" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2AHcQZ" id="5rhZO$TZT89" role="2AJF6D">
                                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                          </node>
                                          <node concept="37vLTG" id="5rhZO$TZT8a" role="3clF46">
                                            <property role="TrG5h" value="listb" />
                                            <node concept="3uibUv" id="5rhZO$TZT8b" role="1tU5fm">
                                              <ref role="3uigEE" to="6exd:3OPtF03lco4" resolve="ListNode" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="5rhZO$TZT8c" role="2OqNvi">
                                <ref role="37wK5l" to="6exd:1hOy_Afq63K" resolve="walk" />
                                <node concept="1eOMI4" id="5rhZO$TZT8d" role="37wK5m">
                                  <node concept="10QFUN" id="5rhZO$TZT8e" role="1eOMHV">
                                    <node concept="37vLTw" id="5rhZO$TZT8f" role="10QFUP">
                                      <ref role="3cqZAo" node="5rhZO$TZT8h" resolve="arg" />
                                    </node>
                                    <node concept="3uibUv" id="5rhZO$TZT8g" role="10QFUM">
                                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="5rhZO$TZT8h" role="1Duv9x">
                    <property role="TrG5h" value="arg" />
                    <node concept="3uibUv" id="5rhZO$TZT8i" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5rhZO$TZT8j" role="1DdaDG">
                    <node concept="37vLTw" id="5rhZO$TZT8k" role="2Oq$k0">
                      <ref role="3cqZAo" node="5rhZO$TZT8m" resolve="item" />
                    </node>
                    <node concept="liA8E" id="5rhZO$TZT8l" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5rhZO$TZT8m" role="1Duv9x">
                <property role="TrG5h" value="item" />
                <node concept="3uibUv" id="5rhZO$TZT8n" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                </node>
              </node>
              <node concept="37vLTw" id="TYqmVPGe0u" role="1DdaDG">
                <ref role="3cqZAo" node="TYqmVPGczS" resolve="bodyPart" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="TYqmVPGczS" role="1Duv9x">
            <property role="TrG5h" value="bodyPart" />
            <node concept="3uibUv" id="TYqmVPGczW" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="3uibUv" id="TYqmVPGczX" role="11_B2D">
                <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="TYqmVPGcZw" role="1DdaDG">
            <node concept="37vLTw" id="TYqmVPGcZx" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZT8r" resolve="rule" />
            </node>
            <node concept="liA8E" id="TYqmVPGcZy" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~Rule.bodyAlternation():java.lang.Iterable" resolve="bodyAlternation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5rhZO$TZWks" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5rhZO$TZvDH" role="jymVt" />
    <node concept="312cEg" id="2$F5QpusuSB" role="jymVt">
      <property role="TrG5h" value="headVar2Rule" />
      <node concept="3Tm6S6" id="2$F5QpusuSx" role="1B3o_S" />
      <node concept="3uibUv" id="2$F5QpusuSy" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="7HUwyZaOa9R" role="11_B2D">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
        </node>
        <node concept="3uibUv" id="2$F5QpuubsW" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="2ShNRf" id="2$F5QpusuS$" role="33vP2m">
        <node concept="1pGfFk" id="2$F5QpusuS_" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~IdentityHashMap.&lt;init&gt;()" resolve="IdentityHashMap" />
          <node concept="3uibUv" id="7HUwyZaOaOH" role="1pMfVU">
            <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          </node>
          <node concept="3uibUv" id="2$F5QpuucxZ" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZvhu" role="jymVt" />
    <node concept="312cEg" id="aFQeb4jLOF" role="jymVt">
      <property role="TrG5h" value="localVar2Rule" />
      <node concept="3Tm6S6" id="aFQeb4jLOG" role="1B3o_S" />
      <node concept="3uibUv" id="aFQeb4kfUf" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="7nPD14NOWN9" role="11_B2D">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
        </node>
        <node concept="3uibUv" id="2$F5QpuucP4" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="2ShNRf" id="aFQeb4jN9q" role="33vP2m">
        <node concept="1pGfFk" id="aFQeb4jNr2" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~IdentityHashMap.&lt;init&gt;()" resolve="IdentityHashMap" />
          <node concept="3uibUv" id="7nPD14NOX6c" role="1pMfVU">
            <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          </node>
          <node concept="3uibUv" id="2$F5QpuudCp" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7nPD14O5Mp1" role="1B3o_S" />
  </node>
</model>

