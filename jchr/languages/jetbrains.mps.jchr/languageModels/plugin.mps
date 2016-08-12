<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a62ce4c1-5aa4-41dc-927f-d90d1c97111a(jetbrains.mps.jchr.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="1" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" name="jetbrains.mps.make.script" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="2" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
    <devkit ref="508c56cf-0851-4930-8aac-ed733da47058(jetbrains.mps.execution.devkit)" />
  </languages>
  <imports>
    <import index="fy8e" ref="r:89c0fb70-0977-7777-a076-5906f9d8630f(jetbrains.mps.make.facets)" />
    <import index="tpcq" ref="r:00000000-0000-4000-0000-011c89590286(jetbrains.mps.lang.core.plugin)" />
    <import index="fn29" ref="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" />
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="go48" ref="r:fc6b4266-fe93-4e02-bc36-aebff4c903c3(jetbrains.mps.baseLanguage.execution.api)" />
    <import index="uu3z" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.process(MPS.IDEA/)" />
    <import index="3v5a" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution(MPS.IDEA/)" />
    <import index="1kj4" ref="r:0bcaf439-5bc6-429b-a457-4e0d9746449f(jetbrains.mps.make.delta)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="rk9m" ref="r:f8580193-afc4-4673-a635-d4757ca591cf(jetbrains.mps.internal.make.runtime.util)" />
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" />
    <import index="wev6" ref="r:f29914af-ae14-4589-b53d-f60c6018b368(jetbrains.mps.lang.project.behavior)" />
    <import index="b0pz" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.facets(MPS.Core/)" />
    <import index="v8u3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.make.resources(MPS.Core/)" />
    <import index="yo81" ref="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" />
    <import index="6zjw" ref="r:63e42001-b680-413c-92d7-b07cd22aa33d(jetbrains.mps.jchr.makehelper)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
      <concept id="1239559992092" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleLiteral" flags="nn" index="2ry78W">
        <reference id="1239560008022" name="tupleDeclaration" index="2ryb1Q" />
        <child id="1239560910577" name="componentRef" index="2r_Bvh" />
      </concept>
      <concept id="1239560581441" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentReference" flags="ng" index="2r$n1x">
        <reference id="1239560595302" name="componentDeclaration" index="2r$qp6" />
        <child id="1239560837729" name="value" index="2r_lH1" />
      </concept>
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
    <language id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands">
      <concept id="612376536074296995" name="jetbrains.mps.execution.commands.structure.CommandProcessType" flags="in" index="50ouk">
        <reference id="612376536074296996" name="commandDeclaration" index="50ouj" />
      </concept>
      <concept id="889694274152177535" name="jetbrains.mps.execution.commands.structure.KeyValueCommandPart" flags="nn" index="2dOGH5">
        <property id="1616228152991918665" name="dash" index="Lv5iS" />
        <child id="889694274152177539" name="key" index="2dOGIT" />
        <child id="889694274152177540" name="value" index="2dOGIY" />
      </concept>
      <concept id="856705193941281753" name="jetbrains.mps.execution.commands.structure.CommandReferenceExpression" flags="nn" index="2LYoGc">
        <reference id="856705193941281755" name="command" index="2LYoGe" />
      </concept>
      <concept id="856705193941281780" name="jetbrains.mps.execution.commands.structure.CommandBuilderExpression" flags="nn" index="2LYoGx">
        <reference id="6129022259108621329" name="commandPart" index="3rFKlk" />
        <child id="856705193941281781" name="argument" index="2LYoGw" />
      </concept>
      <concept id="856705193941281764" name="jetbrains.mps.execution.commands.structure.CommandParameterAssignment" flags="ng" index="2LYoGL">
        <reference id="856705193941281765" name="parameterDeclaration" index="2LYoGK" />
        <child id="856705193941281766" name="value" index="2LYoGN" />
      </concept>
      <concept id="2459753140357918802" name="jetbrains.mps.execution.commands.structure.StartAndWaitOperation" flags="nn" index="343rKw" />
      <concept id="6868250101935610313" name="jetbrains.mps.execution.commands.structure.ListCommandPart" flags="nn" index="1tenjt">
        <child id="2168104298250244983" name="items" index="1r8FgC" />
        <child id="6868250101935610315" name="list" index="1tenjv" />
      </concept>
    </language>
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
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet">
      <concept id="6418371274763029565" name="jetbrains.mps.make.facet.structure.TargetDeclaration" flags="ng" index="15KeUm">
        <child id="2360002718792633290" name="job" index="ElM8M" />
        <child id="6418371274763146553" name="dependency" index="15LFui" />
        <child id="119022571401949665" name="output" index="3D36I4" />
        <child id="119022571401949664" name="input" index="3D36I5" />
      </concept>
      <concept id="6418371274763029523" name="jetbrains.mps.make.facet.structure.FacetDeclaration" flags="ng" index="15KeUS">
        <child id="6418371274763146558" name="targetDeclaration" index="15LFul" />
        <child id="6447445394688422656" name="required" index="1Mm5TH" />
      </concept>
      <concept id="6418371274763029600" name="jetbrains.mps.make.facet.structure.TargetDependency" flags="ng" index="15KeVb">
        <property id="8351679702044326377" name="qualifier" index="3HPxAp" />
        <reference id="6418371274763029603" name="dependsOn" index="15KeV8" />
      </concept>
      <concept id="119022571402207412" name="jetbrains.mps.make.facet.structure.ResourceClassifierType" flags="in" index="3D27Fh" />
      <concept id="119022571401949652" name="jetbrains.mps.make.facet.structure.ResourceTypeDeclaration" flags="ng" index="3D36IL">
        <child id="119022571401949655" name="resourceType" index="3D36IM" />
      </concept>
      <concept id="8351679702044320297" name="jetbrains.mps.make.facet.structure.RelatedFacetReference" flags="ng" index="3HPw9p" />
      <concept id="6447445394688422642" name="jetbrains.mps.make.facet.structure.FacetReference" flags="ng" index="1Mm5Yv">
        <reference id="6447445394688422643" name="facet" index="1Mm5Yu" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" name="jetbrains.mps.make.script">
      <concept id="505095865854384109" name="jetbrains.mps.make.script.structure.JobDeclaration" flags="ng" index="2aLE7I">
        <child id="505095865854384110" name="job" index="2aLE7H" />
      </concept>
      <concept id="2360002718792446594" name="jetbrains.mps.make.script.structure.ResourceType" flags="in" index="El1HU" />
      <concept id="2360002718792625579" name="jetbrains.mps.make.script.structure.JobDefinition" flags="in" index="ElOhj" />
      <concept id="2360002718792625580" name="jetbrains.mps.make.script.structure.InputResourcesParameter" flags="nn" index="ElOhk" />
      <concept id="2360002718792622184" name="jetbrains.mps.make.script.structure.OutputResources" flags="nn" index="ElOAg">
        <child id="2360002718792622193" name="resource" index="ElOA9" />
      </concept>
      <concept id="3668957831723333672" name="jetbrains.mps.make.script.structure.ReportFeedbackStatement" flags="nn" index="1daRAt">
        <property id="3668957831723333678" name="feedback" index="1daRAr" />
        <child id="3668957831723336680" name="message" index="1daK9t" />
      </concept>
      <concept id="7077360340906447917" name="jetbrains.mps.make.script.structure.ResultStatement" flags="nn" index="3D7k6m">
        <property id="7077360340906447918" name="result" index="3D7k6l" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167228628751" name="hasException" index="34fQS0" />
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
        <child id="1167227561449" name="exception" index="34bMjA" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="4040588429969021681" name="jetbrains.mps.lang.smodel.structure.ModuleReferenceExpression" flags="nn" index="3rM5sP">
        <property id="4040588429969021683" name="moduleId" index="3rM5sR" />
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
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1224446583770" name="jetbrains.mps.baseLanguage.collections.structure.SkipStatement" flags="nn" index="mH2b7" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="3055999550620853964" name="jetbrains.mps.baseLanguage.collections.structure.RemoveWhereOperation" flags="nn" index="1aUR6E" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="15KeUS" id="6XrX4sTMzui">
    <property role="TrG5h" value="CompileJCHR" />
    <node concept="15KeUm" id="35Lj3TisyMN" role="15LFul">
      <property role="TrG5h" value="collectInput" />
      <node concept="15KeVb" id="35Lj3TisA4v" role="15LFui">
        <ref role="15KeV8" to="fy8e:5L5h3brvDPy" resolve="compile" />
      </node>
      <node concept="15KeVb" id="35Lj3TisAau" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" to="tpcq:5L5h3brvDHA" resolve="textGen" />
      </node>
      <node concept="2aLE7I" id="35Lj3TisyMO" role="ElM8M">
        <node concept="ElOhj" id="35Lj3TisyMP" role="2aLE7H">
          <node concept="3clFbS" id="35Lj3TisyMQ" role="2VODD2">
            <node concept="3cpWs8" id="1UWNDKzo0S4" role="3cqZAp">
              <node concept="3cpWsn" id="1UWNDKzo0S5" role="3cpWs9">
                <property role="TrG5h" value="time" />
                <node concept="3cpWsb" id="1UWNDKzo0S3" role="1tU5fm" />
                <node concept="2YIFZM" id="1UWNDKzo0S6" role="33vP2m">
                  <ref role="37wK5l" to="wyt6:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="35Lj3TisAO2" role="3cqZAp">
              <node concept="3cpWsn" id="35Lj3TisAO3" role="3cpWs9">
                <property role="TrG5h" value="toCompile" />
                <node concept="_YKpA" id="35Lj3TisAO4" role="1tU5fm">
                  <node concept="2pR195" id="35Lj3Tiu89i" role="_ZDj9">
                    <ref role="3uigEE" to="6zjw:35Lj3TiB$U_" resolve="JCRHResource" />
                  </node>
                </node>
                <node concept="2ShNRf" id="35Lj3TisAOb" role="33vP2m">
                  <node concept="Tc6Ow" id="35Lj3TisAOc" role="2ShVmc">
                    <node concept="2pR195" id="35Lj3Tiu9Hc" role="HW$YZ">
                      <ref role="3uigEE" to="6zjw:35Lj3TiB$U_" resolve="JCRHResource" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="35Lj3TisAOm" role="3cqZAp" />
            <node concept="1QHqEK" id="35Lj3TisAOn" role="3cqZAp">
              <node concept="1QHqEC" id="35Lj3TisAOo" role="1QHqEI">
                <node concept="3clFbS" id="35Lj3TisAOp" role="1bW5cS">
                  <node concept="3clFbH" id="1UWNDKzo32L" role="3cqZAp" />
                  <node concept="3clFbF" id="35Lj3TisAOq" role="3cqZAp">
                    <node concept="2OqwBi" id="35Lj3TisAOr" role="3clFbG">
                      <node concept="ElOhk" id="35Lj3TisAOs" role="2Oq$k0" />
                      <node concept="2es0OD" id="35Lj3TisAOt" role="2OqNvi">
                        <node concept="1bVj0M" id="35Lj3TisAOu" role="23t8la">
                          <node concept="3clFbS" id="35Lj3TisAOv" role="1bW5cS">
                            <node concept="3cpWs8" id="35Lj3TisAOw" role="3cqZAp">
                              <node concept="3cpWsn" id="35Lj3TisAOx" role="3cpWs9">
                                <property role="TrG5h" value="model" />
                                <node concept="H_c77" id="35Lj3TisAOy" role="1tU5fm" />
                                <node concept="2OqwBi" id="35Lj3TisAOz" role="33vP2m">
                                  <node concept="37vLTw" id="35Lj3TisAO$" role="2Oq$k0">
                                    <ref role="3cqZAo" node="35Lj3TisAQw" resolve="res" />
                                  </node>
                                  <node concept="2sxana" id="35Lj3TisAO_" role="2OqNvi">
                                    <ref role="2sxfKC" to="fn29:44ybjD5JWZk" resolve="modelDescriptor" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="35Lj3TisAOA" role="3cqZAp" />
                            <node concept="3cpWs8" id="35Lj3TisAOB" role="3cqZAp">
                              <node concept="3cpWsn" id="35Lj3TisAOC" role="3cpWs9">
                                <property role="TrG5h" value="clsOutput" />
                                <node concept="17QB3L" id="35Lj3TisAOD" role="1tU5fm" />
                                <node concept="2OqwBi" id="35Lj3TisAOE" role="33vP2m">
                                  <node concept="2OqwBi" id="35Lj3TisAOF" role="2Oq$k0">
                                    <node concept="2YIFZM" id="35Lj3TisAOG" role="2Oq$k0">
                                      <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                                      <ref role="37wK5l" to="z1c3:~SModuleOperations.getJavaFacet(org.jetbrains.mps.openapi.module.SModule):jetbrains.mps.project.facets.JavaModuleFacet" resolve="getJavaFacet" />
                                      <node concept="2OqwBi" id="35Lj3TisAOH" role="37wK5m">
                                        <node concept="2JrnkZ" id="35Lj3TisAOI" role="2Oq$k0">
                                          <node concept="37vLTw" id="35Lj3TisAOJ" role="2JrQYb">
                                            <ref role="3cqZAo" node="35Lj3TisAOx" resolve="model" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="35Lj3TisAOK" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="35Lj3TisAOL" role="2OqNvi">
                                      <ref role="37wK5l" to="b0pz:~JavaModuleFacet.getClassesGen():jetbrains.mps.vfs.IFile" resolve="getClassesGen" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="35Lj3TisAOM" role="2OqNvi">
                                    <ref role="37wK5l" to="3ju5:~IFile.getPath():java.lang.String" resolve="getPath" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="35Lj3TiJCRa" role="3cqZAp">
                              <node concept="37vLTI" id="35Lj3TiJDON" role="3clFbG">
                                <node concept="2OqwBi" id="35Lj3TiJFw$" role="37vLTx">
                                  <node concept="37vLTw" id="35Lj3TiJE$b" role="2Oq$k0">
                                    <ref role="3cqZAo" node="35Lj3TisAOC" resolve="clsOutput" />
                                  </node>
                                  <node concept="liA8E" id="35Lj3TiJIsk" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence):java.lang.String" resolve="replace" />
                                    <node concept="Xl_RD" id="35Lj3TiJJ8P" role="37wK5m">
                                      <property role="Xl_RC" value="classes_gen" />
                                    </node>
                                    <node concept="Xl_RD" id="35Lj3TiJRal" role="37wK5m">
                                      <property role="Xl_RC" value="classes_jchr" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="35Lj3TiJCR9" role="37vLTJ">
                                  <ref role="3cqZAo" node="35Lj3TisAOC" resolve="clsOutput" />
                                </node>
                              </node>
                            </node>
                            <node concept="1X3_iC" id="3U_KxQf996V" role="lGtFl">
                              <property role="3V$3am" value="statement" />
                              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                              <node concept="3cpWs8" id="35Lj3TisAOP" role="8Wnug">
                                <node concept="3cpWsn" id="35Lj3TisAOQ" role="3cpWs9">
                                  <property role="TrG5h" value="output" />
                                  <node concept="17QB3L" id="35Lj3TisAOR" role="1tU5fm" />
                                  <node concept="2YIFZM" id="35Lj3TisAOS" role="33vP2m">
                                    <ref role="37wK5l" to="z1c3:~SModuleOperations.getOutputPathFor(org.jetbrains.mps.openapi.model.SModel):java.lang.String" resolve="getOutputPathFor" />
                                    <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                                    <node concept="37vLTw" id="35Lj3TisAOT" role="37wK5m">
                                      <ref role="3cqZAo" node="35Lj3TisAOx" resolve="model" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="35Lj3TisAOU" role="3cqZAp">
                              <node concept="3cpWsn" id="35Lj3TisAOV" role="3cpWs9">
                                <property role="TrG5h" value="allSourcePaths" />
                                <node concept="2hMVRd" id="35Lj3TisAOW" role="1tU5fm">
                                  <node concept="17QB3L" id="35Lj3TisAOX" role="2hN53Y" />
                                </node>
                                <node concept="10QFUN" id="35Lj3TisAOY" role="33vP2m">
                                  <node concept="2hMVRd" id="35Lj3TisAOZ" role="10QFUM">
                                    <node concept="17QB3L" id="35Lj3TisAP0" role="2hN53Y" />
                                  </node>
                                  <node concept="2YIFZM" id="35Lj3TisAP1" role="10QFUP">
                                    <ref role="37wK5l" to="z1c3:~SModuleOperations.getAllSourcePaths(org.jetbrains.mps.openapi.module.SModule):java.util.Set" resolve="getAllSourcePaths" />
                                    <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                                    <node concept="2OqwBi" id="35Lj3TisAP2" role="37wK5m">
                                      <node concept="37vLTw" id="35Lj3TisAP3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="35Lj3TisAQw" resolve="res" />
                                      </node>
                                      <node concept="2sxana" id="35Lj3TisAP4" role="2OqNvi">
                                        <ref role="2sxfKC" to="fn29:1Xl3kQ1uadw" resolve="module" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="35Lj3TisAP5" role="3cqZAp" />
                            <node concept="3cpWs8" id="35Lj3TisAP6" role="3cqZAp">
                              <node concept="3cpWsn" id="35Lj3TisAP7" role="3cpWs9">
                                <property role="TrG5h" value="handlerFiles" />
                                <node concept="_YKpA" id="35Lj3TisAP8" role="1tU5fm">
                                  <node concept="3uibUv" id="35Lj3TisAP9" role="_ZDj9">
                                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="35Lj3TisAPa" role="33vP2m">
                                  <node concept="2OqwBi" id="35Lj3TisAPb" role="2Oq$k0">
                                    <node concept="2OqwBi" id="35Lj3TisAPc" role="2Oq$k0">
                                      <node concept="2RRcyG" id="35Lj3TisAPd" role="2OqNvi">
                                        <ref role="2RRcyH" to="vgt0:pmDhvH6q87" resolve="Handler" />
                                      </node>
                                      <node concept="37vLTw" id="35Lj3TisAPe" role="2Oq$k0">
                                        <ref role="3cqZAo" node="35Lj3TisAOx" resolve="model" />
                                      </node>
                                    </node>
                                    <node concept="3$u5V9" id="35Lj3TisAPf" role="2OqNvi">
                                      <node concept="1bVj0M" id="35Lj3TisAPg" role="23t8la">
                                        <node concept="3clFbS" id="35Lj3TisAPh" role="1bW5cS">
                                          <node concept="3cpWs8" id="35Lj3TisAPi" role="3cqZAp">
                                            <node concept="3cpWsn" id="35Lj3TisAPj" role="3cpWs9">
                                              <property role="TrG5h" value="hp" />
                                              <node concept="17QB3L" id="35Lj3TisAPk" role="1tU5fm" />
                                              <node concept="3cpWs3" id="35Lj3TisAPl" role="33vP2m">
                                                <node concept="Xl_RD" id="35Lj3TisAPm" role="3uHU7w">
                                                  <property role="Xl_RC" value=".jchr" />
                                                </node>
                                                <node concept="2YIFZM" id="35Lj3TisAPn" role="3uHU7B">
                                                  <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                                                  <ref role="37wK5l" to="18ew:~NameUtil.pathFromNamespace(java.lang.String):java.lang.String" resolve="pathFromNamespace" />
                                                  <node concept="2OqwBi" id="35Lj3TisAPo" role="37wK5m">
                                                    <node concept="37vLTw" id="35Lj3TisAPp" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="35Lj3TisAPM" resolve="han" />
                                                    </node>
                                                    <node concept="2qgKlT" id="35Lj3TisAPq" role="2OqNvi">
                                                      <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="35Lj3TisAPr" role="3cqZAp">
                                            <node concept="2OqwBi" id="35Lj3TisAPs" role="3clFbG">
                                              <node concept="2OqwBi" id="35Lj3TisAPt" role="2Oq$k0">
                                                <node concept="37vLTw" id="35Lj3TisAPu" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="35Lj3TisAOV" resolve="allSourcePaths" />
                                                </node>
                                                <node concept="3$u5V9" id="35Lj3TisAPv" role="2OqNvi">
                                                  <node concept="1bVj0M" id="35Lj3TisAPw" role="23t8la">
                                                    <node concept="3clFbS" id="35Lj3TisAPx" role="1bW5cS">
                                                      <node concept="3clFbF" id="35Lj3TisAPy" role="3cqZAp">
                                                        <node concept="2ShNRf" id="35Lj3TisAPz" role="3clFbG">
                                                          <node concept="1pGfFk" id="35Lj3TisAP$" role="2ShVmc">
                                                            <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="File" />
                                                            <node concept="37vLTw" id="35Lj3TisAP_" role="37wK5m">
                                                              <ref role="3cqZAo" node="35Lj3TisAPB" resolve="p" />
                                                            </node>
                                                            <node concept="37vLTw" id="35Lj3TisAPA" role="37wK5m">
                                                              <ref role="3cqZAo" node="35Lj3TisAPj" resolve="hp" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="Rh6nW" id="35Lj3TisAPB" role="1bW2Oz">
                                                      <property role="TrG5h" value="p" />
                                                      <node concept="2jxLKc" id="35Lj3TisAPC" role="1tU5fm" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="1z4cxt" id="35Lj3TisAPD" role="2OqNvi">
                                                <node concept="1bVj0M" id="35Lj3TisAPE" role="23t8la">
                                                  <node concept="3clFbS" id="35Lj3TisAPF" role="1bW5cS">
                                                    <node concept="3clFbF" id="35Lj3TisAPG" role="3cqZAp">
                                                      <node concept="2OqwBi" id="35Lj3TisAPH" role="3clFbG">
                                                        <node concept="37vLTw" id="35Lj3TisAPI" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="35Lj3TisAPK" resolve="f" />
                                                        </node>
                                                        <node concept="liA8E" id="35Lj3TisAPJ" role="2OqNvi">
                                                          <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="Rh6nW" id="35Lj3TisAPK" role="1bW2Oz">
                                                    <property role="TrG5h" value="f" />
                                                    <node concept="2jxLKc" id="35Lj3TisAPL" role="1tU5fm" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="35Lj3TisAPM" role="1bW2Oz">
                                          <property role="TrG5h" value="han" />
                                          <node concept="2jxLKc" id="35Lj3TisAPN" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="35Lj3TisAPO" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="35Lj3TisAPP" role="3cqZAp" />
                            <node concept="3cpWs8" id="1UWNDKzl0bo" role="3cqZAp">
                              <node concept="3cpWsn" id="1UWNDKzl0br" role="3cpWs9">
                                <property role="TrG5h" value="writtenFiles" />
                                <node concept="_YKpA" id="1UWNDKzl0bk" role="1tU5fm">
                                  <node concept="3uibUv" id="1UWNDKzl0PS" role="_ZDj9">
                                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                                  </node>
                                </node>
                                <node concept="2ShNRf" id="1UWNDKzl3n$" role="33vP2m">
                                  <node concept="Tc6Ow" id="1UWNDKzl3is" role="2ShVmc">
                                    <node concept="3uibUv" id="1UWNDKzl3it" role="HW$YZ">
                                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1DcWWT" id="1UWNDKzkDZ_" role="3cqZAp">
                              <node concept="3clFbS" id="1UWNDKzkDZB" role="2LFqv$">
                                <node concept="3clFbF" id="1UWNDKzkQBS" role="3cqZAp">
                                  <node concept="2OqwBi" id="1UWNDKzkR3u" role="3clFbG">
                                    <node concept="37vLTw" id="1UWNDKzkQBR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1UWNDKzkDZD" resolve="dlt" />
                                    </node>
                                    <node concept="liA8E" id="1UWNDKzkR_Z" role="2OqNvi">
                                      <ref role="37wK5l" to="1kj4:6uL$bP9UH41" resolve="acceptVisitor" />
                                      <node concept="2ShNRf" id="1UWNDKzkS5$" role="37wK5m">
                                        <node concept="YeOm9" id="1UWNDKzkTUa" role="2ShVmc">
                                          <node concept="1Y3b0j" id="1UWNDKzkTUd" role="YeSDq">
                                            <property role="2bfB8j" value="true" />
                                            <ref role="1Y3XeK" to="rk9m:6uL$bP9UH4b" resolve="FilesDelta.Visitor" />
                                            <ref role="37wK5l" to="rk9m:6uL$bP9UH4d" resolve="FilesDelta.Visitor" />
                                            <node concept="3Tm1VV" id="1UWNDKzkTUe" role="1B3o_S" />
                                            <node concept="3clFb_" id="1UWNDKzkUPX" role="jymVt">
                                              <property role="TrG5h" value="acceptWritten" />
                                              <property role="1EzhhJ" value="false" />
                                              <node concept="10P_77" id="1UWNDKzkUPY" role="3clF45" />
                                              <node concept="3Tm1VV" id="1UWNDKzkUPZ" role="1B3o_S" />
                                              <node concept="37vLTG" id="1UWNDKzkUQ3" role="3clF46">
                                                <property role="TrG5h" value="file" />
                                                <node concept="3uibUv" id="1UWNDKzkUQ4" role="1tU5fm">
                                                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                                </node>
                                              </node>
                                              <node concept="3clFbS" id="1UWNDKzkUQ6" role="3clF47">
                                                <node concept="3clFbF" id="1UWNDKzkVBP" role="3cqZAp">
                                                  <node concept="2OqwBi" id="1UWNDKzl6s0" role="3clFbG">
                                                    <node concept="37vLTw" id="1UWNDKzl64C" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="1UWNDKzl0br" resolve="writtenFiles" />
                                                    </node>
                                                    <node concept="TSZUe" id="1UWNDKzl8sC" role="2OqNvi">
                                                      <node concept="2ShNRf" id="1UWNDKzl8D8" role="25WWJ7">
                                                        <node concept="1pGfFk" id="1UWNDKzl96A" role="2ShVmc">
                                                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                                          <node concept="2OqwBi" id="1UWNDKzkVCJ" role="37wK5m">
                                                            <node concept="37vLTw" id="1UWNDKzkVBO" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="1UWNDKzkUQ3" resolve="file" />
                                                            </node>
                                                            <node concept="liA8E" id="1UWNDKzkVOr" role="2OqNvi">
                                                              <ref role="37wK5l" to="3ju5:~IFile.getPath():java.lang.String" resolve="getPath" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="1UWNDKzla$m" role="3cqZAp">
                                                  <node concept="3clFbT" id="1UWNDKzla$l" role="3clFbG">
                                                    <property role="3clFbU" value="true" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2AHcQZ" id="1UWNDKzkUQ7" role="2AJF6D">
                                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWsn" id="1UWNDKzkDZD" role="1Duv9x">
                                <property role="TrG5h" value="dlt" />
                                <node concept="3uibUv" id="1UWNDKzkDZH" role="1tU5fm">
                                  <ref role="3uigEE" to="1kj4:16rzRJauwMP" resolve="IDelta" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1UWNDKzkDZI" role="1DdaDG">
                                <node concept="37vLTw" id="1UWNDKzkDZJ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="35Lj3TisAQw" resolve="res" />
                                </node>
                                <node concept="2sxana" id="1UWNDKzkDZK" role="2OqNvi">
                                  <ref role="2sxfKC" to="fn29:17BsPLzesix" resolve="delta" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="1UWNDKzkAZ0" role="3cqZAp" />
                            <node concept="3clFbF" id="1UWNDKzlblj" role="3cqZAp">
                              <node concept="37vLTI" id="1UWNDKzlceV" role="3clFbG">
                                <node concept="2OqwBi" id="1UWNDKzldxD" role="37vLTx">
                                  <node concept="37vLTw" id="1UWNDKzlcLV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="35Lj3TisAP7" resolve="handlerFiles" />
                                  </node>
                                  <node concept="1aUR6E" id="1UWNDKzlje9" role="2OqNvi">
                                    <node concept="1bVj0M" id="1UWNDKzljeb" role="23t8la">
                                      <node concept="3clFbS" id="1UWNDKzljec" role="1bW5cS">
                                        <node concept="3clFbF" id="1UWNDKzljSv" role="3cqZAp">
                                          <node concept="3fqX7Q" id="1UWNDKzljSt" role="3clFbG">
                                            <node concept="2OqwBi" id="1UWNDKzllFC" role="3fr31v">
                                              <node concept="37vLTw" id="1UWNDKzlkqP" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1UWNDKzl0br" resolve="writtenFiles" />
                                              </node>
                                              <node concept="3JPx81" id="1UWNDKzlohb" role="2OqNvi">
                                                <node concept="37vLTw" id="1UWNDKzloTl" role="25WWJ7">
                                                  <ref role="3cqZAo" node="1UWNDKzljed" resolve="it" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="1UWNDKzljed" role="1bW2Oz">
                                        <property role="TrG5h" value="it" />
                                        <node concept="2jxLKc" id="1UWNDKzljee" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="1UWNDKzlblh" role="37vLTJ">
                                  <ref role="3cqZAo" node="35Lj3TisAP7" resolve="handlerFiles" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="1UWNDKzlaCX" role="3cqZAp" />
                            <node concept="3cpWs8" id="35Lj3TisAPQ" role="3cqZAp">
                              <node concept="3cpWsn" id="35Lj3TisAPR" role="3cpWs9">
                                <property role="TrG5h" value="cp" />
                                <node concept="_YKpA" id="35Lj3TisAPS" role="1tU5fm">
                                  <node concept="3uibUv" id="35Lj3TisAPT" role="_ZDj9">
                                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="35Lj3TisAPU" role="33vP2m">
                                  <node concept="2OqwBi" id="35Lj3TisAPV" role="2Oq$k0">
                                    <node concept="2OqwBi" id="35Lj3TisAPW" role="2Oq$k0">
                                      <node concept="2LYoGc" id="35Lj3TisAPX" role="2Oq$k0">
                                        <ref role="2LYoGe" to="go48:14R2qyOBxa1" resolve="java" />
                                      </node>
                                      <node concept="2XshWL" id="35Lj3TisAPY" role="2OqNvi">
                                        <ref role="2WH_rO" to="go48:2reLP4orRPN" resolve="getClasspath" />
                                        <node concept="2OqwBi" id="35Lj3TisAPZ" role="2XxRq1">
                                          <node concept="37vLTw" id="35Lj3TisAQ0" role="2Oq$k0">
                                            <ref role="3cqZAo" node="35Lj3TisAQw" resolve="res" />
                                          </node>
                                          <node concept="2sxana" id="35Lj3TitFSo" role="2OqNvi">
                                            <ref role="2sxfKC" to="fn29:1Xl3kQ1uadw" resolve="module" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3$u5V9" id="35Lj3TisAQ2" role="2OqNvi">
                                      <node concept="1bVj0M" id="35Lj3TisAQ3" role="23t8la">
                                        <node concept="3clFbS" id="35Lj3TisAQ4" role="1bW5cS">
                                          <node concept="3clFbF" id="35Lj3TisAQ5" role="3cqZAp">
                                            <node concept="2ShNRf" id="35Lj3TisAQ6" role="3clFbG">
                                              <node concept="1pGfFk" id="35Lj3TisAQ7" role="2ShVmc">
                                                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                                <node concept="37vLTw" id="35Lj3TisAQ8" role="37wK5m">
                                                  <ref role="3cqZAo" node="35Lj3TisAQ9" resolve="e" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="35Lj3TisAQ9" role="1bW2Oz">
                                          <property role="TrG5h" value="e" />
                                          <node concept="2jxLKc" id="35Lj3TisAQa" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="35Lj3TisAQb" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="35Lj3TisAQc" role="3cqZAp">
                              <node concept="3SKdUq" id="35Lj3TisAQd" role="3SKWNk">
                                <property role="3SKdUp" value="include this module's generated classes" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="35Lj3TisAQe" role="3cqZAp">
                              <node concept="2OqwBi" id="35Lj3TisAQf" role="3clFbG">
                                <node concept="37vLTw" id="35Lj3TisAQg" role="2Oq$k0">
                                  <ref role="3cqZAo" node="35Lj3TisAPR" resolve="cp" />
                                </node>
                                <node concept="TSZUe" id="35Lj3TisAQh" role="2OqNvi">
                                  <node concept="2ShNRf" id="35Lj3TisAQi" role="25WWJ7">
                                    <node concept="1pGfFk" id="35Lj3TisAQj" role="2ShVmc">
                                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                      <node concept="37vLTw" id="35Lj3TisAQk" role="37wK5m">
                                        <ref role="3cqZAo" node="35Lj3TisAOC" resolve="clsOutput" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="35Lj3TisAQl" role="3cqZAp" />
                            <node concept="3clFbF" id="35Lj3Tiuce9" role="3cqZAp">
                              <node concept="2OqwBi" id="35Lj3Tiud1X" role="3clFbG">
                                <node concept="37vLTw" id="35Lj3Tiuce8" role="2Oq$k0">
                                  <ref role="3cqZAo" node="35Lj3TisAO3" resolve="toCompile" />
                                </node>
                                <node concept="TSZUe" id="35Lj3TiuhGR" role="2OqNvi">
                                  <node concept="2ry78W" id="35Lj3TiuiXL" role="25WWJ7">
                                    <ref role="2ryb1Q" to="6zjw:35Lj3TiB$U_" resolve="JCRHResource" />
                                    <node concept="2r$n1x" id="35Lj3TiuiXF" role="2r_Bvh">
                                      <ref role="2r$qp6" to="6zjw:35Lj3TiB$UA" resolve="clsOutput" />
                                      <node concept="2ShNRf" id="35Lj3Tiuo7N" role="2r_lH1">
                                        <node concept="1pGfFk" id="35Lj3Tiuo7O" role="2ShVmc">
                                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                          <node concept="37vLTw" id="35Lj3Tiuo7P" role="37wK5m">
                                            <ref role="3cqZAo" node="35Lj3TisAOC" resolve="clsOutput" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2r$n1x" id="35Lj3TiuiXH" role="2r_Bvh">
                                      <ref role="2r$qp6" to="6zjw:35Lj3TiB$UC" resolve="handlerFiles" />
                                      <node concept="37vLTw" id="35Lj3Tiuloq" role="2r_lH1">
                                        <ref role="3cqZAo" node="35Lj3TisAP7" resolve="handlerFiles" />
                                      </node>
                                    </node>
                                    <node concept="2r$n1x" id="35Lj3TiuiXJ" role="2r_Bvh">
                                      <ref role="2r$qp6" to="6zjw:35Lj3TiB$UF" resolve="classpath" />
                                      <node concept="37vLTw" id="35Lj3TiumF_" role="2r_lH1">
                                        <ref role="3cqZAo" node="35Lj3TisAPR" resolve="cp" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="35Lj3TisAQw" role="1bW2Oz">
                            <property role="TrG5h" value="res" />
                            <node concept="2jxLKc" id="35Lj3TisAQx" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="35Lj3TisAQy" role="3cqZAp" />
            <node concept="3clFbJ" id="35Lj3TisAQz" role="3cqZAp">
              <node concept="3clFbS" id="35Lj3TisAQ$" role="3clFbx">
                <node concept="1daRAt" id="35Lj3TisAQ_" role="3cqZAp">
                  <property role="1daRAr" value="INFO" />
                  <node concept="Xl_RD" id="35Lj3TisAQA" role="1daK9t">
                    <property role="Xl_RC" value="nothing to do" />
                  </node>
                </node>
                <node concept="ElOAg" id="35Lj3TiM4eG" role="3cqZAp">
                  <node concept="10QFUN" id="6CNs6nihjN$" role="ElOA9">
                    <node concept="El1HU" id="6CNs6nihjN_" role="10QFUM" />
                    <node concept="2ry78W" id="6CNs6nihjNA" role="10QFUP">
                      <ref role="2ryb1Q" to="6zjw:35Lj3TiB$U_" resolve="JCRHResource" />
                      <node concept="2r$n1x" id="6CNs6nihjNB" role="2r_Bvh">
                        <ref role="2r$qp6" to="6zjw:35Lj3TiB$UA" resolve="clsOutput" />
                        <node concept="10Nm6u" id="6CNs6nihjNC" role="2r_lH1" />
                      </node>
                      <node concept="2r$n1x" id="6CNs6nihjND" role="2r_Bvh">
                        <ref role="2r$qp6" to="6zjw:35Lj3TiB$UC" resolve="handlerFiles" />
                        <node concept="10Nm6u" id="6CNs6nihjNE" role="2r_lH1" />
                      </node>
                      <node concept="2r$n1x" id="6CNs6nihjNF" role="2r_Bvh">
                        <ref role="2r$qp6" to="6zjw:35Lj3TiB$UF" resolve="classpath" />
                        <node concept="10Nm6u" id="6CNs6nihjNG" role="2r_lH1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3D7k6m" id="35Lj3TisAQB" role="3cqZAp">
                  <property role="3D7k6l" value="SUCCESS" />
                </node>
              </node>
              <node concept="2OqwBi" id="35Lj3TisAQC" role="3clFbw">
                <node concept="37vLTw" id="35Lj3TisAQD" role="2Oq$k0">
                  <ref role="3cqZAo" node="35Lj3TisAO3" resolve="toCompile" />
                </node>
                <node concept="2HxqBE" id="35Lj3TisAQE" role="2OqNvi">
                  <node concept="1bVj0M" id="35Lj3TisAQF" role="23t8la">
                    <node concept="3clFbS" id="35Lj3TisAQG" role="1bW5cS">
                      <node concept="3clFbF" id="35Lj3TisAQH" role="3cqZAp">
                        <node concept="2OqwBi" id="35Lj3TisAQI" role="3clFbG">
                          <node concept="1v1jN8" id="35Lj3TisAQM" role="2OqNvi" />
                          <node concept="2OqwBi" id="35Lj3TixrOX" role="2Oq$k0">
                            <node concept="37vLTw" id="35Lj3TixryB" role="2Oq$k0">
                              <ref role="3cqZAo" node="35Lj3TisAQN" resolve="it" />
                            </node>
                            <node concept="2sxana" id="35Lj3Tixvdx" role="2OqNvi">
                              <ref role="2sxfKC" to="6zjw:35Lj3TiB$UC" resolve="handlerFiles" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="35Lj3TisAQN" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="35Lj3TisAQO" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="35Lj3Tiu4oG" role="3cqZAp" />
            <node concept="3clFbF" id="35Lj3TiuB4n" role="3cqZAp">
              <node concept="2OqwBi" id="35Lj3TiuCts" role="3clFbG">
                <node concept="37vLTw" id="35Lj3TiuB4m" role="2Oq$k0">
                  <ref role="3cqZAo" node="35Lj3TisAO3" resolve="toCompile" />
                </node>
                <node concept="2es0OD" id="35Lj3TiuEm5" role="2OqNvi">
                  <node concept="1bVj0M" id="35Lj3TiuEm7" role="23t8la">
                    <node concept="3clFbS" id="35Lj3TiuEm8" role="1bW5cS">
                      <node concept="ElOAg" id="35Lj3Tiu6Cj" role="3cqZAp">
                        <node concept="10QFUN" id="6CNs6nihiWG" role="ElOA9">
                          <node concept="37vLTw" id="6CNs6nihj6v" role="10QFUP">
                            <ref role="3cqZAo" node="35Lj3TiuEm9" resolve="it" />
                          </node>
                          <node concept="El1HU" id="6CNs6nihj4q" role="10QFUM" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="35Lj3TiuEm9" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="35Lj3TiuEma" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1UWNDKzoaX7" role="3cqZAp" />
            <node concept="3cpWs8" id="41ox5VncBkF" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5VncBkG" role="3cpWs9">
                <property role="TrG5h" value="elapsed" />
                <node concept="10P55v" id="41ox5VncBkz" role="1tU5fm" />
                <node concept="FJ1c_" id="41ox5VncBkH" role="33vP2m">
                  <node concept="3b6qkQ" id="41ox5VncD6l" role="3uHU7w">
                    <property role="$nhwW" value="1000." />
                  </node>
                  <node concept="1eOMI4" id="41ox5VncCNH" role="3uHU7B">
                    <node concept="3cpWsd" id="41ox5VncCNI" role="1eOMHV">
                      <node concept="37vLTw" id="1UWNDKzofkd" role="3uHU7w">
                        <ref role="3cqZAo" node="1UWNDKzo0S5" resolve="time" />
                      </node>
                      <node concept="2YIFZM" id="41ox5VncCNK" role="3uHU7B">
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                        <ref role="37wK5l" to="wyt6:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1daRAt" id="1UWNDKzomNe" role="3cqZAp">
              <property role="1daRAr" value="INFO" />
              <node concept="2YIFZM" id="1UWNDKzoo_5" role="1daK9t">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                <node concept="Xl_RD" id="1UWNDKzoo_6" role="37wK5m">
                  <property role="Xl_RC" value="Collecting input for JCHR compiler took %2.2f sec." />
                </node>
                <node concept="37vLTw" id="1UWNDKzoo_7" role="37wK5m">
                  <ref role="3cqZAo" node="41ox5VncBkG" resolve="elapsed" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3D36IL" id="35Lj3TiszRV" role="3D36I5">
        <node concept="3D27Fh" id="35Lj3Tis$2f" role="3D36IM">
          <ref role="3uigEE" to="fn29:1Xl3kQ1uadv" resolve="TResource" />
        </node>
      </node>
      <node concept="3D36IL" id="35Lj3TisCzI" role="3D36I4">
        <node concept="3D27Fh" id="35Lj3TitcrX" role="3D36IM">
          <ref role="3uigEE" to="6zjw:35Lj3TiB$U_" resolve="JCRHResource" />
        </node>
      </node>
    </node>
    <node concept="15KeUm" id="6XrX4sTMzuj" role="15LFul">
      <property role="TrG5h" value="compileJCHR" />
      <node concept="15KeVb" id="35Lj3Tiq6u3" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" to="fy8e:5L5h3brvDPy" resolve="compile" />
      </node>
      <node concept="15KeVb" id="6XrX4sTMzul" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" node="35Lj3TisyMN" resolve="collectInput" />
      </node>
      <node concept="15KeVb" id="35Lj3TiHIQn" role="15LFui">
        <property role="3HPxAp" value="BEFORE" />
        <ref role="15KeV8" to="fy8e:taepSZ9rBr" resolve="make" />
      </node>
      <node concept="15KeVb" id="1UWNDKzkt2B" role="15LFui">
        <ref role="15KeV8" to="fy8e:5L5h3brvIVE" resolve="reloadClasses" />
      </node>
      <node concept="2aLE7I" id="6XrX4sTMzum" role="ElM8M">
        <node concept="ElOhj" id="6XrX4sTMzun" role="2aLE7H">
          <node concept="3clFbS" id="6XrX4sTMzuo" role="2VODD2">
            <node concept="3cpWs8" id="1UWNDKzorr0" role="3cqZAp">
              <node concept="3cpWsn" id="1UWNDKzorr1" role="3cpWs9">
                <property role="TrG5h" value="time" />
                <node concept="3cpWsb" id="1UWNDKzorr2" role="1tU5fm" />
                <node concept="2YIFZM" id="1UWNDKzorr3" role="33vP2m">
                  <ref role="37wK5l" to="wyt6:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6XrX4sTXDsL" role="3cqZAp">
              <node concept="3cpWsn" id="6XrX4sTXDsM" role="3cpWs9">
                <property role="TrG5h" value="runtimeCp" />
                <node concept="_YKpA" id="6XrX4sTXDsH" role="1tU5fm">
                  <node concept="3uibUv" id="6XrX4sU23$f" role="_ZDj9">
                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6XrX4sU243s" role="33vP2m">
                  <node concept="2OqwBi" id="6XrX4sU1VnA" role="2Oq$k0">
                    <node concept="2OqwBi" id="6XrX4sTXDsN" role="2Oq$k0">
                      <node concept="2LYoGc" id="6XrX4sTXDsO" role="2Oq$k0">
                        <ref role="2LYoGe" to="go48:14R2qyOBxa1" resolve="java" />
                      </node>
                      <node concept="2XshWL" id="6XrX4sTXDsP" role="2OqNvi">
                        <ref role="2WH_rO" to="go48:2reLP4orRPN" resolve="getClasspath" />
                        <node concept="3rM5sP" id="6XrX4sTXDsQ" role="2XxRq1">
                          <property role="3rM5sR" value="b984ee52-f34d-4b6d-8812-866c1d3eae31" />
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="6XrX4sU1Zbj" role="2OqNvi">
                      <node concept="1bVj0M" id="6XrX4sU1Zbl" role="23t8la">
                        <node concept="3clFbS" id="6XrX4sU1Zbm" role="1bW5cS">
                          <node concept="3clFbF" id="6XrX4sU1ZxK" role="3cqZAp">
                            <node concept="2ShNRf" id="6XrX4sU1ZxI" role="3clFbG">
                              <node concept="1pGfFk" id="6XrX4sU209S" role="2ShVmc">
                                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                <node concept="37vLTw" id="6XrX4sU25TR" role="37wK5m">
                                  <ref role="3cqZAo" node="6XrX4sU1Zbn" resolve="e" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6XrX4sU1Zbn" role="1bW2Oz">
                          <property role="TrG5h" value="e" />
                          <node concept="2jxLKc" id="6XrX4sU1Zbo" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="6XrX4sU25Fk" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2ev$9JFwlPM" role="3cqZAp" />
            <node concept="3cpWs8" id="5L5h3brvIX2" role="3cqZAp">
              <node concept="3cpWsn" id="5L5h3brvIX3" role="3cpWs9">
                <property role="TrG5h" value="deltaList" />
                <node concept="_YKpA" id="5L5h3brvIX4" role="1tU5fm">
                  <node concept="3uibUv" id="5L5h3brvIX5" role="_ZDj9">
                    <ref role="3uigEE" to="1kj4:16rzRJauwMP" resolve="IDelta" />
                  </node>
                </node>
                <node concept="2ShNRf" id="5L5h3brvIX6" role="33vP2m">
                  <node concept="Tc6Ow" id="5L5h3brvIX7" role="2ShVmc">
                    <node concept="3uibUv" id="5L5h3brvIX8" role="HW$YZ">
                      <ref role="3uigEE" to="1kj4:16rzRJauwMP" resolve="IDelta" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6XrX4sU8iG6" role="3cqZAp">
              <node concept="3cpWsn" id="6XrX4sU8iG9" role="3cpWs9">
                <property role="TrG5h" value="success" />
                <node concept="10P_77" id="6XrX4sU8iG4" role="1tU5fm" />
                <node concept="3clFbT" id="6XrX4sU8k2K" role="33vP2m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="35Lj3TiOvPz" role="3cqZAp" />
            <node concept="3clFbF" id="6XrX4sU3k74" role="3cqZAp">
              <node concept="2OqwBi" id="6XrX4sU3kMD" role="3clFbG">
                <node concept="ElOhk" id="35Lj3TiuLly" role="2Oq$k0" />
                <node concept="2es0OD" id="6XrX4sU3o4c" role="2OqNvi">
                  <node concept="1bVj0M" id="6XrX4sU3o4e" role="23t8la">
                    <node concept="3clFbS" id="6XrX4sU3o4f" role="1bW5cS">
                      <node concept="SfApY" id="6XrX4sU0dyo" role="3cqZAp">
                        <node concept="3clFbS" id="6XrX4sU0dyq" role="SfCbr">
                          <node concept="3clFbJ" id="5oZZzbrjUT$" role="3cqZAp">
                            <node concept="3clFbS" id="5oZZzbrjUTB" role="3clFbx">
                              <node concept="mH2b7" id="5oZZzbrk7Ns" role="3cqZAp" />
                            </node>
                            <node concept="2OqwBi" id="5oZZzbrk1yB" role="3clFbw">
                              <node concept="1v1jN8" id="5oZZzbrk757" role="2OqNvi" />
                              <node concept="2OqwBi" id="35Lj3Tiv$d0" role="2Oq$k0">
                                <node concept="37vLTw" id="35Lj3TivzCK" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6XrX4sU3o4g" resolve="triple" />
                                </node>
                                <node concept="2sxana" id="35Lj3TiNe6R" role="2OqNvi">
                                  <ref role="2sxfKC" to="6zjw:35Lj3TiB$UC" resolve="handlerFiles" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="35Lj3TiNTWi" role="3cqZAp" />
                          <node concept="3clFbJ" id="35Lj3TiOasQ" role="3cqZAp">
                            <node concept="3clFbS" id="35Lj3TiOasT" role="3clFbx">
                              <node concept="1daRAt" id="35Lj3TiOI2N" role="3cqZAp">
                                <property role="1daRAr" value="ERROR" />
                                <node concept="3cpWs3" id="35Lj3TiOLFK" role="1daK9t">
                                  <node concept="2OqwBi" id="35Lj3TiON6u" role="3uHU7w">
                                    <node concept="37vLTw" id="35Lj3TiOMhm" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6XrX4sU3o4g" resolve="triple" />
                                    </node>
                                    <node concept="2sxana" id="35Lj3TiOPm_" role="2OqNvi">
                                      <ref role="2sxfKC" to="6zjw:35Lj3TiB$UA" resolve="clsOutput" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="35Lj3TiOICp" role="3uHU7B">
                                    <property role="Xl_RC" value="cannot write to " />
                                  </node>
                                </node>
                              </node>
                              <node concept="mH2b7" id="35Lj3TiOXdv" role="3cqZAp" />
                            </node>
                            <node concept="1Wc70l" id="35Lj3TiOF7Y" role="3clFbw">
                              <node concept="3fqX7Q" id="35Lj3TiOFAf" role="3uHU7w">
                                <node concept="2OqwBi" id="35Lj3TiOG2P" role="3fr31v">
                                  <node concept="2OqwBi" id="35Lj3TiOG2Q" role="2Oq$k0">
                                    <node concept="37vLTw" id="35Lj3TiOG2R" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6XrX4sU3o4g" resolve="triple" />
                                    </node>
                                    <node concept="2sxana" id="35Lj3TiOG2S" role="2OqNvi">
                                      <ref role="2sxfKC" to="6zjw:35Lj3TiB$UA" resolve="clsOutput" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="35Lj3TiOG2T" role="2OqNvi">
                                    <ref role="37wK5l" to="guwi:~File.mkdirs():boolean" resolve="mkdirs" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="35Lj3TiOl0d" role="3uHU7B">
                                <node concept="2OqwBi" id="35Lj3TiOl0e" role="3fr31v">
                                  <node concept="2OqwBi" id="35Lj3TiOl0f" role="2Oq$k0">
                                    <node concept="37vLTw" id="35Lj3TiOl0g" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6XrX4sU3o4g" resolve="triple" />
                                    </node>
                                    <node concept="2sxana" id="35Lj3TiOl0h" role="2OqNvi">
                                      <ref role="2sxfKC" to="6zjw:35Lj3TiB$UA" resolve="clsOutput" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="35Lj3TiOl0i" role="2OqNvi">
                                    <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="35Lj3TiOSSe" role="3cqZAp" />
                          <node concept="3SKdUt" id="2ev$9JF$mDT" role="3cqZAp">
                            <node concept="3SKdUq" id="2ev$9JF$nf8" role="3SKWNk">
                              <property role="3SKdUp" value="TODO: Re: -fixed -- see the comment to the AtomLogical class" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="2ev$9JF$oSM" role="3cqZAp" />
                          <node concept="3cpWs8" id="6XrX4sTXG6A" role="3cqZAp">
                            <node concept="3cpWsn" id="6XrX4sTXG6B" role="3cpWs9">
                              <property role="TrG5h" value="compileProcess" />
                              <node concept="50ouk" id="6XrX4sTXG6m" role="1tU5fm">
                                <ref role="50ouj" to="go48:14R2qyOBxa1" resolve="java" />
                              </node>
                              <node concept="2LYoGx" id="6XrX4sTXG6C" role="33vP2m">
                                <ref role="3rFKlk" to="go48:14R2qyOBxbP" resolve="java" />
                                <node concept="2LYoGL" id="6XrX4sU26nh" role="2LYoGw">
                                  <ref role="2LYoGK" to="go48:14R2qyOBxbQ" resolve="workingDirectory" />
                                  <node concept="2OqwBi" id="35Lj3TiwplY" role="2LYoGN">
                                    <node concept="37vLTw" id="35Lj3Tiwot$" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6XrX4sU3o4g" resolve="triple" />
                                    </node>
                                    <node concept="2sxana" id="35Lj3TiwxHo" role="2OqNvi">
                                      <ref role="2sxfKC" to="6zjw:35Lj3TiB$UA" resolve="clsOutput" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2LYoGL" id="6XrX4sTXG6F" role="2LYoGw">
                                  <ref role="2LYoGK" to="go48:14R2qyOBxc6" resolve="classPath" />
                                  <node concept="2OqwBi" id="6SkxsMzRWx0" role="2LYoGN">
                                    <node concept="2OqwBi" id="6SkxsMzRJCi" role="2Oq$k0">
                                      <node concept="2OqwBi" id="35Lj3Tiwzo1" role="2Oq$k0">
                                        <node concept="37vLTw" id="35Lj3Tiwyz1" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6XrX4sU3o4g" resolve="triple" />
                                        </node>
                                        <node concept="2sxana" id="35Lj3TiwBfh" role="2OqNvi">
                                          <ref role="2sxfKC" to="6zjw:35Lj3TiB$UF" resolve="classpath" />
                                        </node>
                                      </node>
                                      <node concept="3QWeyG" id="6SkxsMzRMHe" role="2OqNvi">
                                        <node concept="37vLTw" id="6SkxsMzRNiC" role="576Qk">
                                          <ref role="3cqZAo" node="6XrX4sTXDsM" resolve="runtimeCp" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="ANE8D" id="6SkxsMzRYgj" role="2OqNvi" />
                                  </node>
                                </node>
                                <node concept="2LYoGL" id="6SkxsMzXkxk" role="2LYoGw">
                                  <ref role="2LYoGK" to="go48:14R2qyOBxgu" resolve="debuggerSettings" />
                                  <node concept="Xl_RD" id="6SkxsMzXlLh" role="2LYoGN">
                                    <property role="Xl_RC" value="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5055" />
                                  </node>
                                </node>
                                <node concept="2LYoGL" id="6XrX4sTXG6D" role="2LYoGw">
                                  <ref role="2LYoGK" to="go48:14R2qyOBxc4" resolve="className" />
                                  <node concept="Xl_RD" id="6XrX4sTXG6E" role="2LYoGN">
                                    <property role="Xl_RC" value="jetbrains.mps.jchr.patch.CompilerMain" />
                                  </node>
                                </node>
                                <node concept="2LYoGL" id="6XrX4sU0CAX" role="2LYoGw">
                                  <ref role="2LYoGK" to="go48:14R2qyOBxc0" resolve="programParameter" />
                                  <node concept="1tenjt" id="6XrX4sU0KM0" role="2LYoGN">
                                    <node concept="2dOGH5" id="6SkxsMzTiph" role="1r8FgC">
                                      <property role="Lv5iS" value="true" />
                                      <node concept="Xl_RD" id="6SkxsMzTipi" role="2dOGIY">
                                        <property role="Xl_RC" value="off" />
                                      </node>
                                      <node concept="Xl_RD" id="6SkxsMzTipj" role="2dOGIT">
                                        <property role="Xl_RC" value="analysis" />
                                      </node>
                                    </node>
                                    <node concept="2dOGH5" id="5lJXK98md" role="1r8FgC">
                                      <property role="Lv5iS" value="true" />
                                      <node concept="Xl_RD" id="5lJXK98me" role="2dOGIY">
                                        <property role="Xl_RC" value="off" />
                                      </node>
                                      <node concept="Xl_RD" id="5lJXK98mf" role="2dOGIT">
                                        <property role="Xl_RC" value="stack" />
                                      </node>
                                    </node>
                                    <node concept="2dOGH5" id="2q_78a9aBgB" role="1r8FgC">
                                      <property role="Lv5iS" value="true" />
                                      <node concept="Xl_RD" id="2q_78a9aBgC" role="2dOGIY">
                                        <property role="Xl_RC" value="full" />
                                      </node>
                                      <node concept="Xl_RD" id="2q_78a9aBgD" role="2dOGIT">
                                        <property role="Xl_RC" value="debug" />
                                      </node>
                                    </node>
                                    <node concept="2dOGH5" id="6XrX4sU0NeH" role="1r8FgC">
                                      <property role="Lv5iS" value="true" />
                                      <node concept="Xl_RD" id="6XrX4sU0XCd" role="2dOGIY">
                                        <property role="Xl_RC" value="default" />
                                      </node>
                                      <node concept="Xl_RD" id="6XrX4sU0Ss0" role="2dOGIT">
                                        <property role="Xl_RC" value="output" />
                                      </node>
                                    </node>
                                    <node concept="2dOGH5" id="2ev$9JFzGsK" role="1r8FgC">
                                      <property role="Lv5iS" value="true" />
                                      <node concept="Xl_RD" id="2ev$9JFzGsL" role="2dOGIY">
                                        <property role="Xl_RC" value="jetbrains.mps.logic.atom.Atom" />
                                      </node>
                                      <node concept="Xl_RD" id="2ev$9JFzGsM" role="2dOGIT">
                                        <property role="Xl_RC" value="fixed" />
                                      </node>
                                    </node>
                                    <node concept="1tenjt" id="6XrX4sU3tRL" role="1r8FgC">
                                      <node concept="2OqwBi" id="35Lj3Tix0jV" role="1tenjv">
                                        <node concept="37vLTw" id="35Lj3TiwZEO" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6XrX4sU3o4g" resolve="triple" />
                                        </node>
                                        <node concept="2sxana" id="35Lj3Tix4cT" role="2OqNvi">
                                          <ref role="2sxfKC" to="6zjw:35Lj3TiB$UC" resolve="handlerFiles" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="6XrX4sU3yp7" role="3cqZAp" />
                          <node concept="3cpWs8" id="6XrX4sTYujT" role="3cqZAp">
                            <node concept="3cpWsn" id="6XrX4sTYujU" role="3cpWs9">
                              <property role="TrG5h" value="outListener" />
                              <node concept="3uibUv" id="6XrX4sTYujS" role="1tU5fm">
                                <ref role="3uigEE" to="3v5a:~OutputListener" resolve="OutputListener" />
                              </node>
                              <node concept="2ShNRf" id="6XrX4sTYujV" role="33vP2m">
                                <node concept="1pGfFk" id="6XrX4sTYujW" role="2ShVmc">
                                  <ref role="37wK5l" to="3v5a:~OutputListener.&lt;init&gt;()" resolve="OutputListener" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6XrX4sTXb6$" role="3cqZAp">
                            <node concept="2OqwBi" id="6XrX4sTXHU_" role="3clFbG">
                              <node concept="37vLTw" id="6XrX4sTXG6H" role="2Oq$k0">
                                <ref role="3cqZAo" node="6XrX4sTXG6B" resolve="compileProcess" />
                              </node>
                              <node concept="liA8E" id="6XrX4sTXIvA" role="2OqNvi">
                                <ref role="37wK5l" to="uu3z:~ProcessHandler.addProcessListener(com.intellij.execution.process.ProcessListener):void" resolve="addProcessListener" />
                                <node concept="37vLTw" id="6XrX4sTYujX" role="37wK5m">
                                  <ref role="3cqZAo" node="6XrX4sTYujU" resolve="outListener" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6XrX4sTYx16" role="3cqZAp">
                            <node concept="2OqwBi" id="6XrX4sTYyfU" role="3clFbG">
                              <node concept="37vLTw" id="6XrX4sTYx15" role="2Oq$k0">
                                <ref role="3cqZAo" node="6XrX4sTXG6B" resolve="compileProcess" />
                              </node>
                              <node concept="343rKw" id="6XrX4sTYyQZ" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="6XrX4sTYvMY" role="3cqZAp" />
                          <node concept="3cpWs8" id="6XrX4sTYReB" role="3cqZAp">
                            <node concept="3cpWsn" id="6XrX4sTYReC" role="3cpWs9">
                              <property role="TrG5h" value="out" />
                              <node concept="3uibUv" id="6XrX4sTYRe_" role="1tU5fm">
                                <ref role="3uigEE" to="3v5a:~Output" resolve="Output" />
                              </node>
                              <node concept="2OqwBi" id="6XrX4sTYReD" role="33vP2m">
                                <node concept="37vLTw" id="6XrX4sTYReE" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6XrX4sTYujU" resolve="outListener" />
                                </node>
                                <node concept="liA8E" id="6XrX4sTYReF" role="2OqNvi">
                                  <ref role="37wK5l" to="3v5a:~OutputListener.getOutput():com.intellij.execution.Output" resolve="getOutput" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6XrX4sU5q8R" role="3cqZAp">
                            <node concept="2OqwBi" id="6XrX4sU5q8S" role="3clFbG">
                              <node concept="2OqwBi" id="6XrX4sU5q8T" role="2Oq$k0">
                                <node concept="2OqwBi" id="6XrX4sU5q8U" role="2Oq$k0">
                                  <node concept="2OqwBi" id="6XrX4sU5q8V" role="2Oq$k0">
                                    <node concept="37vLTw" id="6XrX4sU5q8W" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6XrX4sTYReC" resolve="out" />
                                    </node>
                                    <node concept="liA8E" id="6XrX4sU5q8X" role="2OqNvi">
                                      <ref role="37wK5l" to="3v5a:~Output.getStdout():java.lang.String" resolve="getStdout" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6XrX4sU5q8Y" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                                    <node concept="Xl_RD" id="6XrX4sU5q8Z" role="37wK5m">
                                      <property role="Xl_RC" value="\\n" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="39bAoz" id="6XrX4sU5q90" role="2OqNvi" />
                              </node>
                              <node concept="2es0OD" id="6XrX4sU5q91" role="2OqNvi">
                                <node concept="1bVj0M" id="6XrX4sU5q92" role="23t8la">
                                  <node concept="3clFbS" id="6XrX4sU5q93" role="1bW5cS">
                                    <node concept="1daRAt" id="6XrX4sU8Kuk" role="3cqZAp">
                                      <property role="1daRAr" value="INFO" />
                                      <node concept="3cpWs3" id="6XrX4sU8L3f" role="1daK9t">
                                        <node concept="37vLTw" id="6XrX4sU8L3g" role="3uHU7w">
                                          <ref role="3cqZAo" node="6XrX4sU5q98" resolve="str" />
                                        </node>
                                        <node concept="Xl_RD" id="6XrX4sU8L3h" role="3uHU7B">
                                          <property role="Xl_RC" value="[JCHR] " />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="6XrX4sU5q98" role="1bW2Oz">
                                    <property role="TrG5h" value="str" />
                                    <node concept="2jxLKc" id="6XrX4sU5q99" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4EfgX2ECH$y" role="3cqZAp" />
                          <node concept="3cpWs8" id="4EfgX2ECD6I" role="3cqZAp">
                            <node concept="3cpWsn" id="4EfgX2ECD6J" role="3cpWs9">
                              <property role="TrG5h" value="stderr" />
                              <node concept="3uibUv" id="4EfgX2ECD6$" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                              </node>
                              <node concept="2OqwBi" id="4EfgX2ECD6K" role="33vP2m">
                                <node concept="37vLTw" id="4EfgX2ECD6L" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6XrX4sTYReC" resolve="out" />
                                </node>
                                <node concept="liA8E" id="4EfgX2ECD6M" role="2OqNvi">
                                  <ref role="37wK5l" to="3v5a:~Output.getStderr():java.lang.String" resolve="getStderr" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="6XrX4sU5tHx" role="3cqZAp">
                            <node concept="3clFbS" id="6XrX4sU5tH$" role="3clFbx">
                              <node concept="3clFbF" id="6XrX4sTZf5a" role="3cqZAp">
                                <node concept="2OqwBi" id="6XrX4sTZf5b" role="3clFbG">
                                  <node concept="2OqwBi" id="6XrX4sTZf5c" role="2Oq$k0">
                                    <node concept="2OqwBi" id="6XrX4sTZf5d" role="2Oq$k0">
                                      <node concept="37vLTw" id="4EfgX2ECD6O" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4EfgX2ECD6J" resolve="stderr" />
                                      </node>
                                      <node concept="liA8E" id="6XrX4sTZf5h" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                                        <node concept="Xl_RD" id="6XrX4sTZf5i" role="37wK5m">
                                          <property role="Xl_RC" value="\\n" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="39bAoz" id="6XrX4sTZf5j" role="2OqNvi" />
                                  </node>
                                  <node concept="2es0OD" id="6XrX4sTZf5k" role="2OqNvi">
                                    <node concept="1bVj0M" id="6XrX4sTZf5l" role="23t8la">
                                      <node concept="3clFbS" id="6XrX4sTZf5m" role="1bW5cS">
                                        <node concept="1daRAt" id="6XrX4sU8MRS" role="3cqZAp">
                                          <property role="1daRAr" value="ERROR" />
                                          <node concept="3cpWs3" id="6XrX4sU8NsN" role="1daK9t">
                                            <node concept="37vLTw" id="6XrX4sU8NsO" role="3uHU7w">
                                              <ref role="3cqZAo" node="6XrX4sTZf5r" resolve="str" />
                                            </node>
                                            <node concept="Xl_RD" id="6XrX4sU8NsP" role="3uHU7B">
                                              <property role="Xl_RC" value="[JCHR] " />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="6XrX4sTZf5r" role="1bW2Oz">
                                        <property role="TrG5h" value="str" />
                                        <node concept="2jxLKc" id="6XrX4sTZf5s" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6XrX4sU5v3Z" role="3clFbw">
                              <node concept="37vLTw" id="4EfgX2ECD6N" role="2Oq$k0">
                                <ref role="3cqZAo" node="4EfgX2ECD6J" resolve="stderr" />
                              </node>
                              <node concept="17RvpY" id="6XrX4sU5xqp" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="6XrX4sU5q5W" role="3cqZAp" />
                          <node concept="3clFbJ" id="6XrX4sU5fuA" role="3cqZAp">
                            <node concept="3clFbS" id="6XrX4sU5fuD" role="3clFbx">
                              <node concept="3cpWs8" id="6XrX4sU504Z" role="3cqZAp">
                                <node concept="3cpWsn" id="6XrX4sU5050" role="3cpWs9">
                                  <property role="TrG5h" value="genPaths" />
                                  <node concept="_YKpA" id="6XrX4sU504U" role="1tU5fm">
                                    <node concept="17QB3L" id="6SkxsMz$UXl" role="_ZDj9" />
                                  </node>
                                  <node concept="2OqwBi" id="6XrX4sU5051" role="33vP2m">
                                    <node concept="2OqwBi" id="6XrX4sU5052" role="2Oq$k0">
                                      <node concept="2OqwBi" id="6XrX4sU5053" role="2Oq$k0">
                                        <node concept="2OqwBi" id="6XrX4sU5054" role="2Oq$k0">
                                          <node concept="2OqwBi" id="6XrX4sU5055" role="2Oq$k0">
                                            <node concept="2OqwBi" id="6XrX4sU5056" role="2Oq$k0">
                                              <node concept="37vLTw" id="6XrX4sU5057" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6XrX4sTYReC" resolve="out" />
                                              </node>
                                              <node concept="liA8E" id="6XrX4sU5058" role="2OqNvi">
                                                <ref role="37wK5l" to="3v5a:~Output.getStdout():java.lang.String" resolve="getStdout" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="6XrX4sU5059" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                                              <node concept="Xl_RD" id="6XrX4sU505a" role="37wK5m">
                                                <property role="Xl_RC" value="\\n" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="39bAoz" id="6XrX4sU505b" role="2OqNvi" />
                                        </node>
                                        <node concept="3zZkjj" id="6XrX4sU505c" role="2OqNvi">
                                          <node concept="1bVj0M" id="6XrX4sU505d" role="23t8la">
                                            <node concept="3clFbS" id="6XrX4sU505e" role="1bW5cS">
                                              <node concept="3clFbF" id="6XrX4sU505f" role="3cqZAp">
                                                <node concept="2OqwBi" id="6XrX4sU505g" role="3clFbG">
                                                  <node concept="37vLTw" id="6XrX4sU505h" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="6XrX4sU505k" resolve="str" />
                                                  </node>
                                                  <node concept="liA8E" id="6XrX4sU505i" role="2OqNvi">
                                                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String):boolean" resolve="startsWith" />
                                                    <node concept="Xl_RD" id="6XrX4sU505j" role="37wK5m">
                                                      <property role="Xl_RC" value="Generated code written to " />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Rh6nW" id="6XrX4sU505k" role="1bW2Oz">
                                              <property role="TrG5h" value="str" />
                                              <node concept="2jxLKc" id="6XrX4sU505l" role="1tU5fm" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3$u5V9" id="6XrX4sU505m" role="2OqNvi">
                                        <node concept="1bVj0M" id="6XrX4sU505n" role="23t8la">
                                          <node concept="3clFbS" id="6XrX4sU505o" role="1bW5cS">
                                            <node concept="3clFbF" id="6XrX4sU505p" role="3cqZAp">
                                              <node concept="2OqwBi" id="6XrX4sU505q" role="3clFbG">
                                                <node concept="37vLTw" id="6XrX4sU505r" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6XrX4sU505w" resolve="str" />
                                                </node>
                                                <node concept="liA8E" id="6XrX4sU505s" role="2OqNvi">
                                                  <ref role="37wK5l" to="wyt6:~String.substring(int):java.lang.String" resolve="substring" />
                                                  <node concept="2OqwBi" id="6XrX4sU505t" role="37wK5m">
                                                    <node concept="Xl_RD" id="6XrX4sU505u" role="2Oq$k0">
                                                      <property role="Xl_RC" value="Generated code written to " />
                                                    </node>
                                                    <node concept="liA8E" id="6XrX4sU505v" role="2OqNvi">
                                                      <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Rh6nW" id="6XrX4sU505w" role="1bW2Oz">
                                            <property role="TrG5h" value="str" />
                                            <node concept="2jxLKc" id="6XrX4sU505x" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="ANE8D" id="6XrX4sU505y" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="6XrX4sU5ysy" role="3cqZAp" />
                              <node concept="3cpWs8" id="6XrX4sU6Pno" role="3cqZAp">
                                <node concept="3cpWsn" id="6XrX4sU6Pnp" role="3cpWs9">
                                  <property role="TrG5h" value="outDir" />
                                  <node concept="3uibUv" id="6XrX4sU6Pl_" role="1tU5fm">
                                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                  </node>
                                  <node concept="2OqwBi" id="6XrX4sU6Pnq" role="33vP2m">
                                    <node concept="2YIFZM" id="6XrX4sU6Pnr" role="2Oq$k0">
                                      <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
                                      <ref role="37wK5l" to="3ju5:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                                    </node>
                                    <node concept="liA8E" id="6XrX4sU6Pns" role="2OqNvi">
                                      <ref role="37wK5l" to="3ju5:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                                      <node concept="2OqwBi" id="6XrX4sU6Pnt" role="37wK5m">
                                        <node concept="2OqwBi" id="35Lj3TiwLxM" role="2Oq$k0">
                                          <node concept="37vLTw" id="35Lj3TiwKVD" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6XrX4sU3o4g" resolve="triple" />
                                          </node>
                                          <node concept="2sxana" id="35Lj3TiwPqj" role="2OqNvi">
                                            <ref role="2sxfKC" to="6zjw:35Lj3TiB$UA" resolve="clsOutput" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="6XrX4sU6Pnx" role="2OqNvi">
                                          <ref role="37wK5l" to="guwi:~File.getPath():java.lang.String" resolve="getPath" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="6XrX4sU6IEL" role="3cqZAp">
                                <node concept="3cpWsn" id="6XrX4sU6IEM" role="3cpWs9">
                                  <property role="TrG5h" value="delta" />
                                  <node concept="3uibUv" id="6XrX4sU6ID$" role="1tU5fm">
                                    <ref role="3uigEE" to="rk9m:s2Jv$gDl8s" resolve="FilesDelta" />
                                  </node>
                                  <node concept="2ShNRf" id="6XrX4sU6IEN" role="33vP2m">
                                    <node concept="1pGfFk" id="6XrX4sU6IEO" role="2ShVmc">
                                      <ref role="37wK5l" to="rk9m:s2Jv$gDl8u" resolve="FilesDelta" />
                                      <node concept="37vLTw" id="6XrX4sU6Pny" role="37wK5m">
                                        <ref role="3cqZAo" node="6XrX4sU6Pnp" resolve="outDir" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="6XrX4sU76sU" role="3cqZAp">
                                <node concept="2OqwBi" id="6XrX4sU77d7" role="3clFbG">
                                  <node concept="37vLTw" id="6XrX4sU76sT" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5L5h3brvIX3" resolve="deltaList" />
                                  </node>
                                  <node concept="TSZUe" id="6XrX4sU7beg" role="2OqNvi">
                                    <node concept="37vLTw" id="6XrX4sU7bFS" role="25WWJ7">
                                      <ref role="3cqZAo" node="6XrX4sU6IEM" resolve="delta" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="6XrX4sU6wam" role="3cqZAp" />
                              <node concept="3clFbF" id="6XrX4sU5A2B" role="3cqZAp">
                                <node concept="2OqwBi" id="6XrX4sU5AHI" role="3clFbG">
                                  <node concept="37vLTw" id="6XrX4sU5A2A" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6XrX4sU5050" resolve="genPaths" />
                                  </node>
                                  <node concept="2es0OD" id="6XrX4sU5CSj" role="2OqNvi">
                                    <node concept="1bVj0M" id="6XrX4sU5CSl" role="23t8la">
                                      <node concept="3clFbS" id="6XrX4sU5CSm" role="1bW5cS">
                                        <node concept="3cpWs8" id="6XrX4sU6V5a" role="3cqZAp">
                                          <node concept="3cpWsn" id="6XrX4sU6V5b" role="3cpWs9">
                                            <property role="TrG5h" value="javaFile" />
                                            <node concept="3uibUv" id="6XrX4sU6V3$" role="1tU5fm">
                                              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                            </node>
                                            <node concept="2OqwBi" id="6XrX4sU6V5c" role="33vP2m">
                                              <node concept="37vLTw" id="6XrX4sU6V5d" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6XrX4sU6Pnp" resolve="outDir" />
                                              </node>
                                              <node concept="liA8E" id="6XrX4sU6V5e" role="2OqNvi">
                                                <ref role="37wK5l" to="3ju5:~IFile.getDescendant(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getDescendant" />
                                                <node concept="37vLTw" id="6XrX4sU6V5f" role="37wK5m">
                                                  <ref role="3cqZAo" node="6XrX4sU5CSn" resolve="p" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbJ" id="35Lj3TiL5Ex" role="3cqZAp">
                                          <node concept="3clFbS" id="35Lj3TiL5E$" role="3clFbx">
                                            <node concept="3clFbF" id="6XrX4sU6Z2u" role="3cqZAp">
                                              <node concept="2OqwBi" id="6XrX4sU6ZvD" role="3clFbG">
                                                <node concept="37vLTw" id="6XrX4sU6Z2t" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6XrX4sU6IEM" resolve="delta" />
                                                </node>
                                                <node concept="liA8E" id="6XrX4sU7090" role="2OqNvi">
                                                  <ref role="37wK5l" to="rk9m:s2Jv$gDl8_" resolve="written" />
                                                  <node concept="37vLTw" id="6XrX4sU70D6" role="37wK5m">
                                                    <ref role="3cqZAo" node="6XrX4sU6V5b" resolve="javaFile" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3y3z36" id="35Lj3TiL8ne" role="3clFbw">
                                            <node concept="10Nm6u" id="35Lj3TiL9y9" role="3uHU7w" />
                                            <node concept="37vLTw" id="35Lj3TiL7cA" role="3uHU7B">
                                              <ref role="3cqZAo" node="6XrX4sU6V5b" resolve="javaFile" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="6XrX4sU5CSn" role="1bW2Oz">
                                        <property role="TrG5h" value="p" />
                                        <node concept="2jxLKc" id="6XrX4sU5CSo" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="4EfgX2EDx2D" role="3clFbw">
                              <node concept="3clFbC" id="6XrX4sU5hCH" role="3uHU7B">
                                <node concept="2OqwBi" id="6XrX4sU5g3y" role="3uHU7B">
                                  <node concept="37vLTw" id="6XrX4sU5fTS" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6XrX4sTYReC" resolve="out" />
                                  </node>
                                  <node concept="liA8E" id="6XrX4sU5gwx" role="2OqNvi">
                                    <ref role="37wK5l" to="3v5a:~Output.getExitCode():int" resolve="getExitCode" />
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="6XrX4sU5hYo" role="3uHU7w">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4EfgX2ECF4_" role="3uHU7w">
                                <node concept="37vLTw" id="4EfgX2ECEwz" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4EfgX2ECD6J" resolve="stderr" />
                                </node>
                                <node concept="17RlXB" id="4EfgX2EDg3A" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="6XrX4sU8d3r" role="9aQIa">
                              <node concept="3clFbS" id="6XrX4sU8d3s" role="9aQI4">
                                <node concept="1daRAt" id="6XrX4sU8HJA" role="3cqZAp">
                                  <property role="1daRAr" value="ERROR" />
                                  <node concept="Xl_RD" id="6XrX4sU8R26" role="1daK9t">
                                    <property role="Xl_RC" value="error compiling JCHR file" />
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6XrX4sU8k9T" role="3cqZAp">
                                  <node concept="37vLTI" id="4EfgX2EBCED" role="3clFbG">
                                    <node concept="3clFbT" id="4EfgX2EBD6k" role="37vLTx">
                                      <property role="3clFbU" value="false" />
                                    </node>
                                    <node concept="37vLTw" id="6XrX4sU8n7v" role="37vLTJ">
                                      <ref role="3cqZAo" node="6XrX4sU8iG9" resolve="success" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="TDmWw" id="6XrX4sU0dyr" role="TEbGg">
                          <node concept="3cpWsn" id="6XrX4sU0dyt" role="TDEfY">
                            <property role="TrG5h" value="ex" />
                            <node concept="3uibUv" id="6XrX4sU0i3f" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="6XrX4sU0dyx" role="TDEfX">
                            <node concept="1daRAt" id="6XrX4sU8VEU" role="3cqZAp">
                              <property role="1daRAr" value="ERROR" />
                              <node concept="Xl_RD" id="6XrX4sU8W9A" role="1daK9t">
                                <property role="Xl_RC" value="error running java process " />
                              </node>
                            </node>
                            <node concept="34ab3g" id="6XrX4sU0ian" role="3cqZAp">
                              <property role="35gtTG" value="error" />
                              <property role="34fQS0" value="true" />
                              <node concept="Xl_RD" id="6XrX4sU0iap" role="34bqiv">
                                <property role="Xl_RC" value="error running java process " />
                              </node>
                              <node concept="37vLTw" id="6XrX4sU0iar" role="34bMjA">
                                <ref role="3cqZAo" node="6XrX4sU0dyt" resolve="ex" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6XrX4sU3o4g" role="1bW2Oz">
                      <property role="TrG5h" value="triple" />
                      <node concept="2jxLKc" id="6XrX4sU3o4h" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6XrX4sTYz8H" role="3cqZAp" />
            <node concept="3cpWs8" id="1UWNDKzotp6" role="3cqZAp">
              <node concept="3cpWsn" id="1UWNDKzotp7" role="3cpWs9">
                <property role="TrG5h" value="elapsed" />
                <node concept="10P55v" id="1UWNDKzotp8" role="1tU5fm" />
                <node concept="FJ1c_" id="1UWNDKzotp9" role="33vP2m">
                  <node concept="3b6qkQ" id="1UWNDKzotpa" role="3uHU7w">
                    <property role="$nhwW" value="1000." />
                  </node>
                  <node concept="1eOMI4" id="1UWNDKzotpb" role="3uHU7B">
                    <node concept="3cpWsd" id="1UWNDKzotpc" role="1eOMHV">
                      <node concept="37vLTw" id="1UWNDKzotpd" role="3uHU7w">
                        <ref role="3cqZAo" node="1UWNDKzorr1" resolve="time" />
                      </node>
                      <node concept="2YIFZM" id="1UWNDKzotpe" role="3uHU7B">
                        <ref role="37wK5l" to="wyt6:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1daRAt" id="1UWNDKzotpf" role="3cqZAp">
              <property role="1daRAr" value="INFO" />
              <node concept="2YIFZM" id="1UWNDKzotpg" role="1daK9t">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="1UWNDKzotph" role="37wK5m">
                  <property role="Xl_RC" value="Running JCHR compiler took %2.2f sec." />
                </node>
                <node concept="37vLTw" id="1UWNDKzotpi" role="37wK5m">
                  <ref role="3cqZAo" node="1UWNDKzotp7" resolve="elapsed" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1UWNDKzosJ3" role="3cqZAp" />
            <node concept="3clFbJ" id="6XrX4sU8nNP" role="3cqZAp">
              <node concept="3clFbS" id="6XrX4sU8nNS" role="3clFbx">
                <node concept="3D7k6m" id="6XrX4sU8eV0" role="3cqZAp">
                  <property role="3D7k6l" value="FAILURE" />
                </node>
              </node>
              <node concept="3fqX7Q" id="6XrX4sU8p2V" role="3clFbw">
                <node concept="37vLTw" id="6XrX4sU8p7t" role="3fr31v">
                  <ref role="3cqZAo" node="6XrX4sU8iG9" resolve="success" />
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="3U_KxQf996W" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="ElOAg" id="6XrX4sU5V$E" role="8Wnug">
                <node concept="2ry78W" id="6XrX4sU5X9f" role="ElOA9">
                  <ref role="2ryb1Q" to="fn29:17BsPLzesis" resolve="DResource" />
                  <node concept="2r$n1x" id="6XrX4sU5X9d" role="2r_Bvh">
                    <ref role="2r$qp6" to="fn29:17BsPLzesix" resolve="delta" />
                    <node concept="37vLTw" id="6XrX4sU756B" role="2r_lH1">
                      <ref role="3cqZAo" node="5L5h3brvIX3" resolve="deltaList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3D36IL" id="35Lj3TitfCT" role="3D36I5">
        <node concept="3D27Fh" id="35Lj3Tith5c" role="3D36IM">
          <ref role="3uigEE" to="6zjw:35Lj3TiB$U_" resolve="JCRHResource" />
        </node>
      </node>
    </node>
    <node concept="3HPw9p" id="6XrX4sTMzvp" role="1Mm5TH">
      <ref role="1Mm5Yu" to="tpcq:5L5h3brvz7i" resolve="Generate" />
    </node>
    <node concept="3HPw9p" id="6XrX4sTMzvq" role="1Mm5TH">
      <ref role="1Mm5Yu" to="fy8e:5L5h3brvDPx" resolve="JavaCompile" />
    </node>
    <node concept="3HPw9p" id="6XrX4sTMzvr" role="1Mm5TH">
      <ref role="1Mm5Yu" to="fy8e:taepSZ9r$V" resolve="Make" />
    </node>
    <node concept="3HPw9p" id="1UWNDKzkt$I" role="1Mm5TH">
      <ref role="1Mm5Yu" to="fy8e:5L5h3brvIVD" resolve="ReloadClasses" />
    </node>
  </node>
</model>

