<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7cfc11bd-0eab-44f3-9a01-2ee2a709c6d3(jetbrains.mps.jchr.patch)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="i827" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler.options(jetbrains.mps.jchr.runtime/)" />
    <import index="ejqo" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:util.exceptions(jetbrains.mps.jchr.runtime/)" />
    <import index="562q" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:util(jetbrains.mps.jchr.runtime/)" />
    <import index="210f" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler(jetbrains.mps.jchr.runtime/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="v2jt" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:util.collections(jetbrains.mps.jchr.runtime/)" />
    <import index="j58b" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler.CHRIntermediateForm(jetbrains.mps.jchr.runtime/)" />
    <import index="8ci3" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler.analysis(jetbrains.mps.jchr.runtime/)" />
    <import index="b504" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler.codeGeneration(jetbrains.mps.jchr.runtime/)" />
    <import index="wz7y" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler.parser(jetbrains.mps.jchr.runtime/)" />
    <import index="ayug" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler.CHRIntermediateForm.builder(jetbrains.mps.jchr.runtime/)" />
    <import index="32r3" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:util.builder(jetbrains.mps.jchr.runtime/)" />
    <import index="9emy" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler.CHRIntermediateForm.constraints.ud(jetbrains.mps.jchr.runtime/)" />
    <import index="r4xa" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler.CHRIntermediateForm.id(jetbrains.mps.jchr.runtime/)" />
    <import index="ucuv" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:compiler.CHRIntermediateForm.exceptions(jetbrains.mps.jchr.runtime/)" />
    <import index="w50i" ref="r:4705c47f-1f99-4034-8b4c-899c3c0ef2b5(compiler.codeGeneration)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
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
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2ev$9JFs8IP">
    <property role="TrG5h" value="CompilerMain" />
    <node concept="2tJIrI" id="2ev$9JFs8IZ" role="jymVt" />
    <node concept="2YIFZL" id="2ev$9JFs8Jh" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="2ev$9JFs8Ji" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="false" />
        <node concept="8X2XB" id="2ev$9JFs8Jk" role="1tU5fm">
          <node concept="3uibUv" id="2ev$9JFs8Jj" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2ev$9JFs8Jl" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="2ev$9JFs8Jm" role="3clF47">
        <node concept="3cpWs8" id="2ev$9JFs8Jo" role="3cqZAp">
          <node concept="3cpWsn" id="2ev$9JFs8Jn" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="options" />
            <node concept="3uibUv" id="2ev$9JFsUwa" role="1tU5fm">
              <ref role="3uigEE" to="i827:~Options" resolve="Options" />
            </node>
            <node concept="2ShNRf" id="2ev$9JFt2Oj" role="33vP2m">
              <node concept="1pGfFk" id="2ev$9JFt2Ok" role="2ShVmc">
                <ref role="37wK5l" to="i827:~Options.&lt;init&gt;()" resolve="Options" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ev$9JFs8Js" role="3cqZAp">
          <node concept="3cpWsn" id="2ev$9JFs8Jr" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="compiler" />
            <node concept="3uibUv" id="2ev$9JFt4au" role="1tU5fm">
              <ref role="3uigEE" to="562q:~JavaCompiler" resolve="JavaCompiler" />
            </node>
            <node concept="10Nm6u" id="2ev$9JFs8Ju" role="33vP2m" />
          </node>
        </node>
        <node concept="2GUZhq" id="2ev$9JFs8Nl" role="3cqZAp">
          <node concept="TDmWw" id="2ev$9JFs8Nm" role="TEXxN">
            <node concept="3clFbS" id="2ev$9JFs8Nc" role="TDEfX">
              <node concept="3clFbF" id="2ev$9JFs8Nd" role="3cqZAp">
                <node concept="2OqwBi" id="2ev$9JFs8NC" role="3clFbG">
                  <node concept="10M0yZ" id="2ev$9JFs97C" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  </node>
                  <node concept="liA8E" id="2ev$9JFs8ND" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                    <node concept="2OqwBi" id="2ev$9JFs8NH" role="37wK5m">
                      <node concept="37vLTw" id="2ev$9JFs8NG" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ev$9JFs8N8" resolve="oe" />
                      </node>
                      <node concept="liA8E" id="2ev$9JFs8NI" role="2OqNvi">
                        <ref role="37wK5l" to="ejqo:~Exception.getMessage():java.lang.String" resolve="getMessage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2ev$9JFs8Ng" role="3cqZAp">
                <node concept="2OqwBi" id="2ev$9JFs8NM" role="3clFbG">
                  <node concept="10M0yZ" id="2ev$9JFs97D" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  </node>
                  <node concept="liA8E" id="2ev$9JFs8NN" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println():void" resolve="println" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2ev$9JFs8Ni" role="3cqZAp">
                <node concept="2YIFZM" id="2ev$9JFtEAY" role="3clFbG">
                  <ref role="1Pybhc" to="210f:~Main" resolve="Main" />
                  <ref role="37wK5l" to="210f:~Main.printUsage(compiler.options.Options):void" resolve="printUsage" />
                  <node concept="37vLTw" id="2ev$9JFs8Nk" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="2ev$9JFs8N8" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="oe" />
              <node concept="3uibUv" id="2ev$9JFs8Na" role="1tU5fm">
                <ref role="3uigEE" to="i827:~OptionsException" resolve="OptionsException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2ev$9JFs8N0" role="2GVbov">
            <node concept="3clFbJ" id="2ev$9JFs8N1" role="3cqZAp">
              <node concept="3y3z36" id="2ev$9JFs8N2" role="3clFbw">
                <node concept="37vLTw" id="2ev$9JFs8N3" role="3uHU7B">
                  <ref role="3cqZAo" node="2ev$9JFs8Jr" resolve="compiler" />
                </node>
                <node concept="10Nm6u" id="2ev$9JFs8N4" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="2ev$9JFs8N7" role="3clFbx">
                <node concept="3clFbF" id="2ev$9JFs8N5" role="3cqZAp">
                  <node concept="2OqwBi" id="2ev$9JFs8NR" role="3clFbG">
                    <node concept="37vLTw" id="2ev$9JFs8NQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ev$9JFs8Jr" resolve="compiler" />
                    </node>
                    <node concept="liA8E" id="2ev$9JFs8NS" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~Closeable.close():void" resolve="close" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2ev$9JFs8Jw" role="2GV8ay">
            <node concept="3clFbF" id="2ev$9JFs8Jx" role="3cqZAp">
              <node concept="2OqwBi" id="2ev$9JFs8NW" role="3clFbG">
                <node concept="37vLTw" id="2ev$9JFs8NV" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                </node>
                <node concept="liA8E" id="2ev$9JFs8NX" role="2OqNvi">
                  <ref role="37wK5l" to="i827:~Options.processArguments(java.lang.String...):void" resolve="processArguments" />
                  <node concept="37vLTw" id="2ev$9JFs8Jz" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFs8Ji" resolve="args" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="2ev$9JFs8J$" role="3cqZAp">
              <node concept="1rXfSq" id="2ev$9JFs8MX" role="1DdaDG">
                <ref role="37wK5l" node="2ev$9JFtFrI" resolve="getInputStreams" />
                <node concept="37vLTw" id="2ev$9JFs8MY" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                </node>
              </node>
              <node concept="3cpWsn" id="2ev$9JFs8MU" role="1Duv9x">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="in" />
                <node concept="3uibUv" id="2ev$9JFs8MW" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                </node>
              </node>
              <node concept="3clFbS" id="2ev$9JFs8JA" role="2LFqv$">
                <node concept="SfApY" id="2ev$9JFs8MS" role="3cqZAp">
                  <node concept="TDmWw" id="2ev$9JFs8MT" role="TEbGg">
                    <node concept="3clFbS" id="2ev$9JFs8MN" role="TDEfX">
                      <node concept="3clFbF" id="2ev$9JFs8MO" role="3cqZAp">
                        <node concept="2OqwBi" id="2ev$9JFs8O1" role="3clFbG">
                          <node concept="37vLTw" id="2ev$9JFs8O0" role="2Oq$k0">
                            <ref role="3cqZAo" node="2ev$9JFs8MJ" resolve="x" />
                          </node>
                          <node concept="liA8E" id="2ev$9JFs8O2" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace():void" resolve="printStackTrace" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2ev$9JFs8MQ" role="3cqZAp">
                        <node concept="2OqwBi" id="2ev$9JFs8O6" role="3clFbG">
                          <node concept="10M0yZ" id="2ev$9JFs97E" role="2Oq$k0">
                            <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                            <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                          </node>
                          <node concept="liA8E" id="2ev$9JFs8O7" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~PrintStream.println():void" resolve="println" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="2ev$9JFs8MJ" role="TDEfY">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="x" />
                      <node concept="3uibUv" id="2ev$9JFs8ML" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2ev$9JFs8JC" role="SfCbr">
                    <node concept="3SKdUt" id="2ev$9JFs8Nq" role="3cqZAp">
                      <node concept="3SKdUq" id="2ev$9JFs8Np" role="3SKWNk">
                        <property role="3SKdUp" value="Parse the source file and build the intermediate model" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2ev$9JFs8JE" role="3cqZAp">
                      <node concept="3cpWsn" id="2ev$9JFs8JD" role="3cpWs9">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="l" />
                        <node concept="3cpWsb" id="2ev$9JFs8JF" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2ev$9JFs8JH" role="3cqZAp">
                      <node concept="3cpWsn" id="2ev$9JFs8JG" role="3cpWs9">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="l0" />
                        <node concept="3cpWsb" id="2ev$9JFs8JI" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8JJ" role="3cqZAp">
                      <node concept="37vLTI" id="2ev$9JFs8JK" role="3clFbG">
                        <node concept="37vLTw" id="2ev$9JFs8JL" role="37vLTJ">
                          <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
                        </node>
                        <node concept="1rXfSq" id="2ev$9JFs8JM" role="37vLTx">
                          <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2ev$9JFs8JO" role="3cqZAp">
                      <node concept="3cpWsn" id="2ev$9JFs8JN" role="3cpWs9">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="cif" />
                        <node concept="3uibUv" id="2ev$9JFtU2O" role="1tU5fm">
                          <ref role="3uigEE" to="j58b:~CHRIntermediateForm" resolve="CHRIntermediateForm" />
                        </node>
                        <node concept="2YIFZM" id="2ev$9JFvc9K" role="33vP2m">
                          <ref role="37wK5l" node="2ev$9JFvaBt" resolve="constructCHRIntermediateFrom" />
                          <ref role="1Pybhc" node="2ev$9JFs8IP" resolve="CompilerMain" />
                          <node concept="37vLTw" id="2ev$9JFvc9L" role="37wK5m">
                            <ref role="3cqZAo" node="2ev$9JFs8MU" resolve="in" />
                          </node>
                          <node concept="37vLTw" id="2ev$9JFvc9M" role="37wK5m">
                            <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8JT" role="3cqZAp">
                      <node concept="37vLTI" id="2ev$9JFs8JU" role="3clFbG">
                        <node concept="37vLTw" id="2ev$9JFs8JV" role="37vLTJ">
                          <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                        </node>
                        <node concept="3cpWsd" id="2ev$9JFs8JW" role="37vLTx">
                          <node concept="1rXfSq" id="2ev$9JFs8JX" role="3uHU7B">
                            <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                          </node>
                          <node concept="37vLTw" id="2ev$9JFs8JY" role="3uHU7w">
                            <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8JZ" role="3cqZAp">
                      <node concept="2OqwBi" id="2ev$9JFs8Ob" role="3clFbG">
                        <node concept="10M0yZ" id="2ev$9JFs97F" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="2ev$9JFs8Oc" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.printf(java.lang.String,java.lang.Object...):java.io.PrintStream" resolve="printf" />
                          <node concept="Xl_RD" id="2ev$9JFs8K1" role="37wK5m">
                            <property role="Xl_RC" value="Handler %s read in %s%n" />
                          </node>
                          <node concept="2OqwBi" id="2ev$9JFs8Og" role="37wK5m">
                            <node concept="37vLTw" id="2ev$9JFs8Of" role="2Oq$k0">
                              <ref role="3cqZAo" node="2ev$9JFs8JN" resolve="cif" />
                            </node>
                            <node concept="liA8E" id="2ev$9JFs8Oh" role="2OqNvi">
                              <ref role="37wK5l" to="j58b:~CHRIntermediateForm.getHandlerName():java.lang.String" resolve="getHandlerName" />
                            </node>
                          </node>
                          <node concept="1rXfSq" id="2ev$9JFs8K3" role="37wK5m">
                            <ref role="37wK5l" node="2ev$9JFtswg" resolve="nano2secs" />
                            <node concept="37vLTw" id="2ev$9JFs8K4" role="37wK5m">
                              <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="2ev$9JFs8Ns" role="3cqZAp">
                      <node concept="3SKdUq" id="2ev$9JFs8Nr" role="3SKWNk">
                        <property role="3SKdUp" value="Command line arguments override those specified in the source" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8K5" role="3cqZAp">
                      <node concept="2OqwBi" id="2ev$9JFs8Ol" role="3clFbG">
                        <node concept="37vLTw" id="2ev$9JFs8Ok" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                        </node>
                        <node concept="liA8E" id="2ev$9JFs8Om" role="2OqNvi">
                          <ref role="37wK5l" to="i827:~Options.processOptionsIgnoringArguments(java.lang.String...):void" resolve="processOptionsIgnoringArguments" />
                          <node concept="37vLTw" id="2ev$9JFs8K7" role="37wK5m">
                            <ref role="3cqZAo" node="2ev$9JFs8Ji" resolve="args" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8K8" role="3cqZAp">
                      <node concept="2OqwBi" id="2ev$9JFs8Oq" role="3clFbG">
                        <node concept="10M0yZ" id="2ev$9JFs97G" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="2ev$9JFs8Or" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println():void" resolve="println" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="2ev$9JFs8Nu" role="3cqZAp">
                      <node concept="3SKdUq" id="2ev$9JFs8Nt" role="3SKWNk">
                        <property role="3SKdUp" value="Optimise through static analysis" />
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2ev$9JFs8Ka" role="3cqZAp">
                      <node concept="3fqX7Q" id="2ev$9JFs8Kb" role="3clFbw">
                        <node concept="2OqwBi" id="2ev$9JFs8Ov" role="3fr31v">
                          <node concept="37vLTw" id="2ev$9JFs8Ou" role="2Oq$k0">
                            <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                          </node>
                          <node concept="liA8E" id="2ev$9JFs8Ow" role="2OqNvi">
                            <ref role="37wK5l" to="i827:~Options.performAnalysis():boolean" resolve="performAnalysis" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="2ev$9JFs8Ki" role="9aQIa">
                        <node concept="3clFbS" id="2ev$9JFs8Kj" role="9aQI4">
                          <node concept="3clFbF" id="2ev$9JFs8Kk" role="3cqZAp">
                            <node concept="2OqwBi" id="2ev$9JFs8O$" role="3clFbG">
                              <node concept="10M0yZ" id="2ev$9JFs97H" role="2Oq$k0">
                                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                              </node>
                              <node concept="liA8E" id="2ev$9JFs8O_" role="2OqNvi">
                                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                                <node concept="Xl_RD" id="2ev$9JFs8Km" role="37wK5m">
                                  <property role="Xl_RC" value="Performing static analysis..." />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2ev$9JFs8Kn" role="3cqZAp">
                            <node concept="37vLTI" id="2ev$9JFs8Ko" role="3clFbG">
                              <node concept="37vLTw" id="2ev$9JFs8Kp" role="37vLTJ">
                                <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                              </node>
                              <node concept="1rXfSq" id="2ev$9JFs8Kq" role="37vLTx">
                                <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2ev$9JFs8Kr" role="3cqZAp">
                            <node concept="2YIFZM" id="2ev$9JFtZM0" role="3clFbG">
                              <ref role="1Pybhc" to="8ci3:~Analysis" resolve="Analysis" />
                              <ref role="37wK5l" to="8ci3:~Analysis.analyse(compiler.CHRIntermediateForm.CHRIntermediateForm,compiler.options.Options):void" resolve="analyse" />
                              <node concept="37vLTw" id="2ev$9JFs8Kt" role="37wK5m">
                                <ref role="3cqZAo" node="2ev$9JFs8JN" resolve="cif" />
                              </node>
                              <node concept="37vLTw" id="2ev$9JFs8Ku" role="37wK5m">
                                <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2ev$9JFs8Kv" role="3cqZAp">
                            <node concept="37vLTI" id="2ev$9JFs8Kw" role="3clFbG">
                              <node concept="37vLTw" id="2ev$9JFs8Kx" role="37vLTJ">
                                <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                              </node>
                              <node concept="3cpWsd" id="2ev$9JFs8Ky" role="37vLTx">
                                <node concept="1rXfSq" id="2ev$9JFs8Kz" role="3uHU7B">
                                  <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                                </node>
                                <node concept="37vLTw" id="2ev$9JFs8K$" role="3uHU7w">
                                  <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2ev$9JFs8K_" role="3cqZAp">
                            <node concept="2OqwBi" id="2ev$9JFs8OF" role="3clFbG">
                              <node concept="10M0yZ" id="2ev$9JFs97I" role="2Oq$k0">
                                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                              </node>
                              <node concept="liA8E" id="2ev$9JFs8OG" role="2OqNvi">
                                <ref role="37wK5l" to="guwi:~PrintStream.printf(java.lang.String,java.lang.Object...):java.io.PrintStream" resolve="printf" />
                                <node concept="Xl_RD" id="2ev$9JFs8KB" role="37wK5m">
                                  <property role="Xl_RC" value="Analysis terminated (%s)%n" />
                                </node>
                                <node concept="1rXfSq" id="2ev$9JFs8KC" role="37wK5m">
                                  <ref role="37wK5l" node="2ev$9JFtswg" resolve="nano2secs" />
                                  <node concept="37vLTw" id="2ev$9JFs8KD" role="37wK5m">
                                    <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2ev$9JFs8Ke" role="3clFbx">
                        <node concept="3clFbF" id="2ev$9JFs8Kf" role="3cqZAp">
                          <node concept="2OqwBi" id="2ev$9JFs8OK" role="3clFbG">
                            <node concept="10M0yZ" id="2ev$9JFs97J" role="2Oq$k0">
                              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                            </node>
                            <node concept="liA8E" id="2ev$9JFs8OL" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                              <node concept="Xl_RD" id="2ev$9JFs8Kh" role="37wK5m">
                                <property role="Xl_RC" value="Skipping static analysis" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8KE" role="3cqZAp">
                      <node concept="2OqwBi" id="2ev$9JFs8OP" role="3clFbG">
                        <node concept="10M0yZ" id="2ev$9JFs97K" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="2ev$9JFs8OQ" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println():void" resolve="println" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="2ev$9JFs8Nw" role="3cqZAp">
                      <node concept="3SKdUq" id="2ev$9JFs8Nv" role="3SKWNk">
                        <property role="3SKdUp" value="Generate the java files" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8KG" role="3cqZAp">
                      <node concept="37vLTI" id="2ev$9JFs8KH" role="3clFbG">
                        <node concept="37vLTw" id="2ev$9JFs8KI" role="37vLTJ">
                          <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                        </node>
                        <node concept="1rXfSq" id="2ev$9JFs8KJ" role="37vLTx">
                          <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="2ev$9JFs8Ny" role="3cqZAp">
                      <node concept="3SKdUq" id="2ev$9JFs8Nx" role="3SKWNk">
                        <property role="3SKdUp" value="File[] generatedFiles = CodeGenerator.generateAllSourceFiles(cif);" />
                      </node>
                    </node>
                    <node concept="1X3_iC" id="3U_KxQf9aA3" role="lGtFl">
                      <property role="3V$3am" value="statement" />
                      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                      <node concept="3cpWs8" id="2ev$9JFs8KL" role="8Wnug">
                        <node concept="3cpWsn" id="2ev$9JFs8KK" role="3cpWs9">
                          <property role="3TUv4t" value="false" />
                          <property role="TrG5h" value="generatedFiles" />
                          <node concept="10Q1$e" id="2ev$9JFs8KN" role="1tU5fm">
                            <node concept="3uibUv" id="2ev$9JFs8KM" role="10Q1$1">
                              <ref role="3uigEE" to="guwi:~File" resolve="File" />
                            </node>
                          </node>
                          <node concept="2YIFZM" id="2ev$9JFu4fc" role="33vP2m">
                            <ref role="1Pybhc" to="b504:~CodeGeneration" resolve="CodeGeneration" />
                            <ref role="37wK5l" to="b504:~CodeGeneration.generateAllSourceFiles(compiler.CHRIntermediateForm.ICHRIntermediateForm,compiler.options.Options):java.io.File[]" resolve="generateAllSourceFiles" />
                            <node concept="37vLTw" id="2ev$9JFs8KP" role="37wK5m">
                              <ref role="3cqZAo" node="2ev$9JFs8JN" resolve="cif" />
                            </node>
                            <node concept="37vLTw" id="2ev$9JFs8KQ" role="37wK5m">
                              <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="41ox5Vnb_cj" role="3cqZAp">
                      <node concept="3SKdUq" id="41ox5Vnb_Fp" role="3SKWNk">
                        <property role="3SKdUp" value="use the patched method which skips generation of tuple classes" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="41ox5Vna92g" role="3cqZAp">
                      <node concept="3cpWsn" id="41ox5Vna92h" role="3cpWs9">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="generatedFiles" />
                        <node concept="10Q1$e" id="41ox5Vna92i" role="1tU5fm">
                          <node concept="3uibUv" id="41ox5Vna92j" role="10Q1$1">
                            <ref role="3uigEE" to="guwi:~File" resolve="File" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="41ox5Vna92k" role="33vP2m">
                          <ref role="1Pybhc" to="w50i:41ox5Vn8Mb4" resolve="CodeGeneration2" />
                          <ref role="37wK5l" to="w50i:41ox5Vn8Mb_" resolve="generateAllSourceFiles" />
                          <node concept="37vLTw" id="41ox5Vna92l" role="37wK5m">
                            <ref role="3cqZAo" node="2ev$9JFs8JN" resolve="cif" />
                          </node>
                          <node concept="37vLTw" id="41ox5Vna92m" role="37wK5m">
                            <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8KR" role="3cqZAp">
                      <node concept="37vLTI" id="2ev$9JFs8KS" role="3clFbG">
                        <node concept="37vLTw" id="2ev$9JFs8KT" role="37vLTJ">
                          <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                        </node>
                        <node concept="3cpWsd" id="2ev$9JFs8KU" role="37vLTx">
                          <node concept="1rXfSq" id="2ev$9JFs8KV" role="3uHU7B">
                            <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                          </node>
                          <node concept="37vLTw" id="2ev$9JFs8KW" role="3uHU7w">
                            <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8KX" role="3cqZAp">
                      <node concept="2OqwBi" id="2ev$9JFs8OW" role="3clFbG">
                        <node concept="10M0yZ" id="2ev$9JFs97L" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="2ev$9JFs8OX" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.printf(java.lang.String,java.lang.Object...):java.io.PrintStream" resolve="printf" />
                          <node concept="Xl_RD" id="2ev$9JFs8KZ" role="37wK5m">
                            <property role="Xl_RC" value="Code generation took %s%n" />
                          </node>
                          <node concept="1rXfSq" id="2ev$9JFs8L0" role="37wK5m">
                            <ref role="37wK5l" node="2ev$9JFtswg" resolve="nano2secs" />
                            <node concept="37vLTw" id="2ev$9JFs8L1" role="37wK5m">
                              <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8L2" role="3cqZAp">
                      <node concept="2OqwBi" id="2ev$9JFs8P1" role="3clFbG">
                        <node concept="10M0yZ" id="2ev$9JFs97M" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="2ev$9JFs8P2" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println():void" resolve="println" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="2ev$9JFs8N$" role="3cqZAp">
                      <node concept="3SKdUq" id="2ev$9JFs8Nz" role="3SKWNk">
                        <property role="3SKdUp" value="Compile the generated files" />
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2ev$9JFs8L4" role="3cqZAp">
                      <node concept="2OqwBi" id="2ev$9JFs8L5" role="3clFbw">
                        <node concept="2OqwBi" id="2ev$9JFs8P6" role="2Oq$k0">
                          <node concept="37vLTw" id="2ev$9JFs8P5" role="2Oq$k0">
                            <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                          </node>
                          <node concept="liA8E" id="2ev$9JFs8P7" role="2OqNvi">
                            <ref role="37wK5l" to="i827:~Options.getOutput():compiler.options.Options$Output" resolve="getOutput" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2ev$9JFs8L7" role="2OqNvi">
                          <ref role="37wK5l" to="i827:~Options$Output.generateByteCode():boolean" resolve="generateByteCode" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="2ev$9JFs8Mu" role="9aQIa">
                        <node concept="3clFbS" id="2ev$9JFs8Mv" role="9aQI4">
                          <node concept="3clFbF" id="2ev$9JFs8Mw" role="3cqZAp">
                            <node concept="37vLTI" id="2ev$9JFs8Mx" role="3clFbG">
                              <node concept="37vLTw" id="2ev$9JFs8My" role="37vLTJ">
                                <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
                              </node>
                              <node concept="3cpWsd" id="2ev$9JFs8Mz" role="37vLTx">
                                <node concept="1rXfSq" id="2ev$9JFs8M$" role="3uHU7B">
                                  <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                                </node>
                                <node concept="37vLTw" id="2ev$9JFs8M_" role="3uHU7w">
                                  <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2ev$9JFs8MA" role="3cqZAp">
                            <node concept="2OqwBi" id="2ev$9JFs8Pb" role="3clFbG">
                              <node concept="10M0yZ" id="2ev$9JFs97N" role="2Oq$k0">
                                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                              </node>
                              <node concept="liA8E" id="2ev$9JFs8Pc" role="2OqNvi">
                                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                                <node concept="Xl_RD" id="2ev$9JFs8MC" role="37wK5m">
                                  <property role="Xl_RC" value="Generated java files are not compiled to bytecode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2ev$9JFs8L9" role="3clFbx">
                        <node concept="3clFbJ" id="2ev$9JFs8La" role="3cqZAp">
                          <node concept="3clFbC" id="2ev$9JFs8Lb" role="3clFbw">
                            <node concept="37vLTw" id="2ev$9JFs8Lc" role="3uHU7B">
                              <ref role="3cqZAo" node="2ev$9JFs8Jr" resolve="compiler" />
                            </node>
                            <node concept="10Nm6u" id="2ev$9JFs8Ld" role="3uHU7w" />
                          </node>
                          <node concept="3clFbS" id="2ev$9JFs8Li" role="3clFbx">
                            <node concept="3clFbF" id="2ev$9JFs8Le" role="3cqZAp">
                              <node concept="37vLTI" id="2ev$9JFs8Lf" role="3clFbG">
                                <node concept="37vLTw" id="2ev$9JFs8Lg" role="37vLTJ">
                                  <ref role="3cqZAo" node="2ev$9JFs8Jr" resolve="compiler" />
                                </node>
                                <node concept="2YIFZM" id="2ev$9JFt9sy" role="37vLTx">
                                  <ref role="1Pybhc" to="562q:~JavaCompiler" resolve="JavaCompiler" />
                                  <ref role="37wK5l" to="562q:~JavaCompiler.createInstance():util.JavaCompiler" resolve="createInstance" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="2ev$9JFs8Lj" role="3cqZAp">
                          <node concept="3y3z36" id="2ev$9JFs8Lk" role="3clFbw">
                            <node concept="37vLTw" id="2ev$9JFs8Ll" role="3uHU7B">
                              <ref role="3cqZAo" node="2ev$9JFs8Jr" resolve="compiler" />
                            </node>
                            <node concept="10Nm6u" id="2ev$9JFs8Lm" role="3uHU7w" />
                          </node>
                          <node concept="9aQIb" id="2ev$9JFs8Mj" role="9aQIa">
                            <node concept="3clFbS" id="2ev$9JFs8Mk" role="9aQI4">
                              <node concept="3clFbF" id="2ev$9JFs8Ml" role="3cqZAp">
                                <node concept="37vLTI" id="2ev$9JFs8Mm" role="3clFbG">
                                  <node concept="37vLTw" id="2ev$9JFs8Mn" role="37vLTJ">
                                    <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
                                  </node>
                                  <node concept="3cpWsd" id="2ev$9JFs8Mo" role="37vLTx">
                                    <node concept="1rXfSq" id="2ev$9JFs8Mp" role="3uHU7B">
                                      <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                                    </node>
                                    <node concept="37vLTw" id="2ev$9JFs8Mq" role="3uHU7w">
                                      <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2ev$9JFs8Mr" role="3cqZAp">
                                <node concept="2OqwBi" id="2ev$9JFs8Pi" role="3clFbG">
                                  <node concept="10M0yZ" id="2ev$9JFs97O" role="2Oq$k0">
                                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                  </node>
                                  <node concept="liA8E" id="2ev$9JFs8Pj" role="2OqNvi">
                                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                                    <node concept="Xl_RD" id="2ev$9JFs8Mt" role="37wK5m">
                                      <property role="Xl_RC" value="Generated java files could not be compiled (no compiler found)" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="2ev$9JFs8Lo" role="3clFbx">
                            <node concept="3clFbF" id="2ev$9JFs8Lp" role="3cqZAp">
                              <node concept="2OqwBi" id="2ev$9JFs8Pn" role="3clFbG">
                                <node concept="10M0yZ" id="2ev$9JFs97P" role="2Oq$k0">
                                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                </node>
                                <node concept="liA8E" id="2ev$9JFs8Po" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~PrintStream.printf(java.lang.String,java.lang.Object...):java.io.PrintStream" resolve="printf" />
                                  <node concept="Xl_RD" id="2ev$9JFs8Lr" role="37wK5m">
                                    <property role="Xl_RC" value="Compiling %s generated java files...%n" />
                                  </node>
                                  <node concept="2OqwBi" id="2ev$9JFs8Ps" role="37wK5m">
                                    <node concept="37vLTw" id="2ev$9JFs8Pr" role="2Oq$k0">
                                      <ref role="3cqZAo" node="41ox5Vna92h" resolve="generatedFiles" />
                                    </node>
                                    <node concept="1Rwk04" id="2ev$9JFs97T" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2ev$9JFs8Lt" role="3cqZAp">
                              <node concept="2OqwBi" id="2ev$9JFs8Px" role="3clFbG">
                                <node concept="10M0yZ" id="2ev$9JFs97Q" role="2Oq$k0">
                                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                </node>
                                <node concept="liA8E" id="2ev$9JFs8Py" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                                  <node concept="3cpWs3" id="2ev$9JFs8Lv" role="37wK5m">
                                    <node concept="Xl_RD" id="2ev$9JFs8Lw" role="3uHU7B">
                                      <property role="Xl_RC" value=" --&gt; using " />
                                    </node>
                                    <node concept="37vLTw" id="2ev$9JFs8Lx" role="3uHU7w">
                                      <ref role="3cqZAo" node="2ev$9JFs8Jr" resolve="compiler" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2ev$9JFs8Ly" role="3cqZAp">
                              <node concept="37vLTI" id="2ev$9JFs8Lz" role="3clFbG">
                                <node concept="37vLTw" id="2ev$9JFs8L$" role="37vLTJ">
                                  <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                                </node>
                                <node concept="1rXfSq" id="2ev$9JFs8L_" role="37vLTx">
                                  <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2ev$9JFs8LA" role="3cqZAp">
                              <node concept="2OqwBi" id="2ev$9JFs8PA" role="3clFbG">
                                <node concept="37vLTw" id="2ev$9JFs8P_" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2ev$9JFs8Jr" resolve="compiler" />
                                </node>
                                <node concept="liA8E" id="2ev$9JFs8PB" role="2OqNvi">
                                  <ref role="37wK5l" to="562q:~JavaCompiler.compile(java.io.File...):void" resolve="compile" />
                                  <node concept="37vLTw" id="2ev$9JFs8LC" role="37wK5m">
                                    <ref role="3cqZAo" node="41ox5Vna92h" resolve="generatedFiles" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2ev$9JFs8LD" role="3cqZAp">
                              <node concept="37vLTI" id="2ev$9JFs8LE" role="3clFbG">
                                <node concept="37vLTw" id="2ev$9JFs8LF" role="37vLTJ">
                                  <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                                </node>
                                <node concept="3cpWsd" id="2ev$9JFs8LG" role="37vLTx">
                                  <node concept="1rXfSq" id="2ev$9JFs8LH" role="3uHU7B">
                                    <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                                  </node>
                                  <node concept="37vLTw" id="2ev$9JFs8LI" role="3uHU7w">
                                    <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2ev$9JFs8LJ" role="3cqZAp">
                              <node concept="37vLTI" id="2ev$9JFs8LK" role="3clFbG">
                                <node concept="37vLTw" id="2ev$9JFs8LL" role="37vLTJ">
                                  <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
                                </node>
                                <node concept="3cpWsd" id="2ev$9JFs8LM" role="37vLTx">
                                  <node concept="1rXfSq" id="2ev$9JFs8LN" role="3uHU7B">
                                    <ref role="37wK5l" node="2ev$9JFtk90" resolve="nanoTime" />
                                  </node>
                                  <node concept="37vLTw" id="2ev$9JFs8LO" role="3uHU7w">
                                    <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="2ev$9JFs8LQ" role="3cqZAp">
                              <node concept="3cpWsn" id="2ev$9JFs8LP" role="3cpWs9">
                                <property role="3TUv4t" value="false" />
                                <property role="TrG5h" value="percentage" />
                                <node concept="10P55v" id="2ev$9JFs8LR" role="1tU5fm" />
                                <node concept="17qRlL" id="2ev$9JFs8LS" role="33vP2m">
                                  <node concept="FJ1c_" id="2ev$9JFs8LT" role="3uHU7B">
                                    <node concept="10QFUN" id="2ev$9JFs8LU" role="3uHU7B">
                                      <node concept="37vLTw" id="2ev$9JFs8LV" role="10QFUP">
                                        <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                                      </node>
                                      <node concept="10P55v" id="2ev$9JFs8LW" role="10QFUM" />
                                    </node>
                                    <node concept="37vLTw" id="2ev$9JFs8LX" role="3uHU7w">
                                      <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
                                    </node>
                                  </node>
                                  <node concept="3b6qkQ" id="2ev$9JFs8LY" role="3uHU7w">
                                    <property role="$nhwW" value="100.0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2ev$9JFs8LZ" role="3cqZAp">
                              <node concept="2OqwBi" id="2ev$9JFs8PF" role="3clFbG">
                                <node concept="10M0yZ" id="2ev$9JFs97R" role="2Oq$k0">
                                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                </node>
                                <node concept="liA8E" id="2ev$9JFs8PG" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~PrintStream.printf(java.lang.String,java.lang.Object...):java.io.PrintStream" resolve="printf" />
                                  <node concept="Xl_RD" id="2ev$9JFs8M1" role="37wK5m">
                                    <property role="Xl_RC" value="Compilation took %s (%.0f%% of total time)%n" />
                                  </node>
                                  <node concept="1rXfSq" id="2ev$9JFs8M2" role="37wK5m">
                                    <ref role="37wK5l" node="2ev$9JFtswg" resolve="nano2secs" />
                                    <node concept="37vLTw" id="2ev$9JFs8M3" role="37wK5m">
                                      <ref role="3cqZAo" node="2ev$9JFs8JD" resolve="l" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="2ev$9JFs8M4" role="37wK5m">
                                    <ref role="3cqZAo" node="2ev$9JFs8LP" resolve="percentage" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="2ev$9JFs8M5" role="3cqZAp">
                              <node concept="3fqX7Q" id="2ev$9JFs8M6" role="3clFbw">
                                <node concept="2OqwBi" id="2ev$9JFs8M7" role="3fr31v">
                                  <node concept="2OqwBi" id="2ev$9JFs8PK" role="2Oq$k0">
                                    <node concept="37vLTw" id="2ev$9JFs8PJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2ev$9JFs8Jn" resolve="options" />
                                    </node>
                                    <node concept="liA8E" id="2ev$9JFs8PL" role="2OqNvi">
                                      <ref role="37wK5l" to="i827:~Options.getOutput():compiler.options.Options$Output" resolve="getOutput" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2ev$9JFs8M9" role="2OqNvi">
                                    <ref role="37wK5l" to="i827:~Options$Output.generateSourceCode():boolean" resolve="generateSourceCode" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="2ev$9JFs8Mi" role="3clFbx">
                                <node concept="1DcWWT" id="2ev$9JFs8Ma" role="3cqZAp">
                                  <node concept="37vLTw" id="2ev$9JFs8Mh" role="1DdaDG">
                                    <ref role="3cqZAo" node="41ox5Vna92h" resolve="generatedFiles" />
                                  </node>
                                  <node concept="3cpWsn" id="2ev$9JFs8Me" role="1Duv9x">
                                    <property role="3TUv4t" value="false" />
                                    <property role="TrG5h" value="file" />
                                    <node concept="3uibUv" id="2ev$9JFs8Mg" role="1tU5fm">
                                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="2ev$9JFs8Md" role="2LFqv$">
                                    <node concept="3clFbF" id="2ev$9JFs8Mb" role="3cqZAp">
                                      <node concept="2OqwBi" id="2ev$9JFs8PP" role="3clFbG">
                                        <node concept="37vLTw" id="2ev$9JFs8PO" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2ev$9JFs8Me" resolve="file" />
                                        </node>
                                        <node concept="liA8E" id="2ev$9JFs8PQ" role="2OqNvi">
                                          <ref role="37wK5l" to="guwi:~File.delete():boolean" resolve="delete" />
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
                    </node>
                    <node concept="3clFbF" id="2ev$9JFs8MD" role="3cqZAp">
                      <node concept="2OqwBi" id="2ev$9JFs8PU" role="3clFbG">
                        <node concept="10M0yZ" id="2ev$9JFs97S" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="2ev$9JFs8PV" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.printf(java.lang.String,java.lang.Object...):java.io.PrintStream" resolve="printf" />
                          <node concept="Xl_RD" id="2ev$9JFs8MF" role="37wK5m">
                            <property role="Xl_RC" value="%nCompilation of %s handler completed (%s)%n%n" />
                          </node>
                          <node concept="2OqwBi" id="2ev$9JFs8PZ" role="37wK5m">
                            <node concept="37vLTw" id="2ev$9JFs8PY" role="2Oq$k0">
                              <ref role="3cqZAo" node="2ev$9JFs8JN" resolve="cif" />
                            </node>
                            <node concept="liA8E" id="2ev$9JFs8Q0" role="2OqNvi">
                              <ref role="37wK5l" to="j58b:~CHRIntermediateForm.getHandlerName():java.lang.String" resolve="getHandlerName" />
                            </node>
                          </node>
                          <node concept="1rXfSq" id="2ev$9JFs8MH" role="37wK5m">
                            <ref role="37wK5l" node="2ev$9JFtswg" resolve="nano2secs" />
                            <node concept="37vLTw" id="2ev$9JFs8MI" role="37wK5m">
                              <ref role="3cqZAo" node="2ev$9JFs8JG" resolve="l0" />
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
        </node>
      </node>
      <node concept="3Tm1VV" id="2ev$9JFs8Nn" role="1B3o_S" />
      <node concept="3cqZAl" id="2ev$9JFs8No" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2ev$9JFs8J1" role="jymVt" />
    <node concept="2YIFZL" id="2ev$9JFvaBt" role="jymVt">
      <property role="TrG5h" value="constructCHRIntermediateFrom" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="2ev$9JFvaBu" role="3clF46">
        <property role="TrG5h" value="in" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2ev$9JFvaBv" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
        </node>
      </node>
      <node concept="37vLTG" id="2ev$9JFvaBw" role="3clF46">
        <property role="TrG5h" value="options" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2ev$9JFvaBx" role="1tU5fm">
          <ref role="3uigEE" to="i827:~Options" resolve="Options" />
        </node>
      </node>
      <node concept="3uibUv" id="2ev$9JFvaBy" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="3clFbS" id="2ev$9JFvaBz" role="3clF47">
        <node concept="3cpWs6" id="2ev$9JFvaB$" role="3cqZAp">
          <node concept="1rXfSq" id="2ev$9JFvaB_" role="3cqZAk">
            <ref role="37wK5l" node="2ev$9JFua_T" resolve="constructCHRIntermediateFrom" />
            <node concept="2ShNRf" id="2ev$9JFvaBF" role="37wK5m">
              <node concept="1pGfFk" id="2ev$9JFvaBS" role="2ShVmc">
                <ref role="37wK5l" to="wz7y:~CHRLexer.&lt;init&gt;(java.io.InputStream)" resolve="CHRLexer" />
                <node concept="37vLTw" id="2ev$9JFvaBB" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFvaBu" resolve="in" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2ev$9JFvaBC" role="37wK5m">
              <ref role="3cqZAo" node="2ev$9JFvaBw" resolve="options" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2ev$9JFvaBD" role="1B3o_S" />
      <node concept="3uibUv" id="2ev$9JFvaBE" role="3clF45">
        <ref role="3uigEE" to="j58b:~CHRIntermediateForm" resolve="CHRIntermediateForm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFv8ZX" role="jymVt" />
    <node concept="2YIFZL" id="2ev$9JFua_T" role="jymVt">
      <property role="TrG5h" value="constructCHRIntermediateFrom" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="2ev$9JFua_U" role="3clF46">
        <property role="TrG5h" value="lexer" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2ev$9JFubKb" role="1tU5fm">
          <ref role="3uigEE" to="wz7y:~CHRLexer" resolve="CHRLexer" />
        </node>
      </node>
      <node concept="37vLTG" id="2ev$9JFua_W" role="3clF46">
        <property role="TrG5h" value="options" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2ev$9JFua_X" role="1tU5fm">
          <ref role="3uigEE" to="i827:~Options" resolve="Options" />
        </node>
      </node>
      <node concept="3uibUv" id="2ev$9JFua_Y" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="3clFbS" id="2ev$9JFua_Z" role="3clF47">
        <node concept="SfApY" id="2ev$9JFuaAv" role="3cqZAp">
          <node concept="TDmWw" id="2ev$9JFuaAw" role="TEbGg">
            <node concept="3clFbS" id="2ev$9JFuaAm" role="TDEfX">
              <node concept="YS8fn" id="2ev$9JFuaAu" role="3cqZAp">
                <node concept="3K4zz7" id="2ev$9JFuaAt" role="YScLw">
                  <node concept="1eOMI4" id="2ev$9JFuaAq" role="3K4Cdx">
                    <node concept="3y3z36" id="2ev$9JFuaAn" role="1eOMHV">
                      <node concept="2OqwBi" id="2ev$9JFuaA_" role="3uHU7B">
                        <node concept="37vLTw" id="2ev$9JFuaA$" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ev$9JFuaAi" resolve="be" />
                        </node>
                        <node concept="liA8E" id="2ev$9JFuaAA" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getCause():java.lang.Throwable" resolve="getCause" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="2ev$9JFuaAp" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2ev$9JFuaAD" role="3K4E3e">
                    <node concept="37vLTw" id="2ev$9JFuaAC" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ev$9JFuaAi" resolve="be" />
                    </node>
                    <node concept="liA8E" id="2ev$9JFuaAE" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getCause():java.lang.Throwable" resolve="getCause" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2ev$9JFuaAs" role="3K4GZi">
                    <ref role="3cqZAo" node="2ev$9JFuaAi" resolve="be" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="2ev$9JFuaAi" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="be" />
              <node concept="3uibUv" id="2ev$9JFuiKs" role="1tU5fm">
                <ref role="3uigEE" to="32r3:~BuilderException" resolve="BuilderException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2ev$9JFuaA1" role="SfCbr">
            <node concept="3cpWs8" id="2ev$9JFuaA3" role="3cqZAp">
              <node concept="3cpWsn" id="2ev$9JFuaA2" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="2ev$9JFufcN" role="1tU5fm">
                  <ref role="3uigEE" to="ayug:~CHRIntermediateFormBuilder" resolve="CHRIntermediateFormBuilder" />
                </node>
                <node concept="2ShNRf" id="2ev$9JFuiCU" role="33vP2m">
                  <node concept="YeOm9" id="2ev$9JFul8O" role="2ShVmc">
                    <node concept="1Y3b0j" id="2ev$9JFul8R" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="ayug:~CHRIntermediateFormBuilder" resolve="CHRIntermediateFormBuilder" />
                      <ref role="37wK5l" to="ayug:~CHRIntermediateFormBuilder.&lt;init&gt;(compiler.options.Options)" resolve="CHRIntermediateFormBuilder" />
                      <node concept="3Tm1VV" id="2ev$9JFul8S" role="1B3o_S" />
                      <node concept="37vLTw" id="2ev$9JFuaA6" role="37wK5m">
                        <ref role="3cqZAo" node="2ev$9JFua_W" resolve="options" />
                      </node>
                      <node concept="2tJIrI" id="2ev$9JFuo9c" role="jymVt" />
                      <node concept="3clFb_" id="2ev$9JFunw1" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="buildConstraintArgumentName" />
                        <property role="DiZV1" value="false" />
                        <property role="IEkAT" value="false" />
                        <node concept="3Tm1VV" id="2ev$9JFunw2" role="1B3o_S" />
                        <node concept="3cqZAl" id="2ev$9JFunw4" role="3clF45" />
                        <node concept="37vLTG" id="2ev$9JFunw5" role="3clF46">
                          <property role="TrG5h" value="name" />
                          <node concept="3uibUv" id="2ev$9JFunw6" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="2ev$9JFunw7" role="Sfmx6">
                          <ref role="3uigEE" to="32r3:~BuilderException" resolve="BuilderException" />
                        </node>
                        <node concept="3clFbS" id="2ev$9JFunw9" role="3clF47">
                          <node concept="SfApY" id="2ev$9JFupez" role="3cqZAp">
                            <node concept="TDmWw" id="2ev$9JFupe$" role="TEbGg">
                              <node concept="3clFbS" id="2ev$9JFupel" role="TDEfX">
                                <node concept="YS8fn" id="2ev$9JFupeo" role="3cqZAp">
                                  <node concept="2ShNRf" id="2ev$9JFupeB" role="YScLw">
                                    <node concept="1pGfFk" id="2ev$9JFupeW" role="2ShVmc">
                                      <ref role="37wK5l" to="32r3:~BuilderException.&lt;init&gt;(java.lang.Throwable)" resolve="BuilderException" />
                                      <node concept="37vLTw" id="2ev$9JFupen" role="37wK5m">
                                        <ref role="3cqZAo" node="2ev$9JFupeb" resolve="iie" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWsn" id="2ev$9JFupeb" role="TDEfY">
                                <property role="3TUv4t" value="false" />
                                <property role="TrG5h" value="iie" />
                                <node concept="3uibUv" id="2ev$9JFuDgX" role="1tU5fm">
                                  <ref role="3uigEE" to="ucuv:~IllegalIdentifierException" resolve="IllegalIdentifierException" />
                                </node>
                              </node>
                            </node>
                            <node concept="TDmWw" id="2ev$9JFupe_" role="TEbGg">
                              <node concept="3clFbS" id="2ev$9JFupeq" role="TDEfX">
                                <node concept="YS8fn" id="2ev$9JFupet" role="3cqZAp">
                                  <node concept="2ShNRf" id="2ev$9JFupeX" role="YScLw">
                                    <node concept="1pGfFk" id="2ev$9JFupfi" role="2ShVmc">
                                      <ref role="37wK5l" to="32r3:~BuilderException.&lt;init&gt;(java.lang.Throwable)" resolve="BuilderException" />
                                      <node concept="37vLTw" id="2ev$9JFupes" role="37wK5m">
                                        <ref role="3cqZAo" node="2ev$9JFupee" resolve="ise" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWsn" id="2ev$9JFupee" role="TDEfY">
                                <property role="3TUv4t" value="false" />
                                <property role="TrG5h" value="ise" />
                                <node concept="3uibUv" id="2ev$9JFuNXm" role="1tU5fm">
                                  <ref role="3uigEE" to="ejqo:~IllegalStateException" resolve="IllegalStateException" />
                                </node>
                              </node>
                            </node>
                            <node concept="TDmWw" id="2ev$9JFupeA" role="TEbGg">
                              <node concept="3clFbS" id="2ev$9JFupev" role="TDEfX">
                                <node concept="YS8fn" id="2ev$9JFupey" role="3cqZAp">
                                  <node concept="2ShNRf" id="2ev$9JFupfj" role="YScLw">
                                    <node concept="1pGfFk" id="2ev$9JFupfC" role="2ShVmc">
                                      <ref role="37wK5l" to="32r3:~BuilderException.&lt;init&gt;(java.lang.Throwable)" resolve="BuilderException" />
                                      <node concept="37vLTw" id="2ev$9JFupex" role="37wK5m">
                                        <ref role="3cqZAo" node="2ev$9JFupeh" resolve="die" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWsn" id="2ev$9JFupeh" role="TDEfY">
                                <property role="3TUv4t" value="false" />
                                <property role="TrG5h" value="die" />
                                <node concept="3uibUv" id="2ev$9JFupej" role="1tU5fm">
                                  <ref role="3uigEE" to="ucuv:~DuplicateIdentifierException" resolve="DuplicateIdentifierException" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="2ev$9JFupdG" role="SfCbr">
                              <node concept="3cpWs8" id="2ev$9JFupdI" role="3cqZAp">
                                <node concept="3cpWsn" id="2ev$9JFupdH" role="3cpWs9">
                                  <property role="3TUv4t" value="true" />
                                  <property role="TrG5h" value="current" />
                                  <node concept="3uibUv" id="2ev$9JFuupL" role="1tU5fm">
                                    <ref role="3uigEE" to="9emy:~UserDefinedConstraint" resolve="UserDefinedConstraint" />
                                  </node>
                                  <node concept="2OqwBi" id="2ev$9JFupgw" role="33vP2m">
                                    <node concept="37vLTw" id="2ev$9JFupgv" role="2Oq$k0">
                                      <ref role="3cqZAo" to="ayug:~CHRIntermediateFormBuilder.currentUdConstraint" resolve="currentUdConstraint" />
                                    </node>
                                    <node concept="liA8E" id="2ev$9JFupgx" role="2OqNvi">
                                      <ref role="37wK5l" to="32r3:~Current.get():java.lang.Object" resolve="get" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="2ev$9JFupdL" role="3cqZAp">
                                <node concept="3clFbC" id="2ev$9JFupdM" role="3clFbw">
                                  <node concept="37vLTw" id="2ev$9JFupdN" role="3uHU7B">
                                    <ref role="3cqZAo" node="2ev$9JFunw5" resolve="name" />
                                  </node>
                                  <node concept="10Nm6u" id="2ev$9JFupdO" role="3uHU7w" />
                                </node>
                                <node concept="3clFbF" id="2ev$9JFupe2" role="9aQIa">
                                  <node concept="2YIFZM" id="2ev$9JFuCYM" role="3clFbG">
                                    <ref role="1Pybhc" to="r4xa:~Identifier" resolve="Identifier" />
                                    <ref role="37wK5l" to="r4xa:~Identifier.testUdSimpleIdentifier(java.lang.String,boolean):void" resolve="testUdSimpleIdentifier" />
                                    <node concept="37vLTw" id="2ev$9JFupe4" role="37wK5m">
                                      <ref role="3cqZAo" node="2ev$9JFunw5" resolve="name" />
                                    </node>
                                    <node concept="3clFbT" id="2ev$9JFupe5" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="2ev$9JFupe6" role="3clFbx">
                                  <node concept="3clFbF" id="2ev$9JFupdP" role="3cqZAp">
                                    <node concept="37vLTI" id="2ev$9JFupdQ" role="3clFbG">
                                      <node concept="37vLTw" id="2ev$9JFupdR" role="37vLTJ">
                                        <ref role="3cqZAo" node="2ev$9JFunw5" resolve="name" />
                                      </node>
                                      <node concept="2OqwBi" id="2ev$9JFupdS" role="37vLTx">
                                        <node concept="2OqwBi" id="2ev$9JFupdT" role="2Oq$k0">
                                          <node concept="2OqwBi" id="2ev$9JFupdU" role="2Oq$k0">
                                            <node concept="2ShNRf" id="2ev$9JFupho" role="2Oq$k0">
                                              <node concept="1pGfFk" id="2ev$9JFuphH" role="2ShVmc">
                                                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(int)" resolve="StringBuilder" />
                                                <node concept="3cmrfG" id="2ev$9JFupdW" role="37wK5m">
                                                  <property role="3cmrfH" value="8" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="2ev$9JFupdX" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                              <node concept="Xl_RD" id="2ev$9JFvlf0" role="37wK5m">
                                                <property role="Xl_RC" value="$param" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="2ev$9JFupdZ" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(int):java.lang.StringBuilder" resolve="append" />
                                            <node concept="2OqwBi" id="2ev$9JFupi_" role="37wK5m">
                                              <node concept="37vLTw" id="2ev$9JFupi$" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2ev$9JFupdH" resolve="current" />
                                              </node>
                                              <node concept="liA8E" id="2ev$9JFupiA" role="2OqNvi">
                                                <ref role="37wK5l" to="9emy:~UserDefinedConstraint.getArity():int" resolve="getArity" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="2ev$9JFupe1" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2ev$9JFupe7" role="3cqZAp">
                                <node concept="2OqwBi" id="2ev$9JFupju" role="3clFbG">
                                  <node concept="37vLTw" id="2ev$9JFupjt" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2ev$9JFupdH" resolve="current" />
                                  </node>
                                  <node concept="liA8E" id="2ev$9JFupjv" role="2OqNvi">
                                    <ref role="37wK5l" to="9emy:~UserDefinedConstraint.addFormalVariable(java.lang.String,compiler.CHRIntermediateForm.variables.VariableType):void" resolve="addFormalVariable" />
                                    <node concept="37vLTw" id="2ev$9JFupe9" role="37wK5m">
                                      <ref role="3cqZAo" node="2ev$9JFunw5" resolve="name" />
                                    </node>
                                    <node concept="2OqwBi" id="2ev$9JFupkn" role="37wK5m">
                                      <node concept="37vLTw" id="2ev$9JFupkm" role="2Oq$k0">
                                        <ref role="3cqZAo" to="ayug:~CHRIntermediateFormBuilder.currentVariableType" resolve="currentVariableType" />
                                      </node>
                                      <node concept="liA8E" id="2ev$9JFupko" role="2OqNvi">
                                        <ref role="37wK5l" to="32r3:~Current.get():java.lang.Object" resolve="get" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2ev$9JFunwa" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                        <node concept="P$JXv" id="2ev$9JFuogO" role="lGtFl">
                          <node concept="TZ5HA" id="2ev$9JFuogP" role="TZ5H$">
                            <node concept="1dT_AC" id="2ev$9JFuogQ" role="1dT_Ay">
                              <property role="1dT_AB" value="Patch the way constraint parameters are assigned their names. " />
                            </node>
                          </node>
                          <node concept="TZ5HA" id="2ev$9JFuoyE" role="TZ5H$">
                            <node concept="1dT_AC" id="2ev$9JFuoyF" role="1dT_Ay">
                              <property role="1dT_AB" value="The original way is to prepend a '$' to the parameter's index, which may lead to the name clash." />
                            </node>
                          </node>
                          <node concept="TZ5HA" id="2ev$9JFuota" role="TZ5H$">
                            <node concept="1dT_AC" id="2ev$9JFuotb" role="1dT_Ay">
                              <property role="1dT_AB" value="" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2ev$9JFuaA8" role="3cqZAp">
              <node concept="3cpWsn" id="2ev$9JFuaA7" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="director" />
                <node concept="3uibUv" id="2ev$9JFuaA9" role="1tU5fm">
                  <ref role="3uigEE" to="wz7y:~CHRParser" resolve="CHRParser" />
                </node>
                <node concept="2ShNRf" id="2ev$9JFuf5s" role="33vP2m">
                  <node concept="1pGfFk" id="2ev$9JFuf5H" role="2ShVmc">
                    <ref role="37wK5l" to="wz7y:~CHRParser.&lt;init&gt;(antlr.TokenStream,compiler.CHRIntermediateForm.builder.ICHRIntermediateFormBuilder,compiler.options.Options)" resolve="CHRParser" />
                    <node concept="37vLTw" id="2ev$9JFuaAb" role="37wK5m">
                      <ref role="3cqZAo" node="2ev$9JFua_U" resolve="lexer" />
                    </node>
                    <node concept="37vLTw" id="2ev$9JFuaAc" role="37wK5m">
                      <ref role="3cqZAo" node="2ev$9JFuaA2" resolve="builder" />
                    </node>
                    <node concept="37vLTw" id="2ev$9JFuaAd" role="37wK5m">
                      <ref role="3cqZAo" node="2ev$9JFua_W" resolve="options" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2ev$9JFuaAe" role="3cqZAp">
              <node concept="2OqwBi" id="2ev$9JFuaAH" role="3clFbG">
                <node concept="37vLTw" id="2ev$9JFuaAG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ev$9JFuaA7" resolve="director" />
                </node>
                <node concept="liA8E" id="2ev$9JFuaAI" role="2OqNvi">
                  <ref role="37wK5l" to="wz7y:~CHRParser.construct():void" resolve="construct" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2ev$9JFuaAg" role="3cqZAp">
              <node concept="2OqwBi" id="2ev$9JFuaAL" role="3cqZAk">
                <node concept="37vLTw" id="2ev$9JFuaAK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ev$9JFuaA2" resolve="builder" />
                </node>
                <node concept="liA8E" id="2ev$9JFuaAM" role="2OqNvi">
                  <ref role="37wK5l" to="ayug:~CHRIntermediateFormBuilder.getResult():compiler.CHRIntermediateForm.CHRIntermediateForm" resolve="getResult" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2ev$9JFuaAx" role="1B3o_S" />
      <node concept="3uibUv" id="2ev$9JFuaAy" role="3clF45">
        <ref role="3uigEE" to="j58b:~CHRIntermediateForm" resolve="CHRIntermediateForm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFtbw9" role="jymVt" />
    <node concept="2YIFZL" id="2ev$9JFtk90" role="jymVt">
      <property role="TrG5h" value="nanoTime" />
      <node concept="3cpWsb" id="2ev$9JFtol8" role="3clF45" />
      <node concept="3Tm6S6" id="2ev$9JFu9n9" role="1B3o_S" />
      <node concept="3clFbS" id="2ev$9JFtk95" role="3clF47">
        <node concept="3clFbF" id="2ev$9JFtp7U" role="3cqZAp">
          <node concept="2YIFZM" id="2ev$9JFtps1" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~System.nanoTime():long" resolve="nanoTime" />
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFtrb$" role="jymVt" />
    <node concept="2YIFZL" id="2ev$9JFtswg" role="jymVt">
      <property role="TrG5h" value="nano2secs" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="2ev$9JFtswh" role="3clF46">
        <property role="TrG5h" value="nano" />
        <property role="3TUv4t" value="false" />
        <node concept="3cpWsb" id="2ev$9JFtswi" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2ev$9JFtswj" role="3clF47">
        <node concept="3clFbF" id="2ev$9JFtv$2" role="3cqZAp">
          <node concept="2YIFZM" id="2ev$9JFtwpb" role="3clFbG">
            <ref role="37wK5l" to="562q:~Timing.nano2secs(long):java.lang.String" resolve="nano2secs" />
            <ref role="1Pybhc" to="562q:~Timing" resolve="Timing" />
            <node concept="37vLTw" id="2ev$9JFtwqm" role="37wK5m">
              <ref role="3cqZAo" node="2ev$9JFtswh" resolve="nano" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2ev$9JFu9Oo" role="1B3o_S" />
      <node concept="3uibUv" id="2ev$9JFtswv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFtrkZ" role="jymVt" />
    <node concept="2YIFZL" id="2ev$9JFtFrI" role="jymVt">
      <property role="TrG5h" value="getInputStreams" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="2ev$9JFtFrJ" role="3clF46">
        <property role="TrG5h" value="options" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2ev$9JFtFrK" role="1tU5fm">
          <ref role="3uigEE" to="i827:~Options" resolve="Options" />
        </node>
      </node>
      <node concept="3uibUv" id="2ev$9JFtFrL" role="Sfmx6">
        <ref role="3uigEE" to="i827:~OptionsException" resolve="OptionsException" />
      </node>
      <node concept="3clFbS" id="2ev$9JFtFrM" role="3clF47">
        <node concept="3clFbJ" id="2ev$9JFtFrN" role="3cqZAp">
          <node concept="2OqwBi" id="2ev$9JFtFu3" role="3clFbw">
            <node concept="37vLTw" id="2ev$9JFtFu2" role="2Oq$k0">
              <ref role="3cqZAo" node="2ev$9JFtFrJ" resolve="options" />
            </node>
            <node concept="liA8E" id="2ev$9JFtFu4" role="2OqNvi">
              <ref role="37wK5l" to="i827:~Options.hasArguments():boolean" resolve="hasArguments" />
            </node>
          </node>
          <node concept="SfApY" id="2ev$9JFtFtT" role="9aQIa">
            <node concept="TDmWw" id="2ev$9JFtFtU" role="TEbGg">
              <node concept="3clFbS" id="2ev$9JFtFtP" role="TDEfX">
                <node concept="3clFbF" id="2ev$9JFtFtQ" role="3cqZAp">
                  <node concept="2OqwBi" id="2ev$9JFtFu7" role="3clFbG">
                    <node concept="10M0yZ" id="2ev$9JFtF$D" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                    </node>
                    <node concept="liA8E" id="2ev$9JFtFu8" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object):void" resolve="println" />
                      <node concept="37vLTw" id="2ev$9JFtFtS" role="37wK5m">
                        <ref role="3cqZAo" node="2ev$9JFtFtL" resolve="ioe" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2ev$9JFtFtL" role="TDEfY">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="ioe" />
                <node concept="3uibUv" id="2ev$9JFtFtN" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2ev$9JFtFt$" role="SfCbr">
              <node concept="3clFbJ" id="2ev$9JFtFt_" role="3cqZAp">
                <node concept="22lmx$" id="2ev$9JFtFtA" role="3clFbw">
                  <node concept="2OqwBi" id="2ev$9JFtFub" role="3uHU7B">
                    <node concept="37vLTw" id="2ev$9JFtFua" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ev$9JFtFrJ" resolve="options" />
                    </node>
                    <node concept="liA8E" id="2ev$9JFtFuc" role="2OqNvi">
                      <ref role="37wK5l" to="i827:~Options.useBlockingStandardInput():boolean" resolve="useBlockingStandardInput" />
                    </node>
                  </node>
                  <node concept="3eOSWO" id="2ev$9JFtFtC" role="3uHU7w">
                    <node concept="2OqwBi" id="2ev$9JFtFuf" role="3uHU7B">
                      <node concept="10M0yZ" id="2ev$9JFtF$E" role="2Oq$k0">
                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                        <ref role="3cqZAo" to="wyt6:~System.in" resolve="in" />
                      </node>
                      <node concept="liA8E" id="2ev$9JFtFug" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~InputStream.available():int" resolve="available" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="2ev$9JFtFtE" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2ev$9JFtFtG" role="3clFbx">
                  <node concept="3cpWs6" id="2ev$9JFtFtH" role="3cqZAp">
                    <node concept="2ShNRf" id="2ev$9JFtPou" role="3cqZAk">
                      <node concept="1pGfFk" id="2ev$9JFtPov" role="2ShVmc">
                        <ref role="37wK5l" to="v2jt:~Singleton.&lt;init&gt;(java.lang.Object)" resolve="Singleton" />
                        <node concept="10M0yZ" id="2ev$9JFtF$F" role="37wK5m">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.in" resolve="in" />
                        </node>
                        <node concept="3uibUv" id="2ev$9JFtFtK" role="1pMfVU">
                          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2ev$9JFtFrQ" role="3clFbx">
            <node concept="3cpWs6" id="2ev$9JFtFrR" role="3cqZAp">
              <node concept="2ShNRf" id="2ev$9JFtFrS" role="3cqZAk">
                <node concept="YeOm9" id="2ev$9JFtFrT" role="2ShVmc">
                  <node concept="1Y3b0j" id="2ev$9JFtFrU" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="1sVAO0" value="false" />
                    <property role="1EXbeo" value="false" />
                    <ref role="1Y3XeK" to="wyt6:~Iterable" resolve="Iterable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="2ev$9JFtFrV" role="1B3o_S" />
                    <node concept="3clFb_" id="2ev$9JFtFrW" role="jymVt">
                      <property role="TrG5h" value="iterator" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3clFbS" id="2ev$9JFtFrX" role="3clF47">
                        <node concept="3cpWs6" id="2ev$9JFtFrY" role="3cqZAp">
                          <node concept="2ShNRf" id="2ev$9JFtFrZ" role="3cqZAk">
                            <node concept="YeOm9" id="2ev$9JFtFs0" role="2ShVmc">
                              <node concept="1Y3b0j" id="2ev$9JFtFs1" role="YeSDq">
                                <property role="2bfB8j" value="true" />
                                <property role="1sVAO0" value="false" />
                                <property role="1EXbeo" value="false" />
                                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                <ref role="1Y3XeK" to="33ny:~Iterator" resolve="Iterator" />
                                <node concept="3Tm1VV" id="2ev$9JFtFs2" role="1B3o_S" />
                                <node concept="3clFb_" id="2ev$9JFtFsf" role="jymVt">
                                  <property role="TrG5h" value="remove" />
                                  <property role="DiZV1" value="false" />
                                  <property role="od$2w" value="false" />
                                  <node concept="3clFbS" id="2ev$9JFtFsg" role="3clF47">
                                    <node concept="YS8fn" id="2ev$9JFtFsi" role="3cqZAp">
                                      <node concept="2ShNRf" id="2ev$9JFtFuj" role="YScLw">
                                        <node concept="1pGfFk" id="2ev$9JFtFuk" role="2ShVmc">
                                          <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3Tm1VV" id="2ev$9JFtFsj" role="1B3o_S" />
                                  <node concept="3cqZAl" id="2ev$9JFtFsk" role="3clF45" />
                                </node>
                                <node concept="312cEg" id="2ev$9JFtFs3" role="jymVt">
                                  <property role="34CwA1" value="false" />
                                  <property role="eg7rD" value="false" />
                                  <property role="TrG5h" value="i" />
                                  <property role="3TUv4t" value="false" />
                                  <node concept="10Oyi0" id="2ev$9JFtFs5" role="1tU5fm" />
                                  <node concept="3Tm6S6" id="2ev$9JFtFs6" role="1B3o_S" />
                                </node>
                                <node concept="312cEg" id="2ev$9JFtFs7" role="jymVt">
                                  <property role="34CwA1" value="false" />
                                  <property role="eg7rD" value="false" />
                                  <property role="TrG5h" value="atLeastOne" />
                                  <property role="3TUv4t" value="false" />
                                  <node concept="10P_77" id="2ev$9JFtFs9" role="1tU5fm" />
                                  <node concept="3Tm6S6" id="2ev$9JFtFsa" role="1B3o_S" />
                                </node>
                                <node concept="312cEg" id="2ev$9JFtFsb" role="jymVt">
                                  <property role="34CwA1" value="false" />
                                  <property role="eg7rD" value="false" />
                                  <property role="TrG5h" value="next" />
                                  <property role="3TUv4t" value="false" />
                                  <node concept="3uibUv" id="2ev$9JFtFsd" role="1tU5fm">
                                    <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                                  </node>
                                  <node concept="3Tm6S6" id="2ev$9JFtFse" role="1B3o_S" />
                                </node>
                                <node concept="3clFb_" id="2ev$9JFtFsl" role="jymVt">
                                  <property role="TrG5h" value="next" />
                                  <property role="DiZV1" value="false" />
                                  <property role="od$2w" value="false" />
                                  <node concept="3clFbS" id="2ev$9JFtFsm" role="3clF47">
                                    <node concept="3clFbJ" id="2ev$9JFtFsn" role="3cqZAp">
                                      <node concept="3fqX7Q" id="2ev$9JFtFso" role="3clFbw">
                                        <node concept="1rXfSq" id="2ev$9JFtFsp" role="3fr31v">
                                          <ref role="37wK5l" node="2ev$9JFtFsH" resolve="hasNext" />
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="2ev$9JFtFss" role="3clFbx">
                                        <node concept="YS8fn" id="2ev$9JFtFsr" role="3cqZAp">
                                          <node concept="2ShNRf" id="2ev$9JFtLPE" role="YScLw">
                                            <node concept="1pGfFk" id="2ev$9JFtLPF" role="2ShVmc">
                                              <ref role="37wK5l" to="33ny:~NoSuchElementException.&lt;init&gt;()" resolve="NoSuchElementException" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="2ev$9JFtFst" role="3cqZAp">
                                      <node concept="37vLTI" id="2ev$9JFtFsu" role="3clFbG">
                                        <node concept="37vLTw" id="2ev$9JFtFsv" role="37vLTJ">
                                          <ref role="3cqZAo" node="2ev$9JFtFs7" resolve="atLeastOne" />
                                        </node>
                                        <node concept="3clFbT" id="2ev$9JFtFsw" role="37vLTx">
                                          <property role="3clFbU" value="true" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs8" id="2ev$9JFtFsy" role="3cqZAp">
                                      <node concept="3cpWsn" id="2ev$9JFtFsx" role="3cpWs9">
                                        <property role="3TUv4t" value="false" />
                                        <property role="TrG5h" value="result" />
                                        <node concept="3uibUv" id="2ev$9JFtFsz" role="1tU5fm">
                                          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                                        </node>
                                        <node concept="37vLTw" id="2ev$9JFtFs$" role="33vP2m">
                                          <ref role="3cqZAo" node="2ev$9JFtFsb" resolve="next" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="2ev$9JFtFs_" role="3cqZAp">
                                      <node concept="37vLTI" id="2ev$9JFtFsA" role="3clFbG">
                                        <node concept="37vLTw" id="2ev$9JFtFsB" role="37vLTJ">
                                          <ref role="3cqZAo" node="2ev$9JFtFsb" resolve="next" />
                                        </node>
                                        <node concept="10Nm6u" id="2ev$9JFtFsC" role="37vLTx" />
                                      </node>
                                    </node>
                                    <node concept="3cpWs6" id="2ev$9JFtFsD" role="3cqZAp">
                                      <node concept="37vLTw" id="2ev$9JFtFsE" role="3cqZAk">
                                        <ref role="3cqZAo" node="2ev$9JFtFsx" resolve="result" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3Tm1VV" id="2ev$9JFtFsF" role="1B3o_S" />
                                  <node concept="3uibUv" id="2ev$9JFtFsG" role="3clF45">
                                    <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                                  </node>
                                </node>
                                <node concept="3clFb_" id="2ev$9JFtFsH" role="jymVt">
                                  <property role="TrG5h" value="hasNext" />
                                  <property role="DiZV1" value="false" />
                                  <property role="od$2w" value="false" />
                                  <node concept="3clFbS" id="2ev$9JFtFsI" role="3clF47">
                                    <node concept="3clFbJ" id="2ev$9JFtFsJ" role="3cqZAp">
                                      <node concept="3y3z36" id="2ev$9JFtFsK" role="3clFbw">
                                        <node concept="37vLTw" id="2ev$9JFtFsL" role="3uHU7B">
                                          <ref role="3cqZAo" node="2ev$9JFtFsb" resolve="next" />
                                        </node>
                                        <node concept="10Nm6u" id="2ev$9JFtFsM" role="3uHU7w" />
                                      </node>
                                      <node concept="3clFbS" id="2ev$9JFtFsP" role="3clFbx">
                                        <node concept="3cpWs6" id="2ev$9JFtFsN" role="3cqZAp">
                                          <node concept="3clFbT" id="2ev$9JFtFsO" role="3cqZAk">
                                            <property role="3clFbU" value="true" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="2ev$9JFtFsQ" role="3cqZAp">
                                      <node concept="2d3UOw" id="2ev$9JFtFsR" role="3clFbw">
                                        <node concept="37vLTw" id="2ev$9JFtFsS" role="3uHU7B">
                                          <ref role="3cqZAo" node="2ev$9JFtFs3" resolve="i" />
                                        </node>
                                        <node concept="2OqwBi" id="2ev$9JFtFuu" role="3uHU7w">
                                          <node concept="37vLTw" id="2ev$9JFtFut" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2ev$9JFtFrJ" resolve="options" />
                                          </node>
                                          <node concept="liA8E" id="2ev$9JFtFuv" role="2OqNvi">
                                            <ref role="37wK5l" to="i827:~Options.getNbArguments():int" resolve="getNbArguments" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="2ev$9JFtFsV" role="3clFbx">
                                        <node concept="3clFbJ" id="2ev$9JFtFsW" role="3cqZAp">
                                          <node concept="3fqX7Q" id="2ev$9JFtFsX" role="3clFbw">
                                            <node concept="37vLTw" id="2ev$9JFtFsY" role="3fr31v">
                                              <ref role="3cqZAo" node="2ev$9JFtFs7" resolve="atLeastOne" />
                                            </node>
                                          </node>
                                          <node concept="3clFbS" id="2ev$9JFtFt2" role="3clFbx">
                                            <node concept="3clFbF" id="2ev$9JFtFsZ" role="3cqZAp">
                                              <node concept="2YIFZM" id="2ev$9JFtF$B" role="3clFbG">
                                                <ref role="1Pybhc" to="210f:~Main" resolve="Main" />
                                                <ref role="37wK5l" to="210f:~Main.printUsage(compiler.options.Options):void" resolve="printUsage" />
                                                <node concept="37vLTw" id="2ev$9JFtF$C" role="37wK5m">
                                                  <ref role="3cqZAo" node="2ev$9JFtFrJ" resolve="options" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs6" id="2ev$9JFtFt3" role="3cqZAp">
                                          <node concept="3clFbT" id="2ev$9JFtFt4" role="3cqZAk">
                                            <property role="3clFbU" value="false" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="SfApY" id="2ev$9JFtFtq" role="3cqZAp">
                                      <node concept="TDmWw" id="2ev$9JFtFtr" role="TEbGg">
                                        <node concept="3clFbS" id="2ev$9JFtFtk" role="TDEfX">
                                          <node concept="3clFbF" id="2ev$9JFtFtl" role="3cqZAp">
                                            <node concept="2OqwBi" id="2ev$9JFtFuD" role="3clFbG">
                                              <node concept="10M0yZ" id="2ev$9JFtF$G" role="2Oq$k0">
                                                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                                <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                                              </node>
                                              <node concept="liA8E" id="2ev$9JFtFuE" role="2OqNvi">
                                                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object):void" resolve="println" />
                                                <node concept="37vLTw" id="2ev$9JFtFtn" role="37wK5m">
                                                  <ref role="3cqZAo" node="2ev$9JFtFtg" resolve="fnfe" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3cpWs6" id="2ev$9JFtFto" role="3cqZAp">
                                            <node concept="1rXfSq" id="2ev$9JFtFtp" role="3cqZAk">
                                              <ref role="37wK5l" node="2ev$9JFtFsH" resolve="hasNext" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWsn" id="2ev$9JFtFtg" role="TDEfY">
                                          <property role="3TUv4t" value="false" />
                                          <property role="TrG5h" value="fnfe" />
                                          <node concept="3uibUv" id="2ev$9JFtFti" role="1tU5fm">
                                            <ref role="3uigEE" to="guwi:~FileNotFoundException" resolve="FileNotFoundException" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="2ev$9JFtFt6" role="SfCbr">
                                        <node concept="3clFbF" id="2ev$9JFtFt7" role="3cqZAp">
                                          <node concept="37vLTI" id="2ev$9JFtFt8" role="3clFbG">
                                            <node concept="37vLTw" id="2ev$9JFtFt9" role="37vLTJ">
                                              <ref role="3cqZAo" node="2ev$9JFtFsb" resolve="next" />
                                            </node>
                                            <node concept="2ShNRf" id="2ev$9JFtFuF" role="37vLTx">
                                              <node concept="1pGfFk" id="2ev$9JFtFv0" role="2ShVmc">
                                                <ref role="37wK5l" to="guwi:~FileInputStream.&lt;init&gt;(java.lang.String)" resolve="FileInputStream" />
                                                <node concept="2OqwBi" id="2ev$9JFtFva" role="37wK5m">
                                                  <node concept="37vLTw" id="2ev$9JFtFv9" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="2ev$9JFtFrJ" resolve="options" />
                                                  </node>
                                                  <node concept="liA8E" id="2ev$9JFtFvb" role="2OqNvi">
                                                    <ref role="37wK5l" to="i827:~Options.getArgumentAt(int):java.lang.String" resolve="getArgumentAt" />
                                                    <node concept="3uNrnE" id="2ev$9JFtFtc" role="37wK5m">
                                                      <node concept="37vLTw" id="2ev$9JFtFtd" role="2$L3a6">
                                                        <ref role="3cqZAo" node="2ev$9JFtFs3" resolve="i" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs6" id="2ev$9JFtFte" role="3cqZAp">
                                          <node concept="3clFbT" id="2ev$9JFtFtf" role="3cqZAk">
                                            <property role="3clFbU" value="true" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3Tm1VV" id="2ev$9JFtFts" role="1B3o_S" />
                                  <node concept="10P_77" id="2ev$9JFtFtt" role="3clF45" />
                                </node>
                                <node concept="3uibUv" id="2ev$9JFtFtu" role="2Ghqu4">
                                  <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="2ev$9JFtFtv" role="1B3o_S" />
                      <node concept="3uibUv" id="2ev$9JFtFtw" role="3clF45">
                        <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                        <node concept="3uibUv" id="2ev$9JFtFtx" role="11_B2D">
                          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="2ev$9JFtFty" role="2Ghqu4">
                      <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="2ev$9JFtFtX" role="3cqZAp">
          <node concept="2ShNRf" id="2ev$9JFtFvc" role="YScLw">
            <node concept="1pGfFk" id="2ev$9JFtFvF" role="2ShVmc">
              <ref role="37wK5l" to="i827:~OptionsException.&lt;init&gt;(java.lang.String)" resolve="OptionsException" />
              <node concept="Xl_RD" id="2ev$9JFtFtW" role="37wK5m">
                <property role="Xl_RC" value="No input file(s) given..." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2ev$9JFtFtY" role="1B3o_S" />
      <node concept="3uibUv" id="2ev$9JFtFtZ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="2ev$9JFtFu0" role="11_B2D">
          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFtD_E" role="jymVt" />
    <node concept="2tJIrI" id="2ev$9JFs8J4" role="jymVt" />
    <node concept="3Tm1VV" id="2ev$9JFs8IQ" role="1B3o_S" />
    <node concept="3UR2Jj" id="2ev$9JFvikD" role="lGtFl">
      <node concept="TZ5HA" id="2ev$9JFvikE" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JFvikF" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JFvjB2" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JFvjB3" role="1dT_Ay">
          <property role="1dT_AB" value="The code copied from the compiler.Main class. " />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JFvjLk" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JFvjLl" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JFvjLu" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JFvjLv" role="1dT_Ay">
          <property role="1dT_AB" value="This class exists solely for the reason of patching the behaviour of CHRIntermediateFormBuilder, which " />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JFvk3J" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JFvk3K" role="1dT_Ay">
          <property role="1dT_AB" value="produces constraint parameter names leading to name clashes later on. " />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JFvjB8" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JFvjB9" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
    </node>
  </node>
</model>

