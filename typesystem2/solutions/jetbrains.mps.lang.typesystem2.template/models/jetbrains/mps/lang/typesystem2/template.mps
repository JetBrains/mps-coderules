<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ouhv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.annotation(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="omn0" ref="r:4e44cb56-a834-45de-a0c4-c49a5c86e78e(jetbrains.mps.logic.builtin.solver)" />
    <import index="nz6g" ref="r:ac00f724-30be-446e-805c-2345efc460d7(jetbrains.mps.lang.typesystem2.program)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.typesystem2.aspect)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
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
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
        <child id="1107880067339" name="method" index="3MN40a" />
      </concept>
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
      </concept>
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="4OKkcnfu_tT">
    <property role="TrG5h" value="AbstractIteratingRuleTemplate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4OKkcnfu_tU" role="jymVt" />
    <node concept="3clFbW" id="4OKkcnfu_tV" role="jymVt">
      <node concept="37vLTG" id="4MqhgXUnIYh" role="3clF46">
        <property role="TrG5h" value="handlerTemplate" />
        <node concept="3uibUv" id="4MqhgXUnJFo" role="1tU5fm">
          <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfu_tW" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4OKkcnfu_tX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="62MNP_kYbCV" role="3clF46">
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="62MNP_kYbG1" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3cqZAl" id="4OKkcnfu_tY" role="3clF45" />
      <node concept="3Tm1VV" id="4OKkcnfu_tZ" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcnfu_u0" role="3clF47">
        <node concept="XkiVB" id="4OKkcnfu_u1" role="3cqZAp">
          <ref role="37wK5l" node="1ffsG7bX3uT" resolve="BaseIteratingRuleTemplate" />
          <node concept="37vLTw" id="4MqhgXUnK0v" role="37wK5m">
            <ref role="3cqZAo" node="4MqhgXUnIYh" resolve="handlerTemplate" />
          </node>
          <node concept="37vLTw" id="4OKkcnfu_u2" role="37wK5m">
            <ref role="3cqZAo" node="4OKkcnfu_tW" resolve="name" />
          </node>
          <node concept="37vLTw" id="62MNP_kYc3c" role="37wK5m">
            <ref role="3cqZAo" node="62MNP_kYbCV" resolve="templateRef" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7ceNdD" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bXs5Y" role="jymVt">
      <property role="TrG5h" value="isExactMatch" />
      <node concept="10P_77" id="1ffsG7bXs5Z" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bXs60" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bXs61" role="3clF47">
        <node concept="3clFbF" id="3x8pcoFth9R" role="3cqZAp">
          <node concept="3clFbT" id="1ffsG7bXs63" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bXs64" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bXs65" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bXs66" role="jymVt">
      <property role="TrG5h" value="context" />
      <node concept="37vLTG" id="1ffsG7bXs67" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bXs68" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="1ffsG7bXs69" role="3clF45">
        <ref role="16sUi3" node="4OKkcnfu_vG" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="1ffsG7bXs6a" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bXs6b" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bXs6c" role="3cqZAp">
          <node concept="10Nm6u" id="1ffsG7bXs6d" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bXs6e" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bXFDz" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bV4m3" role="jymVt">
      <property role="TrG5h" value="iterating" />
      <node concept="3uibUv" id="1ffsG7bVaZg" role="3clF45">
        <ref role="3uigEE" node="1ffsG7bV945" resolve="Iterating" />
        <node concept="16syzq" id="1ffsG7bVhyI" role="11_B2D">
          <ref role="16sUi3" node="4OKkcnfu_vH" resolve="Iter" />
        </node>
      </node>
      <node concept="3Tm1VV" id="8VaLZRGVER" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bV4m7" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bV6t_" role="3cqZAp">
          <node concept="Xjq3P" id="1ffsG7bV6t$" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="8VaLZRGYdZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="8VaLZRGZ8t" role="jymVt" />
    <node concept="3Tm1VV" id="4OKkcnfu_vD" role="1B3o_S" />
    <node concept="3uibUv" id="4OKkcnfu_vE" role="1zkMxy">
      <ref role="3uigEE" node="1ffsG7bX1MS" resolve="BaseIteratingRuleTemplate" />
      <node concept="16syzq" id="4OKkcnfu_vF" role="11_B2D">
        <ref role="16sUi3" node="4OKkcnfu_vG" resolve="Context" />
      </node>
      <node concept="16syzq" id="1ffsG7bXqav" role="11_B2D">
        <ref role="16sUi3" node="4OKkcnfu_vH" resolve="Iter" />
      </node>
    </node>
    <node concept="16euLQ" id="4OKkcnfu_vG" role="16eVyc">
      <property role="TrG5h" value="Context" />
    </node>
    <node concept="16euLQ" id="4OKkcnfu_vH" role="16eVyc">
      <property role="TrG5h" value="Iter" />
    </node>
    <node concept="3uibUv" id="67SsWaEn6P_" role="EKbjA">
      <ref role="3uigEE" node="1ffsG7bV945" resolve="Iterating" />
      <node concept="16syzq" id="67SsWaEn7S7" role="11_B2D">
        <ref role="16sUi3" node="4OKkcnfu_vH" resolve="Iter" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4OKkcnfu_vI">
    <property role="TrG5h" value="AbstractRuleTemplate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4OKkcnfu_vJ" role="jymVt" />
    <node concept="3clFbW" id="4OKkcnfu_vK" role="jymVt">
      <node concept="3cqZAl" id="4OKkcnfu_vL" role="3clF45" />
      <node concept="3Tm1VV" id="4OKkcnfu_vM" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcnfu_vN" role="3clF47">
        <node concept="XkiVB" id="1ffsG7bUcAM" role="3cqZAp">
          <ref role="37wK5l" node="1ffsG7bUbEV" resolve="BaseRuleTemplate" />
          <node concept="37vLTw" id="4MqhgXUnh95" role="37wK5m">
            <ref role="3cqZAo" node="4MqhgXUng$w" resolve="handlerTemplate" />
          </node>
          <node concept="37vLTw" id="1ffsG7bUcCt" role="37wK5m">
            <ref role="3cqZAo" node="4OKkcnfu_vU" resolve="name" />
          </node>
          <node concept="37vLTw" id="62MNP_kYafv" role="37wK5m">
            <ref role="3cqZAo" node="62MNP_kY9Lq" resolve="templateRef" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4MqhgXUng$w" role="3clF46">
        <property role="TrG5h" value="handlerTemplate" />
        <node concept="3uibUv" id="4MqhgXUngW5" role="1tU5fm">
          <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfu_vU" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4OKkcnfu_vV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="62MNP_kY9Lq" role="3clF46">
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="62MNP_kY9Pl" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2JQZWxFbXxu" role="jymVt" />
    <node concept="3clFb_" id="4OKkcnfu_wi" role="jymVt">
      <property role="TrG5h" value="isExactMatch" />
      <node concept="10P_77" id="4OKkcnfu_wj" role="3clF45" />
      <node concept="3Tm1VV" id="4OKkcnfu_wk" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcnfu_wl" role="3clF47">
        <node concept="3clFbF" id="3x8pcoFtjyy" role="3cqZAp">
          <node concept="3clFbT" id="4OKkcnfu_wn" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bWUz5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcnfu_wy" role="jymVt" />
    <node concept="3clFb_" id="4OKkcnfu_wz" role="jymVt">
      <property role="TrG5h" value="context" />
      <node concept="37vLTG" id="4OKkcnfu_w$" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="4OKkcnfu_w_" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="4OKkcnfu_wA" role="3clF45">
        <ref role="16sUi3" node="4OKkcnfu_xd" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="4OKkcnfu_wB" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcnfu_wC" role="3clF47">
        <node concept="3clFbF" id="4OKkcnfu_wD" role="3cqZAp">
          <node concept="10Nm6u" id="4OKkcnfu_wE" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bWUMJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7chRVv" role="jymVt" />
    <node concept="3clFb_" id="PB1R3YsDCl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initContext" />
      <node concept="37vLTG" id="PB1R3YsDCm" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="PB1R3YsDCn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="PB1R3YsDCo" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="PB1R3YsDCy" role="1tU5fm">
          <ref role="16sUi3" node="4OKkcnfu_xd" resolve="Context" />
        </node>
      </node>
      <node concept="16syzq" id="6YKq674vGMI" role="3clF45">
        <ref role="16sUi3" node="4OKkcnfu_xd" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="PB1R3YsDCr" role="1B3o_S" />
      <node concept="3clFbS" id="PB1R3YsDC$" role="3clF47">
        <node concept="3clFbF" id="PB1R3YsDOJ" role="3cqZAp">
          <node concept="10Nm6u" id="PB1R3YsDOI" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="PB1R3YsDPu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PB1R3YsDXx" role="jymVt" />
    <node concept="3Tm1VV" id="4OKkcnfu_x9" role="1B3o_S" />
    <node concept="16euLQ" id="4OKkcnfu_xd" role="16eVyc">
      <property role="TrG5h" value="Context" />
    </node>
    <node concept="3uibUv" id="1ffsG7bUchI" role="1zkMxy">
      <ref role="3uigEE" node="1ffsG7bUbCM" resolve="BaseRuleTemplate" />
      <node concept="16syzq" id="1ffsG7bUsVy" role="11_B2D">
        <ref role="16sUi3" node="4OKkcnfu_xd" resolve="Context" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4OKkcnfu_xe">
    <property role="TrG5h" value="AbstractRuleTemplateManifest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1ggxSI7z1Os" role="jymVt" />
    <node concept="3clFb_" id="20Ay2VeQ4QK" role="jymVt">
      <property role="TrG5h" value="handlingStages" />
      <property role="1EzhhJ" value="true" />
      <node concept="_YKpA" id="20Ay2VeQ4RT" role="3clF45">
        <node concept="_YKpA" id="20Ay2Vf4KeD" role="_ZDj9">
          <node concept="3uibUv" id="20Ay2Vf4Kpw" role="_ZDj9">
            <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="20Ay2VeQ4QN" role="1B3o_S" />
      <node concept="3clFbS" id="20Ay2VeQ4QO" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="20Ay2VeQ4EW" role="jymVt" />
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
    <node concept="3clFb_" id="1ggxSI7z1S5" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="javaExpressionSolver" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1ggxSI7z1S8" role="3clF47" />
      <node concept="3Tm1VV" id="1ggxSI7z1OS" role="1B3o_S" />
      <node concept="3uibUv" id="5jCHAT2vM0V" role="3clF45">
        <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcnfu_xm" role="jymVt" />
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
                  <ref role="37wK5l" to="nz6g:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                  <node concept="37vLTw" id="4sSe4$oN6I7" role="37wK5m">
                    <ref role="3cqZAo" node="5uFPQ7CgjLS" resolve="TYPEOF_SYM" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4sSe4$oN6q3" role="2OqNvi">
                <ref role="37wK5l" to="nz6g:4sSe4$oM2sT" resolve="withArguments" />
                <node concept="37vLTw" id="4sSe4$oN7Bp" role="37wK5m">
                  <ref role="3cqZAo" node="4OKkcnfu_$e" resolve="type" />
                </node>
                <node concept="37vLTw" id="4sSe4$oN7Bq" role="37wK5m">
                  <ref role="3cqZAo" node="4OKkcnfu_$g" resolve="anchor" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4sSe4$oN6q5" role="2OqNvi">
              <ref role="37wK5l" to="nz6g:4sSe4$oM2zI" resolve="toConstraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcnfu_$r" role="jymVt" />
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
    <node concept="2tJIrI" id="6i42QSs8ojo" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bUm$B" role="jymVt">
      <property role="TrG5h" value="isApplicable" />
      <node concept="37vLTG" id="1ffsG7bUm$C" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bUm$D" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ffsG7bUm$E" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="1ffsG7bUnik" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Context" />
        </node>
      </node>
      <node concept="10P_77" id="1ffsG7bUm$G" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bUm$H" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bUm$I" role="3clF47">
        <node concept="3cpWs6" id="1ffsG7bUm$J" role="3cqZAp">
          <node concept="3clFbT" id="1ffsG7bUm$K" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bWHEJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bUlkA" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bUnFn" role="jymVt">
      <property role="TrG5h" value="required" />
      <node concept="37vLTG" id="1ffsG7bUnFo" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bUnFp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2q0gzCFOCXd" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="2q0gzCFOD8v" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Context" />
        </node>
      </node>
      <node concept="A3Dl8" id="1ffsG7bUnFq" role="3clF45">
        <node concept="3Tqbb2" id="1ffsG7bUnFr" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="1ffsG7bUnFs" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bUnFt" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bUnFu" role="3cqZAp">
          <node concept="10Nm6u" id="1ffsG7bUnFv" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bWJBf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bUnZW" role="jymVt" />
    <node concept="3clFb_" id="75vUFrSIQhr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initContext" />
      <node concept="37vLTG" id="75vUFrSIQhs" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="75vUFrSIQht" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="75vUFrSIQhu" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="75vUFrSIQhz" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Context" />
        </node>
      </node>
      <node concept="16syzq" id="6YKq674vGah" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="75vUFrSIQhx" role="1B3o_S" />
      <node concept="3clFbS" id="75vUFrSIQh_" role="3clF47">
        <node concept="3clFbF" id="75vUFrSIQGI" role="3cqZAp">
          <node concept="10Nm6u" id="75vUFrSIQGH" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="75vUFrSIQHj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
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
    <node concept="3clFb_" id="1ffsG7bUcCI" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="1ffsG7bUcCJ" role="3clF45" />
      <node concept="3Tmbuc" id="2JQZWxFbt8r" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bUcCL" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bUcCM" role="3cqZAp">
          <node concept="37vLTw" id="1ffsG7bUde9" role="3clFbG">
            <ref role="3cqZAo" node="1ffsG7bUbIL" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bUbKP" role="jymVt" />
    <node concept="3clFb_" id="2JQZWxFbti8" role="jymVt">
      <property role="TrG5h" value="prototype" />
      <node concept="3uibUv" id="2JQZWxFbtxn" role="3clF45">
        <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
        <node concept="3qUtgH" id="2JQZWxFiBeu" role="11_B2D">
          <node concept="16syzq" id="2JQZWxFiBeV" role="3qUvdb">
            <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Context" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2JQZWxFbuzx" role="1B3o_S" />
      <node concept="3clFbS" id="2JQZWxFbtic" role="3clF47">
        <node concept="3clFbF" id="2JQZWxFbuvN" role="3cqZAp">
          <node concept="37vLTw" id="2JQZWxFbuvM" role="3clFbG">
            <ref role="3cqZAo" node="2JQZWxFbpKX" resolve="prototype" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2JQZWxFc1KO" role="jymVt" />
    <node concept="3clFb_" id="2JQZWxFc1xW" role="jymVt">
      <property role="TrG5h" value="prototype" />
      <node concept="3cqZAl" id="2JQZWxFc1Vt" role="3clF45" />
      <node concept="3Tmbuc" id="2JQZWxFc1xY" role="1B3o_S" />
      <node concept="3clFbS" id="2JQZWxFc1xZ" role="3clF47">
        <node concept="3clFbF" id="2JQZWxFc2GA" role="3cqZAp">
          <node concept="37vLTI" id="2JQZWxFc3On" role="3clFbG">
            <node concept="37vLTw" id="2JQZWxFc3UC" role="37vLTx">
              <ref role="3cqZAo" node="2JQZWxFc2ui" resolve="prototype" />
            </node>
            <node concept="2OqwBi" id="2JQZWxFc2J7" role="37vLTJ">
              <node concept="Xjq3P" id="2JQZWxFc2G_" role="2Oq$k0" />
              <node concept="2OwXpG" id="2JQZWxFc360" role="2OqNvi">
                <ref role="2Oxat5" node="2JQZWxFbpKX" resolve="prototype" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JQZWxFc2ui" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="2JQZWxFc2uh" role="1tU5fm">
          <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
          <node concept="3qUtgH" id="2JQZWxFiBol" role="11_B2D">
            <node concept="16syzq" id="2JQZWxFiBtP" role="3qUvdb">
              <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Context" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bUqE8" role="jymVt" />
    <node concept="312cEg" id="1ffsG7bUbIL" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="1ffsG7bUbIM" role="1B3o_S" />
      <node concept="17QB3L" id="1ffsG7bUbIO" role="1tU5fm" />
    </node>
    <node concept="16euLQ" id="1ffsG7bUbY4" role="16eVyc">
      <property role="TrG5h" value="Context" />
    </node>
    <node concept="3uibUv" id="1ffsG7bWFot" role="EKbjA">
      <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
      <node concept="16syzq" id="1ffsG7bWGME" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Context" />
      </node>
    </node>
    <node concept="312cEg" id="2JQZWxFbpKX" role="jymVt">
      <property role="TrG5h" value="prototype" />
      <node concept="3Tm6S6" id="2JQZWxFbpKY" role="1B3o_S" />
      <node concept="3uibUv" id="2JQZWxFbpL0" role="1tU5fm">
        <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
        <node concept="3qUtgH" id="2JQZWxFiBGw" role="11_B2D">
          <node concept="16syzq" id="2JQZWxFiBMC" role="3qUvdb">
            <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Context" />
          </node>
        </node>
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
  <node concept="3HP615" id="1ffsG7bV945">
    <property role="TrG5h" value="Iterating" />
    <node concept="2tJIrI" id="1ffsG7bV9dO" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bV9h6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="iterateOver" />
      <node concept="37vLTG" id="1ffsG7bVaik" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bVapu" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="1ffsG7bV9nY" role="3clF45">
        <node concept="16syzq" id="1ffsG7bV9o9" role="A3Ik2">
          <ref role="16sUi3" node="1ffsG7bV9nO" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1ffsG7bV9h9" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bV9ha" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1ffsG7bVaK5" role="jymVt" />
    <node concept="3Tm1VV" id="1ffsG7bV946" role="1B3o_S" />
    <node concept="16euLQ" id="1ffsG7bV9nO" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="3HP615" id="1ffsG7bW_V4">
    <property role="TrG5h" value="RuleTemplate" />
    <node concept="2tJIrI" id="67SsWaEm4a8" role="jymVt" />
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
    <node concept="2tJIrI" id="4MqhgXUnds$" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bW$2q" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="context" />
      <node concept="37vLTG" id="1ffsG7bW_ia" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bW_q1" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="1ffsG7bW$av" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bWA35" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="1ffsG7bW$2t" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bW$2u" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1ffsG7bWCTe" role="jymVt" />
    <node concept="3clFb_" id="PB1R3YsCm9" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="initContext" />
      <node concept="37vLTG" id="PB1R3YsCma" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="PB1R3YsCmb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="PB1R3YsD6L" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="PB1R3YsDiE" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bWA35" resolve="Context" />
        </node>
      </node>
      <node concept="16syzq" id="6YKq674vCNf" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bWA35" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="PB1R3YsCmd" role="1B3o_S" />
      <node concept="3clFbS" id="PB1R3YsCme" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="PB1R3YsIZx" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bWA3o" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="37vLTG" id="1ffsG7bWBmh" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bWBtT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ffsG7bWB_$" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="1ffsG7bWBHn" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bWA35" resolve="Context" />
        </node>
      </node>
      <node concept="10P_77" id="1ffsG7bWAbc" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bWA3r" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bWA3s" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2q0gzCFLeet" role="jymVt" />
    <node concept="3clFb_" id="2q0gzCFLe4l" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="required" />
      <node concept="A3Dl8" id="2q0gzCFLe4m" role="3clF45">
        <node concept="3Tqbb2" id="2q0gzCFLe4n" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="2q0gzCFLe4o" role="1B3o_S" />
      <node concept="3clFbS" id="2q0gzCFLe4p" role="3clF47" />
      <node concept="37vLTG" id="2q0gzCFLe4q" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="2q0gzCFLe4r" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2q0gzCFLeij" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="2q0gzCFLezl" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bWA35" resolve="Context" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="PB1R3YsHTd" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bWCVq" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="A3Dl8" id="1ffsG7bWD3H" role="3clF45">
        <node concept="3uibUv" id="1ffsG7bWD4a" role="A3Ik2">
          <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="1ffsG7bWDGk" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bWDP4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ffsG7bWDXM" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="1ffsG7bWE6B" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bWA35" resolve="Context" />
        </node>
      </node>
      <node concept="37vLTG" id="18kNIl1KuR8" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="18kNIl1Kv6h" role="1tU5fm">
          <ref role="3uigEE" to="nz6g:18kNIl1vDPZ" resolve="ApplicationSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1ffsG7bWCVt" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bWCVu" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="PB1R3Yh6WC" role="jymVt" />
    <node concept="3clFb_" id="6i42QSs8m5b" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="templateRef" />
      <node concept="3uibUv" id="6i42QSs8miP" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="6i42QSs8m5e" role="1B3o_S" />
      <node concept="3clFbS" id="6i42QSs8m5f" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6i42QSs8m2v" role="jymVt" />
    <node concept="3Tm1VV" id="1ffsG7bW_V5" role="1B3o_S" />
    <node concept="16euLQ" id="1ffsG7bWA35" role="16eVyc">
      <property role="TrG5h" value="Context" />
    </node>
  </node>
  <node concept="312cEu" id="1ffsG7bX1MS">
    <property role="TrG5h" value="BaseIteratingRuleTemplate" />
    <property role="1sVAO0" value="true" />
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
    <node concept="2tJIrI" id="1ffsG7bX2$J" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bX6re" role="jymVt">
      <property role="TrG5h" value="required" />
      <property role="1EzhhJ" value="false" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="1ffsG7bX6rf" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bX6rg" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2q0gzCFLfF$" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="2q0gzCFLggJ" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
        </node>
      </node>
      <node concept="A3Dl8" id="1ffsG7bX6rh" role="3clF45">
        <node concept="3Tqbb2" id="1ffsG7bX6ri" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="1ffsG7bX6rj" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bX6rk" role="3clF47">
        <node concept="3cpWs8" id="1ffsG7bX6rl" role="3cqZAp">
          <node concept="3cpWsn" id="1ffsG7bX6rm" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="A3Dl8" id="1ffsG7bX6rn" role="1tU5fm">
              <node concept="3Tqbb2" id="1ffsG7bX6ro" role="A3Ik2" />
            </node>
            <node concept="10Nm6u" id="1ffsG7bX6rp" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="1ffsG7bX6rq" role="3cqZAp" />
        <node concept="1DcWWT" id="1ffsG7bX6rr" role="3cqZAp">
          <node concept="3clFbS" id="1ffsG7bX6rs" role="2LFqv$">
            <node concept="3clFbF" id="1ffsG7bX6rt" role="3cqZAp">
              <node concept="37vLTI" id="1ffsG7bX6ru" role="3clFbG">
                <node concept="2OqwBi" id="1ffsG7bX6rv" role="37vLTx">
                  <node concept="37vLTw" id="1ffsG7bX6rw" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ffsG7bX6rm" resolve="result" />
                  </node>
                  <node concept="3QWeyG" id="1ffsG7bX6rx" role="2OqNvi">
                    <node concept="1rXfSq" id="1ffsG7bX6ry" role="576Qk">
                      <ref role="37wK5l" node="1ffsG7bX6rL" resolve="required" />
                      <node concept="37vLTw" id="1ffsG7bX6rz" role="37wK5m">
                        <ref role="3cqZAo" node="1ffsG7bX6rf" resolve="input" />
                      </node>
                      <node concept="37vLTw" id="1ffsG7bX6r$" role="37wK5m">
                        <ref role="3cqZAo" node="1ffsG7bX6rA" resolve="it" />
                      </node>
                      <node concept="37vLTw" id="2q0gzCFMpJA" role="37wK5m">
                        <ref role="3cqZAo" node="2q0gzCFLfF$" resolve="context" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1ffsG7bX6r_" role="37vLTJ">
                  <ref role="3cqZAo" node="1ffsG7bX6rm" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1ffsG7bX6rA" role="1Duv9x">
            <property role="TrG5h" value="it" />
            <node concept="16syzq" id="1ffsG7bX6rB" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
            </node>
          </node>
          <node concept="2OqwBi" id="1ffsG7bX6rC" role="1DdaDG">
            <node concept="1rXfSq" id="1ffsG7bX6rD" role="2Oq$k0">
              <ref role="37wK5l" node="8VaLZRH3sL" resolve="iterating" />
            </node>
            <node concept="liA8E" id="1ffsG7bX6rE" role="2OqNvi">
              <ref role="37wK5l" node="1ffsG7bV9h6" resolve="iterateOver" />
              <node concept="37vLTw" id="1ffsG7bX6rF" role="37wK5m">
                <ref role="3cqZAo" node="1ffsG7bX6rf" resolve="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1ffsG7bX6rG" role="3cqZAp" />
        <node concept="3clFbF" id="1ffsG7bX6rH" role="3cqZAp">
          <node concept="37vLTw" id="1ffsG7bX6rI" role="3clFbG">
            <ref role="3cqZAo" node="1ffsG7bX6rm" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bX6rJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bX6rK" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bX6rL" role="jymVt">
      <property role="TrG5h" value="required" />
      <node concept="37vLTG" id="1ffsG7bX6rM" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bX6rN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ffsG7bX6rO" role="3clF46">
        <property role="TrG5h" value="iterateOver" />
        <node concept="16syzq" id="1ffsG7bX6rP" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
        </node>
      </node>
      <node concept="37vLTG" id="2q0gzCFLZia" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="2q0gzCFLZLQ" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
        </node>
      </node>
      <node concept="A3Dl8" id="1ffsG7bX6rQ" role="3clF45">
        <node concept="3Tqbb2" id="1ffsG7bX6rR" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="1ffsG7bX6rS" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bX6rT" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bX6rU" role="3cqZAp">
          <node concept="10Nm6u" id="1ffsG7bX6rV" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bXl$y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ffsG7bX6rW" role="jymVt" />
    <node concept="3clFb_" id="6YKq674vX7w" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="context" />
      <node concept="37vLTG" id="6YKq674vX7x" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="6YKq674vX7y" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6YKq674vX7z" role="3clF46">
        <property role="TrG5h" value="iterateOver" />
        <node concept="16syzq" id="6YKq674vX7F" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
        </node>
      </node>
      <node concept="16syzq" id="6YKq674vX7G" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="6YKq674vX7A" role="1B3o_S" />
      <node concept="3clFbS" id="6YKq674vX7H" role="3clF47">
        <node concept="3clFbF" id="6YKq674vYKh" role="3cqZAp">
          <node concept="10Nm6u" id="6YKq674vYKg" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6YKq674vYhJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YKq674vXNc" role="jymVt" />
    <node concept="3clFb_" id="PB1R3YsKTE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initContext" />
      <node concept="37vLTG" id="PB1R3YsKTF" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="PB1R3YsKTG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="PB1R3YsKTH" role="3clF46">
        <property role="TrG5h" value="iterateOver" />
        <node concept="16syzq" id="PB1R3YsKTT" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
        </node>
      </node>
      <node concept="37vLTG" id="PB1R3YsKTJ" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="PB1R3YsKTU" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
        </node>
      </node>
      <node concept="16syzq" id="6YKq674vL_5" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="PB1R3YsKTM" role="1B3o_S" />
      <node concept="3clFbS" id="PB1R3YsKTW" role="3clF47">
        <node concept="3clFbF" id="PB1R3YsLYO" role="3cqZAp">
          <node concept="10Nm6u" id="PB1R3YsLYN" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="PB1R3YsLZH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PB1R3YsLsX" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bX6rX" role="jymVt">
      <property role="TrG5h" value="apply" />
      <property role="1EzhhJ" value="false" />
      <property role="DiZV1" value="true" />
      <node concept="A3Dl8" id="1ffsG7bX6rY" role="3clF45">
        <node concept="3uibUv" id="1ffsG7bX6rZ" role="A3Ik2">
          <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1ffsG7bX6s0" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bX6s1" role="3clF47">
        <node concept="3cpWs8" id="1ffsG7bX6s2" role="3cqZAp">
          <node concept="3cpWsn" id="1ffsG7bX6s3" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="A3Dl8" id="1ffsG7bX6s4" role="1tU5fm">
              <node concept="3uibUv" id="1ffsG7bX6s5" role="A3Ik2">
                <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
              </node>
            </node>
            <node concept="10Nm6u" id="1ffsG7bX6s6" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="1ffsG7bX6s7" role="3cqZAp" />
        <node concept="1DcWWT" id="1ffsG7bX6s8" role="3cqZAp">
          <node concept="3clFbS" id="1ffsG7bX6s9" role="2LFqv$">
            <node concept="3cpWs8" id="1_iD3H_ZEwL" role="3cqZAp">
              <node concept="3cpWsn" id="1_iD3H_ZEwM" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="16syzq" id="1_iD3H_ZEwH" role="1tU5fm">
                  <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
                </node>
                <node concept="1rXfSq" id="1_iD3H_ZEwN" role="33vP2m">
                  <ref role="37wK5l" node="7t5VLKHagn3" resolve="getContext" />
                  <node concept="37vLTw" id="1_iD3H_ZEwO" role="37wK5m">
                    <ref role="3cqZAo" node="1ffsG7bX6st" resolve="input" />
                  </node>
                  <node concept="37vLTw" id="1_iD3H_ZEwP" role="37wK5m">
                    <ref role="3cqZAo" node="1ffsG7bX6sk" resolve="p" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1_iD3H_Zmof" role="3cqZAp" />
            <node concept="3clFbF" id="1ffsG7bX6sa" role="3cqZAp">
              <node concept="37vLTI" id="1ffsG7bX6sb" role="3clFbG">
                <node concept="2OqwBi" id="1ffsG7bX6sc" role="37vLTx">
                  <node concept="37vLTw" id="1ffsG7bX6sd" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ffsG7bX6s3" resolve="result" />
                  </node>
                  <node concept="3QWeyG" id="1ffsG7bX6se" role="2OqNvi">
                    <node concept="1rXfSq" id="1ffsG7bX6sf" role="576Qk">
                      <ref role="37wK5l" node="1ffsG7bXfck" resolve="apply" />
                      <node concept="37vLTw" id="1ffsG7bX6sg" role="37wK5m">
                        <ref role="3cqZAo" node="1ffsG7bX6st" resolve="input" />
                      </node>
                      <node concept="37vLTw" id="1ffsG7bX6sh" role="37wK5m">
                        <ref role="3cqZAo" node="1ffsG7bX6sk" resolve="p" />
                      </node>
                      <node concept="37vLTw" id="1_iD3H_ZFLg" role="37wK5m">
                        <ref role="3cqZAo" node="1_iD3H_ZEwM" resolve="context" />
                      </node>
                      <node concept="37vLTw" id="18kNIl1K_jv" role="37wK5m">
                        <ref role="3cqZAo" node="18kNIl1Kyiv" resolve="session" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1ffsG7bX6sj" role="37vLTJ">
                  <ref role="3cqZAo" node="1ffsG7bX6s3" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1ffsG7bX6sk" role="1Duv9x">
            <property role="TrG5h" value="p" />
            <node concept="16syzq" id="1ffsG7bX6sl" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
            </node>
          </node>
          <node concept="2OqwBi" id="1ffsG7bX6sm" role="1DdaDG">
            <node concept="1rXfSq" id="1ffsG7bX6sn" role="2Oq$k0">
              <ref role="37wK5l" node="8VaLZRH3sL" resolve="iterating" />
            </node>
            <node concept="liA8E" id="1ffsG7bX6so" role="2OqNvi">
              <ref role="37wK5l" node="1ffsG7bV9h6" resolve="iterateOver" />
              <node concept="37vLTw" id="1ffsG7bX6sp" role="37wK5m">
                <ref role="3cqZAo" node="1ffsG7bX6st" resolve="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1ffsG7bX6sq" role="3cqZAp" />
        <node concept="3clFbF" id="1ffsG7bX6sr" role="3cqZAp">
          <node concept="37vLTw" id="1ffsG7bX6ss" role="3clFbG">
            <ref role="3cqZAo" node="1ffsG7bX6s3" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ffsG7bX6st" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bX6su" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ffsG7bX6sv" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="16syzq" id="1ffsG7bX6sw" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
        </node>
      </node>
      <node concept="37vLTG" id="18kNIl1Kyiv" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="18kNIl1Kzfb" role="1tU5fm">
          <ref role="3uigEE" to="nz6g:18kNIl1vDPZ" resolve="ApplicationSession" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bX6sx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="452KZTbwlFS" role="jymVt" />
    <node concept="3clFb_" id="452KZTbwmcF" role="jymVt">
      <property role="TrG5h" value="prototype" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="452KZTbwmcG" role="3clF45">
        <ref role="3uigEE" node="1ffsG7bXcuq" resolve="IteratingRuleTemplate" />
        <node concept="3qUtgH" id="452KZTbwmcH" role="11_B2D">
          <node concept="16syzq" id="452KZTbwmcN" role="3qUvdb">
            <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
          </node>
        </node>
        <node concept="16syzq" id="452KZTbwpmR" role="11_B2D">
          <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
        </node>
      </node>
      <node concept="3Tmbuc" id="452KZTbwmcJ" role="1B3o_S" />
      <node concept="3clFbS" id="452KZTbwmcO" role="3clF47">
        <node concept="3clFbF" id="452KZTbwmcR" role="3cqZAp">
          <node concept="10QFUN" id="452KZTbwp_X" role="3clFbG">
            <node concept="3nyPlj" id="452KZTbwp_W" role="10QFUP">
              <ref role="37wK5l" node="2JQZWxFbti8" resolve="prototype" />
            </node>
            <node concept="3uibUv" id="452KZTbwq5G" role="10QFUM">
              <ref role="3uigEE" node="1ffsG7bXcuq" resolve="IteratingRuleTemplate" />
              <node concept="3qUtgH" id="452KZTbwq5H" role="11_B2D">
                <node concept="16syzq" id="452KZTbwq5I" role="3qUvdb">
                  <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
                </node>
              </node>
              <node concept="16syzq" id="452KZTbwq5J" role="11_B2D">
                <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="452KZTbwmcP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="452KZTbwqIb" role="jymVt" />
    <node concept="3clFb_" id="452KZTbwree" role="jymVt">
      <property role="TrG5h" value="prototype" />
      <property role="1EzhhJ" value="false" />
      <node concept="3cqZAl" id="452KZTbwref" role="3clF45" />
      <node concept="3Tmbuc" id="452KZTbwreg" role="1B3o_S" />
      <node concept="37vLTG" id="452KZTbwreo" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="452KZTbwtwY" role="1tU5fm">
          <ref role="3uigEE" node="1ffsG7bXcuq" resolve="IteratingRuleTemplate" />
          <node concept="3qUtgH" id="452KZTbwtwZ" role="11_B2D">
            <node concept="16syzq" id="452KZTbwtx0" role="3qUvdb">
              <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
            </node>
          </node>
          <node concept="16syzq" id="452KZTbwtx1" role="11_B2D">
            <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="452KZTbwret" role="3clF47">
        <node concept="3clFbF" id="452KZTbwrex" role="3cqZAp">
          <node concept="3nyPlj" id="452KZTbwrew" role="3clFbG">
            <ref role="37wK5l" node="2JQZWxFc1xW" resolve="prototype" />
            <node concept="37vLTw" id="452KZTbwrev" role="37wK5m">
              <ref role="3cqZAo" node="452KZTbwreo" resolve="prototype" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_iD3H_Znh2" role="jymVt" />
    <node concept="3clFb_" id="7t5VLKHagn3" role="jymVt">
      <property role="TrG5h" value="getContext" />
      <node concept="37vLTG" id="7t5VLKHagn6" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="7t5VLKHagn7" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1_iD3H_Zpaj" role="3clF46">
        <property role="TrG5h" value="iterateOver" />
        <node concept="16syzq" id="1_iD3H_ZpGT" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
        </node>
      </node>
      <node concept="16syzq" id="1_iD3H_ZuLD" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
      </node>
      <node concept="3Tm6S6" id="7t5VLKHagn9" role="1B3o_S" />
      <node concept="3clFbS" id="7t5VLKHagna" role="3clF47">
        <node concept="3SKdUt" id="7t5VLKHagnb" role="3cqZAp">
          <node concept="3SKdUq" id="7t5VLKHagnc" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3cpWs8" id="2JQZWxFbhyR" role="3cqZAp">
          <node concept="3cpWsn" id="2JQZWxFbhyS" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <node concept="16syzq" id="1_iD3H_ZqA_" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
            </node>
            <node concept="2OqwBi" id="2JQZWxFbhyT" role="33vP2m">
              <node concept="Xjq3P" id="1_iD3H_Zq40" role="2Oq$k0" />
              <node concept="liA8E" id="2JQZWxFbhyV" role="2OqNvi">
                <ref role="37wK5l" node="6YKq674vX7w" resolve="context" />
                <node concept="37vLTw" id="2JQZWxFbhyW" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKHagn6" resolve="input" />
                </node>
                <node concept="37vLTw" id="1_iD3H_Zqt2" role="37wK5m">
                  <ref role="3cqZAo" node="1_iD3H_Zpaj" resolve="iterateOver" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JQZWxFbhCE" role="3cqZAp">
          <node concept="2OqwBi" id="2JQZWxFbhFo" role="3clFbG">
            <node concept="Xjq3P" id="1_iD3H_ZqzM" role="2Oq$k0" />
            <node concept="liA8E" id="2JQZWxFbhRj" role="2OqNvi">
              <ref role="37wK5l" node="PB1R3YsKTE" resolve="initContext" />
              <node concept="37vLTw" id="2JQZWxFbi03" role="37wK5m">
                <ref role="3cqZAo" node="7t5VLKHagn6" resolve="input" />
              </node>
              <node concept="37vLTw" id="1_iD3H_Zsdw" role="37wK5m">
                <ref role="3cqZAo" node="1_iD3H_Zpaj" resolve="iterateOver" />
              </node>
              <node concept="37vLTw" id="2JQZWxFbhTf" role="37wK5m">
                <ref role="3cqZAo" node="2JQZWxFbhyS" resolve="context" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_iD3H_ZsJL" role="3cqZAp">
          <node concept="37vLTw" id="1_iD3H_ZsJJ" role="3clFbG">
            <ref role="3cqZAo" node="2JQZWxFbhyS" resolve="context" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_iD3H_ZnxM" role="jymVt" />
    <node concept="3Tm1VV" id="1ffsG7bX1MT" role="1B3o_S" />
    <node concept="3uibUv" id="1ffsG7bX2a9" role="1zkMxy">
      <ref role="3uigEE" node="1ffsG7bUbCM" resolve="BaseRuleTemplate" />
      <node concept="16syzq" id="1ffsG7bX2$t" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
      </node>
    </node>
    <node concept="16euLQ" id="1ffsG7bX2zU" role="16eVyc">
      <property role="TrG5h" value="Context" />
    </node>
    <node concept="16euLQ" id="1ffsG7bX2$8" role="16eVyc">
      <property role="TrG5h" value="Iter" />
    </node>
    <node concept="3uibUv" id="1ffsG7bXiAl" role="EKbjA">
      <ref role="3uigEE" node="1ffsG7bXcuq" resolve="IteratingRuleTemplate" />
      <node concept="16syzq" id="1ffsG7bXj_H" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bX2zU" resolve="Context" />
      </node>
      <node concept="16syzq" id="1ffsG7bXklu" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bX2$8" resolve="Iter" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1ffsG7bXcuq">
    <property role="TrG5h" value="IteratingRuleTemplate" />
    <node concept="2tJIrI" id="8VaLZRFUVz" role="jymVt" />
    <node concept="3clFb_" id="8VaLZRH3sL" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="iterating" />
      <node concept="3clFbS" id="8VaLZRH3sO" role="3clF47" />
      <node concept="3Tm1VV" id="8VaLZRH3sP" role="1B3o_S" />
      <node concept="3uibUv" id="8VaLZRH3qA" role="3clF45">
        <ref role="3uigEE" node="1ffsG7bV945" resolve="Iterating" />
        <node concept="16syzq" id="8VaLZRH3s1" role="11_B2D">
          <ref role="16sUi3" node="1ffsG7bXcDZ" resolve="Iter" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2q0gzCFLiEr" role="jymVt" />
    <node concept="3clFb_" id="2q0gzCFLipT" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="required" />
      <node concept="37vLTG" id="2q0gzCFLipU" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="2q0gzCFLipV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2q0gzCFLipW" role="3clF46">
        <property role="TrG5h" value="iterateOver" />
        <node concept="16syzq" id="2q0gzCFLipX" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bXcDZ" resolve="Iter" />
        </node>
      </node>
      <node concept="37vLTG" id="2q0gzCFLiOj" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="2q0gzCFLj1D" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bXcDV" resolve="Context" />
        </node>
      </node>
      <node concept="A3Dl8" id="2q0gzCFLipY" role="3clF45">
        <node concept="3Tqbb2" id="2q0gzCFLipZ" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="2q0gzCFLiq0" role="1B3o_S" />
      <node concept="3clFbS" id="2q0gzCFLiq1" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="PB1R3YsH4i" role="jymVt" />
    <node concept="3clFb_" id="PB1R3YsGQb" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="context" />
      <node concept="37vLTG" id="PB1R3YsGQc" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="PB1R3YsGQd" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="PB1R3YsKr4" role="3clF46">
        <property role="TrG5h" value="iterateOver" />
        <node concept="16syzq" id="PB1R3YsKr5" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bXcDZ" resolve="Iter" />
        </node>
      </node>
      <node concept="16syzq" id="6YKq674vKAr" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bXcDV" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="PB1R3YsGQh" role="1B3o_S" />
      <node concept="3clFbS" id="PB1R3YsGQi" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6YKq674vW28" role="jymVt" />
    <node concept="3clFb_" id="6YKq674vVKf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="initContext" />
      <node concept="37vLTG" id="6YKq674vVKg" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="6YKq674vVKh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6YKq674vVKi" role="3clF46">
        <property role="TrG5h" value="iterateOver" />
        <node concept="16syzq" id="6YKq674vVKj" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bXcDZ" resolve="Iter" />
        </node>
      </node>
      <node concept="37vLTG" id="6YKq674vVKk" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="6YKq674vVKl" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bXcDV" resolve="Context" />
        </node>
      </node>
      <node concept="16syzq" id="6YKq674vVKm" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bXcDV" resolve="Context" />
      </node>
      <node concept="3Tm1VV" id="6YKq674vVKn" role="1B3o_S" />
      <node concept="3clFbS" id="6YKq674vVKo" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1ffsG7bXfbD" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bXfck" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="A3Dl8" id="1ffsG7bXfPY" role="3clF45">
        <node concept="3uibUv" id="1ffsG7bXfQn" role="A3Ik2">
          <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="1ffsG7bXg4k" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="1ffsG7bXghu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ffsG7bXguM" role="3clF46">
        <property role="TrG5h" value="iterateOver" />
        <node concept="16syzq" id="1ffsG7bXgG3" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bXcDZ" resolve="Iter" />
        </node>
      </node>
      <node concept="37vLTG" id="1ffsG7bXgUJ" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="16syzq" id="1ffsG7bXh86" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bXcDV" resolve="Context" />
        </node>
      </node>
      <node concept="37vLTG" id="18kNIl1Kw3b" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="18kNIl1KwgU" role="1tU5fm">
          <ref role="3uigEE" to="nz6g:18kNIl1vDPZ" resolve="ApplicationSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1ffsG7bXfcn" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bXfco" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1ffsG7bXdrD" role="jymVt" />
    <node concept="3Tm1VV" id="1ffsG7bXcur" role="1B3o_S" />
    <node concept="16euLQ" id="1ffsG7bXcDV" role="16eVyc">
      <property role="TrG5h" value="Context" />
    </node>
    <node concept="16euLQ" id="1ffsG7bXcDZ" role="16eVyc">
      <property role="TrG5h" value="Iter" />
    </node>
    <node concept="3uibUv" id="1ffsG7bXcPu" role="3HQHJm">
      <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
      <node concept="16syzq" id="1ffsG7bXdfH" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bXcDV" resolve="Context" />
      </node>
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
    <node concept="2tJIrI" id="4MqhgXUN1OI" role="jymVt" />
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
    </node>
    <node concept="2tJIrI" id="4MqhgXU9fJA" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUaiON" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="ruleTemplates" />
      <node concept="A3Dl8" id="4MqhgXUaiPw" role="3clF45">
        <node concept="3uibUv" id="4MqhgXUaiPX" role="A3Ik2">
          <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXUaiOQ" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUaiOR" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MqhgXUaiOu" role="jymVt" />
    <node concept="3Tm1VV" id="4MqhgXU9fm4" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1CcQBrPcZVG">
    <property role="TrG5h" value="HandlingStage" />
    <node concept="2tJIrI" id="1CcQBrPcZWg" role="jymVt" />
    <node concept="3clFbW" id="1CcQBrPd004" role="jymVt">
      <node concept="37vLTG" id="1CcQBrPd00y" role="3clF46">
        <property role="TrG5h" value="handlerTemplates" />
        <node concept="_YKpA" id="1CcQBrPd00Q" role="1tU5fm">
          <node concept="3uibUv" id="1CcQBrPd01d" role="_ZDj9">
            <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1CcQBrPd006" role="3clF45" />
      <node concept="3Tm1VV" id="1CcQBrPd007" role="1B3o_S" />
      <node concept="3clFbS" id="1CcQBrPd008" role="3clF47">
        <node concept="3clFbF" id="1CcQBrPd029" role="3cqZAp">
          <node concept="37vLTI" id="1CcQBrPd0UF" role="3clFbG">
            <node concept="37vLTw" id="1CcQBrPd11p" role="37vLTx">
              <ref role="3cqZAo" node="1CcQBrPd00y" resolve="handlerTemplates" />
            </node>
            <node concept="2OqwBi" id="1CcQBrPd06n" role="37vLTJ">
              <node concept="Xjq3P" id="1CcQBrPd028" role="2Oq$k0" />
              <node concept="2OwXpG" id="1CcQBrPd0gK" role="2OqNvi">
                <ref role="2Oxat5" node="1CcQBrPcZWy" resolve="handlerTemplates" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrPcZZC" role="jymVt" />
    <node concept="3clFb_" id="1CcQBrPd1dz" role="jymVt">
      <property role="TrG5h" value="handlerTemplates" />
      <node concept="_YKpA" id="1CcQBrPd1k7" role="3clF45">
        <node concept="3uibUv" id="1CcQBrPd1qg" role="_ZDj9">
          <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1CcQBrPd1dA" role="1B3o_S" />
      <node concept="3clFbS" id="1CcQBrPd1dB" role="3clF47">
        <node concept="3clFbF" id="1CcQBrPd1$F" role="3cqZAp">
          <node concept="37vLTw" id="1CcQBrPd1$E" role="3clFbG">
            <ref role="3cqZAo" node="1CcQBrPcZWy" resolve="handlerTemplates" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrPcZZL" role="jymVt" />
    <node concept="312cEg" id="1CcQBrPcZWy" role="jymVt">
      <property role="TrG5h" value="handlerTemplates" />
      <node concept="3Tm6S6" id="1CcQBrPcZWz" role="1B3o_S" />
      <node concept="_YKpA" id="1CcQBrPcZWR" role="1tU5fm">
        <node concept="3uibUv" id="1CcQBrPcZZ7" role="_ZDj9">
          <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrPcZWl" role="jymVt" />
    <node concept="3Tm1VV" id="1CcQBrPcZVH" role="1B3o_S" />
  </node>
</model>

