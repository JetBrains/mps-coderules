<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.rule)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
  </languages>
  <imports>
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ouhv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.annotation(JDK/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="6pyv" ref="r:e418ad23-36dc-4ed0-b837-26a7fd157da3(jetbrains.mps.lang.typesystem2.program)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.macro)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188206331916" name="jetbrains.mps.baseLanguage.structure.Annotation" flags="ig" index="2ABs$o" />
      <concept id="1188206574119" name="jetbrains.mps.baseLanguage.structure.AnnotationMethodDeclaration" flags="ig" index="2ACnGN">
        <child id="5790076564176875336" name="defaultValue" index="1IitiX" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
        <child id="1107880067339" name="method" index="3MN40a" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="2580416627845338977" name="jetbrains.mps.baseLanguage.structure.ImplicitAnnotationInstanceValue" flags="ng" index="1SXeKx" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4OKkcnfu_xe">
    <property role="TrG5h" value="AbstractRuleTemplateManifest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1ggxSI7z1Os" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVPtq7Z" role="jymVt">
      <property role="TrG5h" value="queryTemplates" />
      <property role="1EzhhJ" value="true" />
      <node concept="_YKpA" id="7P_FdVPtqGB" role="3clF45">
        <node concept="3uibUv" id="6OXbTD$jYJi" role="_ZDj9">
          <ref role="3uigEE" node="6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7P_FdVPtq82" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPtq83" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7P_FdVPtpzK" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUaiLz" role="jymVt">
      <property role="TrG5h" value="handlerTemplates" />
      <property role="1EzhhJ" value="true" />
      <node concept="_YKpA" id="20Ay2VeZMvJ" role="3clF45">
        <node concept="3uibUv" id="20Ay2VeZMvL" role="_ZDj9">
          <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXUaiLA" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUaiLB" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MqhgXUaiL8" role="jymVt" />
    <node concept="3Tm1VV" id="4OKkcnfu_xn" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4OKkcnfu_zf">
    <property role="TrG5h" value="CustomConstraints" />
    <node concept="2tJIrI" id="5uFPQ7CgnQL" role="jymVt" />
    <node concept="Wx3nA" id="5uFPQ7CgjLS" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TYPEOF_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7ClELk" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7CgjLN" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7CgjLO" role="33vP2m">
        <node concept="1pGfFk" id="5uFPQ7CgjLP" role="2ShVmc">
          <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
          <node concept="Xl_RD" id="5uFPQ7CgjLQ" role="37wK5m">
            <property role="Xl_RC" value="typeOf" />
          </node>
          <node concept="3cmrfG" id="5uFPQ7CgjLR" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1CcQBrQgCB2" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TYPENODE_SYM" />
      <node concept="3Tm1VV" id="1CcQBrQgCB3" role="1B3o_S" />
      <node concept="3uibUv" id="1CcQBrQgCB4" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
      </node>
      <node concept="2ShNRf" id="1CcQBrQgCB5" role="33vP2m">
        <node concept="1pGfFk" id="1CcQBrQgCB6" role="2ShVmc">
          <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
          <node concept="Xl_RD" id="1CcQBrQgCB7" role="37wK5m">
            <property role="Xl_RC" value="typeNode" />
          </node>
          <node concept="3cmrfG" id="1CcQBrQgCB8" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oI9Yrzaiq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="Wx3nA" id="5tpkEj3JBli" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ERROR_SYM" />
      <node concept="3Tm1VV" id="5tpkEj3JBlj" role="1B3o_S" />
      <node concept="3uibUv" id="5tpkEj3JBlk" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
      </node>
      <node concept="2ShNRf" id="5tpkEj3JBll" role="33vP2m">
        <node concept="1pGfFk" id="5tpkEj3JBlm" role="2ShVmc">
          <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
          <node concept="Xl_RD" id="5tpkEj3JBln" role="37wK5m">
            <property role="Xl_RC" value="error" />
          </node>
          <node concept="3cmrfG" id="5tpkEj3JBlo" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oI9Yrzan3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcnfu_zg" role="jymVt" />
    <node concept="2YIFZL" id="4OKkcnfu_$d" role="jymVt">
      <property role="TrG5h" value="typeOf" />
      <node concept="37vLTG" id="4OKkcnfu_$e" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="4OKkcnfu_$f" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfu_$g" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3uibUv" id="4OKkcnfu_$h" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="5uFPQ7CgkmB" role="3clF45">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
      <node concept="3Tm1VV" id="4OKkcnfu_$j" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcnfu_$k" role="3clF47">
        <node concept="3clFbF" id="4sSe4$oN6pX" role="3cqZAp">
          <node concept="2OqwBi" id="4sSe4$oN6pY" role="3clFbG">
            <node concept="2OqwBi" id="4sSe4$oN6pZ" role="2Oq$k0">
              <node concept="2ShNRf" id="4sSe4$oN6q0" role="2Oq$k0">
                <node concept="1pGfFk" id="4sSe4$oN6q1" role="2ShVmc">
                  <ref role="37wK5l" to="6pyv:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                  <node concept="37vLTw" id="4sSe4$oN6I7" role="37wK5m">
                    <ref role="3cqZAo" node="5uFPQ7CgjLS" resolve="TYPEOF_SYM" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4sSe4$oN6q3" role="2OqNvi">
                <ref role="37wK5l" to="6pyv:4sSe4$oM2sT" resolve="withArguments" />
                <node concept="37vLTw" id="4sSe4$oN7Bp" role="37wK5m">
                  <ref role="3cqZAo" node="4OKkcnfu_$e" resolve="type" />
                </node>
                <node concept="37vLTw" id="4sSe4$oN7Bq" role="37wK5m">
                  <ref role="3cqZAo" node="4OKkcnfu_$g" resolve="anchor" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4sSe4$oN6q5" role="2OqNvi">
              <ref role="37wK5l" to="6pyv:4sSe4$oM2zI" resolve="toConstraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcnfu_$r" role="jymVt" />
    <node concept="2YIFZL" id="1CcQBrQgD4I" role="jymVt">
      <property role="TrG5h" value="typeNode" />
      <node concept="37vLTG" id="1CcQBrQgD4J" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="1CcQBrQgD4K" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1CcQBrQgD4L" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3uibUv" id="1CcQBrQgD4M" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="1CcQBrQgD4N" role="3clF45">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
      <node concept="3Tm1VV" id="1CcQBrQgD4O" role="1B3o_S" />
      <node concept="3clFbS" id="1CcQBrQgD4P" role="3clF47">
        <node concept="3clFbF" id="1CcQBrQgD4Q" role="3cqZAp">
          <node concept="2OqwBi" id="1CcQBrQgD4R" role="3clFbG">
            <node concept="2OqwBi" id="1CcQBrQgD4S" role="2Oq$k0">
              <node concept="2ShNRf" id="1CcQBrQgD4T" role="2Oq$k0">
                <node concept="1pGfFk" id="1CcQBrQgD4U" role="2ShVmc">
                  <ref role="37wK5l" to="6pyv:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                  <node concept="37vLTw" id="1CcQBrQgDfc" role="37wK5m">
                    <ref role="3cqZAo" node="1CcQBrQgCB2" resolve="TYPENODE_SYM" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1CcQBrQgD4W" role="2OqNvi">
                <ref role="37wK5l" to="6pyv:4sSe4$oM2sT" resolve="withArguments" />
                <node concept="37vLTw" id="1CcQBrQgD4X" role="37wK5m">
                  <ref role="3cqZAo" node="1CcQBrQgD4J" resolve="type" />
                </node>
                <node concept="37vLTw" id="1CcQBrQgD4Y" role="37wK5m">
                  <ref role="3cqZAo" node="1CcQBrQgD4L" resolve="anchor" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1CcQBrQgD4Z" role="2OqNvi">
              <ref role="37wK5l" to="6pyv:4sSe4$oM2zI" resolve="toConstraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrQgD4H" role="jymVt" />
    <node concept="2YIFZL" id="4OKkcnfu_$s" role="jymVt">
      <property role="TrG5h" value="prepend2" />
      <node concept="37vLTG" id="4OKkcnfu_$t" role="3clF46">
        <property role="TrG5h" value="head1" />
        <node concept="3uibUv" id="4OKkcnfu_$u" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfu_$v" role="3clF46">
        <property role="TrG5h" value="head2" />
        <node concept="3uibUv" id="4OKkcnfu_$w" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfu_$x" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="8X2XB" id="4OKkcnfu_$y" role="1tU5fm">
          <node concept="3uibUv" id="4OKkcnfu_$z" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="4OKkcnfu_$$" role="3clF45">
        <node concept="3uibUv" id="4OKkcnfu_$_" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4OKkcnfu_$A" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcnfu_$B" role="3clF47">
        <node concept="3cpWs8" id="4OKkcnfu_$C" role="3cqZAp">
          <node concept="3cpWsn" id="4OKkcnfu_$D" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="4OKkcnfu_$E" role="1tU5fm">
              <node concept="3uibUv" id="4OKkcnfu_$F" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="4OKkcnfu_$G" role="33vP2m">
              <node concept="3$_iS1" id="4OKkcnfu_$H" role="2ShVmc">
                <node concept="3$GHV9" id="4OKkcnfu_$I" role="3$GQph">
                  <node concept="3cpWs3" id="4OKkcnfu_$J" role="3$I4v7">
                    <node concept="3cmrfG" id="4OKkcnfu_$K" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="4OKkcnfu_$L" role="3uHU7B">
                      <node concept="37vLTw" id="4OKkcnfu_$M" role="2Oq$k0">
                        <ref role="3cqZAo" node="4OKkcnfu_$x" resolve="tail" />
                      </node>
                      <node concept="1Rwk04" id="4OKkcnfu_$N" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="4OKkcnfu_$O" role="3$_nBY">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OKkcnfu_$P" role="3cqZAp">
          <node concept="37vLTI" id="4OKkcnfu_$Q" role="3clFbG">
            <node concept="37vLTw" id="4OKkcnfu_$R" role="37vLTx">
              <ref role="3cqZAo" node="4OKkcnfu_$t" resolve="head1" />
            </node>
            <node concept="AH0OO" id="4OKkcnfu_$S" role="37vLTJ">
              <node concept="3cmrfG" id="4OKkcnfu_$T" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="4OKkcnfu_$U" role="AHHXb">
                <ref role="3cqZAo" node="4OKkcnfu_$D" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OKkcnfu_$V" role="3cqZAp">
          <node concept="37vLTI" id="4OKkcnfu_$W" role="3clFbG">
            <node concept="37vLTw" id="4OKkcnfu_$X" role="37vLTx">
              <ref role="3cqZAo" node="4OKkcnfu_$v" resolve="head2" />
            </node>
            <node concept="AH0OO" id="4OKkcnfu_$Y" role="37vLTJ">
              <node concept="3cmrfG" id="4OKkcnfu_$Z" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="4OKkcnfu__0" role="AHHXb">
                <ref role="3cqZAo" node="4OKkcnfu_$D" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OKkcnfu__1" role="3cqZAp">
          <node concept="2YIFZM" id="4OKkcnfu__2" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~System.arraycopy(java.lang.Object,int,java.lang.Object,int,int):void" resolve="arraycopy" />
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <node concept="37vLTw" id="4OKkcnfu__3" role="37wK5m">
              <ref role="3cqZAo" node="4OKkcnfu_$x" resolve="tail" />
            </node>
            <node concept="3cmrfG" id="4OKkcnfu__4" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="4OKkcnfu__5" role="37wK5m">
              <ref role="3cqZAo" node="4OKkcnfu_$D" resolve="array" />
            </node>
            <node concept="3cmrfG" id="4OKkcnfu__6" role="37wK5m">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="4OKkcnfu__7" role="37wK5m">
              <node concept="37vLTw" id="4OKkcnfu__8" role="2Oq$k0">
                <ref role="3cqZAo" node="4OKkcnfu_$x" resolve="tail" />
              </node>
              <node concept="1Rwk04" id="4OKkcnfu__9" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OKkcnfu__a" role="3cqZAp">
          <node concept="37vLTw" id="4OKkcnfu__b" role="3clFbG">
            <ref role="3cqZAo" node="4OKkcnfu_$D" resolve="array" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcnfu__c" role="jymVt" />
    <node concept="2YIFZL" id="4OKkcnfu__d" role="jymVt">
      <property role="TrG5h" value="prepend3" />
      <node concept="37vLTG" id="4OKkcnfu__e" role="3clF46">
        <property role="TrG5h" value="head1" />
        <node concept="3uibUv" id="4OKkcnfu__f" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfu__g" role="3clF46">
        <property role="TrG5h" value="head2" />
        <node concept="3uibUv" id="4OKkcnfu__h" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfu__i" role="3clF46">
        <property role="TrG5h" value="head3" />
        <node concept="3uibUv" id="4OKkcnfu__j" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfu__k" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="8X2XB" id="4OKkcnfu__l" role="1tU5fm">
          <node concept="3uibUv" id="4OKkcnfu__m" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="4OKkcnfu__n" role="3clF45">
        <node concept="3uibUv" id="4OKkcnfu__o" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4OKkcnfu__p" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcnfu__q" role="3clF47">
        <node concept="3cpWs8" id="4OKkcnfu__r" role="3cqZAp">
          <node concept="3cpWsn" id="4OKkcnfu__s" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="4OKkcnfu__t" role="1tU5fm">
              <node concept="3uibUv" id="4OKkcnfu__u" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="4OKkcnfu__v" role="33vP2m">
              <node concept="3$_iS1" id="4OKkcnfu__w" role="2ShVmc">
                <node concept="3$GHV9" id="4OKkcnfu__x" role="3$GQph">
                  <node concept="3cpWs3" id="4OKkcnfu__y" role="3$I4v7">
                    <node concept="3cmrfG" id="4OKkcnfu__z" role="3uHU7w">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="2OqwBi" id="4OKkcnfu__$" role="3uHU7B">
                      <node concept="37vLTw" id="4OKkcnfu___" role="2Oq$k0">
                        <ref role="3cqZAo" node="4OKkcnfu__k" resolve="tail" />
                      </node>
                      <node concept="1Rwk04" id="4OKkcnfu__A" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="4OKkcnfu__B" role="3$_nBY">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OKkcnfu__C" role="3cqZAp">
          <node concept="37vLTI" id="4OKkcnfu__D" role="3clFbG">
            <node concept="37vLTw" id="4OKkcnfu__E" role="37vLTx">
              <ref role="3cqZAo" node="4OKkcnfu__e" resolve="head1" />
            </node>
            <node concept="AH0OO" id="4OKkcnfu__F" role="37vLTJ">
              <node concept="3cmrfG" id="4OKkcnfu__G" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="4OKkcnfu__H" role="AHHXb">
                <ref role="3cqZAo" node="4OKkcnfu__s" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OKkcnfu__I" role="3cqZAp">
          <node concept="37vLTI" id="4OKkcnfu__J" role="3clFbG">
            <node concept="37vLTw" id="4OKkcnfu__K" role="37vLTx">
              <ref role="3cqZAo" node="4OKkcnfu__g" resolve="head2" />
            </node>
            <node concept="AH0OO" id="4OKkcnfu__L" role="37vLTJ">
              <node concept="3cmrfG" id="4OKkcnfu__M" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="4OKkcnfu__N" role="AHHXb">
                <ref role="3cqZAo" node="4OKkcnfu__s" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OKkcnfu__O" role="3cqZAp">
          <node concept="37vLTI" id="4OKkcnfu__P" role="3clFbG">
            <node concept="37vLTw" id="4OKkcnfu__Q" role="37vLTx">
              <ref role="3cqZAo" node="4OKkcnfu__i" resolve="head3" />
            </node>
            <node concept="AH0OO" id="4OKkcnfu__R" role="37vLTJ">
              <node concept="3cmrfG" id="4OKkcnfu__S" role="AHEQo">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="37vLTw" id="4OKkcnfu__T" role="AHHXb">
                <ref role="3cqZAo" node="4OKkcnfu__s" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OKkcnfu__U" role="3cqZAp">
          <node concept="2YIFZM" id="4OKkcnfu__V" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~System.arraycopy(java.lang.Object,int,java.lang.Object,int,int):void" resolve="arraycopy" />
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <node concept="37vLTw" id="4OKkcnfu__W" role="37wK5m">
              <ref role="3cqZAo" node="4OKkcnfu__k" resolve="tail" />
            </node>
            <node concept="3cmrfG" id="4OKkcnfu__X" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="4OKkcnfu__Y" role="37wK5m">
              <ref role="3cqZAo" node="4OKkcnfu__s" resolve="array" />
            </node>
            <node concept="3cmrfG" id="4OKkcnfu__Z" role="37wK5m">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="2OqwBi" id="4OKkcnfu_A0" role="37wK5m">
              <node concept="37vLTw" id="4OKkcnfu_A1" role="2Oq$k0">
                <ref role="3cqZAo" node="4OKkcnfu__k" resolve="tail" />
              </node>
              <node concept="1Rwk04" id="4OKkcnfu_A2" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OKkcnfu_A3" role="3cqZAp">
          <node concept="37vLTw" id="4OKkcnfu_A4" role="3clFbG">
            <ref role="3cqZAo" node="4OKkcnfu__s" resolve="array" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4OKkcnfu_A5" role="1B3o_S" />
  </node>
  <node concept="Qs71p" id="4OKkcnfu_Ag">
    <property role="TrG5h" value="RuleTemplateMehodKind" />
    <property role="3GE5qa" value="ruleTemplate" />
    <node concept="QsSxf" id="4OKkcnfu_Ah" role="Qtgdg">
      <property role="TrG5h" value="HEAD_KEPT" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="4OKkcnfu_Ai" role="Qtgdg">
      <property role="TrG5h" value="HEAD_REPLACED" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="4OKkcnfu_Aj" role="Qtgdg">
      <property role="TrG5h" value="GUARD" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="4OKkcnfu_Ak" role="Qtgdg">
      <property role="TrG5h" value="BODY" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="4OKkcnfu_Al" role="1B3o_S" />
  </node>
  <node concept="2ABs$o" id="4OKkcnfu_Am">
    <property role="TrG5h" value="RuleTemplateMethod" />
    <property role="3GE5qa" value="ruleTemplate" />
    <node concept="2ACnGN" id="4OKkcnfu_An" role="3MN40a">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="kind" />
      <node concept="3clFbS" id="4OKkcnfu_Ao" role="3clF47" />
      <node concept="3uibUv" id="4OKkcnfu_Ap" role="3clF45">
        <ref role="3uigEE" node="4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
      </node>
      <node concept="3Tm1VV" id="4OKkcnfu_Aq" role="1B3o_S" />
    </node>
    <node concept="2ACnGN" id="18kNIl1cCoL" role="3MN40a">
      <property role="TrG5h" value="generated" />
      <node concept="3Tm1VV" id="18kNIl1cCoN" role="1B3o_S" />
      <node concept="3clFbS" id="18kNIl1cCoO" role="3clF47" />
      <node concept="10P_77" id="18kNIl1cCpk" role="3clF45" />
      <node concept="3clFbT" id="18kNIl1cCVA" role="1IitiX">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4OKkcnfu_Ar" role="1B3o_S" />
    <node concept="2AHcQZ" id="4OKkcnfu_As" role="2AJF6D">
      <ref role="2AI5Lk" to="ouhv:~Retention" resolve="Retention" />
      <node concept="1SXeKx" id="4OKkcnfu_At" role="2B76xF">
        <ref role="2B6OnR" to="ouhv:~Retention.value()" resolve="value" />
        <node concept="Rm8GO" id="4OKkcnfu_Au" role="2B70Vg">
          <ref role="Rm8GQ" to="ouhv:~RetentionPolicy.CLASS" resolve="CLASS" />
          <ref role="1Px2BO" to="ouhv:~RetentionPolicy" resolve="RetentionPolicy" />
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="4OKkcnfu_Av" role="2AJF6D">
      <ref role="2AI5Lk" to="ouhv:~Target" resolve="Target" />
      <node concept="1SXeKx" id="4OKkcnfu_Aw" role="2B76xF">
        <ref role="2B6OnR" to="ouhv:~Target.value()" resolve="value" />
        <node concept="Rm8GO" id="4OKkcnfu_Ax" role="2B70Vg">
          <ref role="Rm8GQ" to="ouhv:~ElementType.METHOD" resolve="METHOD" />
          <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1ffsG7bUbCM">
    <property role="TrG5h" value="BaseRuleTemplate" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="ruleTemplate" />
    <node concept="2tJIrI" id="1ffsG7bUbEG" role="jymVt" />
    <node concept="3clFbW" id="1ffsG7bUbEV" role="jymVt">
      <node concept="37vLTG" id="4MqhgXUnerW" role="3clF46">
        <property role="TrG5h" value="handlerTemplate" />
        <node concept="3uibUv" id="4MqhgXUneGy" role="1tU5fm">
          <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="1ffsG7bUbF9" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1ffsG7bUbGX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="62MNP_kY7Gw" role="3clF46">
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="62MNP_kY7PQ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3cqZAl" id="1ffsG7bUbEX" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bUbEY" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bUbEZ" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bUbIP" role="3cqZAp">
          <node concept="37vLTI" id="1ffsG7bUbIR" role="3clFbG">
            <node concept="2OqwBi" id="1ffsG7bUbIV" role="37vLTJ">
              <node concept="Xjq3P" id="1ffsG7bUbIY" role="2Oq$k0" />
              <node concept="2OwXpG" id="1ffsG7bUbIU" role="2OqNvi">
                <ref role="2Oxat5" node="1ffsG7bUbIL" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="1ffsG7bUbIZ" role="37vLTx">
              <ref role="3cqZAo" node="1ffsG7bUbF9" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62MNP_kY7Vf" role="3cqZAp">
          <node concept="37vLTI" id="62MNP_kY7Vh" role="3clFbG">
            <node concept="2OqwBi" id="62MNP_kY7Vl" role="37vLTJ">
              <node concept="Xjq3P" id="62MNP_kY7Vo" role="2Oq$k0" />
              <node concept="2OwXpG" id="62MNP_kY7Vk" role="2OqNvi">
                <ref role="2Oxat5" node="62MNP_kY7Vb" resolve="templateRef" />
              </node>
            </node>
            <node concept="37vLTw" id="62MNP_kY7Vp" role="37vLTx">
              <ref role="3cqZAo" node="62MNP_kY7Gw" resolve="templateRef" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXUnfaU" role="3cqZAp">
          <node concept="37vLTI" id="4MqhgXUnfaW" role="3clFbG">
            <node concept="2OqwBi" id="4MqhgXUnfCB" role="37vLTJ">
              <node concept="Xjq3P" id="4MqhgXUnfEA" role="2Oq$k0" />
              <node concept="2OwXpG" id="4MqhgXUnfCE" role="2OqNvi">
                <ref role="2Oxat5" node="4MqhgXUnfaQ" resolve="handlerTemplate" />
              </node>
            </node>
            <node concept="37vLTw" id="4MqhgXUnfb0" role="37vLTx">
              <ref role="3cqZAo" node="4MqhgXUnerW" resolve="handlerTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZTGJF" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bUcCI" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="1ffsG7bUcCJ" role="3clF45" />
      <node concept="3Tm1VV" id="4vBwiiUWOlD" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bUcCL" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bUcCM" role="3cqZAp">
          <node concept="37vLTw" id="1ffsG7bUde9" role="3clFbG">
            <ref role="3cqZAo" node="1ffsG7bUbIL" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4vBwiiUWOKv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4vBwiiUWRok" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdz3PF6" role="jymVt">
      <property role="TrG5h" value="isExactMatch" />
      <node concept="10P_77" id="7XdbJdz3PF7" role="3clF45" />
      <node concept="3Tm1VV" id="7XdbJdz3PF8" role="1B3o_S" />
      <node concept="3clFbS" id="7XdbJdz3PF9" role="3clF47">
        <node concept="3clFbF" id="7XdbJdz3PFa" role="3cqZAp">
          <node concept="3clFbT" id="7XdbJdz3PFb" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7XdbJdz3PFc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdyi9b4" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdyi9Ld" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="applyReduce" />
      <node concept="16syzq" id="7XdbJdyi9Le" role="3clF45">
        <ref role="16sUi3" node="7XdbJdyi9Lq" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="7XdbJdyi9Lf" role="1B3o_S" />
      <node concept="37vLTG" id="7XdbJdyi9Lh" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="7XdbJdyi9Li" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7XdbJdyi9Lj" role="3clF46">
        <property role="TrG5h" value="init" />
        <node concept="16syzq" id="7XdbJdyi9Lk" role="1tU5fm">
          <ref role="16sUi3" node="7XdbJdyi9Lq" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="7XdbJdyi9Ll" role="3clF46">
        <property role="TrG5h" value="applyFun" />
        <node concept="1ajhzC" id="7XdbJdyi9Lm" role="1tU5fm">
          <node concept="16syzq" id="7XdbJdyi9Ln" role="1ajw0F">
            <ref role="16sUi3" node="7XdbJdyi9Lq" resolve="T" />
          </node>
          <node concept="16syzq" id="7XdbJdyi9Lr" role="1ajw0F">
            <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
          </node>
          <node concept="16syzq" id="7XdbJdyi9Lp" role="1ajl9A">
            <ref role="16sUi3" node="7XdbJdyi9Lq" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7XdbJdyi9Lq" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3clFbS" id="7XdbJdyi9Ls" role="3clF47">
        <node concept="3cpWs8" id="7XdbJdyicox" role="3cqZAp">
          <node concept="3cpWsn" id="7XdbJdyicoy" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="16syzq" id="7XdbJdyicow" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
            </node>
            <node concept="1rXfSq" id="7XdbJdyicoz" role="33vP2m">
              <ref role="37wK5l" node="3IIf9OAJOPP" resolve="newToken" />
              <node concept="37vLTw" id="mJ_D13ZSBm" role="37wK5m">
                <ref role="3cqZAo" node="7XdbJdyi9Lh" resolve="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7XdbJdyMn2U" role="3cqZAp">
          <node concept="3clFbS" id="7XdbJdyMn2W" role="3clFbx">
            <node concept="3cpWs6" id="7XdbJdyModD" role="3cqZAp">
              <node concept="2Sg_IR" id="7XdbJdyModE" role="3cqZAk">
                <node concept="37vLTw" id="7XdbJdyModF" role="2SgHGx">
                  <ref role="3cqZAo" node="7XdbJdyi9Lj" resolve="init" />
                </node>
                <node concept="37vLTw" id="7XdbJdyModG" role="2SgHGx">
                  <ref role="3cqZAo" node="7XdbJdyicoy" resolve="token" />
                </node>
                <node concept="37vLTw" id="7XdbJdyModH" role="2SgG2M">
                  <ref role="3cqZAo" node="7XdbJdyi9Ll" resolve="applyFun" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7XdbJdyMswE" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7XdbJdyMnfw" role="3clFbw">
            <node concept="37vLTw" id="7XdbJdyMn6T" role="2Oq$k0">
              <ref role="3cqZAo" node="7XdbJdyicoy" resolve="token" />
            </node>
            <node concept="liA8E" id="7XdbJdyMnqR" role="2OqNvi">
              <ref role="37wK5l" node="2RRx4MZ6CBV" resolve="isApplicable" />
            </node>
          </node>
          <node concept="9aQIb" id="7XdbJdyMqxZ" role="9aQIa">
            <node concept="3clFbS" id="7XdbJdyMqy0" role="9aQI4">
              <node concept="3cpWs6" id="7XdbJdyMsZY" role="3cqZAp">
                <node concept="37vLTw" id="7XdbJdyMuyr" role="3cqZAk">
                  <ref role="3cqZAo" node="7XdbJdyi9Lj" resolve="init" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdyiayM" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdyi9Lu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="3cqZAl" id="7XdbJdyi9Lv" role="3clF45" />
      <node concept="3Tm1VV" id="7XdbJdyi9Lw" role="1B3o_S" />
      <node concept="37vLTG" id="7XdbJdyi9Ly" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="7XdbJdyi9Lz" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7XdbJdyi9L$" role="3clF46">
        <property role="TrG5h" value="applyFun" />
        <node concept="1ajhzC" id="7XdbJdyi9L_" role="1tU5fm">
          <node concept="16syzq" id="7XdbJdyi9LC" role="1ajw0F">
            <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
          </node>
          <node concept="3cqZAl" id="7XdbJdyi9LB" role="1ajl9A" />
        </node>
      </node>
      <node concept="3clFbS" id="7XdbJdyi9LD" role="3clF47">
        <node concept="3cpWs8" id="7XdbJdyinIU" role="3cqZAp">
          <node concept="3cpWsn" id="7XdbJdyinIV" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="16syzq" id="7XdbJdyinIW" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
            </node>
            <node concept="1rXfSq" id="7XdbJdyinIX" role="33vP2m">
              <ref role="37wK5l" node="3IIf9OAJOPP" resolve="newToken" />
              <node concept="37vLTw" id="mJ_D13ZU0N" role="37wK5m">
                <ref role="3cqZAo" node="7XdbJdyi9Ly" resolve="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7XdbJdyMwA4" role="3cqZAp">
          <node concept="3clFbS" id="7XdbJdyMwA6" role="3clFbx">
            <node concept="3clFbF" id="7XdbJdyinJ4" role="3cqZAp">
              <node concept="2Sg_IR" id="7XdbJdyinJ5" role="3clFbG">
                <node concept="37vLTw" id="7XdbJdyinJ7" role="2SgHGx">
                  <ref role="3cqZAo" node="7XdbJdyinIV" resolve="token" />
                </node>
                <node concept="37vLTw" id="7XdbJdyinJ8" role="2SgG2M">
                  <ref role="3cqZAo" node="7XdbJdyi9L$" resolve="applyFun" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7XdbJdyMwNO" role="3clFbw">
            <node concept="37vLTw" id="7XdbJdyMwDO" role="2Oq$k0">
              <ref role="3cqZAo" node="7XdbJdyinIV" resolve="token" />
            </node>
            <node concept="liA8E" id="7XdbJdyMwZ9" role="2OqNvi">
              <ref role="37wK5l" node="2RRx4MZ6CBV" resolve="isApplicable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tPOoeSDkEh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdz5jXz" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdz5lDL" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createToken" />
      <node concept="16syzq" id="7XdbJdz5lDQ" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
      </node>
      <node concept="3Tmbuc" id="7XdbJdz5okr" role="1B3o_S" />
      <node concept="3clFbS" id="7XdbJdz5lDR" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7XdbJdz5k0i" role="jymVt" />
    <node concept="3clFb_" id="75vUFrSIQhr" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="initToken" />
      <node concept="37vLTG" id="75vUFrSIQhu" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="16syzq" id="75vUFrSIQhz" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
        </node>
      </node>
      <node concept="37vLTG" id="75vUFrSIQhs" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="75vUFrSIQht" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="6YKq674vGah" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
      </node>
      <node concept="3Tmbuc" id="7XdbJdz5vEM" role="1B3o_S" />
      <node concept="3clFbS" id="75vUFrSIQh_" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="75vUFrSIQ8c" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUsgC4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="handlerTemplate" />
      <node concept="3uibUv" id="4MqhgXUsgC5" role="3clF45">
        <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
      </node>
      <node concept="3Tm1VV" id="4MqhgXUsgC6" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUsgC8" role="3clF47">
        <node concept="3clFbF" id="4MqhgXUshf7" role="3cqZAp">
          <node concept="37vLTw" id="4MqhgXUshf5" role="3clFbG">
            <ref role="3cqZAo" node="4MqhgXUnfaQ" resolve="handlerTemplate" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4MqhgXUsgC9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUshra" role="jymVt" />
    <node concept="3clFb_" id="62MNP_kY8lD" role="jymVt">
      <property role="TrG5h" value="templateRef" />
      <node concept="3uibUv" id="62MNP_kY8Lq" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="6i42QSs9GTn" role="1B3o_S" />
      <node concept="3clFbS" id="62MNP_kY8lH" role="3clF47">
        <node concept="3clFbF" id="62MNP_kY9zG" role="3cqZAp">
          <node concept="37vLTw" id="62MNP_kY9zF" role="3clFbG">
            <ref role="3cqZAo" node="62MNP_kY7Vb" resolve="templateRef" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6i42QSs9G2y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="62MNP_kY89h" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bUgP4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1ffsG7bUgP5" role="1B3o_S" />
      <node concept="17QB3L" id="1ffsG7bUgP6" role="3clF45" />
      <node concept="3clFbS" id="1ffsG7bUgP7" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bUgP8" role="3cqZAp">
          <node concept="3cpWs3" id="1ffsG7bUgP9" role="3clFbG">
            <node concept="Xl_RD" id="1ffsG7bUgPa" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="1ffsG7bUgPb" role="3uHU7B">
              <node concept="3cpWs3" id="1ffsG7bUgPc" role="3uHU7B">
                <node concept="Xl_RD" id="1ffsG7bUgPd" role="3uHU7w">
                  <property role="Xl_RC" value=" [" />
                </node>
                <node concept="37vLTw" id="1ffsG7bUj66" role="3uHU7B">
                  <ref role="3cqZAo" node="1ffsG7bUbIL" resolve="name" />
                </node>
              </node>
              <node concept="2YIFZM" id="1ffsG7bUgPf" role="3uHU7w">
                <ref role="37wK5l" to="18ew:~NameUtil.compactNamespace(java.lang.String):java.lang.String" resolve="compactNamespace" />
                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                <node concept="2OqwBi" id="1ffsG7bUgPg" role="37wK5m">
                  <node concept="2OqwBi" id="1ffsG7bUgPh" role="2Oq$k0">
                    <node concept="1rXfSq" id="1ffsG7bUgPi" role="2Oq$k0">
                      <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                    </node>
                    <node concept="liA8E" id="1ffsG7bUgPj" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getPackage():java.lang.Package" resolve="getPackage" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1ffsG7bUgPk" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Package.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bUgPl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1ffsG7bUbCN" role="1B3o_S" />
    <node concept="2tJIrI" id="1ffsG7bUbKy" role="jymVt" />
    <node concept="312cEg" id="1ffsG7bUbIL" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="1ffsG7bUbIM" role="1B3o_S" />
      <node concept="17QB3L" id="1ffsG7bUbIO" role="1tU5fm" />
    </node>
    <node concept="16euLQ" id="1ffsG7bUbY4" role="16eVyc">
      <property role="TrG5h" value="Token" />
      <node concept="3uibUv" id="7XdbJdy7jWi" role="3ztrMU">
        <ref role="3uigEE" node="2RRx4MZ6_68" resolve="RuleTemplateToken" />
      </node>
    </node>
    <node concept="3uibUv" id="1ffsG7bWFot" role="EKbjA">
      <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
      <node concept="16syzq" id="1ffsG7bWGME" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
      </node>
    </node>
    <node concept="312cEg" id="62MNP_kY7Vb" role="jymVt">
      <property role="TrG5h" value="templateRef" />
      <node concept="3Tm6S6" id="62MNP_kY7Vc" role="1B3o_S" />
      <node concept="3uibUv" id="62MNP_kY7Ve" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="312cEg" id="4MqhgXUnfaQ" role="jymVt">
      <property role="TrG5h" value="handlerTemplate" />
      <node concept="3Tm6S6" id="4MqhgXUnfaR" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXUnfaT" role="1tU5fm">
        <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1ffsG7bW_V4">
    <property role="TrG5h" value="RuleTemplate" />
    <property role="3GE5qa" value="ruleTemplate" />
    <node concept="2tJIrI" id="67SsWaEm4a8" role="jymVt" />
    <node concept="3clFb_" id="4vBwiiUVL7_" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="4vBwiiUVOVU" role="3clF45" />
      <node concept="3Tm1VV" id="4vBwiiUVL7C" role="1B3o_S" />
      <node concept="3clFbS" id="4vBwiiUVL7D" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4vBwiiUVL5S" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bWxkw" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="applicableConcept" />
      <node concept="3bZ5Sz" id="YGS68MZRvy" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bWxkz" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bWxk$" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="67SsWaEm85j" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bWyMV" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isExactMatch" />
      <node concept="10P_77" id="1ffsG7bWyUS" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bWyMY" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bWyMZ" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="67SsWaEmb4N" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUndvp" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="handlerTemplate" />
      <node concept="3uibUv" id="4MqhgXUndIk" role="3clF45">
        <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
      </node>
      <node concept="3Tm1VV" id="4MqhgXUndvs" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUndvt" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="PB1R3YsIZx" role="jymVt" />
    <node concept="3clFb_" id="6i42QSs8m5b" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="templateRef" />
      <node concept="3uibUv" id="6i42QSs8miP" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="6i42QSs8m5e" role="1B3o_S" />
      <node concept="3clFbS" id="6i42QSs8m5f" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3IIf9OAJNDf" role="jymVt" />
    <node concept="3clFb_" id="3IIf9OAJOPP" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="newToken" />
      <node concept="37vLTG" id="3IIf9OAJRcv" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="8X2XB" id="3IIf9OAJSqg" role="1tU5fm">
          <node concept="3uibUv" id="3IIf9OAJS3D" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="3IIf9OAJQ56" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bWA35" resolve="Token" />
      </node>
      <node concept="3Tm1VV" id="3IIf9OAJOPS" role="1B3o_S" />
      <node concept="3clFbS" id="3IIf9OAJOPT" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6i42QSs8m2v" role="jymVt" />
    <node concept="3Tm1VV" id="1ffsG7bW_V5" role="1B3o_S" />
    <node concept="16euLQ" id="1ffsG7bWA35" role="16eVyc">
      <property role="TrG5h" value="Token" />
      <node concept="3uibUv" id="7XdbJdy67uN" role="3ztrMU">
        <ref role="3uigEE" node="2RRx4MZ6_68" resolve="RuleTemplateToken" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1ffsG7bX1MS">
    <property role="TrG5h" value="BaseIteratingRuleTemplate" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="ruleTemplate" />
    <node concept="3uibUv" id="1ffsG7bX2a9" role="1zkMxy">
      <ref role="3uigEE" node="1ffsG7bUbCM" resolve="BaseRuleTemplate" />
      <node concept="16syzq" id="1ffsG7bX2$t" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bX3hF" role="jymVt" />
    <node concept="3clFbW" id="1ffsG7bX3uT" role="jymVt">
      <node concept="3cqZAl" id="1ffsG7bX3uV" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bX3uW" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bX3uX" role="3clF47">
        <node concept="XkiVB" id="1ffsG7bX3GR" role="3cqZAp">
          <ref role="37wK5l" node="1ffsG7bUbEV" resolve="BaseRuleTemplate" />
          <node concept="37vLTw" id="4MqhgXUnjk1" role="37wK5m">
            <ref role="3cqZAo" node="4MqhgXUnimt" resolve="handlerTemplate" />
          </node>
          <node concept="37vLTw" id="1ffsG7bX3Un" role="37wK5m">
            <ref role="3cqZAo" node="1ffsG7bX3vc" resolve="name" />
          </node>
          <node concept="37vLTw" id="62MNP_kYbnP" role="37wK5m">
            <ref role="3cqZAo" node="62MNP_kYaP6" resolve="templateRef" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4MqhgXUnimt" role="3clF46">
        <property role="TrG5h" value="handlerTemplate" />
        <node concept="3uibUv" id="4MqhgXUniWC" role="1tU5fm">
          <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="1ffsG7bX3vc" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1ffsG7bX3vb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="62MNP_kYaP6" role="3clF46">
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="62MNP_kYaXv" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdz3wE3" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdz3v6s" role="jymVt">
      <property role="TrG5h" value="isExactMatch" />
      <node concept="10P_77" id="7XdbJdz3v6t" role="3clF45" />
      <node concept="3Tm1VV" id="7XdbJdz3v6u" role="1B3o_S" />
      <node concept="3clFbS" id="7XdbJdz3v6v" role="3clF47">
        <node concept="3clFbF" id="7XdbJdz3v6w" role="3cqZAp">
          <node concept="3clFbT" id="7XdbJdz3v6x" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7XdbJdz3v6y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bX2$J" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdyiuEZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="applyReduce" />
      <node concept="16syzq" id="7XdbJdyiuF0" role="3clF45">
        <ref role="16sUi3" node="7XdbJdyiuFb" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="7XdbJdyiuF1" role="1B3o_S" />
      <node concept="37vLTG" id="7XdbJdyiuF2" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="7XdbJdyiuF3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7XdbJdyiuF4" role="3clF46">
        <property role="TrG5h" value="init" />
        <node concept="16syzq" id="7XdbJdyiuF5" role="1tU5fm">
          <ref role="16sUi3" node="7XdbJdyiuFb" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="7XdbJdyiuF6" role="3clF46">
        <property role="TrG5h" value="applyFun" />
        <node concept="1ajhzC" id="7XdbJdyiuF7" role="1tU5fm">
          <node concept="16syzq" id="7XdbJdyiuF8" role="1ajw0F">
            <ref role="16sUi3" node="7XdbJdyiuFb" resolve="T" />
          </node>
          <node concept="16syzq" id="7XdbJdyiuFt" role="1ajw0F">
            <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
          </node>
          <node concept="16syzq" id="7XdbJdyiuFa" role="1ajl9A">
            <ref role="16sUi3" node="7XdbJdyiuFb" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7XdbJdyiuFb" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="2AHcQZ" id="7XdbJdyiuFs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="7XdbJdyiuFu" role="3clF47">
        <node concept="3cpWs8" id="7XdbJdyiM26" role="3cqZAp">
          <node concept="3cpWsn" id="7XdbJdyiM27" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="16syzq" id="7XdbJdyiM24" role="1tU5fm">
              <ref role="16sUi3" node="7XdbJdyiuFb" resolve="T" />
            </node>
            <node concept="37vLTw" id="7XdbJdyiM28" role="33vP2m">
              <ref role="3cqZAo" node="7XdbJdyiuF4" resolve="init" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7XdbJdyiBPO" role="3cqZAp">
          <node concept="3cpWsn" id="7XdbJdyiBPP" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="16syzq" id="7XdbJdyiBPQ" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
            </node>
            <node concept="1rXfSq" id="7XdbJdyiHdn" role="33vP2m">
              <ref role="37wK5l" node="3IIf9OAJOPP" resolve="newToken" />
              <node concept="37vLTw" id="mJ_D13ZP76" role="37wK5m">
                <ref role="3cqZAo" node="7XdbJdyiuF2" resolve="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="mJ_D14cdrg" role="3cqZAp" />
        <node concept="1DcWWT" id="7XdbJdyiAvZ" role="3cqZAp">
          <node concept="3clFbS" id="7XdbJdyiAw0" role="2LFqv$">
            <node concept="3SKdUt" id="7XdbJdyiBPM" role="3cqZAp">
              <node concept="3SKdUq" id="7XdbJdyiBPN" role="3SKWNk">
                <property role="3SKdUp" value="TODO user code" />
              </node>
            </node>
            <node concept="3clFbF" id="7XdbJdyiBPU" role="3cqZAp">
              <node concept="37vLTI" id="7XdbJdyiIYV" role="3clFbG">
                <node concept="37vLTw" id="7XdbJdyiJxH" role="37vLTJ">
                  <ref role="3cqZAo" node="7XdbJdyiBPP" resolve="token" />
                </node>
                <node concept="1rXfSq" id="7XdbJdyiCKp" role="37vLTx">
                  <ref role="37wK5l" node="7XdbJdz5OEf" resolve="initToken" />
                  <node concept="37vLTw" id="7XdbJdyiBQ0" role="37wK5m">
                    <ref role="3cqZAo" node="7XdbJdyiBPP" resolve="token" />
                  </node>
                  <node concept="37vLTw" id="7XdbJdyiBPY" role="37wK5m">
                    <ref role="3cqZAo" node="7XdbJdyiuF2" resolve="input" />
                  </node>
                  <node concept="37vLTw" id="7XdbJdyiBPZ" role="37wK5m">
                    <ref role="3cqZAo" node="7XdbJdyiAwj" resolve="iterateOver" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7XdbJdyMDH3" role="3cqZAp" />
            <node concept="3clFbJ" id="7XdbJdyMC64" role="3cqZAp">
              <node concept="3clFbS" id="7XdbJdyMC66" role="3clFbx">
                <node concept="3clFbF" id="7XdbJdyiTDT" role="3cqZAp">
                  <node concept="37vLTI" id="7XdbJdyiTMB" role="3clFbG">
                    <node concept="37vLTw" id="7XdbJdyiTDR" role="37vLTJ">
                      <ref role="3cqZAo" node="7XdbJdyiM27" resolve="t" />
                    </node>
                    <node concept="2Sg_IR" id="7XdbJdyiTQD" role="37vLTx">
                      <node concept="37vLTw" id="7XdbJdyiTQE" role="2SgHGx">
                        <ref role="3cqZAo" node="7XdbJdyiM27" resolve="t" />
                      </node>
                      <node concept="37vLTw" id="7XdbJdyiTQF" role="2SgHGx">
                        <ref role="3cqZAo" node="7XdbJdyiBPP" resolve="token" />
                      </node>
                      <node concept="37vLTw" id="7XdbJdyiTQG" role="2SgG2M">
                        <ref role="3cqZAo" node="7XdbJdyiuF6" resolve="applyFun" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7XdbJdyMCuq" role="3clFbw">
                <node concept="37vLTw" id="7XdbJdyMCeP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7XdbJdyiBPP" resolve="token" />
                </node>
                <node concept="liA8E" id="7XdbJdyMCEd" role="2OqNvi">
                  <ref role="37wK5l" node="2RRx4MZ6CBV" resolve="isApplicable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7XdbJdyiAwj" role="1Duv9x">
            <property role="TrG5h" value="iterateOver" />
            <node concept="16syzq" id="7XdbJdyiAwk" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
            </node>
          </node>
          <node concept="2OqwBi" id="5wZaC7Xyajg" role="1DdaDG">
            <node concept="37vLTw" id="5wZaC7XyaOv" role="2Oq$k0">
              <ref role="3cqZAo" node="7XdbJdyiBPP" resolve="token" />
            </node>
            <node concept="liA8E" id="5wZaC7Xyajj" role="2OqNvi">
              <ref role="37wK5l" node="23fvq3KaT8H" resolve="iterateOver" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XdbJdyiVd4" role="3cqZAp" />
        <node concept="3clFbF" id="7XdbJdyiUTk" role="3cqZAp">
          <node concept="37vLTw" id="7XdbJdyiUTi" role="3clFbG">
            <ref role="3cqZAo" node="7XdbJdyiM27" resolve="t" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdyiw4q" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdyiuF$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="3cqZAl" id="7XdbJdyiuF_" role="3clF45" />
      <node concept="3Tm1VV" id="7XdbJdyiuFA" role="1B3o_S" />
      <node concept="37vLTG" id="7XdbJdyiuFB" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="7XdbJdyiuFC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7XdbJdyiuFD" role="3clF46">
        <property role="TrG5h" value="applyFun" />
        <node concept="1ajhzC" id="7XdbJdyiuFE" role="1tU5fm">
          <node concept="16syzq" id="7XdbJdyiuFX" role="1ajw0F">
            <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
          </node>
          <node concept="3cqZAl" id="7XdbJdyiuFG" role="1ajl9A" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7XdbJdyiuFW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="7XdbJdyiuFY" role="3clF47">
        <node concept="3cpWs8" id="7XdbJdyiVDF" role="3cqZAp">
          <node concept="3cpWsn" id="7XdbJdyiVDG" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="16syzq" id="7XdbJdyiVDH" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
            </node>
            <node concept="1rXfSq" id="7XdbJdyiVDI" role="33vP2m">
              <ref role="37wK5l" node="3IIf9OAJOPP" resolve="newToken" />
              <node concept="37vLTw" id="mJ_D13ZQKZ" role="37wK5m">
                <ref role="3cqZAo" node="7XdbJdyiuFB" resolve="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5wZaC7XycFJ" role="3cqZAp" />
        <node concept="1DcWWT" id="7XdbJdyiVDB" role="3cqZAp">
          <node concept="3clFbS" id="7XdbJdyiVDC" role="2LFqv$">
            <node concept="3SKdUt" id="7XdbJdyiVDD" role="3cqZAp">
              <node concept="3SKdUq" id="7XdbJdyiVDE" role="3SKWNk">
                <property role="3SKdUp" value="TODO user code" />
              </node>
            </node>
            <node concept="3clFbF" id="7XdbJdyiVDJ" role="3cqZAp">
              <node concept="37vLTI" id="7XdbJdyiVDK" role="3clFbG">
                <node concept="37vLTw" id="7XdbJdyiVDL" role="37vLTJ">
                  <ref role="3cqZAo" node="7XdbJdyiVDG" resolve="token" />
                </node>
                <node concept="1rXfSq" id="7XdbJdyiVDM" role="37vLTx">
                  <ref role="37wK5l" node="7XdbJdz5OEf" resolve="initToken" />
                  <node concept="37vLTw" id="7XdbJdyiVDP" role="37wK5m">
                    <ref role="3cqZAo" node="7XdbJdyiVDG" resolve="token" />
                  </node>
                  <node concept="37vLTw" id="7XdbJdyiVDN" role="37wK5m">
                    <ref role="3cqZAo" node="7XdbJdyiuFB" resolve="input" />
                  </node>
                  <node concept="37vLTw" id="7XdbJdyiVDO" role="37wK5m">
                    <ref role="3cqZAo" node="7XdbJdyiVDY" resolve="iterateOver" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7XdbJdyiVDQ" role="3cqZAp" />
            <node concept="3clFbJ" id="7XdbJdyMDR4" role="3cqZAp">
              <node concept="3clFbS" id="7XdbJdyMDR6" role="3clFbx">
                <node concept="3clFbF" id="7XdbJdyiVDR" role="3cqZAp">
                  <node concept="2Sg_IR" id="7XdbJdyiVDU" role="3clFbG">
                    <node concept="37vLTw" id="7XdbJdyiVDW" role="2SgHGx">
                      <ref role="3cqZAo" node="7XdbJdyiVDG" resolve="token" />
                    </node>
                    <node concept="37vLTw" id="7XdbJdyiVDX" role="2SgG2M">
                      <ref role="3cqZAo" node="7XdbJdyiuFD" resolve="applyFun" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7XdbJdyME9U" role="3clFbw">
                <node concept="37vLTw" id="7XdbJdyMDZ_" role="2Oq$k0">
                  <ref role="3cqZAo" node="7XdbJdyiVDG" resolve="token" />
                </node>
                <node concept="liA8E" id="7XdbJdyMElF" role="2OqNvi">
                  <ref role="37wK5l" node="2RRx4MZ6CBV" resolve="isApplicable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7XdbJdyiVDY" role="1Duv9x">
            <property role="TrG5h" value="iterateOver" />
            <node concept="16syzq" id="7XdbJdyiVDZ" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
            </node>
          </node>
          <node concept="2OqwBi" id="5wZaC7XydMw" role="1DdaDG">
            <node concept="37vLTw" id="5wZaC7XyeiV" role="2Oq$k0">
              <ref role="3cqZAo" node="7XdbJdyiVDG" resolve="token" />
            </node>
            <node concept="liA8E" id="5wZaC7XydMz" role="2OqNvi">
              <ref role="37wK5l" node="23fvq3KaT8H" resolve="iterateOver" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tPOoeSDlNl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdz5$5p" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdz9vbo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initToken" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="7XdbJdz9vbr" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="16syzq" id="7XdbJdz9vbw" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
        </node>
      </node>
      <node concept="37vLTG" id="7XdbJdz9vbp" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="7XdbJdz9vbq" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="7XdbJdz9vbx" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
      </node>
      <node concept="3Tmbuc" id="7XdbJdz9vbu" role="1B3o_S" />
      <node concept="3clFbS" id="7XdbJdz9vby" role="3clF47">
        <node concept="3clFbF" id="4QPCta0F77V" role="3cqZAp">
          <node concept="1rXfSq" id="4QPCta0F77U" role="3clFbG">
            <ref role="37wK5l" node="7XdbJdz5OEf" resolve="initToken" />
            <node concept="37vLTw" id="4QPCta0F85n" role="37wK5m">
              <ref role="3cqZAo" node="7XdbJdz9vbr" resolve="token" />
            </node>
            <node concept="37vLTw" id="4QPCta0F9$q" role="37wK5m">
              <ref role="3cqZAo" node="7XdbJdz9vbp" resolve="input" />
            </node>
            <node concept="10Nm6u" id="4QPCta0Fb70" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7XdbJdz9vbz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta0FhXC" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdz5OEf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="initToken" />
      <node concept="37vLTG" id="7XdbJdz5OEk" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="16syzq" id="7XdbJdz5OEv" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
        </node>
      </node>
      <node concept="37vLTG" id="7XdbJdz5OEg" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="7XdbJdz5OEh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7XdbJdz5OEi" role="3clF46">
        <property role="TrG5h" value="iterateOver" />
        <node concept="16syzq" id="7XdbJdz5OEu" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
        </node>
      </node>
      <node concept="16syzq" id="7XdbJdz5OEt" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
      </node>
      <node concept="3Tmbuc" id="7XdbJdz5STM" role="1B3o_S" />
      <node concept="3clFbS" id="7XdbJdz5OEw" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7XdbJdz9utp" role="jymVt" />
    <node concept="3Tm1VV" id="1ffsG7bX1MT" role="1B3o_S" />
    <node concept="16euLQ" id="1ffsG7bX2$8" role="16eVyc">
      <property role="TrG5h" value="Iter" />
    </node>
    <node concept="16euLQ" id="1ffsG7bX2zU" role="16eVyc">
      <property role="TrG5h" value="Token" />
      <node concept="3uibUv" id="23fvq3KaUtY" role="3ztrMU">
        <ref role="3uigEE" node="23fvq3KaSFM" resolve="IteratingRuleTemplateApplicationToken" />
        <node concept="16syzq" id="23fvq3KaVBi" role="11_B2D">
          <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="1ffsG7bXiAl" role="EKbjA">
      <ref role="3uigEE" node="1ffsG7bXcuq" resolve="IteratingRuleTemplate" />
      <node concept="16syzq" id="1ffsG7bXklu" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
      </node>
      <node concept="16syzq" id="1ffsG7bXj_H" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Token" />
      </node>
    </node>
    <node concept="2AHcQZ" id="4uSBgQVwKYv" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
    </node>
  </node>
  <node concept="3HP615" id="1ffsG7bXcuq">
    <property role="TrG5h" value="IteratingRuleTemplate" />
    <property role="3GE5qa" value="ruleTemplate" />
    <node concept="3uibUv" id="1ffsG7bXcPu" role="3HQHJm">
      <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
      <node concept="16syzq" id="1ffsG7bXdfH" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bXcDV" resolve="Token" />
      </node>
    </node>
    <node concept="2tJIrI" id="8VaLZRFUVz" role="jymVt" />
    <node concept="3Tm1VV" id="1ffsG7bXcur" role="1B3o_S" />
    <node concept="16euLQ" id="1ffsG7bXcDZ" role="16eVyc">
      <property role="TrG5h" value="Iter" />
    </node>
    <node concept="16euLQ" id="1ffsG7bXcDV" role="16eVyc">
      <property role="TrG5h" value="Token" />
      <node concept="3uibUv" id="23fvq3KaW36" role="3ztrMU">
        <ref role="3uigEE" node="23fvq3KaSFM" resolve="IteratingRuleTemplateApplicationToken" />
        <node concept="16syzq" id="23fvq3KaW4O" role="11_B2D">
          <ref role="16sUi3" node="1ffsG7bXcDZ" resolve="Iter" />
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="4uSBgQVwMPj" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
    </node>
  </node>
  <node concept="3HP615" id="4MqhgXU9fm3">
    <property role="TrG5h" value="HandlerTemplate" />
    <node concept="2tJIrI" id="4MqhgXU9fmh" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUN1Pe" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="4MqhgXUN1Qo" role="3clF45" />
      <node concept="3Tm1VV" id="4MqhgXUN1Ph" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUN1Pi" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7P_FdVPVjam" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVQoZmr" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="fqName" />
      <node concept="17QB3L" id="7P_FdVQp2lr" role="3clF45" />
      <node concept="3Tm1VV" id="7P_FdVQoZmu" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVQoZmv" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7P_FdVQoWCy" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVQoGPt" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="extendedFqName" />
      <node concept="17QB3L" id="7P_FdVQoJS0" role="3clF45" />
      <node concept="3Tm1VV" id="7P_FdVQoGPw" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVQoGPx" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7P_FdVQoNeh" role="jymVt" />
    <node concept="3clFb_" id="20Ay2Vf1i5R" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="stage" />
      <node concept="3clFbS" id="20Ay2Vf1i5U" role="3clF47" />
      <node concept="3Tm1VV" id="20Ay2Vf1i5V" role="1B3o_S" />
      <node concept="17QB3L" id="20Ay2Vf1hOi" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="20Ay2Vf1hyH" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXU9lmo" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="primarySymbols" />
      <node concept="A3Dl8" id="2vGNdoJH8yh" role="3clF45">
        <node concept="3uibUv" id="2vGNdoJH8yj" role="A3Ik2">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXU9lmr" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXU9lms" role="3clF47" />
      <node concept="2AHcQZ" id="7P_FdVPH75_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXU9fJA" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUaiON" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="ruleTemplates" />
      <node concept="A3Dl8" id="4MqhgXUaiPw" role="3clF45">
        <node concept="3uibUv" id="4MqhgXUaiPX" role="A3Ik2">
          <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
          <node concept="3qTvmN" id="6OXbTD$GpJw" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXUaiOQ" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUaiOR" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MqhgXUaiOu" role="jymVt" />
    <node concept="3Tm1VV" id="4MqhgXU9fm4" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2RRx4MZ6_68">
    <property role="TrG5h" value="RuleTemplateToken" />
    <property role="3GE5qa" value="ruleTemplate.token" />
    <node concept="2tJIrI" id="2RRx4MZSLs8" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6CBV" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="10P_77" id="2RRx4MZ6CC0" role="3clF45" />
      <node concept="3Tm1VV" id="2RRx4MZ6CC1" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6CC2" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6CC3" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6CC4" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="requiredNodes" />
      <node concept="A3Dl8" id="2RRx4MZ6CC5" role="3clF45">
        <node concept="3Tqbb2" id="2RRx4MZ6CC6" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="2RRx4MZ6CC7" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6CC8" role="3clF47" />
      <node concept="2AHcQZ" id="6tPOoeSE0jz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6CCd" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6CCe" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="A3Dl8" id="2RRx4MZ6CCf" role="3clF45">
        <node concept="3uibUv" id="2RRx4MZ6CCg" role="A3Ik2">
          <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="2RRx4MZ6CCl" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="2RRx4MZ6CCm" role="1tU5fm">
          <ref role="3uigEE" to="6pyv:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2RRx4MZ6CCn" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6CCo" role="3clF47" />
      <node concept="2AHcQZ" id="mJ_D14wp18" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6CBN" role="jymVt" />
    <node concept="3Tm1VV" id="2RRx4MZ6_69" role="1B3o_S" />
    <node concept="3uibUv" id="mJ_D14woTd" role="3HQHJm">
      <ref role="3uigEE" node="mJ_D14woL$" resolve="TemplateToken" />
    </node>
  </node>
  <node concept="312cEu" id="2RRx4MZ6I3W">
    <property role="TrG5h" value="BaseRuleTemplateApplicationToken" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="ruleTemplate.token" />
    <node concept="2tJIrI" id="2RRx4MZ6Ib2" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6Ibj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="10P_77" id="2RRx4MZ6Ibk" role="3clF45" />
      <node concept="3Tm1VV" id="2RRx4MZ6Ibl" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6Ibn" role="3clF47">
        <node concept="3clFbF" id="2RRx4MZ6Ibq" role="3cqZAp">
          <node concept="3clFbT" id="2RRx4MZ6J1n" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2RRx4MZ6Ibo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6IQo" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6Ibr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="requiredNodes" />
      <node concept="A3Dl8" id="2RRx4MZ6Ibs" role="3clF45">
        <node concept="3Tqbb2" id="2RRx4MZ6Ibt" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="2RRx4MZ6Ibu" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6Ibw" role="3clF47">
        <node concept="3clFbF" id="2RRx4MZ6J2x" role="3cqZAp">
          <node concept="10Nm6u" id="2RRx4MZ6J2w" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2RRx4MZ6Ibx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="6tPOoeSEcvH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6IJC" role="jymVt" />
    <node concept="3Tm1VV" id="2RRx4MZ6I3X" role="1B3o_S" />
    <node concept="3uibUv" id="2RRx4MZ6I8M" role="EKbjA">
      <ref role="3uigEE" node="2RRx4MZ6_68" resolve="RuleTemplateToken" />
    </node>
  </node>
  <node concept="3HP615" id="23fvq3KaSFM">
    <property role="TrG5h" value="IteratingRuleTemplateApplicationToken" />
    <property role="3GE5qa" value="ruleTemplate.token" />
    <node concept="2tJIrI" id="23fvq3KaT8p" role="jymVt" />
    <node concept="3clFb_" id="23fvq3KaT8H" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="iterateOver" />
      <node concept="A3Dl8" id="23fvq3KaTet" role="3clF45">
        <node concept="16syzq" id="23fvq3KaTf5" role="A3Ik2">
          <ref role="16sUi3" node="23fvq3KaTe2" resolve="Iter" />
        </node>
      </node>
      <node concept="3Tm1VV" id="23fvq3KaT8K" role="1B3o_S" />
      <node concept="3clFbS" id="23fvq3KaT8L" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="23fvq3KaT8y" role="jymVt" />
    <node concept="3Tm1VV" id="23fvq3KaSFN" role="1B3o_S" />
    <node concept="3uibUv" id="23fvq3KaSPQ" role="3HQHJm">
      <ref role="3uigEE" node="2RRx4MZ6_68" resolve="RuleTemplateToken" />
    </node>
    <node concept="16euLQ" id="23fvq3KaTe2" role="16eVyc">
      <property role="TrG5h" value="Iter" />
    </node>
    <node concept="2AHcQZ" id="4uSBgQVwkTe" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
    </node>
  </node>
  <node concept="312cEu" id="23fvq3Kb72a">
    <property role="TrG5h" value="BaseIteratingRuleTemplateApplicationToken" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="ruleTemplate.token" />
    <node concept="2tJIrI" id="23fvq3Kb799" role="jymVt" />
    <node concept="3clFb_" id="23fvq3Kb7km" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="10P_77" id="23fvq3Kb7kn" role="3clF45" />
      <node concept="3Tm1VV" id="23fvq3Kb7ko" role="1B3o_S" />
      <node concept="3clFbS" id="23fvq3Kb7kr" role="3clF47">
        <node concept="3clFbF" id="23fvq3Kb7ku" role="3cqZAp">
          <node concept="3clFbT" id="23fvq3Kb99c" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="23fvq3Kb7ks" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="23fvq3Kb99z" role="jymVt" />
    <node concept="3clFb_" id="23fvq3Kb7kv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="requiredNodes" />
      <node concept="A3Dl8" id="23fvq3Kb7kw" role="3clF45">
        <node concept="3Tqbb2" id="23fvq3Kb7kx" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="23fvq3Kb7ky" role="1B3o_S" />
      <node concept="3clFbS" id="23fvq3Kb7k_" role="3clF47">
        <node concept="3clFbF" id="23fvq3Kb9Na" role="3cqZAp">
          <node concept="10Nm6u" id="23fvq3Kb9N9" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="23fvq3Kb7kA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="23fvq3Kb9u4" role="jymVt" />
    <node concept="3Tm1VV" id="23fvq3Kb72b" role="1B3o_S" />
    <node concept="16euLQ" id="23fvq3Kb79x" role="16eVyc">
      <property role="TrG5h" value="Iter" />
    </node>
    <node concept="3uibUv" id="23fvq3Kb7eS" role="EKbjA">
      <ref role="3uigEE" node="23fvq3KaSFM" resolve="IteratingRuleTemplateApplicationToken" />
      <node concept="16syzq" id="23fvq3Kb7jR" role="11_B2D">
        <ref role="16sUi3" node="23fvq3Kb79x" resolve="Iter" />
      </node>
    </node>
    <node concept="2AHcQZ" id="4uSBgQVwkEw" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
    </node>
  </node>
  <node concept="3HP615" id="36tQV5AurZW">
    <property role="3GE5qa" value="ruleTemplate" />
    <property role="TrG5h" value="ConstraintRuleTemplate" />
    <node concept="2tJIrI" id="36tQV5Aus0e" role="jymVt" />
    <node concept="3clFb_" id="36tQV5Aus0w" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="36tQV5Auubn" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="36tQV5Auubo" role="1tU5fm">
          <ref role="3uigEE" to="6pyv:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="36tQV5Aus0z" role="1B3o_S" />
      <node concept="3clFbS" id="36tQV5Aus0$" role="3clF47" />
      <node concept="3cqZAl" id="36tQV5AI6in" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="36tQV5AIeEy" role="jymVt" />
    <node concept="3Tm1VV" id="36tQV5AurZX" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="7P_FdVPs4aA">
    <property role="TrG5h" value="QueryStageTemplate" />
    <node concept="2tJIrI" id="7P_FdVPs4b8" role="jymVt" />
    <node concept="3clFb_" id="6OXbTD$oRWJ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="stageName" />
      <node concept="3clFbS" id="6OXbTD$oRWM" role="3clF47" />
      <node concept="3Tm1VV" id="6OXbTD$oRWN" role="1B3o_S" />
      <node concept="17QB3L" id="6OXbTD$oRqh" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$oQQW" role="jymVt" />
    <node concept="3clFb_" id="mJ_D14Alpb" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="newToken" />
      <node concept="37vLTG" id="mJ_D14AlJJ" role="3clF46">
        <property role="TrG5h" value="parameter" />
        <node concept="8X2XB" id="mJ_D14AlWD" role="1tU5fm">
          <node concept="3uibUv" id="mJ_D14AlQr" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="mJ_D14Alxk" role="3clF45">
        <ref role="16sUi3" node="mJ_D14AkFa" resolve="Token" />
      </node>
      <node concept="3Tm1VV" id="mJ_D14Alpe" role="1B3o_S" />
      <node concept="3clFbS" id="mJ_D14Alpf" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7P_FdVQ_jBm" role="jymVt" />
    <node concept="3Tm1VV" id="7P_FdVPs4aB" role="1B3o_S" />
    <node concept="16euLQ" id="mJ_D14AkFa" role="16eVyc">
      <property role="TrG5h" value="Token" />
      <node concept="3uibUv" id="mJ_D14Ald9" role="3ztrMU">
        <ref role="3uigEE" node="mJ_D14woL$" resolve="TemplateToken" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7P_FdVPsPNk">
    <property role="3GE5qa" value="ruleTemplate" />
    <property role="TrG5h" value="BaseQueryStageTemplate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6OXbTDz035d" role="jymVt" />
    <node concept="3clFbW" id="6OXbTDz039g" role="jymVt">
      <node concept="37vLTG" id="6OXbTDz03ly" role="3clF46">
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="6OXbTDz03q5" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3cqZAl" id="6OXbTDz039i" role="3clF45" />
      <node concept="3Tm1VV" id="6OXbTDz039j" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDz039k" role="3clF47">
        <node concept="3clFbF" id="6OXbTDz03UI" role="3cqZAp">
          <node concept="37vLTI" id="6OXbTDz03UJ" role="3clFbG">
            <node concept="2OqwBi" id="6OXbTDz03UK" role="37vLTJ">
              <node concept="Xjq3P" id="6OXbTDz03UL" role="2Oq$k0" />
              <node concept="2OwXpG" id="6OXbTDz03UM" role="2OqNvi">
                <ref role="2Oxat5" node="6OXbTDz03H0" resolve="templateRef" />
              </node>
            </node>
            <node concept="37vLTw" id="6OXbTDz03UN" role="37vLTx">
              <ref role="3cqZAo" node="6OXbTDz03ly" resolve="templateRef" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDz03CP" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDz054k" role="jymVt">
      <property role="TrG5h" value="templateRef" />
      <node concept="3uibUv" id="6OXbTDz05bG" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="6OXbTDz054n" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDz054o" role="3clF47">
        <node concept="3clFbF" id="6OXbTDz05BR" role="3cqZAp">
          <node concept="37vLTw" id="6OXbTDz05BQ" role="3clFbG">
            <ref role="3cqZAo" node="6OXbTDz03H0" resolve="templateRef" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDz047G" role="jymVt" />
    <node concept="312cEg" id="6OXbTDz03H0" role="jymVt">
      <property role="TrG5h" value="templateRef" />
      <node concept="3Tm6S6" id="6OXbTDz03H1" role="1B3o_S" />
      <node concept="3uibUv" id="6OXbTDz03H2" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7P_FdVPsPNl" role="1B3o_S" />
    <node concept="3uibUv" id="7P_FdVPsPOy" role="EKbjA">
      <ref role="3uigEE" node="7P_FdVPs4aA" resolve="QueryStageTemplate" />
      <node concept="16syzq" id="mJ_D14ApBL" role="11_B2D">
        <ref role="16sUi3" node="mJ_D14ApAA" resolve="Token" />
      </node>
    </node>
    <node concept="16euLQ" id="mJ_D14ApAA" role="16eVyc">
      <property role="TrG5h" value="Token" />
      <node concept="3uibUv" id="mJ_D14ApBe" role="3ztrMU">
        <ref role="3uigEE" node="mJ_D14woL$" resolve="TemplateToken" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="mJ_D14woL$">
    <property role="3GE5qa" value="ruleTemplate.token" />
    <property role="TrG5h" value="TemplateToken" />
    <node concept="2tJIrI" id="mJ_D14woOn" role="jymVt" />
    <node concept="3clFb_" id="mJ_D14woVW" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="A3Dl8" id="mJ_D14woVX" role="3clF45">
        <node concept="3uibUv" id="mJ_D14woVY" role="A3Ik2">
          <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="mJ_D14woVZ" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="mJ_D14woW0" role="1tU5fm">
          <ref role="3uigEE" to="6pyv:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="mJ_D14woW1" role="1B3o_S" />
      <node concept="3clFbS" id="mJ_D14woW2" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="mJ_D14woOp" role="jymVt" />
    <node concept="3Tm1VV" id="mJ_D14woL_" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="6OXbTD$iNPP">
    <property role="3GE5qa" value="ruleTemplate" />
    <property role="TrG5h" value="QueryTemplate" />
    <node concept="2tJIrI" id="6OXbTD$iO0e" role="jymVt" />
    <node concept="3clFb_" id="6OXbTD$iO0w" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="6OXbTD$iO0x" role="3clF45" />
      <node concept="3Tm1VV" id="6OXbTD$iO0y" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTD$iO0z" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$iO0$" role="jymVt" />
    <node concept="3clFb_" id="6OXbTD$iO0_" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="fqName" />
      <node concept="17QB3L" id="6OXbTD$iO0A" role="3clF45" />
      <node concept="3Tm1VV" id="6OXbTD$iO0B" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTD$iO0C" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4t7Xo7iclkP" role="jymVt" />
    <node concept="3clFb_" id="4t7Xo7icmmF" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="kind" />
      <node concept="3clFbS" id="4t7Xo7icmmI" role="3clF47" />
      <node concept="3Tm1VV" id="4t7Xo7icmmJ" role="1B3o_S" />
      <node concept="3uibUv" id="4t7Xo7intc6" role="3clF45">
        <ref role="3uigEE" node="4t7Xo7inshN" resolve="QueryKind" />
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTD$iO0D" role="jymVt" />
    <node concept="3clFb_" id="6OXbTD$iO0E" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="usedHandlersFqNames" />
      <node concept="_YKpA" id="6OXbTD$iO0F" role="3clF45">
        <node concept="17QB3L" id="6OXbTD$iO0G" role="_ZDj9" />
      </node>
      <node concept="3Tm1VV" id="6OXbTD$iO0H" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTD$iO0I" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$iO0j" role="jymVt" />
    <node concept="3clFb_" id="6OXbTD$jl18" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="stageTemplates" />
      <node concept="A3Dl8" id="6OXbTD$jl19" role="3clF45">
        <node concept="3uibUv" id="6OXbTD$jl3W" role="A3Ik2">
          <ref role="3uigEE" node="7P_FdVPs4aA" resolve="QueryStageTemplate" />
          <node concept="3qTvmN" id="6OXbTD$JJM1" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6OXbTD$jl1b" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTD$jl1c" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$oHqU" role="jymVt" />
    <node concept="3clFb_" id="6OXbTD$oET6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="stageTemplate" />
      <node concept="37vLTG" id="6OXbTD$oIHv" role="3clF46">
        <property role="TrG5h" value="stage" />
        <node concept="17QB3L" id="6OXbTD$oII$" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6OXbTD$oIFy" role="3clF45">
        <ref role="3uigEE" node="7P_FdVPs4aA" resolve="QueryStageTemplate" />
      </node>
      <node concept="3Tm1VV" id="6OXbTD$oET9" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTD$oETa" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$iO0n" role="jymVt" />
    <node concept="3Tm1VV" id="6OXbTD$iNPQ" role="1B3o_S" />
    <node concept="3clFb_" id="7P_FdVPsDM6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="newQuery" />
      <node concept="37vLTG" id="7P_FdVQ_p5F" role="3clF46">
        <property role="TrG5h" value="observable" />
        <node concept="3uibUv" id="7P_FdVQ_p6p" role="1tU5fm">
          <ref role="3uigEE" node="7P_FdVQ_k3b" resolve="QueryTemplate.QueryObservable" />
        </node>
      </node>
      <node concept="37vLTG" id="7P_FdVPsGBf" role="3clF46">
        <property role="TrG5h" value="parameters" />
        <node concept="3uibUv" id="3IIf9OAgMKI" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qTvmN" id="3IIf9OAm5rX" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="7P_FdVPsDNI" role="3clF45">
        <ref role="3uigEE" node="7P_FdVPsDC0" resolve="QueryTemplate.QueryConfigurable" />
      </node>
      <node concept="3Tm1VV" id="7P_FdVPsDM9" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPsDMa" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$reMa" role="jymVt" />
    <node concept="3HP615" id="7P_FdVPsDC0" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="QueryConfigurable" />
      <node concept="2tJIrI" id="7P_FdVPsDDy" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVPsE9p" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="configure" />
        <node concept="37vLTG" id="7P_FdVQ_jv0" role="3clF46">
          <property role="TrG5h" value="stage" />
          <node concept="17QB3L" id="7P_FdVQ_jw7" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7P_FdVPsEcX" role="3clF46">
          <property role="TrG5h" value="config" />
          <node concept="3uibUv" id="7P_FdVPsEeI" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
          </node>
        </node>
        <node concept="3uibUv" id="7P_FdVPsEdT" role="3clF45">
          <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="7P_FdVPsE9s" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVPsE9t" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_p0D" role="jymVt" />
      <node concept="3Tm1VV" id="7P_FdVPsDC1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$reOi" role="jymVt" />
    <node concept="3HP615" id="7P_FdVQ_k3b" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="QueryObservable" />
      <node concept="2tJIrI" id="7P_FdVQ_k6c" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVQ_k6A" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="subscribe" />
        <node concept="37vLTG" id="7P_FdVQ_ka7" role="3clF46">
          <property role="TrG5h" value="observer" />
          <node concept="3uibUv" id="7P_FdVQ_kaO" role="1tU5fm">
            <ref role="3uigEE" node="7P_FdVQ_jCo" resolve="QueryTemplate.QueryObserver" />
          </node>
        </node>
        <node concept="3cqZAl" id="7P_FdVQ_k6C" role="3clF45" />
        <node concept="3Tm1VV" id="7P_FdVQ_k6D" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVQ_k6E" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_oC2" role="jymVt" />
      <node concept="3Tm1VV" id="7P_FdVQ_k3c" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$reQr" role="jymVt" />
    <node concept="3HP615" id="7P_FdVQ_jCo" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="QueryObserver" />
      <node concept="2tJIrI" id="7P_FdVQ_jEo" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVQ_jFm" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="onNext" />
        <node concept="37vLTG" id="7P_FdVQ_jF$" role="3clF46">
          <property role="TrG5h" value="stage" />
          <node concept="17QB3L" id="7P_FdVQ_jI8" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7P_FdVQ_jJ3" role="3clF46">
          <property role="TrG5h" value="storeView" />
          <node concept="3uibUv" id="7P_FdVQ_jJT" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
          </node>
        </node>
        <node concept="3cqZAl" id="7P_FdVQ_jFp" role="3clF45" />
        <node concept="3Tm1VV" id="7P_FdVQ_jFq" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVQ_jFr" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_jL5" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVQ_jLY" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="onCompleted" />
        <node concept="37vLTG" id="7P_FdVQ_jPZ" role="3clF46">
          <property role="TrG5h" value="view" />
          <node concept="3uibUv" id="7P_FdVQ_jQR" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
          </node>
        </node>
        <node concept="3cqZAl" id="7P_FdVQ_jM0" role="3clF45" />
        <node concept="3Tm1VV" id="7P_FdVQ_jM1" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVQ_jM2" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_jS6" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVQ_jU$" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="onFailure" />
        <node concept="37vLTG" id="7P_FdVQ_jY$" role="3clF46">
          <property role="TrG5h" value="exception" />
          <node concept="3uibUv" id="7WKNeR9$ZWp" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
          </node>
        </node>
        <node concept="3cqZAl" id="7P_FdVQ_jUB" role="3clF45" />
        <node concept="3Tm1VV" id="7P_FdVQ_jUC" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVQ_jUD" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_jEt" role="jymVt" />
      <node concept="3Tm1VV" id="7P_FdVQ_jCp" role="1B3o_S" />
    </node>
  </node>
  <node concept="3HP615" id="4t7Xo7inshN">
    <property role="TrG5h" value="QueryKind" />
    <node concept="3Tm1VV" id="4t7Xo7inshO" role="1B3o_S" />
  </node>
</model>

