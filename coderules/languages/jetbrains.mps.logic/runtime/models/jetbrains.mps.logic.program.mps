<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:475a2e92-d7d4-41c3-98e3-172d70b6f018(jetbrains.mps.logic.program)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.unification)" />
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
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
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
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
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5rhZO$TYZJM">
    <property role="TrG5h" value="LogicProgramBuilder" />
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
              <ref role="37wK5l" node="7eGEHDlcF69" resolve="LogicProgram" />
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
    <node concept="3Tm1VV" id="18cJbc1659x" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7eGEHDlcEJ0">
    <property role="TrG5h" value="LogicProgram" />
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
    <node concept="3clFb_" id="60zk4o6Suoh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="instantiateArguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o6Suoi" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6Suok" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="60zk4o6Suol" role="11_B2D" />
      </node>
      <node concept="37vLTG" id="60zk4o6Suom" role="3clF46">
        <property role="TrG5h" value="arguments" />
        <node concept="3uibUv" id="60zk4o6Suon" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qTvmN" id="60zk4o6Suoo" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="60zk4o6Suop" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="60zk4o6Suoq" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3clFbS" id="60zk4o6Suor" role="3clF47">
        <node concept="3cpWs8" id="60zk4o6SxJ0" role="3cqZAp">
          <node concept="3cpWsn" id="60zk4o6SxJ1" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="60zk4o6SxJ2" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="60zk4o6SxJ3" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="60zk4o6SxJ4" role="33vP2m">
              <node concept="1pGfFk" id="60zk4o6SxJ5" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="2OqwBi" id="60zk4o6SxJ6" role="37wK5m">
                  <node concept="37vLTw" id="60zk4o6Szda" role="2Oq$k0">
                    <ref role="3cqZAo" node="60zk4o6Suom" resolve="arguments" />
                  </node>
                  <node concept="liA8E" id="60zk4o6SxJa" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                  </node>
                </node>
                <node concept="3uibUv" id="60zk4o6SxJb" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="60zk4o6SxJc" role="3cqZAp">
          <node concept="3clFbS" id="60zk4o6SxJd" role="2LFqv$">
            <node concept="3clFbJ" id="60zk4o6SxJe" role="3cqZAp">
              <node concept="3eNFk2" id="60zk4o6SxJf" role="3eNLev">
                <node concept="2ZW3vV" id="60zk4o6SxJg" role="3eO9$A">
                  <node concept="3uibUv" id="60zk4o6SxJh" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                  </node>
                  <node concept="37vLTw" id="60zk4o6SxJi" role="2ZW6bz">
                    <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                  </node>
                </node>
                <node concept="3clFbS" id="60zk4o6SxJj" role="3eOfB_">
                  <node concept="3clFbF" id="60zk4o6SxJk" role="3cqZAp">
                    <node concept="2OqwBi" id="60zk4o6SxJl" role="3clFbG">
                      <node concept="37vLTw" id="60zk4o6SxJm" role="2Oq$k0">
                        <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
                      </node>
                      <node concept="liA8E" id="60zk4o6SxJn" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2OqwBi" id="60zk4o6SxJo" role="37wK5m">
                          <node concept="37vLTw" id="60zk4o6SxJp" role="2Oq$k0">
                            <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                          </node>
                          <node concept="liA8E" id="60zk4o6SxJq" role="2OqNvi">
                            <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical):jetbrains.mps.logic.reactor.logical.Logical" resolve="variable" />
                            <node concept="10QFUN" id="60zk4o6SxJr" role="37wK5m">
                              <node concept="37vLTw" id="60zk4o6SxJs" role="10QFUP">
                                <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                              </node>
                              <node concept="3uibUv" id="60zk4o6SxJt" role="10QFUM">
                                <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                                <node concept="3uibUv" id="60zk4o6SxJu" role="11_B2D">
                                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="60zk4o6SxJv" role="3cqZAp" />
                </node>
              </node>
              <node concept="3eNFk2" id="5WBVN_M1CZI" role="3eNLev">
                <node concept="2ZW3vV" id="5WBVN_M1Djq" role="3eO9$A">
                  <node concept="3uibUv" id="5WBVN_M1Dpb" role="2ZW6by">
                    <ref role="3uigEE" node="5WBVN_M1BKE" resolve="LateExpression" />
                  </node>
                  <node concept="37vLTw" id="5WBVN_M1DbI" role="2ZW6bz">
                    <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                  </node>
                </node>
                <node concept="3clFbS" id="5WBVN_M1CZK" role="3eOfB_">
                  <node concept="3cpWs8" id="5WBVN_M1J07" role="3cqZAp">
                    <node concept="3cpWsn" id="5WBVN_M1J08" role="3cpWs9">
                      <property role="TrG5h" value="exp" />
                      <node concept="3uibUv" id="5WBVN_M1J02" role="1tU5fm">
                        <ref role="3uigEE" node="5WBVN_M1BKE" resolve="LateExpression" />
                        <node concept="3qTvmN" id="5WBVN_M1J05" role="11_B2D" />
                      </node>
                      <node concept="1eOMI4" id="5WBVN_M1J09" role="33vP2m">
                        <node concept="10QFUN" id="5WBVN_M1J0a" role="1eOMHV">
                          <node concept="3uibUv" id="5WBVN_M1J0b" role="10QFUM">
                            <ref role="3uigEE" node="5WBVN_M1BKE" resolve="LateExpression" />
                            <node concept="3qTvmN" id="5WBVN_M1J0c" role="11_B2D" />
                          </node>
                          <node concept="37vLTw" id="5WBVN_M1J0d" role="10QFUP">
                            <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5WBVN_M1GEt" role="3cqZAp">
                    <node concept="3cpWsn" id="5WBVN_M1GEu" role="3cpWs9">
                      <property role="TrG5h" value="expArgs" />
                      <node concept="3uibUv" id="5WBVN_M1GEk" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3qTvmN" id="5WBVN_M1GEn" role="11_B2D" />
                      </node>
                      <node concept="1rXfSq" id="5WBVN_M1GEv" role="33vP2m">
                        <ref role="37wK5l" node="60zk4o6Suoh" resolve="instantiateArguments" />
                        <node concept="2YIFZM" id="5WBVN_MlGya" role="37wK5m">
                          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                          <node concept="2OqwBi" id="5WBVN_M1GEw" role="37wK5m">
                            <node concept="37vLTw" id="5WBVN_M1J0e" role="2Oq$k0">
                              <ref role="3cqZAo" node="5WBVN_M1J08" resolve="exp" />
                            </node>
                            <node concept="liA8E" id="5WBVN_M1GEA" role="2OqNvi">
                              <ref role="37wK5l" node="5WBVN_M1BSf" resolve="metaArgs" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5WBVN_M1GEB" role="37wK5m">
                          <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="5WBVN_M1MSf" role="3cqZAp">
                    <node concept="3SKdUq" id="5WBVN_M1MSh" role="3SKWNk">
                      <property role="3SKdUp" value="TODO: user code" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="5WBVN_M1Hyh" role="3cqZAp">
                    <node concept="2OqwBi" id="5WBVN_M1HRh" role="3clFbG">
                      <node concept="37vLTw" id="5WBVN_M1Hyf" role="2Oq$k0">
                        <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
                      </node>
                      <node concept="liA8E" id="5WBVN_M1IHI" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2OqwBi" id="5WBVN_M1JzG" role="37wK5m">
                          <node concept="37vLTw" id="5WBVN_M1JhL" role="2Oq$k0">
                            <ref role="3cqZAo" node="5WBVN_M1J08" resolve="exp" />
                          </node>
                          <node concept="liA8E" id="5WBVN_M1JVL" role="2OqNvi">
                            <ref role="37wK5l" node="5WBVN_M1BLN" resolve="eval" />
                            <node concept="37vLTw" id="6yUEjXvTvSG" role="37wK5m">
                              <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                            </node>
                            <node concept="2OqwBi" id="5WBVN_M1KyJ" role="37wK5m">
                              <node concept="37vLTw" id="5WBVN_M1K7z" role="2Oq$k0">
                                <ref role="3cqZAo" node="5WBVN_M1GEu" resolve="expArgs" />
                              </node>
                              <node concept="liA8E" id="5WBVN_M1L1T" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.toArray():java.lang.Object[]" resolve="toArray" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5WBVN_M1Hs2" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbS" id="60zk4o6SxJw" role="3clFbx">
                <node concept="3clFbF" id="60zk4o6SxJx" role="3cqZAp">
                  <node concept="2OqwBi" id="60zk4o6SxJy" role="3clFbG">
                    <node concept="37vLTw" id="60zk4o6SxJz" role="2Oq$k0">
                      <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
                    </node>
                    <node concept="liA8E" id="60zk4o6SxJ$" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2YIFZM" id="74q$MmRB2bs" role="37wK5m">
                        <ref role="37wK5l" node="4TCblo5NqWF" resolve="instantiateMetaLogicals" />
                        <ref role="1Pybhc" node="677NV565N1x" resolve="LogicalUtil" />
                        <node concept="10QFUN" id="60zk4o6SxJA" role="37wK5m">
                          <node concept="3uibUv" id="60zk4o6SxJB" role="10QFUM">
                            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                          </node>
                          <node concept="37vLTw" id="60zk4o6SxJC" role="10QFUP">
                            <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="60zk4o6SxJD" role="37wK5m">
                          <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="60zk4o6SxJE" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="60zk4o6SxJF" role="3clFbw">
                <node concept="3uibUv" id="60zk4o6SxJG" role="2ZW6by">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
                <node concept="37vLTw" id="60zk4o6SxJH" role="2ZW6bz">
                  <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                </node>
              </node>
              <node concept="9aQIb" id="60zk4o6SxJI" role="9aQIa">
                <node concept="3clFbS" id="60zk4o6SxJJ" role="9aQI4">
                  <node concept="3clFbF" id="60zk4o6SxJK" role="3cqZAp">
                    <node concept="2OqwBi" id="60zk4o6SxJL" role="3clFbG">
                      <node concept="37vLTw" id="60zk4o6SxJM" role="2Oq$k0">
                        <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
                      </node>
                      <node concept="liA8E" id="60zk4o6SxJN" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="37vLTw" id="60zk4o6SxJO" role="37wK5m">
                          <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="60zk4o6SxJP" role="1Duv9x">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="60zk4o6SxJQ" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="37vLTw" id="60zk4o6SI6n" role="1DdaDG">
            <ref role="3cqZAo" node="60zk4o6Suom" resolve="arguments" />
          </node>
        </node>
        <node concept="3clFbF" id="60zk4o6SxJU" role="3cqZAp">
          <node concept="37vLTw" id="60zk4o6SxJV" role="3clFbG">
            <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o6Suos" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6RdRN" role="jymVt" />
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
                <node concept="3SKdUt" id="Vlk31yQOwf" role="3cqZAp">
                  <node concept="3SKdUq" id="Vlk31yQOwh" role="3SKWNk">
                    <property role="3SKdUp" value="FIXME: introduce RT types to LateExpression, reinstate this check" />
                  </node>
                </node>
                <node concept="1X3_iC" id="Vlk31yQOnf" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="3clFbJ" id="1zN1RIlmYBW" role="8Wnug">
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
  <node concept="3HP615" id="qubcdtxBiR">
    <property role="TrG5h" value="EvaluationTraceExt" />
    <node concept="2tJIrI" id="qubcdtxBuI" role="jymVt" />
    <node concept="Wx3nA" id="24Vro6cS5rK" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NULL" />
      <node concept="3Tm1VV" id="24Vro6cS5rM" role="1B3o_S" />
      <node concept="2ShNRf" id="24Vro6cS5M$" role="33vP2m">
        <node concept="HV5vD" id="15BaR5AeZD1" role="2ShVmc">
          <ref role="HV5vE" node="15BaR5AeJIv" resolve="EvaluationTraceExt.Stub" />
        </node>
      </node>
      <node concept="3uibUv" id="qubcdtxJQt" role="1tU5fm">
        <ref role="3uigEE" node="qubcdtxBiR" resolve="EvaluationTraceExt" />
      </node>
    </node>
    <node concept="2tJIrI" id="qubcdtxJFT" role="jymVt" />
    <node concept="3clFb_" id="5cnt3vhfW9c" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="restored" />
      <node concept="37vLTG" id="5cnt3vhfW9d" role="3clF46">
        <property role="TrG5h" value="occurrence" />
        <node concept="3uibUv" id="5cnt3vhfW9e" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3cqZAl" id="5cnt3vhfW9f" role="3clF45" />
      <node concept="3Tm1VV" id="5cnt3vhfW9g" role="1B3o_S" />
      <node concept="3clFbS" id="5cnt3vhfW9h" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5cnt3vhg0gW" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7gU0T" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="result" />
      <node concept="37vLTG" id="7nkyKX7gU0U" role="3clF46">
        <property role="TrG5h" value="occurrence" />
        <node concept="3uibUv" id="5mr7UHccdcS" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3cqZAl" id="7nkyKX7gU0Y" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7gU0Z" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7gU10" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7nkyKX7gUfX" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7gU3L" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="garbage" />
      <node concept="37vLTG" id="7nkyKX7gU3M" role="3clF46">
        <property role="TrG5h" value="occurrence" />
        <node concept="3uibUv" id="5mr7UHccdlH" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3cqZAl" id="7nkyKX7gU3Q" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7gU3R" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7gU3S" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="18cJbc1jRCJ" role="jymVt" />
    <node concept="3clFb_" id="18cJbc1jRnT" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="info" />
      <node concept="37vLTG" id="18cJbc1jRnU" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="18cJbc1jS2s" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="18cJbc1jRnW" role="3clF45" />
      <node concept="3Tm1VV" id="18cJbc1jRnX" role="1B3o_S" />
      <node concept="3clFbS" id="18cJbc1jRnY" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="qubcdtxBuK" role="jymVt" />
    <node concept="312cEu" id="15BaR5AeJIv" role="jymVt">
      <property role="TrG5h" value="Stub" />
      <node concept="3clFb_" id="1n2ZgJ3M2s0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="activate" />
        <node concept="37vLTG" id="1n2ZgJ3M2s1" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="1n2ZgJ3M2s2" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3M2s3" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3M2s4" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3M2s8" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeQHM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1n2ZgJ3M2s9" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="reactivate" />
        <node concept="37vLTG" id="1n2ZgJ3M2sa" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="1n2ZgJ3M2sb" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3M2sc" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3M2sd" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3M2sh" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeRah" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1n2ZgJ3M2si" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="suspend" />
        <node concept="37vLTG" id="1n2ZgJ3M2sj" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="1n2ZgJ3M2sk" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3M2sl" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3M2sm" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3M2sq" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeRAS" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1n2ZgJ3M2sr" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="discard" />
        <node concept="37vLTG" id="1n2ZgJ3M2ss" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="1n2ZgJ3M2st" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3M2su" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3M2sv" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3M2sz" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeS3B" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1n2ZgJ3MiVn" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="trigger" />
        <node concept="37vLTG" id="4TCblo5JLfn" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="4TCblo5JLfk" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~MatchRule" resolve="MatchRule" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3MiVq" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3MiVr" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3MiVv" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeSwu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2_NfR5whEhF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="retry" />
        <node concept="37vLTG" id="2_NfR5whEhG" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="2_NfR5whEhH" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~MatchRule" resolve="MatchRule" />
          </node>
        </node>
        <node concept="3cqZAl" id="2_NfR5whEhI" role="3clF45" />
        <node concept="3Tm1VV" id="2_NfR5whEhJ" role="1B3o_S" />
        <node concept="3clFbS" id="2_NfR5whEhN" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeSXt" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq48gId" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="trying" />
        <node concept="37vLTG" id="2UGjFq48gIe" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="2UGjFq48gIf" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~MatchRule" resolve="MatchRule" />
          </node>
        </node>
        <node concept="3cqZAl" id="2UGjFq48gIg" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq48gIh" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq48gIl" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeTq$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2T1p0CFMNWu" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="reject" />
        <node concept="37vLTG" id="2T1p0CFMNWv" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="2T1p0CFMNWw" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~MatchRule" resolve="MatchRule" />
          </node>
        </node>
        <node concept="3cqZAl" id="2T1p0CFMNWx" role="3clF45" />
        <node concept="3Tm1VV" id="2T1p0CFMNWy" role="1B3o_S" />
        <node concept="3clFbS" id="2T1p0CFMNWA" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeTRN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq48h1G" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="finish" />
        <node concept="37vLTG" id="2UGjFq48h1H" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="2UGjFq48h1I" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~MatchRule" resolve="MatchRule" />
          </node>
        </node>
        <node concept="3cqZAl" id="2UGjFq48h1J" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq48h1K" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq48h1O" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeUla" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq48k4$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tell" />
        <node concept="37vLTG" id="2UGjFq48k4_" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq48k4A" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3cqZAl" id="2UGjFq48k4B" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq48k4C" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq48k4G" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeUMD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq48k4H" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <node concept="37vLTG" id="2UGjFq48k4I" role="3clF46">
          <property role="TrG5h" value="result" />
          <node concept="10P_77" id="2UGjFq48k4J" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2UGjFq48k4K" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq48k4L" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3cqZAl" id="2UGjFq48k4M" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq48k4N" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq48k4R" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeVgk" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7vxJ_H4tnOC" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="failure" />
        <node concept="37vLTG" id="7vxJ_H4tnOD" role="3clF46">
          <property role="TrG5h" value="fail" />
          <node concept="3uibUv" id="7vxJ_H4tnOE" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
          </node>
        </node>
        <node concept="3cqZAl" id="7vxJ_H4tnOF" role="3clF45" />
        <node concept="3Tm1VV" id="7vxJ_H4tnOG" role="1B3o_S" />
        <node concept="3clFbS" id="7vxJ_H4tnOK" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeVI3" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="8odmgCdh$k" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="failure" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="8odmgCdh$l" role="1B3o_S" />
        <node concept="3cqZAl" id="8odmgCdh$n" role="3clF45" />
        <node concept="37vLTG" id="8odmgCdh$o" role="3clF46">
          <property role="TrG5h" value="failure" />
          <node concept="3uibUv" id="8odmgCdh$p" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~EvaluationFailure" resolve="EvaluationFailure" />
          </node>
        </node>
        <node concept="3clFbS" id="8odmgCdh$r" role="3clF47" />
        <node concept="2AHcQZ" id="8odmgCdh$s" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5cnt3vhg2Ou" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="restored" />
        <node concept="37vLTG" id="5cnt3vhg2Ov" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="5cnt3vhg2Ow" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="5cnt3vhg2Ox" role="3clF45" />
        <node concept="3Tm1VV" id="5cnt3vhg2Oy" role="1B3o_S" />
        <node concept="3clFbS" id="5cnt3vhg2O$" role="3clF47" />
        <node concept="2AHcQZ" id="5cnt3vhg2O_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7nkyKX7h9eG" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="result" />
        <node concept="37vLTG" id="7nkyKX7h9eH" role="3clF46">
          <property role="TrG5h" value="constraint" />
          <node concept="3uibUv" id="5mr7UHccduP" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="7nkyKX7h9eJ" role="3clF45" />
        <node concept="3Tm1VV" id="7nkyKX7h9eK" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7h9eN" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeWE1" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7nkyKX7h9eO" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="garbage" />
        <node concept="37vLTG" id="7nkyKX7h9eP" role="3clF46">
          <property role="TrG5h" value="constraint" />
          <node concept="3uibUv" id="5mr7UHccd_Z" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="7nkyKX7h9eR" role="3clF45" />
        <node concept="3Tm1VV" id="7nkyKX7h9eS" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7h9eV" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeX86" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="18cJbc1jSg7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="info" />
        <node concept="37vLTG" id="18cJbc1jSg8" role="3clF46">
          <property role="TrG5h" value="message" />
          <node concept="17QB3L" id="18cJbc1jSg9" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="18cJbc1jSga" role="3clF45" />
        <node concept="3Tm1VV" id="18cJbc1jSgb" role="1B3o_S" />
        <node concept="3clFbS" id="18cJbc1jSge" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeXAn" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="15BaR5AeJIw" role="1B3o_S" />
      <node concept="3uibUv" id="15BaR5AeNrp" role="EKbjA">
        <ref role="3uigEE" node="qubcdtxBiR" resolve="EvaluationTraceExt" />
      </node>
    </node>
    <node concept="2tJIrI" id="15BaR5AeJ4Y" role="jymVt" />
    <node concept="3Tm1VV" id="qubcdtxBiS" role="1B3o_S" />
    <node concept="3uibUv" id="qubcdtxBjm" role="3HQHJm">
      <ref role="3uigEE" to="w7la:~EvaluationTrace" resolve="EvaluationTrace" />
    </node>
  </node>
  <node concept="3HP615" id="5WBVN_M1BKE">
    <property role="TrG5h" value="LateExpression" />
    <node concept="2tJIrI" id="5WBVN_M1BL8" role="jymVt" />
    <node concept="3clFb_" id="5WBVN_M1BSf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="metaArgs" />
      <node concept="10Q1$e" id="5WBVN_MlESz" role="3clF45">
        <node concept="3uibUv" id="5WBVN_MlERY" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5WBVN_M1BSi" role="1B3o_S" />
      <node concept="3clFbS" id="5WBVN_M1BSj" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5WBVN_M1BRL" role="jymVt" />
    <node concept="3clFb_" id="5WBVN_M1BLN" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="eval" />
      <node concept="37vLTG" id="6yUEjXvTuvu" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="6yUEjXvTu_d" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="37vLTG" id="5WBVN_M1BNS" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="5WBVN_M1BOF" role="1tU5fm">
          <node concept="3uibUv" id="5WBVN_M1BOh" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="5WBVN_M1BQX" role="3clF45">
        <ref role="16sUi3" node="5WBVN_M1BQ$" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="5WBVN_M1BLQ" role="1B3o_S" />
      <node concept="3clFbS" id="5WBVN_M1BLR" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5WBVN_M1BLq" role="jymVt" />
    <node concept="3Tm1VV" id="5WBVN_M1BKF" role="1B3o_S" />
    <node concept="16euLQ" id="5WBVN_M1BQ$" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="677NV565N1x">
    <property role="TrG5h" value="LogicalUtil" />
    <node concept="2tJIrI" id="7HUwyZb7alE" role="jymVt" />
    <node concept="2YIFZL" id="7HUwyZb7b7C" role="jymVt">
      <property role="TrG5h" value="asVariableArray" />
      <node concept="37vLTG" id="7HUwyZb7b7D" role="3clF46">
        <property role="TrG5h" value="multiMetaLogical" />
        <node concept="3uibUv" id="7HUwyZb7bf2" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MultiMetaLogical" resolve="MultiMetaLogical" />
        </node>
      </node>
      <node concept="10Q1$e" id="7HUwyZb7b7G" role="3clF45">
        <node concept="3uibUv" id="kTK1BeAfdG" role="10Q1$1">
          <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZb7b7I" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZb7b7J" role="3clF47">
        <node concept="3cpWs8" id="7HUwyZb7b7R" role="3cqZAp">
          <node concept="3cpWsn" id="7HUwyZb7b7S" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="7HUwyZb7b7T" role="1tU5fm">
              <node concept="3uibUv" id="kTK1BeAf2h" role="10Q1$1">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
            </node>
            <node concept="2ShNRf" id="7HUwyZb7b7V" role="33vP2m">
              <node concept="3$_iS1" id="7HUwyZb7b7W" role="2ShVmc">
                <node concept="3$GHV9" id="7HUwyZb7b7X" role="3$GQph">
                  <node concept="2OqwBi" id="7HUwyZb7b7Y" role="3$I4v7">
                    <node concept="37vLTw" id="7HUwyZb7b7Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiMetaLogical" />
                    </node>
                    <node concept="liA8E" id="7HUwyZbdR3y" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~MultiMetaLogical.cardinality():int" resolve="cardinality" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="kTK1BeAf7Z" role="3$_nBY">
                  <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="7HUwyZb7b83" role="3cqZAp">
          <node concept="3clFbS" id="7HUwyZb7b84" role="2LFqv$">
            <node concept="3clFbF" id="7HUwyZb7b85" role="3cqZAp">
              <node concept="37vLTI" id="7HUwyZb7b86" role="3clFbG">
                <node concept="AH0OO" id="7HUwyZb7b8e" role="37vLTJ">
                  <node concept="37vLTw" id="7HUwyZb7b8f" role="AHEQo">
                    <ref role="3cqZAo" node="7HUwyZb7b8h" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="7HUwyZb7b8g" role="AHHXb">
                    <ref role="3cqZAo" node="7HUwyZb7b7S" resolve="array" />
                  </node>
                </node>
                <node concept="1rXfSq" id="7HUwyZbdRag" role="37vLTx">
                  <ref role="37wK5l" node="7HUwyZb7chj" resolve="asVariable" />
                  <node concept="2OqwBi" id="7HUwyZbdRec" role="37wK5m">
                    <node concept="37vLTw" id="7HUwyZbdRce" role="2Oq$k0">
                      <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiMetaLogical" />
                    </node>
                    <node concept="liA8E" id="7HUwyZbdRgZ" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~MultiMetaLogical.logicalAt(int):jetbrains.mps.logic.reactor.logical.MetaLogical" resolve="logicalAt" />
                      <node concept="37vLTw" id="7HUwyZbdRiC" role="37wK5m">
                        <ref role="3cqZAo" node="7HUwyZb7b8h" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7HUwyZb7b8h" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7HUwyZb7b8i" role="1tU5fm" />
            <node concept="3cmrfG" id="7HUwyZb7b8j" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7HUwyZb7b8k" role="1Dwp0S">
            <node concept="37vLTw" id="7HUwyZb7b8l" role="3uHU7B">
              <ref role="3cqZAo" node="7HUwyZb7b8h" resolve="i" />
            </node>
            <node concept="2OqwBi" id="7HUwyZb7b8m" role="3uHU7w">
              <node concept="37vLTw" id="7HUwyZb7b8n" role="2Oq$k0">
                <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiMetaLogical" />
              </node>
              <node concept="liA8E" id="7HUwyZbdR6B" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~MultiMetaLogical.cardinality():int" resolve="cardinality" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="7HUwyZb7b8p" role="1Dwrff">
            <node concept="37vLTw" id="7HUwyZb7b8q" role="2$L3a6">
              <ref role="3cqZAo" node="7HUwyZb7b8h" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZb7b8s" role="3cqZAp">
          <node concept="37vLTw" id="7HUwyZb7b8t" role="3clFbG">
            <ref role="3cqZAo" node="7HUwyZb7b7S" resolve="array" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZb7clq" role="jymVt" />
    <node concept="2YIFZL" id="7HUwyZb7chj" role="jymVt">
      <property role="TrG5h" value="asVariable" />
      <node concept="37vLTG" id="7HUwyZb7chk" role="3clF46">
        <property role="TrG5h" value="metaLogical" />
        <node concept="3uibUv" id="7HUwyZb7chm" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3qTvmN" id="4TCblo5YIjG" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="kTK1BeAdVX" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="7HUwyZb7chp" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZb7chq" role="3clF47">
        <node concept="3clFbF" id="7HUwyZbdQz9" role="3cqZAp">
          <node concept="2ShNRf" id="7HUwyZbdQz7" role="3clFbG">
            <node concept="1pGfFk" id="7HUwyZbdQMO" role="2ShVmc">
              <ref role="37wK5l" to="oy3s:7HUwyZbdNAd" resolve="MetaLogicalDataForm" />
              <node concept="37vLTw" id="7HUwyZbdQO9" role="37wK5m">
                <ref role="3cqZAo" node="7HUwyZb7chk" resolve="metaLogical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5YI1R" role="jymVt" />
    <node concept="2YIFZL" id="4TCblo5YI1H" role="jymVt">
      <property role="TrG5h" value="asVariable" />
      <node concept="37vLTG" id="4TCblo5YI1I" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="4TCblo5YI1J" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="16syzq" id="4TCblo5YIOD" role="11_B2D">
            <ref role="16sUi3" node="4TCblo5YIIG" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="kTK1BeAeTc" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="4TCblo5YI1L" role="1B3o_S" />
      <node concept="3clFbS" id="4TCblo5YI1M" role="3clF47">
        <node concept="3clFbF" id="4TCblo5YITN" role="3cqZAp">
          <node concept="2ShNRf" id="4TCblo5YITJ" role="3clFbG">
            <node concept="1pGfFk" id="4TCblo5YJa3" role="2ShVmc">
              <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalDataForm" />
              <node concept="37vLTw" id="4TCblo5YJCY" role="37wK5m">
                <ref role="3cqZAo" node="4TCblo5YI1I" resolve="logical" />
              </node>
              <node concept="16syzq" id="4TCblo5YJyT" role="1pMfVU">
                <ref role="16sUi3" node="4TCblo5YIIG" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="4TCblo5YIIG" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="4TCblo5YJ_1" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="677NV565VBQ" role="jymVt" />
    <node concept="2YIFZL" id="4TCblo5NqWF" role="jymVt">
      <property role="TrG5h" value="instantiateMetaLogicals" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4TCblo5NkoL" role="3clF47">
        <node concept="3clFbF" id="4TCblo5NkJr" role="3cqZAp">
          <node concept="2OqwBi" id="4TCblo5Nl4W" role="3clFbG">
            <node concept="2YIFZM" id="4TCblo5NkK4" role="2Oq$k0">
              <ref role="37wK5l" to="6exd:5s497VqteR6" resolve="mapper" />
              <ref role="1Pybhc" to="6exd:3OPtF02T8yx" resolve="Mappers" />
              <node concept="2ShNRf" id="4TCblo5NkKU" role="37wK5m">
                <node concept="1pGfFk" id="4TCblo5Nl1t" role="2ShVmc">
                  <ref role="37wK5l" node="4TCblo5MHYk" resolve="LogicalUtil.InstantiateDelegate" />
                  <node concept="37vLTw" id="4TCblo5Nl3R" role="37wK5m">
                    <ref role="3cqZAo" node="4TCblo5NkwR" resolve="logicalContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4TCblo5Nl7d" role="2OqNvi">
              <ref role="37wK5l" to="6exd:3OPtF02TgQt" resolve="map" />
              <node concept="37vLTw" id="4TCblo5Nl9o" role="37wK5m">
                <ref role="3cqZAo" node="4TCblo5NkAJ" resolve="tf" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4TCblo5NkAJ" role="3clF46">
        <property role="TrG5h" value="tf" />
        <node concept="3uibUv" id="4TCblo5NkFx" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
      </node>
      <node concept="37vLTG" id="4TCblo5NkwR" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="4TCblo5Nk_K" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3uibUv" id="4TCblo5Nlai" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
      </node>
      <node concept="3Tm1VV" id="4TCblo5NkoK" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4TCblo5Nkhd" role="jymVt" />
    <node concept="312cEu" id="4TCblo5MG7R" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="InstantiateDelegate" />
      <node concept="2tJIrI" id="4TCblo5MHSq" role="jymVt" />
      <node concept="3clFbW" id="4TCblo5MHYk" role="jymVt">
        <node concept="3cqZAl" id="4TCblo5MHYm" role="3clF45" />
        <node concept="3Tm6S6" id="4TCblo5MHYn" role="1B3o_S" />
        <node concept="3clFbS" id="4TCblo5MHYo" role="3clF47">
          <node concept="3clFbF" id="4TCblo5MI7v" role="3cqZAp">
            <node concept="37vLTI" id="4TCblo5MI7x" role="3clFbG">
              <node concept="2OqwBi" id="4TCblo5MI7_" role="37vLTJ">
                <node concept="Xjq3P" id="4TCblo5MI7C" role="2Oq$k0" />
                <node concept="2OwXpG" id="4TCblo5MI7$" role="2OqNvi">
                  <ref role="2Oxat5" node="4TCblo5MI7r" resolve="logicalContext" />
                </node>
              </node>
              <node concept="37vLTw" id="4TCblo5MI7D" role="37vLTx">
                <ref role="3cqZAo" node="4TCblo5MI32" resolve="logicalContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4TCblo5MI32" role="3clF46">
          <property role="TrG5h" value="logicalContext" />
          <node concept="3uibUv" id="4TCblo5MI31" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4TCblo5MHTP" role="jymVt" />
      <node concept="3Tm6S6" id="4TCblo5MG2k" role="1B3o_S" />
      <node concept="3uibUv" id="4TCblo5MGIz" role="EKbjA">
        <ref role="3uigEE" to="6exd:3OPtF031GQe" resolve="Mappers.MapDelegate" />
      </node>
      <node concept="3clFb_" id="6HT7BWBPa9I" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="canMap" />
        <node concept="37vLTG" id="6HT7BWBPa9J" role="3clF46">
          <property role="TrG5h" value="tf" />
          <node concept="3uibUv" id="6HT7BWBPa9K" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="10P_77" id="6HT7BWBPa9L" role="3clF45" />
        <node concept="3Tm1VV" id="6HT7BWBPa9M" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBPa9N" role="3clF47">
          <node concept="3clFbF" id="5BGv8yzxlPR" role="3cqZAp">
            <node concept="3eOSWO" id="5BGv8yzxmvm" role="3clFbG">
              <node concept="3cmrfG" id="5BGv8yzxmwO" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="5BGv8yzxm1a" role="3uHU7B">
                <node concept="37vLTw" id="5BGv8yzxlPP" role="2Oq$k0">
                  <ref role="3cqZAo" node="6HT7BWBPa9J" resolve="tf" />
                </node>
                <node concept="liA8E" id="5BGv8yzxmhs" role="2OqNvi">
                  <ref role="37wK5l" to="6exd:5BGv8yzvvIZ" resolve="variablesCount" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4TCblo5MIEy" role="jymVt" />
      <node concept="3clFb_" id="6HT7BWBPa9O" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="6HT7BWBPa9P" role="3clF46">
          <property role="TrG5h" value="tf" />
          <node concept="3uibUv" id="6HT7BWBPa9Q" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="37vLTG" id="6HT7BWBPa9R" role="3clF46">
          <property role="TrG5h" value="fallback" />
          <node concept="3uibUv" id="6HT7BWBPa9S" role="1tU5fm">
            <ref role="3uigEE" to="6exd:3OPtF02TdNT" resolve="DataForm.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="6HT7BWBPa9T" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBPa9U" role="3clF45">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
        <node concept="3clFbS" id="6HT7BWBPa9V" role="3clF47">
          <node concept="3clFbJ" id="5BGv8yzxmXQ" role="3cqZAp">
            <node concept="3clFbS" id="5BGv8yzxmXS" role="3clFbx">
              <node concept="3cpWs6" id="5BGv8yzxnrb" role="3cqZAp">
                <node concept="2ShNRf" id="4TCblo5Pq8Z" role="3cqZAk">
                  <node concept="1pGfFk" id="4TCblo5PqjT" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalDataForm" />
                    <node concept="2OqwBi" id="4TCblo5PabD" role="37wK5m">
                      <node concept="37vLTw" id="4TCblo5PabE" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TCblo5MI7r" resolve="logicalContext" />
                      </node>
                      <node concept="liA8E" id="4TCblo5PabF" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical):jetbrains.mps.logic.reactor.logical.Logical" resolve="variable" />
                        <node concept="2OqwBi" id="4TCblo5PabG" role="37wK5m">
                          <node concept="1eOMI4" id="4TCblo5PabH" role="2Oq$k0">
                            <node concept="10QFUN" id="4TCblo5PabI" role="1eOMHV">
                              <node concept="37vLTw" id="4TCblo5PabJ" role="10QFUP">
                                <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
                              </node>
                              <node concept="3uibUv" id="4TCblo5PabK" role="10QFUM">
                                <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalDataForm" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4TCblo5PabL" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:514BAS_Xsp_" resolve="metaLogical" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5BGv8yzxoz$" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="4TCblo5MCk$" role="3clFbw">
              <node concept="3uibUv" id="4TCblo5MCof" role="2ZW6by">
                <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalDataForm" />
              </node>
              <node concept="37vLTw" id="bUIfhjJCGB" role="2ZW6bz">
                <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
              </node>
            </node>
            <node concept="9aQIb" id="5BGv8yzxoqo" role="9aQIa">
              <node concept="3clFbS" id="5BGv8yzxoqp" role="9aQI4">
                <node concept="3cpWs6" id="5BGv8yzxpdJ" role="3cqZAp">
                  <node concept="2OqwBi" id="5BGv8yzxl7m" role="3cqZAk">
                    <node concept="37vLTw" id="5BGv8yzxkWc" role="2Oq$k0">
                      <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
                    </node>
                    <node concept="liA8E" id="5BGv8yzxlnb" role="2OqNvi">
                      <ref role="37wK5l" to="6exd:3OPtF02Tjpr" resolve="mapRecursively" />
                      <node concept="37vLTw" id="5BGv8yzxlyp" role="37wK5m">
                        <ref role="3cqZAo" node="6HT7BWBPa9R" resolve="fallback" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4TCblo5MI$W" role="jymVt" />
      <node concept="312cEg" id="4TCblo5MI7r" role="jymVt">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3Tm6S6" id="4TCblo5MI7s" role="1B3o_S" />
        <node concept="3uibUv" id="4TCblo5MI7u" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5NlYH" role="jymVt" />
    <node concept="3Tm1VV" id="677NV565N1y" role="1B3o_S" />
  </node>
</model>

