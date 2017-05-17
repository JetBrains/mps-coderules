<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d628db6e-191f-4c0f-a802-15ad423aa41e(sample.fooblin.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="af858d84-85f2-42f4-a854-0b3c6b5cd482" name="sample.fooblin" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="8tt8" ref="r:e74c1bfc-387b-4b4b-abee-2eb77ee510ec(sample.fooblin.structure)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.typesystem2.typechecking)" />
    <import index="1x08" ref="r:9dec6437-6097-4be2-891f-1792da0df61f(sample.fooblin.behavior)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="nz6g" ref="r:ac00f724-30be-446e-805c-2345efc460d7(jetbrains.mps.lang.typesystem2.program)" />
    <import index="69ci" ref="r:d628db6e-191f-4c0f-a802-15ad423aa41e(sample.fooblin.types)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="6bz1" ref="r:d3905048-7598-4a84-931a-cbbcbcda146d(jetbrains.mps.lang.intentions.methods)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239709250944" name="jetbrains.mps.baseLanguage.structure.PrefixIncrementExpression" flags="nn" index="2$rviw" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="8880393040217246788" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodParameterInstance" flags="ig" index="ffn8J">
        <reference id="8880393040217294897" name="decl" index="ffrpq" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <property id="6489343236075007666" name="label" index="3hQQBS" />
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="1196866233735" name="jetbrains.mps.lang.quotation.structure.PropertyAntiquotation" flags="ng" index="2EMmih" />
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
        <child id="6399471711045617306" name="dataType" index="3vLBG7" />
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591331603" name="jetbrains.mps.logic.structure.LogicalValue" flags="ng" index="aYllk">
        <child id="8829335963591353819" name="code" index="aYrYs" />
      </concept>
      <concept id="8829335963591530299" name="jetbrains.mps.logic.structure.ExpressionLogicalVariable" flags="ng" index="aZ4PW">
        <child id="8829335963591530990" name="expression" index="aZ4eD" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
      <concept id="5131913661993028914" name="jetbrains.mps.logic.structure.PatternLogicalVariable" flags="ng" index="1uarlV">
        <child id="5131913661993028915" name="variable" index="1uarlU" />
        <child id="5131913661993028917" name="value" index="1uarlW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
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
    <language id="af858d84-85f2-42f4-a854-0b3c6b5cd482" name="sample.fooblin">
      <concept id="3749787170939265030" name="sample.fooblin.structure.VarType" flags="ng" index="2BbKIm">
        <property id="3749787170939266901" name="name" index="2BbKN5" />
      </concept>
      <concept id="4132684604212800736" name="sample.fooblin.structure.Type" flags="ng" index="1jz_8w" />
      <concept id="4132684604212800783" name="sample.fooblin.structure.FunType" flags="ng" index="1jz_ff">
        <child id="4132684604212800793" name="argType" index="1jz_fp" />
        <child id="4132684604212800805" name="resType" index="1jz_f_" />
      </concept>
      <concept id="1192808835813875324" name="sample.fooblin.structure.ForallType" flags="ng" index="3JbUGG">
        <child id="1192808835813913262" name="type" index="3JbKvY" />
      </concept>
      <concept id="4774429934441520217" name="sample.fooblin.structure.BoolType" flags="ng" index="3P8Jbz" />
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2">
      <concept id="1618328391714701929" name="jetbrains.mps.lang.typesystem2.structure.TermTemplate" flags="ng" index="0oftK">
        <child id="1618328391714701961" name="feature" index="0ofug" />
      </concept>
      <concept id="1618328391714701966" name="jetbrains.mps.lang.typesystem2.structure.StringTermFeature" flags="ng" index="0ofun">
        <child id="1476354154047290766" name="getter" index="3AP2R9" />
      </concept>
      <concept id="1618328391714701957" name="jetbrains.mps.lang.typesystem2.structure.TermFeature" flags="ng" index="0ofus">
        <property id="1877115349164965185" name="final" index="3JpusR" />
      </concept>
      <concept id="1618328391714702001" name="jetbrains.mps.lang.typesystem2.structure.ChildTermFeature" flags="ng" index="0ofuC" />
      <concept id="1618328391714763069" name="jetbrains.mps.lang.typesystem2.structure.TypeTable" flags="ng" index="0oKg$">
        <child id="1618328391714763070" name="type" index="0oKgB" />
      </concept>
      <concept id="1618328391714763491" name="jetbrains.mps.lang.typesystem2.structure.TypeDeclaration" flags="ng" index="0oKvU">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
        <child id="8908809128801952514" name="init" index="3unh6L" />
      </concept>
      <concept id="6086839168138086051" name="jetbrains.mps.lang.typesystem2.structure.TermTable" flags="ng" index="1HGPq">
        <child id="6086839168138086052" name="termDeclaration" index="1HGPt" />
      </concept>
      <concept id="6928531011217292466" name="jetbrains.mps.lang.typesystem2.structure.IsfreeVariableConstraint" flags="ng" index="2aLmEc" />
      <concept id="6928531011217258898" name="jetbrains.mps.lang.typesystem2.structure.LogicVariableConstraint" flags="ng" index="2aLIYG">
        <child id="6928531011217290187" name="variable" index="2aLmnP" />
      </concept>
      <concept id="6691972578451976398" name="jetbrains.mps.lang.typesystem2.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066016388" name="jetbrains.mps.lang.typesystem2.structure.Rule" flags="ng" index="AVZhu" />
      <concept id="8335224865066015764" name="jetbrains.mps.lang.typesystem2.structure.Handler" flags="ng" index="AVZre">
        <property id="2316688792951788157" name="stage" index="3J8TDj" />
        <child id="7368070394767441299" name="rule" index="3ArX_J" />
      </concept>
      <concept id="5524459797186715156" name="jetbrains.mps.lang.typesystem2.structure.NewTypePseudoConstraint" flags="ng" index="B_ONY">
        <reference id="6086839168131376658" name="typeDecl" index="17QRF" />
        <child id="5524459797186715209" name="typeVar" index="B_OMz" />
      </concept>
      <concept id="5524459797190399502" name="jetbrains.mps.lang.typesystem2.structure.TermDeclaration" flags="ng" index="BRKj$">
        <child id="5524459797190401236" name="template" index="BRKSY" />
      </concept>
      <concept id="8908809128804390455" name="jetbrains.mps.lang.typesystem2.structure.TypeLogicalExpression" flags="ng" index="3txIi4" />
      <concept id="8908809128801951589" name="jetbrains.mps.lang.typesystem2.structure.TypeInitializer" flags="ng" index="3uniRm">
        <child id="8908809128801951592" name="code" index="3uniRr" />
      </concept>
      <concept id="5372587443975633709" name="jetbrains.mps.lang.typesystem2.structure.AbstractRule" flags="ng" index="3wqRzX">
        <child id="7509376976631847095" name="input" index="20_v8_" />
        <child id="1427485783571243167" name="guard" index="3oo59u" />
        <child id="1427485783570316357" name="head" index="3orSU4" />
        <child id="1427485783571962463" name="body" index="3otmyu" />
      </concept>
      <concept id="5372587443968979218" name="jetbrains.mps.lang.typesystem2.structure.ExpressionConstraint" flags="ng" index="3wWvb2">
        <child id="5372587443968983820" name="expression" index="3wWo3s" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.typesystem2.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm" />
      <concept id="7368070394769089081" name="jetbrains.mps.lang.typesystem2.structure.RuleInputDeclaration" flags="ng" index="3A20r5" />
      <concept id="7368070394769139970" name="jetbrains.mps.lang.typesystem2.structure.RuleInputReference" flags="ng" index="3A2sRY">
        <reference id="7368070394769213644" name="declaration" index="3A2yKK" />
      </concept>
      <concept id="7368070394770780974" name="jetbrains.mps.lang.typesystem2.structure.AssignConstraint" flags="ng" index="3A8Hvi">
        <child id="7368070394770793930" name="value" index="3A8w4Q" />
        <child id="7368070394770793388" name="assignee" index="3A8wtg" />
      </concept>
      <concept id="7368070394771082804" name="jetbrains.mps.lang.typesystem2.structure.LogicalExpression" flags="ng" index="3A9UF8">
        <child id="7368070394771104782" name="content" index="3A9W3M" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.typesystem2.structure.Head" flags="ng" index="3Aq93q">
        <property id="7368070394767443940" name="keep" index="3ArMco" />
      </concept>
      <concept id="7368070394766963523" name="jetbrains.mps.lang.typesystem2.structure.RuleComponent" flags="ng" index="3Aq9uZ">
        <child id="2316688792939037645" name="logic" index="3Ip0Jz" />
        <child id="965748826975413053" name="parameter" index="3Nuqhd" />
      </concept>
      <concept id="7368070394766966158" name="jetbrains.mps.lang.typesystem2.structure.Guard" flags="ng" index="3Aq9_M" />
      <concept id="7368070394766966388" name="jetbrains.mps.lang.typesystem2.structure.Body" flags="ng" index="3Aq9E8" />
      <concept id="7368070394766978092" name="jetbrains.mps.lang.typesystem2.structure.EmitConstraintStatement" flags="ng" index="3Aqczg">
        <child id="7368070394767031348" name="constraint" index="3Aqpz8" />
      </concept>
      <concept id="7368070394767065799" name="jetbrains.mps.lang.typesystem2.structure.Solver" flags="ng" index="3AqmoV">
        <child id="7368070394767068701" name="template" index="3AqmFx" />
      </concept>
      <concept id="7368070394767067636" name="jetbrains.mps.lang.typesystem2.structure.ConstraintDeclaration" flags="ng" index="3AqmO8">
        <property id="7368070394767096851" name="arity" index="3AqDzJ" />
        <child id="1878265754077059170" name="parameters" index="1zAUyy" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.typesystem2.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="1476354154047570702" name="jetbrains.mps.lang.typesystem2.structure.CodeBlock" flags="ng" index="3AO9d9">
        <child id="535508562359074271" name="code" index="16YjZG" />
      </concept>
      <concept id="1476354154047290768" name="jetbrains.mps.lang.typesystem2.structure.GetterBlock" flags="ng" index="3AP2Rn" />
      <concept id="6927468913528465293" name="jetbrains.mps.lang.typesystem2.structure.LogicalContextExpression" flags="ng" index="1BjVvb" />
      <concept id="1877115349178398764" name="jetbrains.mps.lang.typesystem2.structure.EqualsConstraint" flags="ng" index="3GeI9q">
        <child id="1877115349178398815" name="right" index="3GeI8D" />
        <child id="1877115349178398813" name="left" index="3GeI8F" />
      </concept>
      <concept id="2316688792938826204" name="jetbrains.mps.lang.typesystem2.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.typesystem2.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
      <concept id="2316688792939428589" name="jetbrains.mps.lang.typesystem2.structure.TemplateLogicalClause" flags="ng" index="3IrJb3">
        <child id="2316688792939428590" name="code" index="3IrJb0" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.typesystem2.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
      <concept id="2037618519496446007" name="jetbrains.mps.lang.typesystem2.structure.Term" flags="ng" index="1Q4cc8">
        <reference id="6086839168126957156" name="termDecl" index="1nfQt" />
        <child id="2037618519520915633" name="override" index="1Ryyee" />
      </concept>
      <concept id="2037618519520719251" name="jetbrains.mps.lang.typesystem2.structure.TermFeatureOverride" flags="ng" index="1RziaG">
        <reference id="2037618519520719300" name="feature" index="1RzibV" />
        <child id="2037618519520739064" name="term" index="1RzmR7" />
      </concept>
      <concept id="3063948360252660075" name="jetbrains.mps.lang.typesystem2.structure.TypeofConstraint" flags="ng" index="3XxkQB">
        <child id="3063948360252667312" name="assignedType" index="3Xxm5W" />
        <child id="3063948360252666228" name="anchor" index="3XxmmS" />
      </concept>
      <concept id="3063948360254202562" name="jetbrains.mps.lang.typesystem2.structure.LocalDeclarationStatement" flags="ng" index="3X$Joe" />
    </language>
  </registry>
  <node concept="0oKg$" id="3_qfG1EPgcF">
    <property role="TrG5h" value="types" />
    <node concept="0oKvU" id="12dHl3ZCxMa" role="0oKgB">
      <property role="TrG5h" value="Forall" />
      <ref role="3bZ5Sy" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
      <node concept="3uniRm" id="12dHl3ZCEvP" role="3unh6L">
        <node concept="3clFbS" id="12dHl3ZCEw1" role="3uniRr">
          <node concept="3Aqczg" id="12dHl3ZCEw0" role="3cqZAp">
            <node concept="3A8Hvi" id="12dHl3ZCEvX" role="3Aqpz8">
              <node concept="aZ4PW" id="12dHl3ZCEw7" role="3A8wtg">
                <node concept="3txIi4" id="12dHl3ZCEwd" role="aZ4eD" />
              </node>
              <node concept="1Q4cc8" id="12dHl3ZCEwj" role="3A8w4Q">
                <ref role="1nfQt" node="12dHl3ZCxN1" resolve="Forall" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0oKvU" id="492bFERodOY" role="0oKgB">
      <property role="TrG5h" value="Bool" />
      <ref role="3bZ5Sy" to="8tt8:492bFERodLp" resolve="BoolType" />
      <node concept="3uniRm" id="4dPZ2m2k8Tn" role="3unh6L">
        <node concept="3clFbS" id="4dPZ2m2k8Vr" role="3uniRr">
          <node concept="3Aqczg" id="4dPZ2m2k8Vq" role="3cqZAp">
            <node concept="3A8Hvi" id="4dPZ2m2k8Vn" role="3Aqpz8">
              <node concept="aZ4PW" id="4dPZ2m2k8Vx" role="3A8wtg">
                <node concept="3txIi4" id="4dPZ2m2k8VB" role="aZ4eD" />
              </node>
              <node concept="1Q4cc8" id="4dPZ2m2k8VH" role="3A8w4Q">
                <ref role="1nfQt" node="4dPZ2m2hTAN" resolve="Bool" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0oKvU" id="3_qfG1EPlgE" role="0oKgB">
      <property role="TrG5h" value="Fun" />
      <ref role="3bZ5Sy" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
      <node concept="3uniRm" id="4dPZ2m2k8V8" role="3unh6L">
        <node concept="3clFbS" id="4dPZ2m2k8VN" role="3uniRr">
          <node concept="3X$Joe" id="5zncGqwemIa" role="3cqZAp">
            <node concept="aZer4" id="5zncGqwemIb" role="3XD1gS">
              <property role="TrG5h" value="A" />
            </node>
            <node concept="aZer4" id="5zncGqwemIU" role="3XD1gS">
              <property role="TrG5h" value="R" />
            </node>
          </node>
          <node concept="3Aqczg" id="4dPZ2m2k8VP" role="3cqZAp">
            <node concept="3A8Hvi" id="4dPZ2m2k8VQ" role="3Aqpz8">
              <node concept="aZ4PW" id="4dPZ2m2k8VR" role="3A8wtg">
                <node concept="3txIi4" id="4dPZ2m2k8VS" role="aZ4eD" />
              </node>
              <node concept="1Q4cc8" id="4dPZ2m2k8W6" role="3A8w4Q">
                <ref role="1nfQt" node="4dPZ2m2hWGK" resolve="Fun" />
                <node concept="1RziaG" id="6TfRIXf6FBK" role="1Ryyee">
                  <ref role="1RzibV" node="4dPZ2m2hXGZ" resolve="arg" />
                  <node concept="3AP2Rn" id="6TfRIXf6FBL" role="1RzmR7">
                    <node concept="3clFbS" id="6TfRIXf6FBM" role="16YjZG">
                      <node concept="3clFbF" id="6TfRIXf6FC2" role="3cqZAp">
                        <node concept="3A9UF8" id="6TfRIXf6FBZ" role="3clFbG">
                          <node concept="a7P8L" id="6TfRIXf6FC1" role="3A9W3M">
                            <ref role="a7OzE" node="5zncGqwemIb" resolve="A" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1RziaG" id="6TfRIXf6FEt" role="1Ryyee">
                  <ref role="1RzibV" node="4dPZ2m2hXHj" resolve="res" />
                  <node concept="3AP2Rn" id="6TfRIXf6FEu" role="1RzmR7">
                    <node concept="3clFbS" id="6TfRIXf6FEv" role="16YjZG">
                      <node concept="3clFbF" id="6TfRIXf6FEP" role="3cqZAp">
                        <node concept="3A9UF8" id="6TfRIXf6FEM" role="3clFbG">
                          <node concept="a7P8L" id="6TfRIXf6FEO" role="3A9W3M">
                            <ref role="a7OzE" node="5zncGqwemIU" resolve="R" />
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
  </node>
  <node concept="AVZre" id="5dGkjBXlLmT">
    <property role="TrG5h" value="typeOf" />
    <node concept="AVZhu" id="492bFERogfi" role="3ArX_J">
      <property role="TrG5h" value="typeOf_TrueConst" />
      <node concept="3Aq9E8" id="492bFERognK" role="3otmyu">
        <node concept="3NuqgR" id="492bFERognO" role="3Nuqhd">
          <node concept="aZer4" id="492bFERognP" role="3XD1gS">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3I6sU6" id="Cn$NxdZf0d" role="3Ip0Jz">
          <node concept="3I6s7M" id="Cn$NxdZf0e" role="3I6sU7">
            <node concept="B_ONY" id="4dPZ2m2iQw_" role="3I6s78">
              <ref role="17QRF" node="492bFERodOY" resolve="Bool" />
              <node concept="a7P8L" id="4dPZ2m2iQwV" role="B_OMz">
                <ref role="a7OzE" node="492bFERognP" resolve="T" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="Cn$NxdZf0f" role="3I6sU7">
            <node concept="3XxkQB" id="492bFERogoB" role="3I6s78">
              <node concept="aYllk" id="492bFERogoD" role="3XxmmS">
                <node concept="3A2sRY" id="492bFERogoV" role="aYrYs">
                  <ref role="3A2yKK" node="492bFERogn9" resolve="trueConst" />
                </node>
              </node>
              <node concept="a7P8L" id="492bFERogp3" role="3Xxm5W">
                <ref role="a7OzE" node="492bFERognP" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="492bFERogn8" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:492bFERognf" resolve="True" />
        <node concept="3A20r5" id="492bFERogn9" role="2t_VXX">
          <property role="TrG5h" value="trueConst" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="492bFERojTR" role="3ArX_J">
      <property role="TrG5h" value="typeOf_FalseConst" />
      <node concept="3Aq9E8" id="492bFERojTS" role="3otmyu">
        <node concept="3NuqgR" id="492bFERojTT" role="3Nuqhd">
          <node concept="aZer4" id="492bFERojTU" role="3XD1gS">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3I6sU6" id="Cn$NxdZf0O" role="3Ip0Jz">
          <node concept="3I6s7M" id="Cn$NxdZf0P" role="3I6sU7">
            <node concept="B_ONY" id="4dPZ2m2iQxi" role="3I6s78">
              <ref role="17QRF" node="492bFERodOY" resolve="Bool" />
              <node concept="a7P8L" id="4dPZ2m2iQxj" role="B_OMz">
                <ref role="a7OzE" node="492bFERojTU" resolve="T" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="Cn$NxdZf0Q" role="3I6sU7">
            <node concept="3XxkQB" id="492bFERojU0" role="3I6s78">
              <node concept="aYllk" id="492bFERojU1" role="3XxmmS">
                <node concept="3A2sRY" id="492bFERojU2" role="aYrYs">
                  <ref role="3A2yKK" node="492bFERojU5" resolve="falseConst" />
                </node>
              </node>
              <node concept="a7P8L" id="492bFERojU3" role="3Xxm5W">
                <ref role="a7OzE" node="492bFERojTU" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="492bFERojU4" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:492bFERojSn" resolve="False" />
        <node concept="3A20r5" id="492bFERojU5" role="2t_VXX">
          <property role="TrG5h" value="falseConst" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="3dV5CmlMdve" role="3ArX_J">
      <property role="TrG5h" value="typeOf_LamVarBind" />
      <node concept="3Aq9E8" id="3dV5CmlMdwQ" role="3otmyu">
        <node concept="3NuqgR" id="3dV5CmlMdwU" role="3Nuqhd">
          <node concept="aZer4" id="3dV5CmlMdwV" role="3XD1gS">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3I6sU6" id="Cn$NxdZf1r" role="3Ip0Jz">
          <node concept="3IrJb3" id="Cn$NxdZf1s" role="3I6sU7">
            <node concept="3clFbS" id="3dV5CmlMdwR" role="3IrJb0">
              <node concept="3SKdUt" id="3dV5CmlMdx4" role="3cqZAp">
                <node concept="3SKdUq" id="3dV5CmlMdx5" role="3SKWNk">
                  <property role="3SKdUp" value="T is free" />
                </node>
              </node>
              <node concept="3Aqczg" id="3dV5CmlMdxk" role="3cqZAp">
                <node concept="3XxkQB" id="3dV5CmlMdxc" role="3Aqpz8">
                  <node concept="aYllk" id="3dV5CmlMdxe" role="3XxmmS">
                    <node concept="2OqwBi" id="RRVBbp7PR7" role="aYrYs">
                      <node concept="3A2sRY" id="492bFERozSf" role="2Oq$k0">
                        <ref role="3A2yKK" node="3dV5CmlMdwE" resolve="lvb" />
                      </node>
                      <node concept="3TrEf2" id="RRVBbp7Q0m" role="2OqNvi">
                        <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQj" resolve="var" />
                      </node>
                    </node>
                  </node>
                  <node concept="a7P8L" id="492bFERozSn" role="3Xxm5W">
                    <ref role="a7OzE" node="3dV5CmlMdwV" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="3dV5CmlMdwD" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:7_8aRkgDGQi" resolve="LamVarBind" />
        <node concept="3A20r5" id="3dV5CmlMdwE" role="2t_VXX">
          <property role="TrG5h" value="lvb" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="10BVPEVK4MV" role="3ArX_J">
      <property role="TrG5h" value="typeOf_LetVarBind" />
      <node concept="3Aq9E8" id="10BVPEVK64G" role="3otmyu">
        <node concept="3NuqgR" id="10BVPEVK64K" role="3Nuqhd">
          <node concept="aZer4" id="10BVPEVK64L" role="3XD1gS">
            <property role="TrG5h" value="G" />
          </node>
        </node>
        <node concept="3I6sU6" id="10BVPEVK64H" role="3Ip0Jz">
          <node concept="3I6s7M" id="2dQK04Iu_k9" role="3I6sU7">
            <node concept="3Aqt3T" id="2dQK04Iu_k5" role="3I6s78">
              <ref role="3AqCNq" node="12dHl3ZCEwE" resolve="gen" />
              <node concept="a7P8L" id="2dQK04Iu_kk" role="3AunhB">
                <ref role="a7OzE" node="10BVPEVK64L" resolve="G" />
              </node>
              <node concept="a7P8L" id="2dQK04Iu_ks" role="3AunhB">
                <ref role="a7OzE" node="10BVPEVK64u" resolve="E" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="10BVPEVK65K" role="3I6sU7">
            <node concept="3XxkQB" id="10BVPEVK65C" role="3I6s78">
              <node concept="aYllk" id="10BVPEVK65E" role="3XxmmS">
                <node concept="2OqwBi" id="10BVPEVK6cU" role="aYrYs">
                  <node concept="3A2sRY" id="10BVPEVK65X" role="2Oq$k0">
                    <ref role="3A2yKK" node="10BVPEVK4YL" resolve="lvb" />
                  </node>
                  <node concept="3TrEf2" id="10BVPEVK6nY" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQq" resolve="var" />
                  </node>
                </node>
              </node>
              <node concept="a7P8L" id="10BVPEVK6rC" role="3Xxm5W">
                <ref role="a7OzE" node="10BVPEVK64L" resolve="G" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="10BVPEVK4YX" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3NuqgR" id="10BVPEVK64t" role="3Nuqhd">
          <node concept="aZer4" id="10BVPEVK64u" role="3XD1gS">
            <property role="TrG5h" value="E" />
          </node>
        </node>
        <node concept="3I6sU6" id="10BVPEVK4YY" role="3Ip0Jz">
          <node concept="3I6s7M" id="10BVPEVK5Ku" role="3I6sU7">
            <node concept="3XxkQB" id="10BVPEVK5Kq" role="3I6s78">
              <node concept="aYllk" id="10BVPEVK5Kr" role="3XxmmS">
                <node concept="2OqwBi" id="10BVPEVK5R$" role="aYrYs">
                  <node concept="3A2sRY" id="10BVPEVK5KB" role="2Oq$k0">
                    <ref role="3A2yKK" node="10BVPEVK4YL" resolve="lvb" />
                  </node>
                  <node concept="3TrEf2" id="10BVPEVK60N" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQs" resolve="expr" />
                  </node>
                </node>
              </node>
              <node concept="a7P8L" id="10BVPEVK64B" role="3Xxm5W">
                <ref role="a7OzE" node="10BVPEVK64u" resolve="E" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="10BVPEVK4YK" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:7_8aRkgDGQp" resolve="LetVarBind" />
        <node concept="3A20r5" id="10BVPEVK4YL" role="2t_VXX">
          <property role="TrG5h" value="lvb" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="G788z3oS9$" role="3ArX_J">
      <property role="TrG5h" value="typeOf_LetExpr" />
      <node concept="3Aq9E8" id="G788z3oTvD" role="3otmyu">
        <node concept="3NuqgR" id="3Lj6UsgFx9K" role="3Nuqhd">
          <node concept="aZer4" id="3Lj6UsgFx9L" role="3XD1gS">
            <property role="TrG5h" value="G" />
          </node>
        </node>
        <node concept="3I6sU6" id="G788z3oTvE" role="3Ip0Jz">
          <node concept="3I6s7M" id="3Lj6UsgFxiK" role="3I6sU7">
            <node concept="3Aqt3T" id="3Lj6UsgFxiG" role="3I6s78">
              <ref role="3AqCNq" node="12dHl3ZCEwE" resolve="gen" />
              <node concept="a7P8L" id="3Lj6UsgFxl7" role="3AunhB">
                <ref role="a7OzE" node="3Lj6UsgFx9L" resolve="G" />
              </node>
              <node concept="a7P8L" id="3Lj6UsgFxld" role="3AunhB">
                <ref role="a7OzE" node="G788z3oSpw" resolve="E" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="G788z3oTvL" role="3I6sU7">
            <node concept="3XxkQB" id="G788z3oTvH" role="3I6s78">
              <node concept="aYllk" id="G788z3oTvI" role="3XxmmS">
                <node concept="3A2sRY" id="G788z3oTvU" role="aYrYs">
                  <ref role="3A2yKK" node="G788z3oSpi" resolve="let" />
                </node>
              </node>
              <node concept="a7P8L" id="RRVBbp7Vbc" role="3Xxm5W">
                <ref role="a7OzE" node="3Lj6UsgFx9L" resolve="G" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="G788z3oSpr" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3NuqgR" id="G788z3oSpv" role="3Nuqhd">
          <node concept="aZer4" id="G788z3oSpw" role="3XD1gS">
            <property role="TrG5h" value="E" />
          </node>
        </node>
        <node concept="3I6sU6" id="G788z3oSps" role="3Ip0Jz">
          <node concept="3I6s7M" id="G788z3oTaY" role="3I6sU7">
            <node concept="3XxkQB" id="G788z3oTaU" role="3I6s78">
              <node concept="aYllk" id="G788z3oTaV" role="3XxmmS">
                <node concept="2OqwBi" id="G788z3oTiI" role="aYrYs">
                  <node concept="3A2sRY" id="G788z3oTb7" role="2Oq$k0">
                    <ref role="3A2yKK" node="G788z3oSpi" resolve="let" />
                  </node>
                  <node concept="3TrEf2" id="G788z3oTtu" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQx" resolve="expr" />
                  </node>
                </node>
              </node>
              <node concept="a7P8L" id="G788z3oTv$" role="3Xxm5W">
                <ref role="a7OzE" node="G788z3oSpw" resolve="E" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="G788z3oSph" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
        <node concept="3A20r5" id="G788z3oSpi" role="2t_VXX">
          <property role="TrG5h" value="let" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="3TFdEPZe4b6" role="3ArX_J">
      <property role="TrG5h" value="typeOf_VarRef" />
      <node concept="3Aq9E8" id="7edv2S3cQdo" role="3otmyu">
        <node concept="3NuqgR" id="3Lj6UsgFxlv" role="3Nuqhd">
          <node concept="aZer4" id="3Lj6UsgFxlw" role="3XD1gS">
            <property role="TrG5h" value="I" />
          </node>
        </node>
        <node concept="3I6sU6" id="7edv2S3cQdp" role="3Ip0Jz">
          <node concept="3I6s7M" id="3Lj6UsgFxlZ" role="3I6sU7">
            <node concept="3Aqt3T" id="3Lj6UsgFxlV" role="3I6s78">
              <ref role="3AqCNq" node="12dHl3ZCEx3" resolve="inst" />
              <node concept="a7P8L" id="3Lj6UsgFxm8" role="3AunhB">
                <ref role="a7OzE" node="3Lj6UsgFxlw" resolve="I" />
              </node>
              <node concept="a7P8L" id="3Lj6UsgFxmg" role="3AunhB">
                <ref role="a7OzE" node="7edv2S3cP28" resolve="T" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="7edv2S3cQd_" role="3I6sU7">
            <node concept="3XxkQB" id="7edv2S3cQdx" role="3I6s78">
              <node concept="aYllk" id="7edv2S3cQdy" role="3XxmmS">
                <node concept="3A2sRY" id="7edv2S3cQdI" role="aYrYs">
                  <ref role="3A2yKK" node="3TFdEPZe4bq" resolve="varRef" />
                </node>
              </node>
              <node concept="a7P8L" id="3Lj6UsgFxmm" role="3Xxm5W">
                <ref role="a7OzE" node="3Lj6UsgFxlw" resolve="I" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="7edv2S3cP1Y" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3NuqgR" id="7edv2S3cP27" role="3Nuqhd">
          <node concept="aZer4" id="7edv2S3cP28" role="3XD1gS">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3I6sU6" id="7edv2S3cP1Z" role="3Ip0Jz">
          <node concept="3I6s7M" id="7edv2S3cPNW" role="3I6sU7">
            <node concept="3XxkQB" id="7edv2S3cPNS" role="3I6s78">
              <node concept="aYllk" id="7edv2S3cPNT" role="3XxmmS">
                <node concept="2OqwBi" id="7edv2S3cPWm" role="aYrYs">
                  <node concept="3A2sRY" id="7edv2S3cPO5" role="2Oq$k0">
                    <ref role="3A2yKK" node="3TFdEPZe4bq" resolve="varRef" />
                  </node>
                  <node concept="3TrEf2" id="7edv2S3cQ8D" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_zMfd$ooos" resolve="def" />
                  </node>
                </node>
              </node>
              <node concept="a7P8L" id="7edv2S3cQds" role="3Xxm5W">
                <ref role="a7OzE" node="7edv2S3cP28" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="3TFdEPZe4bp" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:7_zMfd$ooor" resolve="VarRef" />
        <node concept="3A20r5" id="3TFdEPZe4bq" role="2t_VXX">
          <property role="TrG5h" value="varRef" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="3dV5CmlM9jj" role="3ArX_J">
      <property role="TrG5h" value="typeOf_Lam" />
      <node concept="2t___k" id="3dV5CmlM9jW" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
        <node concept="3A20r5" id="3dV5CmlM9jX" role="2t_VXX">
          <property role="TrG5h" value="lam" />
        </node>
      </node>
      <node concept="3Aq9E8" id="3dV5CmlM9l_" role="3otmyu">
        <node concept="3NuqgR" id="3dV5CmlM9lD" role="3Nuqhd">
          <node concept="aZer4" id="3dV5CmlM9lE" role="3XD1gS">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3I6sU6" id="Cn$NxdZfmi" role="3Ip0Jz">
          <node concept="3I6s7M" id="Cn$NxdZfmj" role="3I6sU7">
            <node concept="B_ONY" id="5zncGqweDlP" role="3I6s78">
              <ref role="17QRF" node="3_qfG1EPlgE" resolve="Fun" />
              <node concept="a7P8L" id="5zncGqweDmp" role="B_OMz">
                <ref role="a7OzE" node="3dV5CmlM9lE" resolve="T" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="Cn$NxdZfmk" role="3I6sU7">
            <node concept="3A8Hvi" id="3dV5CmlM9lN" role="3I6s78">
              <node concept="a7P8L" id="3dV5CmlM9lV" role="3A8wtg">
                <ref role="a7OzE" node="3dV5CmlM9lE" resolve="T" />
              </node>
              <node concept="1Q4cc8" id="3dV5CmlM9m0" role="3A8w4Q">
                <ref role="1nfQt" node="4dPZ2m2hWGK" resolve="Fun" />
                <node concept="1RziaG" id="3dV5CmlM9VG" role="1Ryyee">
                  <ref role="1RzibV" node="4dPZ2m2hXGZ" resolve="arg" />
                  <node concept="3AP2Rn" id="3dV5CmlM9VH" role="1RzmR7">
                    <node concept="3clFbS" id="3dV5CmlM9VI" role="16YjZG">
                      <node concept="3clFbF" id="3dV5CmlMbpp" role="3cqZAp">
                        <node concept="3A9UF8" id="3dV5CmlMbpm" role="3clFbG">
                          <node concept="a7P8L" id="3dV5CmlMbpo" role="3A9W3M">
                            <ref role="a7OzE" node="3dV5CmlM9W_" resolve="A" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1RziaG" id="3dV5CmlM9VV" role="1Ryyee">
                  <ref role="1RzibV" node="4dPZ2m2hXHj" resolve="res" />
                  <node concept="3AP2Rn" id="3dV5CmlM9VW" role="1RzmR7">
                    <node concept="3clFbS" id="3dV5CmlM9VX" role="16YjZG">
                      <node concept="3clFbF" id="3dV5CmlMbqU" role="3cqZAp">
                        <node concept="3A9UF8" id="3dV5CmlMbqR" role="3clFbG">
                          <node concept="a7P8L" id="3dV5CmlMbqT" role="3A9W3M">
                            <ref role="a7OzE" node="3dV5CmlM9X4" resolve="R" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="Cn$NxdZfml" role="3I6sU7">
            <node concept="3XxkQB" id="3dV5CmlM9mr" role="3I6s78">
              <node concept="aYllk" id="3dV5CmlM9mt" role="3XxmmS">
                <node concept="3A2sRY" id="3dV5CmlM9mP" role="aYrYs">
                  <ref role="3A2yKK" node="3dV5CmlM9jX" resolve="lam" />
                </node>
              </node>
              <node concept="a7P8L" id="3dV5CmlM9mX" role="3Xxm5W">
                <ref role="a7OzE" node="3dV5CmlM9lE" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="3dV5CmlM9Wd" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3NuqgR" id="3dV5CmlM9Wh" role="3Nuqhd">
          <node concept="aZer4" id="3dV5CmlM9W_" role="3XD1gS">
            <property role="TrG5h" value="A" />
          </node>
          <node concept="aZer4" id="3dV5CmlM9X4" role="3XD1gS">
            <property role="TrG5h" value="R" />
          </node>
        </node>
        <node concept="3I6sU6" id="Cn$NxdZfc_" role="3Ip0Jz">
          <node concept="3I6s7M" id="Cn$NxdZfcA" role="3I6sU7">
            <node concept="3XxkQB" id="3dV5CmlM9Xg" role="3I6s78">
              <node concept="aYllk" id="3dV5CmlM9Xh" role="3XxmmS">
                <node concept="2OqwBi" id="3dV5CmlMaMD" role="aYrYs">
                  <node concept="2OqwBi" id="3dV5CmlMa54" role="2Oq$k0">
                    <node concept="3A2sRY" id="3dV5CmlM9Xt" role="2Oq$k0">
                      <ref role="3A2yKK" node="3dV5CmlM9jX" resolve="lam" />
                    </node>
                    <node concept="3TrEf2" id="3dV5CmlMatG" role="2OqNvi">
                      <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQg" resolve="binding" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3dV5CmlMb11" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQj" resolve="var" />
                  </node>
                </node>
              </node>
              <node concept="a7P8L" id="3dV5CmlMb2U" role="3Xxm5W">
                <ref role="a7OzE" node="3dV5CmlM9W_" resolve="A" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="Cn$NxdZfcB" role="3I6sU7">
            <node concept="3XxkQB" id="3dV5CmlMb30" role="3I6s78">
              <node concept="aYllk" id="3dV5CmlMb31" role="3XxmmS">
                <node concept="2OqwBi" id="3dV5CmlMb33" role="aYrYs">
                  <node concept="3A2sRY" id="3dV5CmlMb34" role="2Oq$k0">
                    <ref role="3A2yKK" node="3dV5CmlM9jX" resolve="lam" />
                  </node>
                  <node concept="3TrEf2" id="3dV5CmlMbjs" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQl" resolve="expr" />
                  </node>
                </node>
              </node>
              <node concept="a7P8L" id="3dV5CmlMbpc" role="3Xxm5W">
                <ref role="a7OzE" node="3dV5CmlM9X4" resolve="R" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="44a9n8ErWp_" role="3ArX_J">
      <property role="TrG5h" value="typeoOf_App" />
      <node concept="3Aq93q" id="44a9n8ErWrt" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3NuqgR" id="44a9n8ErWrx" role="3Nuqhd">
          <node concept="aZer4" id="44a9n8ErWry" role="3XD1gS">
            <property role="TrG5h" value="F" />
          </node>
          <node concept="aZer4" id="44a9n8ErWrT" role="3XD1gS">
            <property role="TrG5h" value="A" />
          </node>
        </node>
        <node concept="3I6sU6" id="WBEjvSTmqr" role="3Ip0Jz">
          <node concept="3I6s7M" id="WBEjvSTmqs" role="3I6sU7">
            <node concept="3XxkQB" id="44a9n8ErXaL" role="3I6s78">
              <node concept="aYllk" id="44a9n8ErXaM" role="3XxmmS">
                <node concept="2OqwBi" id="44a9n8ErXi_" role="aYrYs">
                  <node concept="3A2sRY" id="44a9n8ErXaY" role="2Oq$k0">
                    <ref role="3A2yKK" node="44a9n8ErWrh" resolve="app" />
                  </node>
                  <node concept="3TrEf2" id="44a9n8ErXv4" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGPL" resolve="fun" />
                  </node>
                </node>
              </node>
              <node concept="a7P8L" id="44a9n8ErXJ7" role="3Xxm5W">
                <ref role="a7OzE" node="44a9n8ErWry" resolve="F" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="WBEjvSTmqt" role="3I6sU7">
            <node concept="3XxkQB" id="44a9n8ErXJd" role="3I6s78">
              <node concept="aYllk" id="44a9n8ErXJe" role="3XxmmS">
                <node concept="2OqwBi" id="44a9n8ErXJf" role="aYrYs">
                  <node concept="3A2sRY" id="44a9n8ErXJg" role="2Oq$k0">
                    <ref role="3A2yKK" node="44a9n8ErWrh" resolve="app" />
                  </node>
                  <node concept="3TrEf2" id="44a9n8ErXXI" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGPX" resolve="arg" />
                  </node>
                </node>
              </node>
              <node concept="a7P8L" id="44a9n8ErY1E" role="3Xxm5W">
                <ref role="a7OzE" node="44a9n8ErWrT" resolve="A" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="44a9n8ErWrg" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:7_8aRkgDGPK" resolve="App" />
        <node concept="3A20r5" id="44a9n8ErWrh" role="2t_VXX">
          <property role="TrG5h" value="app" />
        </node>
      </node>
      <node concept="3Aq9E8" id="44a9n8ErY5M" role="3otmyu">
        <node concept="3NuqgR" id="44a9n8Es2A6" role="3Nuqhd">
          <node concept="aZer4" id="44a9n8Es2A7" role="3XD1gS">
            <property role="TrG5h" value="FA" />
          </node>
          <node concept="aZer4" id="44a9n8Es2Aj" role="3XD1gS">
            <property role="TrG5h" value="FR" />
          </node>
          <node concept="aZer4" id="3Lj6UsgFxni" role="3XD1gS">
            <property role="TrG5h" value="FI" />
          </node>
          <node concept="aZer4" id="3Lj6UsgFFuW" role="3XD1gS">
            <property role="TrG5h" value="AI" />
          </node>
        </node>
        <node concept="3I6sU6" id="WBEjvSTmlJ" role="3Ip0Jz">
          <node concept="3I6s7M" id="3Lj6UsgFxsE" role="3I6sU7">
            <node concept="3Aqt3T" id="3Lj6UsgFxsA" role="3I6s78">
              <ref role="3AqCNq" node="12dHl3ZCEx3" resolve="inst" />
              <node concept="a7P8L" id="3Lj6UsgFxts" role="3AunhB">
                <ref role="a7OzE" node="3Lj6UsgFxni" resolve="FI" />
              </node>
              <node concept="a7P8L" id="3Lj6UsgFxt$" role="3AunhB">
                <ref role="a7OzE" node="44a9n8ErWry" resolve="F" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2BWkXu0IGGD" role="3I6sU7">
            <node concept="3A8Hvi" id="2BWkXu0IGGz" role="3I6s78">
              <node concept="a7P8L" id="2BWkXu0IGPA" role="3A8wtg">
                <ref role="a7OzE" node="3Lj6UsgFxni" resolve="FI" />
              </node>
              <node concept="1Q4cc8" id="2BWkXu0IGHk" role="3A8w4Q">
                <ref role="1nfQt" node="4dPZ2m2hWGK" resolve="Fun" />
                <node concept="1RziaG" id="2BWkXu0IGHC" role="1Ryyee">
                  <ref role="1RzibV" node="4dPZ2m2hXGZ" resolve="arg" />
                  <node concept="3AP2Rn" id="2BWkXu0IGHD" role="1RzmR7">
                    <node concept="3clFbS" id="2BWkXu0IGHE" role="16YjZG">
                      <node concept="3clFbF" id="2BWkXu0IGHT" role="3cqZAp">
                        <node concept="3A9UF8" id="2BWkXu0IGHR" role="3clFbG">
                          <node concept="a7P8L" id="2BWkXu0IGI8" role="3A9W3M">
                            <ref role="a7OzE" node="44a9n8Es2A7" resolve="FA" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1RziaG" id="2BWkXu0IGKY" role="1Ryyee">
                  <ref role="1RzibV" node="4dPZ2m2hXHj" resolve="res" />
                  <node concept="3AP2Rn" id="2BWkXu0IGKZ" role="1RzmR7">
                    <node concept="3clFbS" id="2BWkXu0IGL0" role="16YjZG">
                      <node concept="3clFbF" id="2BWkXu0IGLl" role="3cqZAp">
                        <node concept="3A9UF8" id="2BWkXu0IGLj" role="3clFbG">
                          <node concept="a7P8L" id="2BWkXu0IGMf" role="3A9W3M">
                            <ref role="a7OzE" node="44a9n8Es2Aj" resolve="FR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="3Lj6UsgFF_g" role="3I6sU7">
            <node concept="3Aqt3T" id="3Lj6UsgFF_c" role="3I6s78">
              <ref role="3AqCNq" node="12dHl3ZCEx3" resolve="inst" />
              <node concept="a7P8L" id="3Lj6UsgFFA6" role="3AunhB">
                <ref role="a7OzE" node="3Lj6UsgFFuW" resolve="AI" />
              </node>
              <node concept="a7P8L" id="3Lj6UsgFFAe" role="3AunhB">
                <ref role="a7OzE" node="44a9n8ErWrT" resolve="A" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="WBEjvSTmlL" role="3I6sU7">
            <node concept="3A8Hvi" id="44a9n8Es2DS" role="3I6s78">
              <node concept="a7P8L" id="44a9n8Es2Em" role="3A8wtg">
                <ref role="a7OzE" node="44a9n8Es2A7" resolve="FA" />
              </node>
              <node concept="a7P8L" id="3Lj6UsgFFAk" role="3A8w4Q">
                <ref role="a7OzE" node="3Lj6UsgFFuW" resolve="AI" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="WBEjvSTmlM" role="3I6sU7">
            <node concept="3XxkQB" id="44a9n8Es2FU" role="3I6s78">
              <node concept="aYllk" id="44a9n8Es2FW" role="3XxmmS">
                <node concept="3A2sRY" id="44a9n8Es2Gy" role="aYrYs">
                  <ref role="3A2yKK" node="44a9n8ErWrh" resolve="app" />
                </node>
              </node>
              <node concept="a7P8L" id="44a9n8Es2GE" role="3Xxm5W">
                <ref role="a7OzE" node="44a9n8Es2Aj" resolve="FR" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="N6wx6Hp2i_" role="3otmyu">
        <node concept="3NuqgR" id="N6wx6Hp31S" role="3Nuqhd">
          <node concept="aZer4" id="N6wx6Hp31T" role="3XD1gS">
            <property role="TrG5h" value="Q" />
          </node>
        </node>
        <node concept="3NuqgR" id="WBEjvSTpvn" role="3Nuqhd">
          <node concept="aZer4" id="WBEjvSTpvo" role="3XD1gS">
            <property role="TrG5h" value="E" />
          </node>
          <node concept="17QB3L" id="WBEjvSTpvE" role="3vLBG7" />
        </node>
        <node concept="3I6sU6" id="N6wx6Hp2j6" role="3Ip0Jz">
          <node concept="3IrJb3" id="WBEjvSTpwc" role="3I6sU7">
            <node concept="3clFbS" id="WBEjvSTpwe" role="3IrJb0">
              <node concept="3Aqczg" id="WBEjvSTpwP" role="3cqZAp">
                <node concept="3wWvb2" id="WBEjvSTpwO" role="3Aqpz8">
                  <node concept="2YIFZM" id="WBEjvSTpx4" role="3wWo3s">
                    <ref role="37wK5l" node="WBEjvSTnJK" resolve="formatError" />
                    <ref role="1Pybhc" node="4dPZ2m2jfZE" resolve="Util" />
                    <node concept="3A9UF8" id="WBEjvSTEJZ" role="37wK5m">
                      <node concept="a7P8L" id="WBEjvSTEK1" role="3A9W3M">
                        <ref role="a7OzE" node="WBEjvSTpvo" resolve="E" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7Y$xuoibWin" role="37wK5m">
                      <property role="Xl_RC" value="cannot unify '%s' and '%s'" />
                    </node>
                    <node concept="3A9UF8" id="WBEjvSTqfv" role="37wK5m">
                      <node concept="a7P8L" id="7Y$xuoibXwn" role="3A9W3M">
                        <ref role="a7OzE" node="44a9n8Es2A7" resolve="FA" />
                      </node>
                    </node>
                    <node concept="3A9UF8" id="7Y$xuoibXEM" role="37wK5m">
                      <node concept="a7P8L" id="7Y$xuoibXEO" role="3A9W3M">
                        <ref role="a7OzE" node="44a9n8ErWrT" resolve="A" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Aqczg" id="WBEjvSTExb" role="3cqZAp">
                <node concept="3Aqt3T" id="WBEjvSTEx7" role="3Aqpz8">
                  <ref role="3AqCNq" node="WBEjvSTpuV" resolve="error" />
                  <node concept="a7P8L" id="WBEjvSTEBi" role="3AunhB">
                    <ref role="a7OzE" node="WBEjvSTpvo" resolve="E" />
                  </node>
                  <node concept="aYllk" id="WBEjvSTEB0" role="3AunhB">
                    <node concept="3A2sRY" id="WBEjvSTEBa" role="aYrYs">
                      <ref role="3A2yKK" node="44a9n8ErWrh" resolve="app" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="1YCbHn1AJsC" role="3ArX_J">
      <property role="TrG5h" value="typeOf_Fix" />
      <node concept="2t___k" id="1YCbHn1AJ$O" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:1z4HGmnV7K8" resolve="Fix" />
        <node concept="3A20r5" id="1YCbHn1AJ$P" role="2t_VXX">
          <property role="TrG5h" value="fix" />
        </node>
      </node>
      <node concept="3Aq9E8" id="1YCbHn1AJPl" role="3otmyu">
        <node concept="3I6sU6" id="1YCbHn1AJPm" role="3Ip0Jz">
          <node concept="3I6s7M" id="1YCbHn1AQkJ" role="3I6sU7">
            <node concept="3A8Hvi" id="1YCbHn1AQkD" role="3I6s78">
              <node concept="a7P8L" id="1YCbHn1AQnZ" role="3A8wtg">
                <ref role="a7OzE" node="1YCbHn1AQkt" resolve="F" />
              </node>
              <node concept="1Q4cc8" id="1YCbHn1AKBY" role="3A8w4Q">
                <ref role="1nfQt" node="12dHl3ZCxN1" resolve="Forall" />
                <node concept="1RziaG" id="1YCbHn1AKC2" role="1Ryyee">
                  <ref role="1RzibV" node="12dHl3ZCEvq" resolve="type" />
                  <node concept="3AP2Rn" id="1YCbHn1AKC3" role="1RzmR7">
                    <node concept="3clFbS" id="1YCbHn1AKC4" role="16YjZG">
                      <node concept="3clFbF" id="1YCbHn1AKCj" role="3cqZAp">
                        <node concept="3A9UF8" id="1YCbHn1AKCh" role="3clFbG">
                          <node concept="1Q4cc8" id="1YCbHn1AKDc" role="3A9W3M">
                            <ref role="1nfQt" node="4dPZ2m2hWGK" resolve="Fun" />
                            <node concept="1RziaG" id="1YCbHn1AKEd" role="1Ryyee">
                              <ref role="1RzibV" node="4dPZ2m2hXGZ" resolve="arg" />
                              <node concept="3AP2Rn" id="1YCbHn1AKEe" role="1RzmR7">
                                <node concept="3clFbS" id="1YCbHn1AKEf" role="16YjZG">
                                  <node concept="3clFbF" id="1YCbHn1AKG6" role="3cqZAp">
                                    <node concept="3A9UF8" id="1YCbHn1AKG4" role="3clFbG">
                                      <node concept="1Q4cc8" id="1YCbHn1AKGZ" role="3A9W3M">
                                        <ref role="1nfQt" node="4dPZ2m2hWGK" resolve="Fun" />
                                        <node concept="1RziaG" id="1YCbHn1AKIF" role="1Ryyee">
                                          <ref role="1RzibV" node="4dPZ2m2hXGZ" resolve="arg" />
                                          <node concept="3AP2Rn" id="1YCbHn1AKIG" role="1RzmR7">
                                            <node concept="3clFbS" id="1YCbHn1AKIH" role="16YjZG">
                                              <node concept="3clFbF" id="1YCbHn1AKKJ" role="3cqZAp">
                                                <node concept="3A9UF8" id="1YCbHn1AKKH" role="3clFbG">
                                                  <node concept="a7P8L" id="1YCbHn1AKKX" role="3A9W3M">
                                                    <ref role="a7OzE" node="1YCbHn1AKJT" resolve="A" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="1RziaG" id="1YCbHn1AKRQ" role="1Ryyee">
                                          <ref role="1RzibV" node="4dPZ2m2hXHj" resolve="res" />
                                          <node concept="3AP2Rn" id="1YCbHn1AKRR" role="1RzmR7">
                                            <node concept="3clFbS" id="1YCbHn1AKRS" role="16YjZG">
                                              <node concept="3clFbF" id="1YCbHn1AKTP" role="3cqZAp">
                                                <node concept="3A9UF8" id="1YCbHn1AKTN" role="3clFbG">
                                                  <node concept="a7P8L" id="1YCbHn1AKU3" role="3A9W3M">
                                                    <ref role="a7OzE" node="1YCbHn1AKJT" resolve="A" />
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
                            <node concept="1RziaG" id="1YCbHn1AKY8" role="1Ryyee">
                              <ref role="1RzibV" node="4dPZ2m2hXHj" resolve="res" />
                              <node concept="3AP2Rn" id="1YCbHn1AKY9" role="1RzmR7">
                                <node concept="3clFbS" id="1YCbHn1AKYa" role="16YjZG">
                                  <node concept="3clFbF" id="1YCbHn1AL0j" role="3cqZAp">
                                    <node concept="3A9UF8" id="1YCbHn1AL0h" role="3clFbG">
                                      <node concept="a7P8L" id="1YCbHn1AL1c" role="3A9W3M">
                                        <ref role="a7OzE" node="1YCbHn1AKJT" resolve="A" />
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
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="1YCbHn1AKBE" role="3I6sU7">
            <node concept="3XxkQB" id="1YCbHn1AKBA" role="3I6s78">
              <node concept="aYllk" id="1YCbHn1AKBB" role="3XxmmS">
                <node concept="3A2sRY" id="1YCbHn1AKBQ" role="aYrYs">
                  <ref role="3A2yKK" node="1YCbHn1AJ$P" resolve="fix" />
                </node>
              </node>
              <node concept="a7P8L" id="1YCbHn1AQr7" role="3Xxm5W">
                <ref role="a7OzE" node="1YCbHn1AQkt" resolve="F" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="1YCbHn1AKJS" role="3Nuqhd">
          <node concept="aZer4" id="1YCbHn1AQkt" role="3XD1gS">
            <property role="TrG5h" value="F" />
          </node>
          <node concept="aZer4" id="1YCbHn1AKJT" role="3XD1gS">
            <property role="TrG5h" value="A" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3AqmoV" id="44a9n8ErYcS">
    <property role="TrG5h" value="constraints" />
    <node concept="3AqmO8" id="12dHl3ZCEwE" role="3AqmFx">
      <property role="TrG5h" value="gen" />
      <node concept="1zAUYm" id="12dHl3ZCEwY" role="1zAUyy">
        <property role="TrG5h" value="forall" />
      </node>
      <node concept="1zAUYm" id="12dHl3ZCEx0" role="1zAUyy">
        <property role="TrG5h" value="type" />
      </node>
    </node>
    <node concept="3AqmO8" id="12dHl3ZCEx3" role="3AqmFx">
      <property role="TrG5h" value="inst" />
      <node concept="1zAUYm" id="12dHl3ZCEx4" role="1zAUyy">
        <property role="TrG5h" value="type" />
      </node>
      <node concept="1zAUYm" id="12dHl3ZCEx5" role="1zAUyy">
        <property role="TrG5h" value="forall" />
      </node>
    </node>
    <node concept="3AqmO8" id="RRVBbp6QpB" role="3AqmFx">
      <property role="TrG5h" value="varname" />
      <property role="3AqDzJ" value="2" />
      <node concept="1zAUYm" id="RRVBbp6QpC" role="1zAUyy">
        <property role="TrG5h" value="var" />
      </node>
      <node concept="1zAUYm" id="RRVBbp6QpD" role="1zAUyy">
        <property role="TrG5h" value="name" />
      </node>
    </node>
    <node concept="3AqmO8" id="4dPZ2m2jAgt" role="3AqmFx">
      <property role="TrG5h" value="recoverAll" />
    </node>
    <node concept="3AqmO8" id="4dPZ2m2i60v" role="3AqmFx">
      <property role="TrG5h" value="recover" />
      <node concept="1zAUYm" id="4dPZ2m2i60D" role="1zAUyy">
        <property role="TrG5h" value="node" />
      </node>
      <node concept="1zAUYm" id="4dPZ2m2i60F" role="1zAUyy">
        <property role="TrG5h" value="type" />
      </node>
    </node>
    <node concept="3AqmO8" id="4dPZ2m2i64a" role="3AqmFx">
      <property role="TrG5h" value="typeNode" />
      <node concept="1zAUYm" id="4dPZ2m2i64n" role="1zAUyy">
        <property role="TrG5h" value="node" />
      </node>
      <node concept="1zAUYm" id="4dPZ2m2i64p" role="1zAUyy">
        <property role="TrG5h" value="anchor" />
      </node>
    </node>
    <node concept="3AqmO8" id="WBEjvSTpuV" role="3AqmFx">
      <property role="TrG5h" value="error" />
      <node concept="1zAUYm" id="WBEjvSTpuW" role="1zAUyy">
        <property role="TrG5h" value="text" />
      </node>
      <node concept="1zAUYm" id="WBEjvSTpuX" role="1zAUyy">
        <property role="TrG5h" value="anchor" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4rRw8_AtKo0">
    <property role="TrG5h" value="VarUnionFind" />
    <node concept="2tJIrI" id="4rRw8_AtKoQ" role="jymVt" />
    <node concept="2YIFZL" id="4rRw8_AuyeV" role="jymVt">
      <property role="TrG5h" value="find" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4rRw8_AtKpM" role="3clF47">
        <node concept="3cpWs8" id="4rRw8_AugfH" role="3cqZAp">
          <node concept="3cpWsn" id="4rRw8_AugfI" role="3cpWs9">
            <property role="TrG5h" value="rec" />
            <node concept="3uibUv" id="4rRw8_AugfE" role="1tU5fm">
              <ref role="3uigEE" node="4rRw8_AtKsM" resolve="VarUnionFind.Rec" />
            </node>
            <node concept="1rXfSq" id="4rRw8_AugfJ" role="33vP2m">
              <ref role="37wK5l" node="4rRw8_Auzdl" resolve="rec" />
              <node concept="37vLTw" id="4rRw8_AugfK" role="37wK5m">
                <ref role="3cqZAo" node="4rRw8_AtKqr" resolve="var" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="4rRw8_AugxV" role="3cqZAp">
          <node concept="3clFbS" id="4rRw8_AugxX" role="2LFqv$">
            <node concept="3cpWs8" id="4rRw8_AuhZ2" role="3cqZAp">
              <node concept="3cpWsn" id="4rRw8_AuhZ3" role="3cpWs9">
                <property role="TrG5h" value="tmp" />
                <node concept="3uibUv" id="4rRw8_AuhYX" role="1tU5fm">
                  <ref role="3uigEE" node="4rRw8_AtKsM" resolve="VarUnionFind.Rec" />
                </node>
                <node concept="1rXfSq" id="4rRw8_AuhZ4" role="33vP2m">
                  <ref role="37wK5l" node="4rRw8_Auzdl" resolve="rec" />
                  <node concept="2OqwBi" id="4rRw8_AuhZ5" role="37wK5m">
                    <node concept="37vLTw" id="4rRw8_AuhZ6" role="2Oq$k0">
                      <ref role="3cqZAo" node="4rRw8_AugfI" resolve="rec" />
                    </node>
                    <node concept="2OwXpG" id="4rRw8_AuhZ7" role="2OqNvi">
                      <ref role="2Oxat5" node="4rRw8_AtTBj" resolve="parent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4rRw8_Aui6P" role="3cqZAp">
              <node concept="37vLTI" id="4rRw8_AuiJK" role="3clFbG">
                <node concept="2OqwBi" id="4rRw8_AuiWQ" role="37vLTx">
                  <node concept="37vLTw" id="4rRw8_AuiOd" role="2Oq$k0">
                    <ref role="3cqZAo" node="4rRw8_AuhZ3" resolve="tmp" />
                  </node>
                  <node concept="2OwXpG" id="4rRw8_Aumj9" role="2OqNvi">
                    <ref role="2Oxat5" node="4rRw8_AujIZ" resolve="var" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4rRw8_AuidX" role="37vLTJ">
                  <node concept="37vLTw" id="4rRw8_Aui6N" role="2Oq$k0">
                    <ref role="3cqZAo" node="4rRw8_AugfI" resolve="rec" />
                  </node>
                  <node concept="2OwXpG" id="4rRw8_Auimh" role="2OqNvi">
                    <ref role="2Oxat5" node="4rRw8_AtTBj" resolve="parent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4rRw8_AuhgR" role="3cqZAp">
              <node concept="37vLTI" id="4rRw8_Auhsc" role="3clFbG">
                <node concept="37vLTw" id="4rRw8_AuhZ8" role="37vLTx">
                  <ref role="3cqZAo" node="4rRw8_AuhZ3" resolve="tmp" />
                </node>
                <node concept="37vLTw" id="4rRw8_AuhgP" role="37vLTJ">
                  <ref role="3cqZAo" node="4rRw8_AugfI" resolve="rec" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4rRw8_Auhbn" role="2$JKZa">
            <node concept="10Nm6u" id="4rRw8_AuhdU" role="3uHU7w" />
            <node concept="2OqwBi" id="4rRw8_AugK1" role="3uHU7B">
              <node concept="37vLTw" id="4rRw8_AugCC" role="2Oq$k0">
                <ref role="3cqZAo" node="4rRw8_AugfI" resolve="rec" />
              </node>
              <node concept="2OwXpG" id="4rRw8_AugS6" role="2OqNvi">
                <ref role="2Oxat5" node="4rRw8_AtTBj" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rRw8_Aup1M" role="3cqZAp">
          <node concept="2OqwBi" id="4rRw8_Aupv1" role="3clFbG">
            <node concept="37vLTw" id="4rRw8_Aup1K" role="2Oq$k0">
              <ref role="3cqZAo" node="4rRw8_AugfI" resolve="rec" />
            </node>
            <node concept="2OwXpG" id="4rRw8_AupAO" role="2OqNvi">
              <ref role="2Oxat5" node="4rRw8_AujIZ" resolve="var" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4rRw8_AtKqr" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="4rRw8_AtKrh" role="1tU5fm">
          <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
        </node>
      </node>
      <node concept="3Tqbb2" id="4rRw8_Au8vk" role="3clF45">
        <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
      </node>
      <node concept="3Tm1VV" id="4rRw8_AtKpL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4rRw8_Au9Tw" role="jymVt" />
    <node concept="2YIFZL" id="4rRw8_AuyI7" role="jymVt">
      <property role="TrG5h" value="union" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4rRw8_Au921" role="3clF47">
        <node concept="3cpWs8" id="4rRw8_Aua4s" role="3cqZAp">
          <node concept="3cpWsn" id="4rRw8_Aua4t" role="3cpWs9">
            <property role="TrG5h" value="rec1" />
            <node concept="3uibUv" id="4rRw8_Aua4r" role="1tU5fm">
              <ref role="3uigEE" node="4rRw8_AtKsM" resolve="VarUnionFind.Rec" />
            </node>
            <node concept="1rXfSq" id="4rRw8_Aua4u" role="33vP2m">
              <ref role="37wK5l" node="4rRw8_Auzdl" resolve="rec" />
              <node concept="37vLTw" id="4rRw8_Aua4v" role="37wK5m">
                <ref role="3cqZAo" node="4rRw8_Au9de" resolve="var1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4rRw8_Aua6j" role="3cqZAp">
          <node concept="3cpWsn" id="4rRw8_Aua6k" role="3cpWs9">
            <property role="TrG5h" value="rec2" />
            <node concept="3uibUv" id="4rRw8_Aua6l" role="1tU5fm">
              <ref role="3uigEE" node="4rRw8_AtKsM" resolve="VarUnionFind.Rec" />
            </node>
            <node concept="1rXfSq" id="4rRw8_Aua6m" role="33vP2m">
              <ref role="37wK5l" node="4rRw8_Auzdl" resolve="rec" />
              <node concept="37vLTw" id="4rRw8_Aua8Z" role="37wK5m">
                <ref role="3cqZAo" node="4rRw8_Au9iU" resolve="var2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4rRw8_AuabN" role="3cqZAp" />
        <node concept="3clFbJ" id="4rRw8_AuacL" role="3cqZAp">
          <node concept="3clFbS" id="4rRw8_AuacN" role="3clFbx">
            <node concept="3cpWs8" id="4rRw8_AudPh" role="3cqZAp">
              <node concept="3cpWsn" id="4rRw8_AudPi" role="3cpWs9">
                <property role="TrG5h" value="tmp" />
                <node concept="3uibUv" id="4rRw8_AudNX" role="1tU5fm">
                  <ref role="3uigEE" node="4rRw8_AtKsM" resolve="VarUnionFind.Rec" />
                </node>
                <node concept="37vLTw" id="4rRw8_AudPj" role="33vP2m">
                  <ref role="3cqZAo" node="4rRw8_Aua4t" resolve="rec1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4rRw8_AudRO" role="3cqZAp">
              <node concept="37vLTI" id="4rRw8_AudXV" role="3clFbG">
                <node concept="37vLTw" id="4rRw8_AudYE" role="37vLTx">
                  <ref role="3cqZAo" node="4rRw8_Aua6k" resolve="rec2" />
                </node>
                <node concept="37vLTw" id="4rRw8_AudRM" role="37vLTJ">
                  <ref role="3cqZAo" node="4rRw8_Aua4t" resolve="rec1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4rRw8_Aue00" role="3cqZAp">
              <node concept="37vLTI" id="4rRw8_Aue6i" role="3clFbG">
                <node concept="37vLTw" id="4rRw8_Aue71" role="37vLTx">
                  <ref role="3cqZAo" node="4rRw8_AudPi" resolve="tmp" />
                </node>
                <node concept="37vLTw" id="4rRw8_AudZY" role="37vLTJ">
                  <ref role="3cqZAo" node="4rRw8_Aua6k" resolve="rec2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="4rRw8_AuceB" role="3clFbw">
            <node concept="2OqwBi" id="4rRw8_AucIq" role="3uHU7w">
              <node concept="37vLTw" id="4rRw8_Aucjn" role="2Oq$k0">
                <ref role="3cqZAo" node="4rRw8_Aua6k" resolve="rec2" />
              </node>
              <node concept="2OwXpG" id="4rRw8_AucUd" role="2OqNvi">
                <ref role="2Oxat5" node="4rRw8_Au317" resolve="rank" />
              </node>
            </node>
            <node concept="2OqwBi" id="4rRw8_Auav0" role="3uHU7B">
              <node concept="37vLTw" id="4rRw8_AuanA" role="2Oq$k0">
                <ref role="3cqZAo" node="4rRw8_Aua4t" resolve="rec1" />
              </node>
              <node concept="2OwXpG" id="4rRw8_AuaB6" role="2OqNvi">
                <ref role="2Oxat5" node="4rRw8_Au317" resolve="rank" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4rRw8_Au9oH" role="3cqZAp" />
        <node concept="3clFbF" id="4rRw8_AurH_" role="3cqZAp">
          <node concept="37vLTI" id="4rRw8_AutVb" role="3clFbG">
            <node concept="2OqwBi" id="4rRw8_Auu8E" role="37vLTx">
              <node concept="37vLTw" id="4rRw8_AutZL" role="2Oq$k0">
                <ref role="3cqZAo" node="4rRw8_Aua4t" resolve="rec1" />
              </node>
              <node concept="2OwXpG" id="4rRw8_Auui9" role="2OqNvi">
                <ref role="2Oxat5" node="4rRw8_AujIZ" resolve="var" />
              </node>
            </node>
            <node concept="2OqwBi" id="4rRw8_AurZp" role="37vLTJ">
              <node concept="37vLTw" id="4rRw8_AurHz" role="2Oq$k0">
                <ref role="3cqZAo" node="4rRw8_Aua6k" resolve="rec2" />
              </node>
              <node concept="2OwXpG" id="4rRw8_Aus7u" role="2OqNvi">
                <ref role="2Oxat5" node="4rRw8_AtTBj" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rRw8_AuukK" role="3cqZAp">
          <node concept="d57v9" id="4rRw8_Auv_z" role="3clFbG">
            <node concept="3cpWs3" id="4rRw8_Auxkp" role="37vLTx">
              <node concept="3cmrfG" id="4rRw8_AuxkU" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="4rRw8_Auw4r" role="3uHU7B">
                <node concept="37vLTw" id="4rRw8_AuvEo" role="2Oq$k0">
                  <ref role="3cqZAo" node="4rRw8_Aua6k" resolve="rec2" />
                </node>
                <node concept="2OwXpG" id="4rRw8_Auwg9" role="2OqNvi">
                  <ref role="2Oxat5" node="4rRw8_Au317" resolve="rank" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4rRw8_AuuC3" role="37vLTJ">
              <node concept="37vLTw" id="4rRw8_AuukI" role="2Oq$k0">
                <ref role="3cqZAo" node="4rRw8_Aua4t" resolve="rec1" />
              </node>
              <node concept="2OwXpG" id="4rRw8_AuuK8" role="2OqNvi">
                <ref role="2Oxat5" node="4rRw8_Au317" resolve="rank" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ffn8J" id="4rRw8_Au9de" role="3clF46">
        <property role="TrG5h" value="var1" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTKS" resolve="node" />
        <node concept="3Tqbb2" id="4rRw8_Au9hU" role="1tU5fm">
          <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
        </node>
      </node>
      <node concept="37vLTG" id="4rRw8_Au9iU" role="3clF46">
        <property role="TrG5h" value="var2" />
        <node concept="3Tqbb2" id="4rRw8_Au9nF" role="1tU5fm">
          <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
        </node>
      </node>
      <node concept="3cqZAl" id="4rRw8_Au91Z" role="3clF45" />
      <node concept="3Tm1VV" id="4rRw8_Au920" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4rRw8_Au3ze" role="jymVt" />
    <node concept="2YIFZL" id="4rRw8_Auzdl" role="jymVt">
      <property role="TrG5h" value="rec" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4rRw8_Au9pE" role="3clF47">
        <node concept="3cpWs8" id="4rRw8_Au9pH" role="3cqZAp">
          <node concept="3cpWsn" id="4rRw8_Au9pI" role="3cpWs9">
            <property role="TrG5h" value="key" />
            <node concept="3uibUv" id="4rRw8_Au9pJ" role="1tU5fm">
              <ref role="3uigEE" node="4rRw8_Au3jt" resolve="VarUnionFind.Key" />
            </node>
            <node concept="2ShNRf" id="4rRw8_Au9pK" role="33vP2m">
              <node concept="1pGfFk" id="4rRw8_Au9pL" role="2ShVmc">
                <ref role="37wK5l" node="4rRw8_Au3jC" resolve="VarUnionFind.Key" />
                <node concept="37vLTw" id="4rRw8_Au9qc" role="37wK5m">
                  <ref role="3cqZAo" node="4rRw8_Au9qa" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4rRw8_Au9pN" role="3cqZAp">
          <node concept="3cpWsn" id="4rRw8_Au9pO" role="3cpWs9">
            <property role="TrG5h" value="rec" />
            <node concept="3uibUv" id="4rRw8_Au9pP" role="1tU5fm">
              <ref role="3uigEE" node="4rRw8_AtKsM" resolve="VarUnionFind.Rec" />
            </node>
            <node concept="10QFUN" id="4rRw8_Au9pQ" role="33vP2m">
              <node concept="3uibUv" id="4rRw8_AulPd" role="10QFUM">
                <ref role="3uigEE" node="4rRw8_AtKsM" resolve="VarUnionFind.Rec" />
              </node>
              <node concept="2YIFZM" id="4rRw8_Au9pS" role="10QFUP">
                <ref role="37wK5l" to="hano:2tjs8VC2Csb" resolve="get" />
                <ref role="1Pybhc" to="hano:2tjs8VC0K0m" resolve="Memoizer" />
                <node concept="37vLTw" id="4rRw8_Au9pT" role="37wK5m">
                  <ref role="3cqZAo" node="4rRw8_Au9pI" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4rRw8_Au9pU" role="3cqZAp">
          <node concept="3clFbS" id="4rRw8_Au9pV" role="3clFbx">
            <node concept="3clFbF" id="4rRw8_Au9pW" role="3cqZAp">
              <node concept="2YIFZM" id="4rRw8_Au9pX" role="3clFbG">
                <ref role="37wK5l" to="hano:2tjs8VC2_Fr" resolve="set" />
                <ref role="1Pybhc" to="hano:2tjs8VC0K0m" resolve="Memoizer" />
                <node concept="37vLTw" id="4rRw8_Au9pY" role="37wK5m">
                  <ref role="3cqZAo" node="4rRw8_Au9pI" resolve="key" />
                </node>
                <node concept="1eOMI4" id="4rRw8_Au9pZ" role="37wK5m">
                  <node concept="37vLTI" id="4rRw8_Au9q0" role="1eOMHV">
                    <node concept="2ShNRf" id="4rRw8_Au9q1" role="37vLTx">
                      <node concept="1pGfFk" id="4rRw8_Au9q2" role="2ShVmc">
                        <ref role="37wK5l" node="4rRw8_AtTX9" resolve="VarUnionFind.Rec" />
                        <node concept="37vLTw" id="4rRw8_Au9qd" role="37wK5m">
                          <ref role="3cqZAo" node="4rRw8_Au9qa" resolve="var" />
                        </node>
                        <node concept="10Nm6u" id="4rRw8_Aum8f" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4rRw8_Au9q4" role="37vLTJ">
                      <ref role="3cqZAo" node="4rRw8_Au9pO" resolve="rec" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4rRw8_Au9q5" role="3clFbw">
            <node concept="10Nm6u" id="4rRw8_Au9q6" role="3uHU7w" />
            <node concept="37vLTw" id="4rRw8_Au9q7" role="3uHU7B">
              <ref role="3cqZAo" node="4rRw8_Au9pO" resolve="rec" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4rRw8_Au9q8" role="3cqZAp">
          <node concept="37vLTw" id="4rRw8_Au9q9" role="3cqZAk">
            <ref role="3cqZAo" node="4rRw8_Au9pO" resolve="rec" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4rRw8_Au9qa" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="4rRw8_Au9qb" role="1tU5fm">
          <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
        </node>
      </node>
      <node concept="3uibUv" id="4rRw8_Au9qi" role="3clF45">
        <ref role="3uigEE" node="4rRw8_AtKsM" resolve="VarUnionFind.Rec" />
      </node>
      <node concept="3Tm6S6" id="4rRw8_Au9qh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4rRw8_Au8TK" role="jymVt" />
    <node concept="312cEu" id="4rRw8_Au3jt" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Key" />
      <node concept="2tJIrI" id="4rRw8_Au3ju" role="jymVt" />
      <node concept="312cEg" id="4rRw8_Au3jv" role="jymVt">
        <property role="TrG5h" value="node" />
        <node concept="3Tm6S6" id="4rRw8_Au3jw" role="1B3o_S" />
        <node concept="3Tqbb2" id="4rRw8_Au3jx" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="4rRw8_Au3jy" role="jymVt" />
      <node concept="3clFbW" id="4rRw8_Au3jC" role="jymVt">
        <node concept="37vLTG" id="4rRw8_Au3jD" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="4rRw8_Au3jE" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="4rRw8_Au3jF" role="3clF45" />
        <node concept="3Tm1VV" id="4rRw8_Au3jG" role="1B3o_S" />
        <node concept="3clFbS" id="4rRw8_Au3jH" role="3clF47">
          <node concept="3clFbF" id="4rRw8_Au3jI" role="3cqZAp">
            <node concept="37vLTI" id="4rRw8_Au3jJ" role="3clFbG">
              <node concept="37vLTw" id="4rRw8_Au3jK" role="37vLTx">
                <ref role="3cqZAo" node="4rRw8_Au3jD" resolve="node" />
              </node>
              <node concept="2OqwBi" id="4rRw8_Au3jL" role="37vLTJ">
                <node concept="Xjq3P" id="4rRw8_Au3jM" role="2Oq$k0" />
                <node concept="2OwXpG" id="4rRw8_Au3jN" role="2OqNvi">
                  <ref role="2Oxat5" node="4rRw8_Au3jv" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4rRw8_Au3jO" role="jymVt" />
      <node concept="3clFb_" id="4rRw8_Au3jP" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="hashCode" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4rRw8_Au3jQ" role="1B3o_S" />
        <node concept="10Oyi0" id="4rRw8_Au3jR" role="3clF45" />
        <node concept="3clFbS" id="4rRw8_Au3jS" role="3clF47">
          <node concept="3clFbF" id="4rRw8_Au3jT" role="3cqZAp">
            <node concept="2OqwBi" id="4rRw8_Au3jU" role="3clFbG">
              <node concept="2JrnkZ" id="4rRw8_Au3jV" role="2Oq$k0">
                <node concept="37vLTw" id="4rRw8_Au3jW" role="2JrQYb">
                  <ref role="3cqZAo" node="4rRw8_Au3jv" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="4rRw8_Au3jX" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4rRw8_Au3jY" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4rRw8_Au3jZ" role="jymVt" />
      <node concept="3clFb_" id="4rRw8_Au3k0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="equals" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4rRw8_Au3k1" role="1B3o_S" />
        <node concept="10P_77" id="4rRw8_Au3k2" role="3clF45" />
        <node concept="37vLTG" id="4rRw8_Au3k3" role="3clF46">
          <property role="TrG5h" value="object" />
          <node concept="3uibUv" id="4rRw8_Au3k4" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="4rRw8_Au3k5" role="3clF47">
          <node concept="3clFbJ" id="4rRw8_Au3k6" role="3cqZAp">
            <node concept="3clFbS" id="4rRw8_Au3k7" role="3clFbx">
              <node concept="3cpWs6" id="4rRw8_Au3k8" role="3cqZAp">
                <node concept="3clFbT" id="4rRw8_Au3k9" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="4rRw8_Au3ka" role="3clFbw">
              <node concept="1eOMI4" id="4rRw8_Au3kb" role="3fr31v">
                <node concept="2ZW3vV" id="4rRw8_Au3kc" role="1eOMHV">
                  <node concept="3uibUv" id="4rRw8_Au3kd" role="2ZW6by">
                    <ref role="3uigEE" node="4rRw8_Au3jt" resolve="VarUnionFind.Key" />
                  </node>
                  <node concept="37vLTw" id="4rRw8_Au3ke" role="2ZW6bz">
                    <ref role="3cqZAo" node="4rRw8_Au3k3" resolve="object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4rRw8_Au3kf" role="3cqZAp">
            <node concept="17R0WA" id="4rRw8_Au3kg" role="3cqZAk">
              <node concept="2OqwBi" id="4rRw8_Au3kh" role="3uHU7w">
                <node concept="1eOMI4" id="4rRw8_Au3ki" role="2Oq$k0">
                  <node concept="10QFUN" id="4rRw8_Au3kj" role="1eOMHV">
                    <node concept="3uibUv" id="4rRw8_Au3kk" role="10QFUM">
                      <ref role="3uigEE" node="4rRw8_Au3jt" resolve="VarUnionFind.Key" />
                    </node>
                    <node concept="37vLTw" id="4rRw8_Au3kl" role="10QFUP">
                      <ref role="3cqZAo" node="4rRw8_Au3k3" resolve="object" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="4rRw8_Au3km" role="2OqNvi">
                  <ref role="2Oxat5" node="4rRw8_Au3jv" resolve="node" />
                </node>
              </node>
              <node concept="37vLTw" id="4rRw8_Au3kn" role="3uHU7B">
                <ref role="3cqZAo" node="4rRw8_Au3jv" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4rRw8_Au3ko" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4rRw8_AuzJj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4rRw8_AtKp1" role="jymVt" />
    <node concept="312cEu" id="4rRw8_AtKsM" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Rec" />
      <node concept="2tJIrI" id="4rRw8_AtTAT" role="jymVt" />
      <node concept="312cEg" id="4rRw8_AtTBj" role="jymVt">
        <property role="TrG5h" value="parent" />
        <node concept="3Tm6S6" id="4rRw8_AtTBk" role="1B3o_S" />
        <node concept="3Tqbb2" id="4rRw8_AtTBG" role="1tU5fm">
          <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
        </node>
      </node>
      <node concept="312cEg" id="4rRw8_AujIZ" role="jymVt">
        <property role="TrG5h" value="var" />
        <node concept="3Tm6S6" id="4rRw8_AujJ0" role="1B3o_S" />
        <node concept="3Tqbb2" id="4rRw8_AujJ1" role="1tU5fm">
          <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
        </node>
      </node>
      <node concept="312cEg" id="4rRw8_Au317" role="jymVt">
        <property role="TrG5h" value="rank" />
        <node concept="3Tm6S6" id="4rRw8_Au318" role="1B3o_S" />
        <node concept="10Oyi0" id="4rRw8_Au39d" role="1tU5fm" />
        <node concept="3cmrfG" id="4rRw8_Au3hr" role="33vP2m">
          <property role="3cmrfH" value="0" />
        </node>
      </node>
      <node concept="2tJIrI" id="4rRw8_AtTTm" role="jymVt" />
      <node concept="3clFbW" id="4rRw8_AtTX9" role="jymVt">
        <node concept="37vLTG" id="4rRw8_AtU0L" role="3clF46">
          <property role="TrG5h" value="var" />
          <node concept="3Tqbb2" id="4rRw8_AtU32" role="1tU5fm">
            <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
          </node>
        </node>
        <node concept="37vLTG" id="4rRw8_Aukbh" role="3clF46">
          <property role="TrG5h" value="parent" />
          <node concept="3Tqbb2" id="4rRw8_Aukbi" role="1tU5fm">
            <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
          </node>
        </node>
        <node concept="3cqZAl" id="4rRw8_AtTXb" role="3clF45" />
        <node concept="3Tm1VV" id="4rRw8_AtTXc" role="1B3o_S" />
        <node concept="3clFbS" id="4rRw8_AtTXd" role="3clF47">
          <node concept="3clFbF" id="4rRw8_AtU3V" role="3cqZAp">
            <node concept="37vLTI" id="4rRw8_AtUy7" role="3clFbG">
              <node concept="37vLTw" id="4rRw8_AtU_F" role="37vLTx">
                <ref role="3cqZAo" node="4rRw8_AtU0L" resolve="var" />
              </node>
              <node concept="2OqwBi" id="4rRw8_AtU9l" role="37vLTJ">
                <node concept="Xjq3P" id="4rRw8_AtU3U" role="2Oq$k0" />
                <node concept="2OwXpG" id="4rRw8_AukzK" role="2OqNvi">
                  <ref role="2Oxat5" node="4rRw8_AujIZ" resolve="var" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4rRw8_Aukgl" role="3cqZAp">
            <node concept="37vLTI" id="4rRw8_Aukgm" role="3clFbG">
              <node concept="37vLTw" id="4rRw8_AukCt" role="37vLTx">
                <ref role="3cqZAo" node="4rRw8_Aukbh" resolve="parent" />
              </node>
              <node concept="2OqwBi" id="4rRw8_Aukgo" role="37vLTJ">
                <node concept="Xjq3P" id="4rRw8_Aukgp" role="2Oq$k0" />
                <node concept="2OwXpG" id="4rRw8_Aukgq" role="2OqNvi">
                  <ref role="2Oxat5" node="4rRw8_AtTBj" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4rRw8_AtTBX" role="jymVt" />
      <node concept="3Tm6S6" id="4rRw8_Au$fe" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4rRw8_AtKpv" role="jymVt" />
    <node concept="3Tm1VV" id="4rRw8_AtKo1" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="492bFERos2W">
    <property role="TrG5h" value="Names" />
    <node concept="2tJIrI" id="492bFERos3m" role="jymVt" />
    <node concept="2YIFZL" id="492bFERos4c" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="leastIndex" />
      <node concept="37vLTG" id="492bFERoJe8" role="3clF46">
        <property role="TrG5h" value="least" />
        <node concept="3uibUv" id="492bFERoJnn" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="17QB3L" id="492bFERoJrU" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="492bFERoDPB" role="3clF46">
        <property role="TrG5h" value="index1" />
        <node concept="3uibUv" id="492bFERoFO7" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="17QB3L" id="492bFERoFTd" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="492bFERoGm6" role="3clF46">
        <property role="TrG5h" value="index2" />
        <node concept="3uibUv" id="492bFERoGm7" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="17QB3L" id="492bFERoGm8" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="492bFERos3O" role="3clF47">
        <node concept="3clFbH" id="492bFERos6Q" role="3cqZAp" />
        <node concept="3cpWs8" id="492bFERoNWY" role="3cqZAp">
          <node concept="3cpWsn" id="492bFERoNWZ" role="3cpWs9">
            <property role="TrG5h" value="n1" />
            <node concept="10Oyi0" id="492bFERoNWK" role="1tU5fm" />
            <node concept="2YIFZM" id="492bFERoNX0" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <node concept="2OqwBi" id="492bFERoNX1" role="37wK5m">
                <node concept="2OqwBi" id="492bFERoNX2" role="2Oq$k0">
                  <node concept="37vLTw" id="492bFERoNX3" role="2Oq$k0">
                    <ref role="3cqZAo" node="492bFERoDPB" resolve="index1" />
                  </node>
                  <node concept="liA8E" id="492bFERoNX4" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="492bFERoNX5" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="492bFERoO5C" role="3cqZAp">
          <node concept="3cpWsn" id="492bFERoO5D" role="3cpWs9">
            <property role="TrG5h" value="n2" />
            <node concept="10Oyi0" id="492bFERoO5E" role="1tU5fm" />
            <node concept="2YIFZM" id="492bFERoO5F" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <node concept="2OqwBi" id="492bFERoO5G" role="37wK5m">
                <node concept="2OqwBi" id="492bFERoO5H" role="2Oq$k0">
                  <node concept="37vLTw" id="492bFERoOcx" role="2Oq$k0">
                    <ref role="3cqZAo" node="492bFERoGm6" resolve="index2" />
                  </node>
                  <node concept="liA8E" id="492bFERoO5J" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="492bFERoO5K" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="492bFERoOv0" role="3cqZAp">
          <node concept="3clFbS" id="492bFERoOv2" role="3clFbx">
            <node concept="3clFbF" id="492bFERoQLq" role="3cqZAp">
              <node concept="37vLTI" id="492bFERoRrO" role="3clFbG">
                <node concept="37vLTw" id="492bFERoRsk" role="37vLTx">
                  <ref role="3cqZAo" node="492bFERoO5D" resolve="n2" />
                </node>
                <node concept="37vLTw" id="492bFERoQLo" role="37vLTJ">
                  <ref role="3cqZAo" node="492bFERoNWZ" resolve="n1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="492bFERoQDg" role="3clFbw">
            <node concept="37vLTw" id="492bFERoQD_" role="3uHU7w">
              <ref role="3cqZAo" node="492bFERoNWZ" resolve="n1" />
            </node>
            <node concept="37vLTw" id="492bFERoPMW" role="3uHU7B">
              <ref role="3cqZAo" node="492bFERoO5D" resolve="n2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="492bFERoTi8" role="3cqZAp" />
        <node concept="3cpWs8" id="492bFERoVGs" role="3cqZAp">
          <node concept="3cpWsn" id="492bFERoVGt" role="3cpWs9">
            <property role="TrG5h" value="sessionSolver" />
            <node concept="3uibUv" id="492bFERoVGp" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
            </node>
            <node concept="2OqwBi" id="492bFERoVGu" role="33vP2m">
              <node concept="2YIFZM" id="492bFERoVGv" role="2Oq$k0">
                <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
              </node>
              <node concept="liA8E" id="492bFERoVGw" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="492bFERoUQ1" role="3cqZAp">
          <node concept="2OqwBi" id="492bFERoW9u" role="3clFbG">
            <node concept="37vLTw" id="492bFERoVGx" role="2Oq$k0">
              <ref role="3cqZAo" node="492bFERoVGt" resolve="sessionSolver" />
            </node>
            <node concept="liA8E" id="492bFERoWx$" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
              <node concept="2OqwBi" id="4dPZ2m2iOWV" role="37wK5m">
                <node concept="2OqwBi" id="4dPZ2m2iO4i" role="2Oq$k0">
                  <node concept="2ShNRf" id="4dPZ2m2iLnS" role="2Oq$k0">
                    <node concept="1pGfFk" id="4dPZ2m2iNJ6" role="2ShVmc">
                      <ref role="37wK5l" to="nz6g:4sSe4$oM2B4" resolve="PredicateBuilder" />
                      <node concept="10M0yZ" id="492bFERoWG6" role="37wK5m">
                        <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                        <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4dPZ2m2iOkS" role="2OqNvi">
                    <ref role="37wK5l" to="nz6g:4sSe4$oM2Bb" resolve="withArguments" />
                    <node concept="37vLTw" id="492bFERoWNw" role="37wK5m">
                      <ref role="3cqZAo" node="492bFERoJe8" resolve="least" />
                    </node>
                    <node concept="2YIFZM" id="492bFERoZXK" role="37wK5m">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                      <node concept="37vLTw" id="492bFERp02x" role="37wK5m">
                        <ref role="3cqZAo" node="492bFERoNWZ" resolve="n1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4dPZ2m2iPq2" role="2OqNvi">
                  <ref role="37wK5l" to="nz6g:4sSe4$oM2Bs" resolve="toPredicate" />
                </node>
              </node>
              <node concept="2ShNRf" id="4dPZ2m2iJwv" role="37wK5m">
                <node concept="YeOm9" id="4dPZ2m2iJww" role="2ShVmc">
                  <node concept="1Y3b0j" id="4dPZ2m2iJwx" role="YeSDq">
                    <property role="1sVAO0" value="false" />
                    <property role="1EXbeo" value="false" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="bj13:~LogicalContext" resolve="LogicalContext" />
                    <node concept="3clFb_" id="4dPZ2m2iJwy" role="jymVt">
                      <property role="TrG5h" value="variable" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="2AHcQZ" id="4dPZ2m2iJwz" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                      <node concept="16euLQ" id="4dPZ2m2iJw$" role="16eVyc">
                        <property role="TrG5h" value="V" />
                      </node>
                      <node concept="37vLTG" id="4dPZ2m2iJw_" role="3clF46">
                        <property role="TrG5h" value="logical" />
                        <property role="3TUv4t" value="false" />
                        <node concept="3uibUv" id="4dPZ2m2iJwA" role="1tU5fm">
                          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                          <node concept="16syzq" id="4dPZ2m2iJwB" role="11_B2D">
                            <ref role="16sUi3" node="4dPZ2m2iJw$" resolve="V" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4dPZ2m2iJwC" role="3clF47">
                        <node concept="YS8fn" id="4dPZ2m2iJwD" role="3cqZAp">
                          <node concept="2ShNRf" id="4dPZ2m2iJwE" role="YScLw">
                            <node concept="1pGfFk" id="4dPZ2m2iJwF" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                              <node concept="Xl_RD" id="4dPZ2m2iJwG" role="37wK5m">
                                <property role="Xl_RC" value="not implemented" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="4dPZ2m2iJwH" role="1B3o_S" />
                      <node concept="3uibUv" id="4dPZ2m2iJwI" role="3clF45">
                        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                        <node concept="16syzq" id="4dPZ2m2iJwJ" role="11_B2D">
                          <ref role="16sUi3" node="4dPZ2m2iJw$" resolve="V" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="492bFERoOqC" role="3cqZAp" />
        <node concept="3clFbF" id="492bFERoBcg" role="3cqZAp">
          <node concept="3clFbT" id="492bFERoBcf" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="492bFERoATE" role="3clF45" />
      <node concept="3Tm1VV" id="492bFERos3N" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="492bFERos3r" role="jymVt" />
    <node concept="2YIFZL" id="2zhm1Y5WQUZ" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="nextIndex" />
      <node concept="3clFbS" id="2zhm1Y5WQTb" role="3clF47">
        <node concept="3clFbF" id="2zhm1Y5XfXH" role="3cqZAp">
          <node concept="2YIFZM" id="2zhm1Y5Xg9A" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
            <node concept="2OqwBi" id="2zhm1Y5WTxH" role="37wK5m">
              <node concept="2YIFZM" id="5zncGqweU5L" role="2Oq$k0">
                <ref role="1Pybhc" node="492bFERos2W" resolve="Names" />
                <ref role="37wK5l" node="5zncGqweU5I" resolve="get" />
              </node>
              <node concept="liA8E" id="2zhm1Y5Xf$V" role="2OqNvi">
                <ref role="37wK5l" node="2zhm1Y5WSfW" resolve="primNextIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2zhm1Y5WQXV" role="3clF45" />
      <node concept="3Tm1VV" id="2zhm1Y5WQTa" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5zncGqweNW8" role="jymVt" />
    <node concept="2YIFZL" id="5zncGqweOW0" role="jymVt">
      <property role="TrG5h" value="asName" />
      <node concept="37vLTG" id="5zncGqweP_N" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="3uibUv" id="5zncGqwePAD" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        </node>
      </node>
      <node concept="17QB3L" id="5zncGqwePgU" role="3clF45" />
      <node concept="3Tm1VV" id="5zncGqweOW2" role="1B3o_S" />
      <node concept="3clFbS" id="5zncGqweOW4" role="3clF47">
        <node concept="3cpWs8" id="5zncGqweSk$" role="3cqZAp">
          <node concept="3cpWsn" id="5zncGqweSk_" role="3cpWs9">
            <property role="TrG5h" value="idx" />
            <node concept="10Oyi0" id="5zncGqweSkA" role="1tU5fm" />
            <node concept="2YIFZM" id="5zncGqweSkB" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
              <node concept="2OqwBi" id="5zncGqweSkC" role="37wK5m">
                <node concept="2OqwBi" id="5zncGqweSkD" role="2Oq$k0">
                  <node concept="1eOMI4" id="1z4HGmnUDUr" role="2Oq$k0">
                    <node concept="10QFUN" id="1z4HGmnUDUo" role="1eOMHV">
                      <node concept="3uibUv" id="1z4HGmnUE3S" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                        <node concept="17QB3L" id="1z4HGmnUEe4" role="11_B2D" />
                      </node>
                      <node concept="37vLTw" id="1z4HGmnUDUt" role="10QFUP">
                        <ref role="3cqZAo" node="5zncGqweP_N" resolve="index" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5zncGqweSkF" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="5zncGqweSkG" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5zncGqwfNr3" role="3cqZAp">
          <node concept="3cpWs3" id="5zncGqwfOc5" role="3cqZAk">
            <node concept="Xl_RD" id="5zncGqwfNww" role="3uHU7B">
              <property role="Xl_RC" value="t" />
            </node>
            <node concept="2OqwBi" id="5zncGqwfOge" role="3uHU7w">
              <node concept="1rXfSq" id="5zncGqwfOgf" role="2Oq$k0">
                <ref role="37wK5l" node="5zncGqweU5I" resolve="get" />
              </node>
              <node concept="liA8E" id="5zncGqwfOgg" role="2OqNvi">
                <ref role="37wK5l" node="5zncGqweYMf" resolve="toCardinal" />
                <node concept="37vLTw" id="5zncGqwfO$E" role="37wK5m">
                  <ref role="3cqZAo" node="5zncGqweSk_" resolve="idx" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="1z4HGmnUD$s" role="lGtFl">
        <node concept="TUZQ0" id="1z4HGmnUD$v" role="3nqlJM">
          <property role="TUZQ4" value="Logical&lt;string&gt;" />
          <node concept="zr_55" id="1z4HGmnUD$x" role="zr_5Q">
            <ref role="zr_51" node="5zncGqweP_N" resolve="index" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5zncGqweUr_" role="jymVt" />
    <node concept="2YIFZL" id="5zncGqweU5I" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="3Tm6S6" id="5zncGqweU5J" role="1B3o_S" />
      <node concept="3uibUv" id="5zncGqweU5K" role="3clF45">
        <ref role="3uigEE" node="492bFERos2W" resolve="Names" />
      </node>
      <node concept="3clFbS" id="5zncGqweU1G" role="3clF47">
        <node concept="3cpWs6" id="5zncGqweU3D" role="3cqZAp">
          <node concept="2YIFZM" id="5zncGqweU3E" role="3cqZAk">
            <ref role="37wK5l" to="hano:2tjs8VC2Blb" resolve="getOrPut" />
            <ref role="1Pybhc" to="hano:2tjs8VC0K0m" resolve="Memoizer" />
            <node concept="3VsKOn" id="5zncGqweU3F" role="37wK5m">
              <ref role="3VsUkX" node="492bFERos2W" resolve="Names" />
            </node>
            <node concept="1bVj0M" id="5zncGqweU3G" role="37wK5m">
              <node concept="3clFbS" id="5zncGqweU3H" role="1bW5cS">
                <node concept="3clFbF" id="5zncGqweU3I" role="3cqZAp">
                  <node concept="2ShNRf" id="5zncGqweU3J" role="3clFbG">
                    <node concept="1pGfFk" id="5zncGqweU3K" role="2ShVmc">
                      <ref role="37wK5l" node="2zhm1Y5WRX6" resolve="Names" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zhm1Y5WRT4" role="jymVt" />
    <node concept="3clFbW" id="2zhm1Y5WRX6" role="jymVt">
      <node concept="3cqZAl" id="2zhm1Y5WRX8" role="3clF45" />
      <node concept="3Tm6S6" id="2zhm1Y5WS0f" role="1B3o_S" />
      <node concept="3clFbS" id="2zhm1Y5WRXa" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2zhm1Y5WSbG" role="jymVt" />
    <node concept="3clFb_" id="2zhm1Y5WSfW" role="jymVt">
      <property role="TrG5h" value="primNextIndex" />
      <node concept="10Oyi0" id="2zhm1Y5WSkW" role="3clF45" />
      <node concept="3Tm6S6" id="2zhm1Y5WSje" role="1B3o_S" />
      <node concept="3clFbS" id="2zhm1Y5WSg0" role="3clF47">
        <node concept="3clFbF" id="2zhm1Y5WSt0" role="3cqZAp">
          <node concept="2$rviw" id="2zhm1Y5WSsY" role="3clFbG">
            <node concept="37vLTw" id="2zhm1Y5WSut" role="2$L3a6">
              <ref role="3cqZAo" node="2zhm1Y5WS4I" resolve="lastIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5zncGqwgg87" role="jymVt" />
    <node concept="3clFb_" id="5zncGqwgf_H" role="jymVt">
      <property role="TrG5h" value="primNextCardinal" />
      <node concept="10Oyi0" id="5zncGqwgf_I" role="3clF45" />
      <node concept="3Tm6S6" id="5zncGqwgf_J" role="1B3o_S" />
      <node concept="3clFbS" id="5zncGqwgf_K" role="3clF47">
        <node concept="3clFbF" id="5zncGqwgf_L" role="3cqZAp">
          <node concept="2$rviw" id="5zncGqwgf_M" role="3clFbG">
            <node concept="37vLTw" id="5zncGqwghL5" role="2$L3a6">
              <ref role="3cqZAo" node="5zncGqwgbfu" resolve="lastCardinal" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="492bFERos3$" role="jymVt" />
    <node concept="3clFb_" id="5zncGqweYMf" role="jymVt">
      <property role="TrG5h" value="toCardinal" />
      <node concept="37vLTG" id="5zncGqwf3BG" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="5zncGqwf49Y" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="5zncGqweZTa" role="3clF45" />
      <node concept="3Tm6S6" id="5zncGqweZn5" role="1B3o_S" />
      <node concept="3clFbS" id="5zncGqweYMj" role="3clF47">
        <node concept="3cpWs8" id="5zncGqwfRgX" role="3cqZAp">
          <node concept="3cpWsn" id="5zncGqwfRgY" role="3cpWs9">
            <property role="TrG5h" value="card" />
            <node concept="10Oyi0" id="5zncGqwfRgN" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="5zncGqwfP9F" role="3cqZAp">
          <node concept="3clFbS" id="5zncGqwfP9H" role="3clFbx">
            <node concept="3clFbF" id="5zncGqwgoVk" role="3cqZAp">
              <node concept="37vLTI" id="5zncGqwgoVm" role="3clFbG">
                <node concept="3EllGN" id="5zncGqwfRgZ" role="37vLTx">
                  <node concept="37vLTw" id="5zncGqwfRh0" role="3ElVtu">
                    <ref role="3cqZAo" node="5zncGqwf3BG" resolve="index" />
                  </node>
                  <node concept="37vLTw" id="5zncGqwfRh1" role="3ElQJh">
                    <ref role="3cqZAo" node="5zncGqwfHcP" resolve="index2cardinal" />
                  </node>
                </node>
                <node concept="37vLTw" id="5zncGqwgoVq" role="37vLTJ">
                  <ref role="3cqZAo" node="5zncGqwfRgY" resolve="card" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5zncGqwgqv8" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="5zncGqwfP$b" role="3clFbw">
            <node concept="37vLTw" id="5zncGqwfPaz" role="2Oq$k0">
              <ref role="3cqZAo" node="5zncGqwfHcP" resolve="index2cardinal" />
            </node>
            <node concept="2Nt0df" id="5zncGqwgaBr" role="2OqNvi">
              <node concept="37vLTw" id="5zncGqwgaEJ" role="38cxEo">
                <ref role="3cqZAo" node="5zncGqwf3BG" resolve="index" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5zncGqwgpYo" role="9aQIa">
            <node concept="3clFbS" id="5zncGqwgpYp" role="9aQI4">
              <node concept="3clFbF" id="5zncGqwgr0o" role="3cqZAp">
                <node concept="37vLTI" id="5zncGqwgrEQ" role="3clFbG">
                  <node concept="1rXfSq" id="5zncGqwgrOd" role="37vLTx">
                    <ref role="37wK5l" node="5zncGqwgf_H" resolve="primNextCardinal" />
                  </node>
                  <node concept="37vLTw" id="5zncGqwgr0n" role="37vLTJ">
                    <ref role="3cqZAo" node="5zncGqwfRgY" resolve="card" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5zncGqwgkUA" role="3cqZAp">
                <node concept="37vLTI" id="5zncGqwgnLE" role="3clFbG">
                  <node concept="37vLTw" id="5zncGqwgsNL" role="37vLTx">
                    <ref role="3cqZAo" node="5zncGqwfRgY" resolve="card" />
                  </node>
                  <node concept="3EllGN" id="5zncGqwglLU" role="37vLTJ">
                    <node concept="37vLTw" id="5zncGqwgmag" role="3ElVtu">
                      <ref role="3cqZAo" node="5zncGqwf3BG" resolve="index" />
                    </node>
                    <node concept="37vLTw" id="5zncGqwgkU$" role="3ElQJh">
                      <ref role="3cqZAo" node="5zncGqwfHcP" resolve="index2cardinal" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5zncGqwgopW" role="3cqZAp">
          <node concept="3K4zz7" id="5zncGqwgopX" role="3cqZAk">
            <node concept="3cpWs3" id="5zncGqwgopY" role="3K4E3e">
              <node concept="Xl_RD" id="5zncGqwgopZ" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="5zncGqwgt0J" role="3uHU7w">
                <ref role="3cqZAo" node="5zncGqwfRgY" resolve="card" />
              </node>
            </node>
            <node concept="Xl_RD" id="5zncGqwgoq1" role="3K4GZi" />
            <node concept="3eOSWO" id="5zncGqwgoq2" role="3K4Cdx">
              <node concept="37vLTw" id="5zncGqwgsV5" role="3uHU7B">
                <ref role="3cqZAo" node="5zncGqwfRgY" resolve="card" />
              </node>
              <node concept="3cmrfG" id="5zncGqwgoq4" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5zncGqweYdJ" role="jymVt" />
    <node concept="312cEg" id="2zhm1Y5WS4I" role="jymVt">
      <property role="TrG5h" value="lastIndex" />
      <node concept="3Tm6S6" id="2zhm1Y5WS4J" role="1B3o_S" />
      <node concept="10Oyi0" id="2zhm1Y5WS7H" role="1tU5fm" />
      <node concept="3cmrfG" id="2zhm1Y5WS8C" role="33vP2m">
        <property role="3cmrfH" value="-1" />
      </node>
    </node>
    <node concept="312cEg" id="5zncGqwgbfu" role="jymVt">
      <property role="TrG5h" value="lastCardinal" />
      <node concept="3Tm6S6" id="5zncGqwgbfv" role="1B3o_S" />
      <node concept="10Oyi0" id="5zncGqwgbLd" role="1tU5fm" />
      <node concept="3cmrfG" id="5zncGqwgbMh" role="33vP2m">
        <property role="3cmrfH" value="-1" />
      </node>
    </node>
    <node concept="312cEg" id="5zncGqwfHcP" role="jymVt">
      <property role="TrG5h" value="index2cardinal" />
      <node concept="3Tm6S6" id="5zncGqwfHcQ" role="1B3o_S" />
      <node concept="3rvAFt" id="5zncGqwfJ7S" role="1tU5fm">
        <node concept="10Oyi0" id="5zncGqwfJ8e" role="3rvQeY" />
        <node concept="10Oyi0" id="5zncGqwfJ8u" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="5zncGqwfJb6" role="33vP2m">
        <node concept="3rGOSV" id="5zncGqwfJaH" role="2ShVmc">
          <node concept="10Oyi0" id="5zncGqwfJaI" role="3rHrn6" />
          <node concept="10Oyi0" id="5zncGqwfJaJ" role="3rHtpV" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5zncGqwfOGf" role="jymVt" />
    <node concept="3Tm1VV" id="492bFERos2X" role="1B3o_S" />
  </node>
  <node concept="AVZre" id="4dPZ2m2i46N">
    <property role="TrG5h" value="recover" />
    <property role="3J8TDj" value="Stage2" />
    <node concept="AVZhu" id="4dPZ2m2jAOh" role="3ArX_J">
      <property role="TrG5h" value="recover_all" />
      <node concept="3Aq9E8" id="4dPZ2m2jAYr" role="3otmyu">
        <node concept="3I6sU6" id="4dPZ2m2jAYt" role="3Ip0Jz">
          <node concept="3I6s7M" id="4dPZ2m2jAYv" role="3I6sU7">
            <node concept="3Aqt3T" id="4dPZ2m2jAYz" role="3I6s78">
              <ref role="3AqCNq" node="4dPZ2m2jAgt" resolve="recoverAll" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="4dPZ2m2jB8S" role="3ArX_J">
      <property role="TrG5h" value="expr_typeNode" />
      <node concept="3Aq9E8" id="4dPZ2m2jBn7" role="3otmyu">
        <node concept="3NuqgR" id="4dPZ2m2jBnp" role="3Nuqhd">
          <node concept="aZer4" id="4dPZ2m2jBnq" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
        </node>
        <node concept="3I6sU6" id="4dPZ2m2jBnd" role="3Ip0Jz">
          <node concept="3I6s7M" id="4dPZ2m2jBnf" role="3I6sU7">
            <node concept="3Aqt3T" id="4dPZ2m2jBnj" role="3I6s78">
              <ref role="3AqCNq" node="4dPZ2m2i60v" resolve="recover" />
              <node concept="a7P8L" id="4dPZ2m2jBnM" role="3AunhB">
                <ref role="a7OzE" node="4dPZ2m2jBnq" resolve="Node" />
              </node>
              <node concept="a7P8L" id="4dPZ2m2jBnS" role="3AunhB">
                <ref role="a7OzE" node="4dPZ2m2jBjz" resolve="Type" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="4dPZ2m2jBoh" role="3I6sU7">
            <node concept="3Aqt3T" id="4dPZ2m2jBor" role="3I6s78">
              <ref role="3AqCNq" node="4dPZ2m2i64a" resolve="typeNode" />
              <node concept="a7P8L" id="4dPZ2m2jBox" role="3AunhB">
                <ref role="a7OzE" node="4dPZ2m2jBnq" resolve="Node" />
              </node>
              <node concept="aYllk" id="4dPZ2m2jBoD" role="3AunhB">
                <node concept="3A2sRY" id="4dPZ2m2jBoN" role="aYrYs">
                  <ref role="3A2yKK" node="4dPZ2m2jBj9" resolve="tpbl" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="4dPZ2m2jBjw" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3NuqgR" id="4dPZ2m2jBjy" role="3Nuqhd">
          <node concept="aZer4" id="4dPZ2m2jBjz" role="3XD1gS">
            <property role="TrG5h" value="Type" />
          </node>
        </node>
        <node concept="3I6sU6" id="4dPZ2m2jBjG" role="3Ip0Jz">
          <node concept="3IrJb3" id="4dPZ2m2jBkh" role="3I6sU7">
            <node concept="3clFbS" id="4dPZ2m2jBki" role="3IrJb0">
              <node concept="3Aqczg" id="4dPZ2m2jBkn" role="3cqZAp">
                <node concept="3Aqt3T" id="4dPZ2m2jBkl" role="3Aqpz8">
                  <ref role="3AqCNq" node="4dPZ2m2jAgt" resolve="recoverAll" />
                </node>
              </node>
              <node concept="3Aqczg" id="4dPZ2m2jBmI" role="3cqZAp">
                <node concept="3XxkQB" id="4dPZ2m2jBmA" role="3Aqpz8">
                  <node concept="aYllk" id="4dPZ2m2jBmC" role="3XxmmS">
                    <node concept="3A2sRY" id="4dPZ2m2jBmU" role="aYrYs">
                      <ref role="3A2yKK" node="4dPZ2m2jBj9" resolve="tpbl" />
                    </node>
                  </node>
                  <node concept="a7P8L" id="4dPZ2m2jBn2" role="3Xxm5W">
                    <ref role="a7OzE" node="4dPZ2m2jBjz" resolve="Type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="4dPZ2m2jBj8" role="20_v8_">
        <ref role="2t_S0q" to="8tt8:3TFdEPZf9SZ" resolve="Typeable" />
        <node concept="3A20r5" id="4dPZ2m2jBj9" role="2t_VXX">
          <property role="TrG5h" value="tpbl" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="3g9UT2j9OcI" role="3ArX_J">
      <property role="TrG5h" value="recover_var" />
      <node concept="3Aq9E8" id="3g9UT2j9OAv" role="3otmyu">
        <node concept="3I6sU6" id="3g9UT2j9OAx" role="3Ip0Jz">
          <node concept="3IrJb3" id="3g9UT2j9OG0" role="3I6sU7">
            <node concept="3clFbS" id="3g9UT2j9OG1" role="3IrJb0">
              <node concept="3Aqczg" id="5zncGqwgy2A" role="3cqZAp">
                <node concept="3wWvb2" id="5zncGqwgy2B" role="3Aqpz8">
                  <node concept="2YIFZM" id="5zncGqwgy2C" role="3wWo3s">
                    <ref role="37wK5l" node="4dPZ2m2jg0d" resolve="assign" />
                    <ref role="1Pybhc" node="4dPZ2m2jfZE" resolve="Util" />
                    <node concept="3A9UF8" id="5zncGqwgy2D" role="37wK5m">
                      <node concept="a7P8L" id="5zncGqwgy2E" role="3A9W3M">
                        <ref role="a7OzE" node="3g9UT2j9O_S" resolve="Node" />
                      </node>
                    </node>
                    <node concept="2c44tf" id="5zncGqwgy2F" role="37wK5m">
                      <node concept="2BbKIm" id="5zncGqwgy2G" role="2c44tc">
                        <property role="2BbKN5" value="name" />
                        <node concept="2EMmih" id="5zncGqwgy2H" role="lGtFl">
                          <property role="P4ACc" value="af858d84-85f2-42f4-a854-0b3c6b5cd482/3749787170939265030/3749787170939266901" />
                          <property role="2qtEX9" value="name" />
                          <property role="3hQQBS" value="VarType" />
                          <node concept="2YIFZM" id="5zncGqwgyJN" role="2c44t1">
                            <ref role="37wK5l" node="5zncGqweOW0" resolve="asName" />
                            <ref role="1Pybhc" node="492bFERos2W" resolve="Names" />
                            <node concept="3A9UF8" id="5zncGqwgyQc" role="37wK5m">
                              <node concept="a7P8L" id="5zncGqwgyQe" role="3A9W3M">
                                <ref role="a7OzE" node="3g9UT2j9OEt" resolve="Name" />
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
      </node>
      <node concept="3Aq9_M" id="3g9UT2j9OAf" role="3oo59u">
        <node concept="3I6sU6" id="3g9UT2j9OAh" role="3Ip0Jz">
          <node concept="3I6s7M" id="3g9UT2j9OAL" role="3I6sU7">
            <node concept="2aLmEc" id="3g9UT2j9OAP" role="3I6s78">
              <node concept="a7P8L" id="3g9UT2j9OAS" role="2aLmnP">
                <ref role="a7OzE" node="3g9UT2j9O_3" resolve="Var" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="3g9UT2j9O_0" role="3orSU4">
        <property role="3ArMco" value="false" />
        <node concept="3NuqgR" id="3g9UT2j9O_2" role="3Nuqhd">
          <node concept="aZer4" id="3g9UT2j9O_S" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="aZer4" id="3g9UT2j9O_3" role="3XD1gS">
            <property role="TrG5h" value="Var" />
          </node>
        </node>
        <node concept="3I6sU6" id="3g9UT2j9O_k" role="3Ip0Jz">
          <node concept="3I6s7M" id="3g9UT2j9O_D" role="3I6sU7">
            <node concept="3Aqt3T" id="3g9UT2j9O_H" role="3I6s78">
              <ref role="3AqCNq" node="4dPZ2m2i60v" resolve="recover" />
              <node concept="a7P8L" id="3g9UT2j9OA9" role="3AunhB">
                <ref role="a7OzE" node="3g9UT2j9O_S" resolve="Node" />
              </node>
              <node concept="a7P8L" id="3g9UT2j9O_N" role="3AunhB">
                <ref role="a7OzE" node="3g9UT2j9O_3" resolve="Var" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="3g9UT2j9SIF" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3NuqgR" id="3g9UT2j9TnT" role="3Nuqhd">
          <node concept="aZer4" id="3g9UT2j9OEt" role="3XD1gS">
            <property role="TrG5h" value="Name" />
          </node>
        </node>
        <node concept="3I6sU6" id="3g9UT2j9Tij" role="3Ip0Jz">
          <node concept="3I6s7M" id="3g9UT2j9OE0" role="3I6sU7">
            <node concept="3Aqt3T" id="3g9UT2j9OEa" role="3I6s78">
              <ref role="3AqCNq" node="RRVBbp6QpB" resolve="varname" />
              <node concept="a7P8L" id="3g9UT2j9OF2" role="3AunhB">
                <ref role="a7OzE" node="3g9UT2j9O_3" resolve="Var" />
              </node>
              <node concept="a7P8L" id="3g9UT2j9OFe" role="3AunhB">
                <ref role="a7OzE" node="3g9UT2j9OEt" resolve="Name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="RRVBbp7g$x" role="3ArX_J">
      <property role="TrG5h" value="recover_var_assign" />
      <node concept="3Aq9_M" id="RRVBbp7h29" role="3oo59u">
        <node concept="3I6sU6" id="RRVBbp7h2a" role="3Ip0Jz">
          <node concept="3I6s7M" id="RRVBbp7h2d" role="3I6sU7">
            <node concept="2aLmEc" id="RRVBbp7h2e" role="3I6s78">
              <node concept="a7P8L" id="RRVBbp7h2f" role="2aLmnP">
                <ref role="a7OzE" node="RRVBbp7gN9" resolve="Var" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="RRVBbp7gMM" role="3orSU4">
        <property role="3ArMco" value="false" />
        <node concept="3NuqgR" id="RRVBbp7gN2" role="3Nuqhd">
          <node concept="aZer4" id="RRVBbp7gN3" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="aZer4" id="RRVBbp7gN9" role="3XD1gS">
            <property role="TrG5h" value="Var" />
          </node>
        </node>
        <node concept="3I6sU6" id="RRVBbp7gMN" role="3Ip0Jz">
          <node concept="3I6s7M" id="RRVBbp7gMY" role="3I6sU7">
            <node concept="3Aqt3T" id="RRVBbp7gMW" role="3I6s78">
              <ref role="3AqCNq" node="4dPZ2m2i60v" resolve="recover" />
              <node concept="a7P8L" id="RRVBbp7gNp" role="3AunhB">
                <ref role="a7OzE" node="RRVBbp7gN3" resolve="Node" />
              </node>
              <node concept="a7P8L" id="RRVBbp7gNx" role="3AunhB">
                <ref role="a7OzE" node="RRVBbp7gN9" resolve="Var" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="RRVBbp7h2l" role="3otmyu">
        <node concept="3NuqgR" id="RRVBbp7hhy" role="3Nuqhd">
          <node concept="aZer4" id="RRVBbp7hhz" role="3XD1gS">
            <property role="TrG5h" value="Name" />
          </node>
        </node>
        <node concept="3I6sU6" id="RRVBbp7h2m" role="3Ip0Jz">
          <node concept="3I6s7M" id="RRVBbp7iET" role="3I6sU7">
            <node concept="3wWvb2" id="RRVBbp7iEU" role="3I6s78">
              <node concept="2YIFZM" id="RRVBbp7iEV" role="3wWo3s">
                <ref role="1Pybhc" node="4dPZ2m2jfZE" resolve="Util" />
                <ref role="37wK5l" node="4dPZ2m2jg0d" resolve="assign" />
                <node concept="3A9UF8" id="RRVBbp7iEW" role="37wK5m">
                  <node concept="a7P8L" id="RRVBbp7iLj" role="3A9W3M">
                    <ref role="a7OzE" node="RRVBbp7hhz" resolve="Name" />
                  </node>
                </node>
                <node concept="2YIFZM" id="RRVBbp7jdm" role="37wK5m">
                  <ref role="37wK5l" node="2zhm1Y5WQUZ" resolve="nextIndex" />
                  <ref role="1Pybhc" node="492bFERos2W" resolve="Names" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="RRVBbp7h2z" role="3I6sU7">
            <node concept="3Aqt3T" id="RRVBbp7h2x" role="3I6s78">
              <ref role="3AqCNq" node="RRVBbp6QpB" resolve="varname" />
              <node concept="a7P8L" id="RRVBbp7h2U" role="3AunhB">
                <ref role="a7OzE" node="RRVBbp7gN9" resolve="Var" />
              </node>
              <node concept="a7P8L" id="RRVBbp7jjB" role="3AunhB">
                <ref role="a7OzE" node="RRVBbp7hhz" resolve="Name" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="RRVBbp7h4x" role="3I6sU7">
            <node concept="3wWvb2" id="RRVBbp7h4v" role="3I6s78">
              <node concept="2YIFZM" id="RRVBbp7h5j" role="3wWo3s">
                <ref role="37wK5l" node="4dPZ2m2jg0d" resolve="assign" />
                <ref role="1Pybhc" node="4dPZ2m2jfZE" resolve="Util" />
                <node concept="3A9UF8" id="RRVBbp7h6p" role="37wK5m">
                  <node concept="a7P8L" id="RRVBbp7h6K" role="3A9W3M">
                    <ref role="a7OzE" node="RRVBbp7gN3" resolve="Node" />
                  </node>
                </node>
                <node concept="2c44tf" id="RRVBbp7hdv" role="37wK5m">
                  <node concept="2BbKIm" id="RRVBbp7hdw" role="2c44tc">
                    <property role="2BbKN5" value="name" />
                    <node concept="2EMmih" id="RRVBbp7hdx" role="lGtFl">
                      <property role="P4ACc" value="af858d84-85f2-42f4-a854-0b3c6b5cd482/3749787170939265030/3749787170939266901" />
                      <property role="2qtEX9" value="name" />
                      <property role="3hQQBS" value="VarType" />
                      <node concept="2YIFZM" id="RRVBbp7hdy" role="2c44t1">
                        <ref role="37wK5l" node="5zncGqweOW0" resolve="asName" />
                        <ref role="1Pybhc" node="492bFERos2W" resolve="Names" />
                        <node concept="3A9UF8" id="RRVBbp7hdz" role="37wK5m">
                          <node concept="a7P8L" id="RRVBbp7hd$" role="3A9W3M">
                            <ref role="a7OzE" node="RRVBbp7hhz" resolve="Name" />
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
    <node concept="AVZhu" id="4dPZ2m2i48s" role="3ArX_J">
      <property role="TrG5h" value="recover_bool" />
      <node concept="3Aq93q" id="4dPZ2m2i60h" role="3orSU4">
        <property role="3ArMco" value="false" />
        <node concept="3NuqgR" id="4dPZ2m2i60V" role="3Nuqhd">
          <node concept="aZer4" id="4dPZ2m2i60W" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="aZer4" id="4dPZ2m2i61g" role="3XD1gS">
            <property role="TrG5h" value="Type" />
          </node>
        </node>
        <node concept="3I6sU6" id="4dPZ2m2i60p" role="3Ip0Jz">
          <node concept="3I6s7M" id="4dPZ2m2i60r" role="3I6sU7">
            <node concept="3Aqt3T" id="4dPZ2m2i60I" role="3I6s78">
              <ref role="3AqCNq" node="4dPZ2m2i60v" resolve="recover" />
              <node concept="a7P8L" id="4dPZ2m2i61s" role="3AunhB">
                <ref role="a7OzE" node="4dPZ2m2i60W" resolve="Node" />
              </node>
              <node concept="1uarlV" id="4dPZ2m2i61C" role="3AunhB">
                <node concept="a7P8L" id="4dPZ2m2i61y" role="1uarlU">
                  <ref role="a7OzE" node="4dPZ2m2i61g" resolve="Type" />
                </node>
                <node concept="1Q4cc8" id="4dPZ2m2i61S" role="1uarlW">
                  <ref role="1nfQt" node="4dPZ2m2hTAN" resolve="Bool" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="4dPZ2m2i648" role="3otmyu">
        <node concept="3I6sU6" id="4dPZ2m2i64s" role="3Ip0Jz">
          <node concept="3IrJb3" id="4dPZ2m2i64u" role="3I6sU7">
            <node concept="3clFbS" id="4dPZ2m2i64v" role="3IrJb0">
              <node concept="3Aqczg" id="4dPZ2m2i64Y" role="3cqZAp">
                <node concept="3GeI9q" id="4dPZ2m2i64S" role="3Aqpz8">
                  <node concept="a7P8L" id="4dPZ2m2i658" role="3GeI8F">
                    <ref role="a7OzE" node="4dPZ2m2i60W" resolve="Node" />
                  </node>
                  <node concept="aYllk" id="4dPZ2m2i65p" role="3GeI8D">
                    <node concept="2c44tf" id="4dPZ2m2i65y" role="aYrYs">
                      <node concept="3P8Jbz" id="4dPZ2m2i6g7" role="2c44tc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="4dPZ2m2i6gJ" role="3ArX_J">
      <property role="TrG5h" value="recover_fun" />
      <node concept="3Aq93q" id="4dPZ2m2i6h9" role="3orSU4">
        <property role="3ArMco" value="false" />
        <node concept="3NuqgR" id="4dPZ2m2i6hx" role="3Nuqhd">
          <node concept="aZer4" id="4dPZ2m2i6hy" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="aZer4" id="4dPZ2m2i6hI" role="3XD1gS">
            <property role="TrG5h" value="Type" />
          </node>
          <node concept="aZer4" id="4dPZ2m2i6iY" role="3XD1gS">
            <property role="TrG5h" value="TypeArg" />
          </node>
          <node concept="aZer4" id="4dPZ2m2i6ji" role="3XD1gS">
            <property role="TrG5h" value="TypeRes" />
          </node>
        </node>
        <node concept="3I6sU6" id="4dPZ2m2i6hh" role="3Ip0Jz">
          <node concept="3I6s7M" id="4dPZ2m2i6hn" role="3I6sU7">
            <node concept="3Aqt3T" id="4dPZ2m2i6hr" role="3I6s78">
              <ref role="3AqCNq" node="4dPZ2m2i60v" resolve="recover" />
              <node concept="a7P8L" id="4dPZ2m2i6hX" role="3AunhB">
                <ref role="a7OzE" node="4dPZ2m2i6hy" resolve="Node" />
              </node>
              <node concept="1uarlV" id="4dPZ2m2i6i9" role="3AunhB">
                <node concept="a7P8L" id="4dPZ2m2i6i3" role="1uarlU">
                  <ref role="a7OzE" node="4dPZ2m2i6hI" resolve="Type" />
                </node>
                <node concept="1Q4cc8" id="4dPZ2m2i6ir" role="1uarlW">
                  <ref role="1nfQt" node="4dPZ2m2hWGK" resolve="Fun" />
                  <node concept="1RziaG" id="4dPZ2m2i6iy" role="1Ryyee">
                    <ref role="1RzibV" node="4dPZ2m2hXGZ" resolve="arg" />
                    <node concept="3AP2Rn" id="4dPZ2m2i6iz" role="1RzmR7">
                      <node concept="3clFbS" id="4dPZ2m2i6i$" role="16YjZG">
                        <node concept="3clFbF" id="4dPZ2m2i6jK" role="3cqZAp">
                          <node concept="3A9UF8" id="4dPZ2m2i6jH" role="3clFbG">
                            <node concept="a7P8L" id="4dPZ2m2i6jJ" role="3A9W3M">
                              <ref role="a7OzE" node="4dPZ2m2i6iY" resolve="TypeArg" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1RziaG" id="4dPZ2m2i6ng" role="1Ryyee">
                    <ref role="1RzibV" node="4dPZ2m2hXHj" resolve="res" />
                    <node concept="3AP2Rn" id="4dPZ2m2i6nh" role="1RzmR7">
                      <node concept="3clFbS" id="4dPZ2m2i6ni" role="16YjZG">
                        <node concept="3clFbF" id="4dPZ2m2i6nC" role="3cqZAp">
                          <node concept="3A9UF8" id="4dPZ2m2i6n_" role="3clFbG">
                            <node concept="a7P8L" id="4dPZ2m2i6nB" role="3A9W3M">
                              <ref role="a7OzE" node="4dPZ2m2i6ji" resolve="TypeRes" />
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
      <node concept="3Aq9E8" id="4dPZ2m2i6rp" role="3otmyu">
        <node concept="3NuqgR" id="4dPZ2m2i6rR" role="3Nuqhd">
          <node concept="aZer4" id="4dPZ2m2i6rS" role="3XD1gS">
            <property role="TrG5h" value="TypeArgNode" />
          </node>
          <node concept="aZer4" id="4dPZ2m2i6s7" role="3XD1gS">
            <property role="TrG5h" value="TypeResNode" />
          </node>
        </node>
        <node concept="3I6sU6" id="4dPZ2m2i6ru" role="3Ip0Jz">
          <node concept="3IrJb3" id="4dPZ2m2i6rH" role="3I6sU7">
            <node concept="3clFbS" id="4dPZ2m2i6rI" role="3IrJb0">
              <node concept="3Aqczg" id="4dPZ2m2i6rN" role="3cqZAp">
                <node concept="3Aqt3T" id="4dPZ2m2i6rL" role="3Aqpz8">
                  <ref role="3AqCNq" node="4dPZ2m2i60v" resolve="recover" />
                  <node concept="a7P8L" id="4dPZ2m2i6sv" role="3AunhB">
                    <ref role="a7OzE" node="4dPZ2m2i6rS" resolve="TypeArgNode" />
                  </node>
                  <node concept="a7P8L" id="4dPZ2m2i6sB" role="3AunhB">
                    <ref role="a7OzE" node="4dPZ2m2i6iY" resolve="TypeArg" />
                  </node>
                </node>
              </node>
              <node concept="3Aqczg" id="4dPZ2m2i6sH" role="3cqZAp">
                <node concept="3Aqt3T" id="4dPZ2m2i6sI" role="3Aqpz8">
                  <ref role="3AqCNq" node="4dPZ2m2i60v" resolve="recover" />
                  <node concept="a7P8L" id="4dPZ2m2i6t8" role="3AunhB">
                    <ref role="a7OzE" node="4dPZ2m2i6s7" resolve="TypeResNode" />
                  </node>
                  <node concept="a7P8L" id="4dPZ2m2i6u2" role="3AunhB">
                    <ref role="a7OzE" node="4dPZ2m2i6ji" resolve="TypeRes" />
                  </node>
                </node>
              </node>
              <node concept="3Aqczg" id="4dPZ2m2jtMs" role="3cqZAp">
                <node concept="3wWvb2" id="4dPZ2m2jtMq" role="3Aqpz8">
                  <node concept="2YIFZM" id="4dPZ2m2jtVp" role="3wWo3s">
                    <ref role="37wK5l" node="4dPZ2m2jg0d" resolve="assign" />
                    <ref role="1Pybhc" node="4dPZ2m2jfZE" resolve="Util" />
                    <node concept="3A9UF8" id="4dPZ2m2jtVq" role="37wK5m">
                      <node concept="a7P8L" id="4dPZ2m2jtVr" role="3A9W3M">
                        <ref role="a7OzE" node="4dPZ2m2i6hy" resolve="Node" />
                      </node>
                    </node>
                    <node concept="2c44tf" id="4dPZ2m2jtVs" role="37wK5m">
                      <node concept="1jz_ff" id="4dPZ2m2jtVt" role="2c44tc">
                        <node concept="3P8Jbz" id="4dPZ2m2jtVu" role="1jz_fp">
                          <node concept="2c44te" id="4dPZ2m2jtVv" role="lGtFl">
                            <node concept="2OqwBi" id="3g9UT2j9kqx" role="2c44t1">
                              <node concept="2OqwBi" id="4dPZ2m2jtVw" role="2Oq$k0">
                                <node concept="2OqwBi" id="4dPZ2m2jtVx" role="2Oq$k0">
                                  <node concept="1eOMI4" id="4dPZ2m2jtVy" role="2Oq$k0">
                                    <node concept="10QFUN" id="4dPZ2m2jtVz" role="1eOMHV">
                                      <node concept="3uibUv" id="4dPZ2m2jtV$" role="10QFUM">
                                        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                                        <node concept="3Tqbb2" id="4dPZ2m2jtV_" role="11_B2D" />
                                      </node>
                                      <node concept="3A9UF8" id="4dPZ2m2jtVA" role="10QFUP">
                                        <node concept="a7P8L" id="4dPZ2m2jtVB" role="3A9W3M">
                                          <ref role="a7OzE" node="4dPZ2m2i6rS" resolve="TypeArgNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4dPZ2m2jtVC" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4dPZ2m2jtVD" role="2OqNvi">
                                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                                </node>
                              </node>
                              <node concept="1$rogu" id="3g9UT2j9ldl" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3P8Jbz" id="4dPZ2m2jtVE" role="1jz_f_">
                          <node concept="2c44te" id="4dPZ2m2jtVF" role="lGtFl">
                            <node concept="2OqwBi" id="3g9UT2j9lp6" role="2c44t1">
                              <node concept="2OqwBi" id="4dPZ2m2jtVG" role="2Oq$k0">
                                <node concept="2OqwBi" id="4dPZ2m2jtVH" role="2Oq$k0">
                                  <node concept="1eOMI4" id="4dPZ2m2jtVI" role="2Oq$k0">
                                    <node concept="10QFUN" id="4dPZ2m2jtVJ" role="1eOMHV">
                                      <node concept="3uibUv" id="4dPZ2m2jtVK" role="10QFUM">
                                        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                                        <node concept="3Tqbb2" id="4dPZ2m2jtVL" role="11_B2D" />
                                      </node>
                                      <node concept="3A9UF8" id="4dPZ2m2jtVM" role="10QFUP">
                                        <node concept="a7P8L" id="4dPZ2m2jtVN" role="3A9W3M">
                                          <ref role="a7OzE" node="4dPZ2m2i6s7" resolve="TypeResNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4dPZ2m2jtVO" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4dPZ2m2jtVP" role="2OqNvi">
                                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                                </node>
                              </node>
                              <node concept="1$rogu" id="3g9UT2j9lBS" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1X3_iC" id="4dPZ2m2jmji" role="lGtFl">
                <property role="3V$3am" value="statement" />
                <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                <node concept="3Aqczg" id="4dPZ2m2i6ve" role="8Wnug">
                  <node concept="3GeI9q" id="4dPZ2m2i6v8" role="3Aqpz8">
                    <node concept="a7P8L" id="4dPZ2m2i6vr" role="3GeI8F">
                      <ref role="a7OzE" node="4dPZ2m2i6hy" resolve="Node" />
                    </node>
                    <node concept="aYllk" id="4dPZ2m2i6vw" role="3GeI8D">
                      <node concept="2c44tf" id="4dPZ2m2i6vD" role="aYrYs">
                        <node concept="1jz_ff" id="4dPZ2m2i6vT" role="2c44tc">
                          <node concept="3P8Jbz" id="4dPZ2m2i6wS" role="1jz_fp">
                            <node concept="2c44te" id="4dPZ2m2i6x1" role="lGtFl">
                              <node concept="3A9UF8" id="4dPZ2m2i6xb" role="2c44t1">
                                <node concept="a7P8L" id="4dPZ2m2i6xd" role="3A9W3M">
                                  <ref role="a7OzE" node="4dPZ2m2i6rS" resolve="TypeArgNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3P8Jbz" id="4dPZ2m2i6yC" role="1jz_f_">
                            <node concept="2c44te" id="4dPZ2m2i6yL" role="lGtFl">
                              <node concept="3A9UF8" id="4dPZ2m2i6yV" role="2c44t1">
                                <node concept="a7P8L" id="4dPZ2m2i6yX" role="3A9W3M">
                                  <ref role="a7OzE" node="4dPZ2m2i6s7" resolve="TypeResNode" />
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
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="RRVBbp7CoG" role="3ArX_J">
      <property role="TrG5h" value="recover_forall" />
      <node concept="3Aq93q" id="RRVBbp7CDQ" role="3orSU4">
        <node concept="3NuqgR" id="RRVBbp7CE0" role="3Nuqhd">
          <node concept="aZer4" id="RRVBbp7CE1" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="aZer4" id="RRVBbp7CEa" role="3XD1gS">
            <property role="TrG5h" value="F" />
          </node>
          <node concept="aZer4" id="RRVBbp7KAm" role="3XD1gS">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3I6sU6" id="RRVBbp7CDR" role="3Ip0Jz">
          <node concept="3I6s7M" id="RRVBbp7CDW" role="3I6sU7">
            <node concept="3Aqt3T" id="RRVBbp7CDU" role="3I6s78">
              <ref role="3AqCNq" node="4dPZ2m2i60v" resolve="recover" />
              <node concept="a7P8L" id="RRVBbp7CEq" role="3AunhB">
                <ref role="a7OzE" node="RRVBbp7CE1" resolve="Node" />
              </node>
              <node concept="1uarlV" id="RRVBbp7CEW" role="3AunhB">
                <node concept="a7P8L" id="RRVBbp7CEQ" role="1uarlU">
                  <ref role="a7OzE" node="RRVBbp7CEa" resolve="F" />
                </node>
                <node concept="1Q4cc8" id="RRVBbp7CFe" role="1uarlW">
                  <ref role="1nfQt" node="12dHl3ZCxN1" resolve="Forall" />
                  <node concept="1RziaG" id="RRVBbp7CF_" role="1Ryyee">
                    <ref role="1RzibV" node="12dHl3ZCEvq" resolve="type" />
                    <node concept="3AP2Rn" id="RRVBbp7CFA" role="1RzmR7">
                      <node concept="3clFbS" id="RRVBbp7CFB" role="16YjZG">
                        <node concept="3clFbF" id="RRVBbp7CFQ" role="3cqZAp">
                          <node concept="3A9UF8" id="RRVBbp7CFO" role="3clFbG">
                            <node concept="a7P8L" id="RRVBbp7KJR" role="3A9W3M">
                              <ref role="a7OzE" node="RRVBbp7KAm" resolve="T" />
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
      <node concept="3Aq9E8" id="RRVBbp7DfK" role="3otmyu">
        <node concept="3NuqgR" id="RRVBbp7DN2" role="3Nuqhd">
          <node concept="aZer4" id="RRVBbp7DN3" role="3XD1gS">
            <property role="TrG5h" value="TNode" />
          </node>
        </node>
        <node concept="3I6sU6" id="RRVBbp7DfL" role="3Ip0Jz">
          <node concept="3I6s7M" id="RRVBbp7DMQ" role="3I6sU7">
            <node concept="3Aqt3T" id="RRVBbp7DMW" role="3I6s78">
              <ref role="3AqCNq" node="4dPZ2m2i60v" resolve="recover" />
              <node concept="a7P8L" id="RRVBbp7DNi" role="3AunhB">
                <ref role="a7OzE" node="RRVBbp7DN3" resolve="TNode" />
              </node>
              <node concept="a7P8L" id="RRVBbp7KL3" role="3AunhB">
                <ref role="a7OzE" node="RRVBbp7KAm" resolve="T" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="RRVBbp7EmI" role="3I6sU7">
            <node concept="3wWvb2" id="RRVBbp7EmG" role="3I6s78">
              <node concept="2YIFZM" id="RRVBbp7Eng" role="3wWo3s">
                <ref role="37wK5l" node="4dPZ2m2jg0d" resolve="assign" />
                <ref role="1Pybhc" node="4dPZ2m2jfZE" resolve="Util" />
                <node concept="3A9UF8" id="RRVBbp7EuA" role="37wK5m">
                  <node concept="a7P8L" id="RRVBbp7EvK" role="3A9W3M">
                    <ref role="a7OzE" node="RRVBbp7CE1" resolve="Node" />
                  </node>
                </node>
                <node concept="2c44tf" id="RRVBbp7EFJ" role="37wK5m">
                  <node concept="3JbUGG" id="RRVBbp7EIC" role="2c44tc">
                    <node concept="1jz_8w" id="RRVBbp7ELB" role="3JbKvY">
                      <node concept="2c44te" id="RRVBbp7EOy" role="lGtFl">
                        <node concept="2OqwBi" id="RRVBbp7EWr" role="2c44t1">
                          <node concept="2OqwBi" id="RRVBbp7EWs" role="2Oq$k0">
                            <node concept="2OqwBi" id="RRVBbp7EWt" role="2Oq$k0">
                              <node concept="1eOMI4" id="RRVBbp7EWu" role="2Oq$k0">
                                <node concept="10QFUN" id="RRVBbp7EWv" role="1eOMHV">
                                  <node concept="3uibUv" id="RRVBbp7EWw" role="10QFUM">
                                    <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                                    <node concept="3Tqbb2" id="RRVBbp7EWx" role="11_B2D" />
                                  </node>
                                  <node concept="3A9UF8" id="RRVBbp7EWy" role="10QFUP">
                                    <node concept="a7P8L" id="RRVBbp7Fkb" role="3A9W3M">
                                      <ref role="a7OzE" node="RRVBbp7DN3" resolve="TNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="RRVBbp7EW$" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                              </node>
                            </node>
                            <node concept="liA8E" id="RRVBbp7EW_" role="2OqNvi">
                              <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                            </node>
                          </node>
                          <node concept="1$rogu" id="RRVBbp7EWA" role="2OqNvi" />
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
  <node concept="312cEu" id="4dPZ2m2jfZE">
    <property role="TrG5h" value="Util" />
    <node concept="2tJIrI" id="RRVBbp7hN5" role="jymVt" />
    <node concept="2YIFZL" id="4dPZ2m2jg0d" role="jymVt">
      <property role="TrG5h" value="assign" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="4dPZ2m2jgzY" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="4dPZ2m2jxZ3" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        </node>
      </node>
      <node concept="37vLTG" id="4dPZ2m2jgQf" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="RRVBbp7ikl" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="4dPZ2m2jg0e" role="3clF47">
        <node concept="3cpWs8" id="4dPZ2m2jgbf" role="3cqZAp">
          <node concept="3cpWsn" id="4dPZ2m2jgbe" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="sessionSolver" />
            <node concept="3uibUv" id="4dPZ2m2jgbg" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
            </node>
            <node concept="2OqwBi" id="4dPZ2m2jgbh" role="33vP2m">
              <node concept="2YIFZM" id="4dPZ2m2jgb_" role="2Oq$k0">
                <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
              </node>
              <node concept="liA8E" id="4dPZ2m2jgbj" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dPZ2m2jgbk" role="3cqZAp">
          <node concept="2OqwBi" id="4dPZ2m2jgbD" role="3clFbG">
            <node concept="37vLTw" id="4dPZ2m2jgbC" role="2Oq$k0">
              <ref role="3cqZAo" node="4dPZ2m2jgbe" resolve="sessionSolver" />
            </node>
            <node concept="liA8E" id="4dPZ2m2jgbE" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
              <node concept="2OqwBi" id="4dPZ2m2jgbm" role="37wK5m">
                <node concept="2OqwBi" id="4dPZ2m2jgbn" role="2Oq$k0">
                  <node concept="2ShNRf" id="4dPZ2m2jgbF" role="2Oq$k0">
                    <node concept="1pGfFk" id="4dPZ2m2jgbT" role="2ShVmc">
                      <ref role="37wK5l" to="nz6g:4sSe4$oM2B4" resolve="PredicateBuilder" />
                      <node concept="10M0yZ" id="4dPZ2m2jgeW" role="37wK5m">
                        <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                        <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4dPZ2m2jgbq" role="2OqNvi">
                    <ref role="37wK5l" to="nz6g:4sSe4$oM2Bb" resolve="withArguments" />
                    <node concept="37vLTw" id="4dPZ2m2jgbr" role="37wK5m">
                      <ref role="3cqZAo" node="4dPZ2m2jgzY" resolve="logical" />
                    </node>
                    <node concept="37vLTw" id="4dPZ2m2jgbs" role="37wK5m">
                      <ref role="3cqZAo" node="4dPZ2m2jgQf" resolve="value" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4dPZ2m2jgbt" role="2OqNvi">
                  <ref role="37wK5l" to="nz6g:4sSe4$oM2Bs" resolve="toPredicate" />
                </node>
              </node>
              <node concept="37vLTw" id="WBEjvSTobq" role="37wK5m">
                <ref role="3cqZAo" node="WBEjvSTobm" resolve="NO_CONTEXT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dPZ2m2jizH" role="3cqZAp">
          <node concept="3clFbT" id="4dPZ2m2jizG" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4dPZ2m2jg0p" role="1B3o_S" />
      <node concept="10P_77" id="4dPZ2m2jg0q" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4dPZ2m2jg03" role="jymVt" />
    <node concept="2tJIrI" id="WBEjvSTmSt" role="jymVt" />
    <node concept="2YIFZL" id="WBEjvSTnJK" role="jymVt">
      <property role="TrG5h" value="formatError" />
      <node concept="10P_77" id="WBEjvSTnQY" role="3clF45" />
      <node concept="3Tm1VV" id="WBEjvSTnJN" role="1B3o_S" />
      <node concept="3clFbS" id="WBEjvSTnJO" role="3clF47">
        <node concept="3cpWs8" id="7Y$xuoibU6j" role="3cqZAp">
          <node concept="3cpWsn" id="7Y$xuoibU6k" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="3uibUv" id="7Y$xuoibU5T" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="37vLTw" id="7Y$xuoibVyA" role="33vP2m">
              <ref role="3cqZAo" node="7Y$xuoibAUz" resolve="format" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Y$xuoibHZV" role="3cqZAp">
          <node concept="3clFbS" id="7Y$xuoibHZX" role="3clFbx">
            <node concept="3cpWs8" id="7Y$xuoibFso" role="3cqZAp">
              <node concept="3cpWsn" id="7Y$xuoibFsp" role="3cpWs9">
                <property role="TrG5h" value="args" />
                <node concept="10Q1$e" id="7Y$xuoibFsg" role="1tU5fm">
                  <node concept="17QB3L" id="7Y$xuoibFsj" role="10Q1$1" />
                </node>
                <node concept="2ShNRf" id="7Y$xuoibFsq" role="33vP2m">
                  <node concept="3$_iS1" id="7Y$xuoibFsr" role="2ShVmc">
                    <node concept="3$GHV9" id="7Y$xuoibFss" role="3$GQph">
                      <node concept="2OqwBi" id="7Y$xuoibFTn" role="3$I4v7">
                        <node concept="37vLTw" id="7Y$xuoibFJE" role="2Oq$k0">
                          <ref role="3cqZAo" node="WBEjvSTnXa" resolve="origins" />
                        </node>
                        <node concept="1Rwk04" id="7Y$xuoibGIX" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="17QB3L" id="7Y$xuoibFst" role="3$_nBY" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="7Y$xuoibK_J" role="3cqZAp">
              <node concept="3clFbS" id="7Y$xuoibK_L" role="2LFqv$">
                <node concept="3cpWs8" id="7Y$xuoic1QF" role="3cqZAp">
                  <node concept="3cpWsn" id="7Y$xuoic1QG" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="3uibUv" id="7Y$xuoic1Qj" role="1tU5fm">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                    </node>
                    <node concept="2OqwBi" id="7Y$xuoic1QH" role="33vP2m">
                      <node concept="2OqwBi" id="7Y$xuoic1QI" role="2Oq$k0">
                        <node concept="1eOMI4" id="1z4HGmnUKko" role="2Oq$k0">
                          <node concept="10QFUN" id="1z4HGmnUKkl" role="1eOMHV">
                            <node concept="3uibUv" id="1z4HGmnUKp4" role="10QFUM">
                              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                              <node concept="3uibUv" id="1z4HGmnUKwE" role="11_B2D">
                                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                              </node>
                            </node>
                            <node concept="AH0OO" id="1z4HGmnUKkq" role="10QFUP">
                              <node concept="37vLTw" id="1z4HGmnUKkr" role="AHEQo">
                                <ref role="3cqZAo" node="7Y$xuoibK_M" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="1z4HGmnUKks" role="AHHXb">
                                <ref role="3cqZAo" node="WBEjvSTnXa" resolve="origins" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7Y$xuoic1QM" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7Y$xuoic1QN" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Y$xuoibNL9" role="3cqZAp">
                  <node concept="37vLTI" id="7Y$xuoibOwe" role="3clFbG">
                    <node concept="AH0OO" id="7Y$xuoibNSB" role="37vLTJ">
                      <node concept="37vLTw" id="7Y$xuoibNXX" role="AHEQo">
                        <ref role="3cqZAo" node="7Y$xuoibK_M" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="7Y$xuoibNL7" role="AHHXb">
                        <ref role="3cqZAo" node="7Y$xuoibFsp" resolve="args" />
                      </node>
                    </node>
                    <node concept="3K4zz7" id="7Y$xuoic2$4" role="37vLTx">
                      <node concept="2OqwBi" id="7Y$xuoic2P6" role="3K4E3e">
                        <node concept="37vLTw" id="7Y$xuoic2_I" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Y$xuoic1QG" resolve="value" />
                        </node>
                        <node concept="liA8E" id="7Y$xuoic3uu" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                        </node>
                      </node>
                      <node concept="3y3z36" id="7Y$xuoic2qG" role="3K4Cdx">
                        <node concept="10Nm6u" id="7Y$xuoic2vw" role="3uHU7w" />
                        <node concept="37vLTw" id="7Y$xuoic28d" role="3uHU7B">
                          <ref role="3cqZAo" node="7Y$xuoic1QG" resolve="value" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Y$xuoic3TG" role="3K4GZi">
                        <node concept="2OqwBi" id="7Y$xuoic3$X" role="2Oq$k0">
                          <node concept="AH0OO" id="7Y$xuoic3$Y" role="2Oq$k0">
                            <node concept="37vLTw" id="7Y$xuoic3$Z" role="AHEQo">
                              <ref role="3cqZAo" node="7Y$xuoibK_M" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="7Y$xuoic3_0" role="AHHXb">
                              <ref role="3cqZAo" node="WBEjvSTnXa" resolve="origins" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7Y$xuoic3_1" role="2OqNvi">
                            <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7Y$xuoic4rP" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7Y$xuoibQyn" role="3cqZAp" />
              </node>
              <node concept="3cpWsn" id="7Y$xuoibK_M" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="7Y$xuoibKAy" role="1tU5fm" />
                <node concept="3cmrfG" id="7Y$xuoibKCh" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="7Y$xuoibLrU" role="1Dwp0S">
                <node concept="2OqwBi" id="7Y$xuoibLX3" role="3uHU7w">
                  <node concept="37vLTw" id="7Y$xuoibLtm" role="2Oq$k0">
                    <ref role="3cqZAo" node="WBEjvSTnXa" resolve="origins" />
                  </node>
                  <node concept="1Rwk04" id="7Y$xuoibMMg" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="7Y$xuoibKCG" role="3uHU7B">
                  <ref role="3cqZAo" node="7Y$xuoibK_M" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="7Y$xuoibNCX" role="1Dwrff">
                <node concept="37vLTw" id="7Y$xuoibNCZ" role="2$L3a6">
                  <ref role="3cqZAo" node="7Y$xuoibK_M" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Y$xuoibUgs" role="3cqZAp">
              <node concept="37vLTI" id="7Y$xuoibUgu" role="3clFbG">
                <node concept="2YIFZM" id="7Y$xuoibU6l" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="37vLTw" id="7Y$xuoibU6m" role="37wK5m">
                    <ref role="3cqZAo" node="7Y$xuoibAUz" resolve="format" />
                  </node>
                  <node concept="37vLTw" id="7Y$xuoibU6n" role="37wK5m">
                    <ref role="3cqZAo" node="7Y$xuoibFsp" resolve="args" />
                  </node>
                </node>
                <node concept="37vLTw" id="7Y$xuoibUgy" role="37vLTJ">
                  <ref role="3cqZAo" node="7Y$xuoibU6k" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7Y$xuoibJMR" role="3clFbw">
            <node concept="10Nm6u" id="7Y$xuoibK2E" role="3uHU7w" />
            <node concept="37vLTw" id="7Y$xuoibIgD" role="3uHU7B">
              <ref role="3cqZAo" node="WBEjvSTnXa" resolve="origins" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Y$xuoibs6R" role="3cqZAp" />
        <node concept="3cpWs8" id="WBEjvSToJ$" role="3cqZAp">
          <node concept="3cpWsn" id="WBEjvSToJ_" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="sessionSolver" />
            <node concept="3uibUv" id="WBEjvSToJA" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
            </node>
            <node concept="2OqwBi" id="WBEjvSToJB" role="33vP2m">
              <node concept="2YIFZM" id="WBEjvSToJC" role="2Oq$k0">
                <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
              </node>
              <node concept="liA8E" id="WBEjvSToJD" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="WBEjvSToJE" role="3cqZAp">
          <node concept="2OqwBi" id="WBEjvSToJF" role="3clFbG">
            <node concept="37vLTw" id="WBEjvSToJG" role="2Oq$k0">
              <ref role="3cqZAo" node="WBEjvSToJ_" resolve="sessionSolver" />
            </node>
            <node concept="liA8E" id="WBEjvSToJH" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
              <node concept="2OqwBi" id="WBEjvSToJI" role="37wK5m">
                <node concept="2OqwBi" id="WBEjvSToJJ" role="2Oq$k0">
                  <node concept="2ShNRf" id="WBEjvSToJK" role="2Oq$k0">
                    <node concept="1pGfFk" id="WBEjvSToJL" role="2ShVmc">
                      <ref role="37wK5l" to="nz6g:4sSe4$oM2B4" resolve="PredicateBuilder" />
                      <node concept="10M0yZ" id="WBEjvSToJM" role="37wK5m">
                        <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                        <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="WBEjvSToJN" role="2OqNvi">
                    <ref role="37wK5l" to="nz6g:4sSe4$oM2Bb" resolve="withArguments" />
                    <node concept="37vLTw" id="WBEjvSToJO" role="37wK5m">
                      <ref role="3cqZAo" node="WBEjvSTnS2" resolve="logical" />
                    </node>
                    <node concept="37vLTw" id="7Y$xuoibW6k" role="37wK5m">
                      <ref role="3cqZAo" node="7Y$xuoibU6k" resolve="text" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="WBEjvSToJQ" role="2OqNvi">
                  <ref role="37wK5l" to="nz6g:4sSe4$oM2Bs" resolve="toPredicate" />
                </node>
              </node>
              <node concept="37vLTw" id="WBEjvSToJX" role="37wK5m">
                <ref role="3cqZAo" node="WBEjvSTobm" resolve="NO_CONTEXT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Lj6UsgF7O4" role="3cqZAp" />
        <node concept="3clFbF" id="WBEjvSToJZ" role="3cqZAp">
          <node concept="3clFbT" id="WBEjvSToK0" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="WBEjvSTnS2" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="WBEjvSTnS1" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        </node>
      </node>
      <node concept="37vLTG" id="7Y$xuoibAUz" role="3clF46">
        <property role="TrG5h" value="format" />
        <node concept="17QB3L" id="7Y$xuoibBJv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="WBEjvSTnXa" role="3clF46">
        <property role="TrG5h" value="origins" />
        <node concept="8X2XB" id="7Y$xuoibB7Q" role="1tU5fm">
          <node concept="3uibUv" id="WBEjvSTnXH" role="8Xvag">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="1z4HGmnUJUj" role="lGtFl">
        <node concept="TUZQ0" id="1z4HGmnUJUm" role="3nqlJM">
          <property role="TUZQ4" value="Logical&lt;string&gt;" />
          <node concept="zr_55" id="1z4HGmnUJUo" role="zr_5Q">
            <ref role="zr_51" node="WBEjvSTnS2" resolve="logical" />
          </node>
        </node>
        <node concept="TUZQ0" id="1z4HGmnUJUp" role="3nqlJM">
          <property role="TUZQ4" value="string" />
          <node concept="zr_55" id="1z4HGmnUJUr" role="zr_5Q">
            <ref role="zr_51" node="7Y$xuoibAUz" resolve="format" />
          </node>
        </node>
        <node concept="TUZQ0" id="1z4HGmnUJUs" role="3nqlJM">
          <property role="TUZQ4" value="Logical&lt;TreeForm&gt;..." />
          <node concept="zr_55" id="1z4HGmnUJUu" role="zr_5Q">
            <ref role="zr_51" node="WBEjvSTnXa" resolve="origins" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="WBEjvSTmU4" role="jymVt" />
    <node concept="2YIFZL" id="12dHl3ZD0e_" role="jymVt">
      <property role="TrG5h" value="copy" />
      <node concept="37vLTG" id="12dHl3ZD0sZ" role="3clF46">
        <property role="TrG5h" value="to" />
        <node concept="3uibUv" id="12dHl3ZD0z1" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        </node>
      </node>
      <node concept="37vLTG" id="12dHl3ZD0tG" role="3clF46">
        <property role="TrG5h" value="from" />
        <node concept="3uibUv" id="12dHl3ZD0Ck" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        </node>
      </node>
      <node concept="37vLTG" id="3Lj6UsgEHxB" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="3Lj6UsgEIkw" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="10P_77" id="3Lj6UsgEMCh" role="3clF45" />
      <node concept="3Tm1VV" id="12dHl3ZD0eC" role="1B3o_S" />
      <node concept="3clFbS" id="12dHl3ZD0eD" role="3clF47">
        <node concept="3cpWs8" id="12dHl3ZD1Rf" role="3cqZAp">
          <node concept="3cpWsn" id="12dHl3ZD1Rg" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="12dHl3ZD1R6" role="1tU5fm">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
            </node>
            <node concept="2OqwBi" id="12dHl3ZD1Rh" role="33vP2m">
              <node concept="2OqwBi" id="12dHl3ZD1Ri" role="2Oq$k0">
                <node concept="1eOMI4" id="1z4HGmnUzp7" role="2Oq$k0">
                  <node concept="10QFUN" id="1z4HGmnUzp4" role="1eOMHV">
                    <node concept="3uibUv" id="1z4HGmnUzyH" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                      <node concept="3uibUv" id="1z4HGmnUzJD" role="11_B2D">
                        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1z4HGmnUzp9" role="10QFUP">
                      <ref role="3cqZAo" node="12dHl3ZD0tG" resolve="from" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="12dHl3ZD1Rk" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="12dHl3ZD1Rl" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="10BVPEVKE2J" role="3cqZAp">
          <node concept="3cpWsn" id="10BVPEVKE2K" role="3cpWs9">
            <property role="TrG5h" value="delegate" />
            <node concept="3uibUv" id="10BVPEVKE2I" role="1tU5fm">
              <ref role="3uigEE" node="3Lj6UsgEUPi" resolve="Util.CopyDelegate" />
            </node>
            <node concept="2ShNRf" id="10BVPEVKE2L" role="33vP2m">
              <node concept="1pGfFk" id="10BVPEVKE2M" role="2ShVmc">
                <ref role="37wK5l" node="3Lj6UsgEUPp" resolve="Util.CopyDelegate" />
                <node concept="37vLTw" id="10BVPEVKE2N" role="37wK5m">
                  <ref role="3cqZAo" node="3Lj6UsgEHxB" resolve="logicalContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Lj6UsgF6nQ" role="3cqZAp">
          <node concept="3cpWsn" id="3Lj6UsgF6nR" role="3cpWs9">
            <property role="TrG5h" value="mapped" />
            <node concept="3uibUv" id="3Lj6UsgF6nH" role="1tU5fm">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
            </node>
            <node concept="2OqwBi" id="3Lj6UsgF6nS" role="33vP2m">
              <node concept="2YIFZM" id="3Lj6UsgF6nT" role="2Oq$k0">
                <ref role="37wK5l" to="6exd:5s497VqteR6" resolve="mapper" />
                <ref role="1Pybhc" to="6exd:3OPtF02T8yx" resolve="Mappers" />
                <node concept="37vLTw" id="10BVPEVKE2O" role="37wK5m">
                  <ref role="3cqZAo" node="10BVPEVKE2K" resolve="delegate" />
                </node>
              </node>
              <node concept="liA8E" id="3Lj6UsgF6nX" role="2OqNvi">
                <ref role="37wK5l" to="6exd:3OPtF02TgQt" resolve="map" />
                <node concept="37vLTw" id="3Lj6UsgF6nY" role="37wK5m">
                  <ref role="3cqZAo" node="12dHl3ZD1Rg" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12dHl3ZD0HE" role="3cqZAp" />
        <node concept="3cpWs8" id="3Lj6UsgF6Ms" role="3cqZAp">
          <node concept="3cpWsn" id="3Lj6UsgF6Mt" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="sessionSolver" />
            <node concept="3uibUv" id="3Lj6UsgF6Mu" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
            </node>
            <node concept="2OqwBi" id="3Lj6UsgF6Mv" role="33vP2m">
              <node concept="2YIFZM" id="3Lj6UsgF6Mw" role="2Oq$k0">
                <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
              </node>
              <node concept="liA8E" id="3Lj6UsgF6Mx" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Lj6UsgF6My" role="3cqZAp">
          <node concept="2OqwBi" id="3Lj6UsgF6Mz" role="3clFbG">
            <node concept="37vLTw" id="3Lj6UsgF6M$" role="2Oq$k0">
              <ref role="3cqZAo" node="3Lj6UsgF6Mt" resolve="sessionSolver" />
            </node>
            <node concept="liA8E" id="3Lj6UsgF6M_" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
              <node concept="2OqwBi" id="3Lj6UsgF6MA" role="37wK5m">
                <node concept="2OqwBi" id="3Lj6UsgF6MB" role="2Oq$k0">
                  <node concept="2ShNRf" id="3Lj6UsgF6MC" role="2Oq$k0">
                    <node concept="1pGfFk" id="3Lj6UsgF6MD" role="2ShVmc">
                      <ref role="37wK5l" to="nz6g:4sSe4$oM2B4" resolve="PredicateBuilder" />
                      <node concept="10M0yZ" id="3Lj6UsgF6ME" role="37wK5m">
                        <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                        <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3Lj6UsgF6MF" role="2OqNvi">
                    <ref role="37wK5l" to="nz6g:4sSe4$oM2Bb" resolve="withArguments" />
                    <node concept="37vLTw" id="3Lj6UsgF7in" role="37wK5m">
                      <ref role="3cqZAo" node="12dHl3ZD0sZ" resolve="to" />
                    </node>
                    <node concept="37vLTw" id="3Lj6UsgF7oA" role="37wK5m">
                      <ref role="3cqZAo" node="3Lj6UsgF6nR" resolve="mapped" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3Lj6UsgF6MI" role="2OqNvi">
                  <ref role="37wK5l" to="nz6g:4sSe4$oM2Bs" resolve="toPredicate" />
                </node>
              </node>
              <node concept="37vLTw" id="3Lj6UsgF6MR" role="37wK5m">
                <ref role="3cqZAo" node="WBEjvSTobm" resolve="NO_CONTEXT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="10BVPEVKIi$" role="3cqZAp" />
        <node concept="3clFbF" id="3Lj6UsgENdE" role="3cqZAp">
          <node concept="3clFbT" id="3Lj6UsgENdD" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="1z4HGmnUyg1" role="lGtFl">
        <node concept="TUZQ0" id="1z4HGmnUyg4" role="3nqlJM">
          <property role="TUZQ4" value="Logical&lt;TreeForm&gt;" />
          <node concept="zr_55" id="1z4HGmnUyg6" role="zr_5Q">
            <ref role="zr_51" node="12dHl3ZD0sZ" resolve="to" />
          </node>
        </node>
        <node concept="TUZQ0" id="1z4HGmnUyg7" role="3nqlJM">
          <property role="TUZQ4" value="Logical&lt;TreeForm&gt;" />
          <node concept="zr_55" id="1z4HGmnUyg9" role="zr_5Q">
            <ref role="zr_51" node="12dHl3ZD0tG" resolve="from" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12dHl3ZCZZd" role="jymVt" />
    <node concept="Wx3nA" id="WBEjvSTobm" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NO_CONTEXT" />
      <node concept="3Tm6S6" id="WBEjvSTob3" role="1B3o_S" />
      <node concept="3uibUv" id="WBEjvSTob4" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
      </node>
      <node concept="2ShNRf" id="WBEjvSTob5" role="33vP2m">
        <node concept="YeOm9" id="WBEjvSTob6" role="2ShVmc">
          <node concept="1Y3b0j" id="WBEjvSTob7" role="YeSDq">
            <property role="1sVAO0" value="false" />
            <property role="1EXbeo" value="false" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="bj13:~LogicalContext" resolve="LogicalContext" />
            <node concept="3clFb_" id="WBEjvSTob8" role="jymVt">
              <property role="TrG5h" value="variable" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="2AHcQZ" id="WBEjvSTob9" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="16euLQ" id="WBEjvSToba" role="16eVyc">
                <property role="TrG5h" value="V" />
              </node>
              <node concept="37vLTG" id="WBEjvSTobb" role="3clF46">
                <property role="TrG5h" value="logical" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="WBEjvSTobc" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                  <node concept="16syzq" id="WBEjvSTobd" role="11_B2D">
                    <ref role="16sUi3" node="WBEjvSToba" resolve="V" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="WBEjvSTobe" role="3clF47">
                <node concept="YS8fn" id="WBEjvSTobf" role="3cqZAp">
                  <node concept="2ShNRf" id="WBEjvSTobg" role="YScLw">
                    <node concept="1pGfFk" id="WBEjvSTobh" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                      <node concept="Xl_RD" id="WBEjvSTobi" role="37wK5m">
                        <property role="Xl_RC" value="not implemented" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tm1VV" id="WBEjvSTobj" role="1B3o_S" />
              <node concept="3uibUv" id="WBEjvSTobk" role="3clF45">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="16syzq" id="WBEjvSTobl" role="11_B2D">
                  <ref role="16sUi3" node="WBEjvSToba" resolve="V" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4dPZ2m2jg00" role="jymVt" />
    <node concept="312cEu" id="3Lj6UsgEUPi" role="jymVt">
      <property role="TrG5h" value="CopyDelegate" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm6S6" id="3Lj6UsgEUPj" role="1B3o_S" />
      <node concept="3uibUv" id="3Lj6UsgEUPk" role="EKbjA">
        <ref role="3uigEE" to="6exd:3OPtF031GQe" resolve="Mappers.MapDelegate" />
      </node>
      <node concept="3clFbW" id="3Lj6UsgEUPp" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="3Lj6UsgEUPq" role="3clF45" />
        <node concept="37vLTG" id="3Lj6UsgEUPr" role="3clF46">
          <property role="TrG5h" value="logicalContext" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3Lj6UsgEUPs" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
          </node>
        </node>
        <node concept="3clFbS" id="3Lj6UsgEUPt" role="3clF47">
          <node concept="3clFbF" id="3Lj6UsgEUPu" role="3cqZAp">
            <node concept="37vLTI" id="3Lj6UsgEUPv" role="3clFbG">
              <node concept="2OqwBi" id="3Lj6UsgEUPw" role="37vLTJ">
                <node concept="Xjq3P" id="3Lj6UsgEUPx" role="2Oq$k0" />
                <node concept="2OwXpG" id="3Lj6UsgEUPy" role="2OqNvi">
                  <ref role="2Oxat5" node="3Lj6UsgEUPl" resolve="logicalContext" />
                </node>
              </node>
              <node concept="37vLTw" id="3Lj6UsgEUPz" role="37vLTx">
                <ref role="3cqZAo" node="3Lj6UsgEUPr" resolve="logicalContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3Lj6UsgEUP$" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="10BVPEVK_6D" role="jymVt">
        <property role="TrG5h" value="copiedLogicals" />
        <node concept="_YKpA" id="10BVPEVKBsA" role="3clF45">
          <node concept="3uibUv" id="10BVPEVKBYb" role="_ZDj9">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          </node>
        </node>
        <node concept="3Tm6S6" id="10BVPEVK_6G" role="1B3o_S" />
        <node concept="3clFbS" id="10BVPEVK_6H" role="3clF47">
          <node concept="3clFbF" id="10BVPEVK_yS" role="3cqZAp">
            <node concept="2OqwBi" id="10BVPEVKAUh" role="3clFbG">
              <node concept="2OqwBi" id="10BVPEVK_V9" role="2Oq$k0">
                <node concept="37vLTw" id="10BVPEVK_yR" role="2Oq$k0">
                  <ref role="3cqZAo" node="10BVPEVKmKL" resolve="logicalMap" />
                </node>
                <node concept="T8wYR" id="10BVPEVKAml" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="10BVPEVKBpj" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3Lj6UsgEUP_" role="jymVt">
        <property role="TrG5h" value="canMap" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="37vLTG" id="3Lj6UsgEUPA" role="3clF46">
          <property role="TrG5h" value="tf" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3Lj6UsgEUPB" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3clFbS" id="3Lj6UsgEUPC" role="3clF47">
          <node concept="3clFbF" id="3Lj6UsgEUPD" role="3cqZAp">
            <node concept="3eOSWO" id="RRVBbp6BrL" role="3clFbG">
              <node concept="2OqwBi" id="3Lj6UsgEUQi" role="3uHU7B">
                <node concept="37vLTw" id="3Lj6UsgEUQh" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Lj6UsgEUPA" resolve="tf" />
                </node>
                <node concept="liA8E" id="3Lj6UsgEUQj" role="2OqNvi">
                  <ref role="37wK5l" to="6exd:5BGv8yzvvIZ" resolve="variablesCount" />
                </node>
              </node>
              <node concept="3cmrfG" id="3Lj6UsgEUPG" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3Lj6UsgEUPH" role="1B3o_S" />
        <node concept="10P_77" id="3Lj6UsgEUPI" role="3clF45" />
      </node>
      <node concept="3clFb_" id="3Lj6UsgEUPJ" role="jymVt">
        <property role="TrG5h" value="map" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="37vLTG" id="3Lj6UsgEUPK" role="3clF46">
          <property role="TrG5h" value="tf" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3Lj6UsgEUPL" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="37vLTG" id="3Lj6UsgEUPM" role="3clF46">
          <property role="TrG5h" value="fallback" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3Lj6UsgEUPN" role="1tU5fm">
            <ref role="3uigEE" to="6exd:3OPtF02TdNT" resolve="TreeForm.Mapper" />
          </node>
        </node>
        <node concept="3clFbS" id="3Lj6UsgEUPO" role="3clF47">
          <node concept="3clFbJ" id="3Lj6UsgEUPP" role="3cqZAp">
            <node concept="2ZW3vV" id="3Lj6UsgEUPS" role="3clFbw">
              <node concept="37vLTw" id="3Lj6UsgEUPQ" role="2ZW6bz">
                <ref role="3cqZAo" node="3Lj6UsgEUPK" resolve="tf" />
              </node>
              <node concept="3uibUv" id="3Lj6UsgEVrA" role="2ZW6by">
                <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalTreeForm" />
              </node>
            </node>
            <node concept="9aQIb" id="3Lj6UsgEUQ4" role="9aQIa">
              <node concept="3clFbS" id="3Lj6UsgEUQ5" role="9aQI4">
                <node concept="3cpWs6" id="3Lj6UsgEUQ6" role="3cqZAp">
                  <node concept="2OqwBi" id="3Lj6UsgEUQr" role="3cqZAk">
                    <node concept="37vLTw" id="3Lj6UsgEUQq" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Lj6UsgEUPK" resolve="tf" />
                    </node>
                    <node concept="liA8E" id="3Lj6UsgEUQs" role="2OqNvi">
                      <ref role="37wK5l" to="6exd:3OPtF02Tjpr" resolve="mapRecursively" />
                      <node concept="37vLTw" id="3Lj6UsgEUQ8" role="37wK5m">
                        <ref role="3cqZAo" node="3Lj6UsgEUPM" resolve="fallback" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3Lj6UsgEUPU" role="3clFbx">
              <node concept="3cpWs8" id="RRVBbp80QT" role="3cqZAp">
                <node concept="3cpWsn" id="RRVBbp80QU" role="3cpWs9">
                  <property role="TrG5h" value="logical" />
                  <node concept="3uibUv" id="RRVBbp80QP" role="1tU5fm">
                    <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                    <node concept="3qTvmN" id="RRVBbp80QS" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="RRVBbp81YI" role="33vP2m">
                    <node concept="2OqwBi" id="RRVBbp80QV" role="2Oq$k0">
                      <node concept="1eOMI4" id="RRVBbp80QW" role="2Oq$k0">
                        <node concept="10QFUN" id="RRVBbp80QX" role="1eOMHV">
                          <node concept="37vLTw" id="RRVBbp80QY" role="10QFUP">
                            <ref role="3cqZAo" node="3Lj6UsgEUPK" resolve="tf" />
                          </node>
                          <node concept="3uibUv" id="RRVBbp80QZ" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalTreeForm" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="RRVBbp80R0" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
                      </node>
                    </node>
                    <node concept="liA8E" id="RRVBbp82EI" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="RRVBbp81w$" role="3cqZAp">
                <node concept="3clFbS" id="RRVBbp81wA" role="3clFbx">
                  <node concept="3cpWs8" id="RRVBbp84t2" role="3cqZAp">
                    <node concept="3cpWsn" id="RRVBbp84t3" role="3cpWs9">
                      <property role="TrG5h" value="value" />
                      <node concept="3uibUv" id="RRVBbp84t1" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="2OqwBi" id="RRVBbp84t4" role="33vP2m">
                        <node concept="37vLTw" id="RRVBbp84t5" role="2Oq$k0">
                          <ref role="3cqZAo" node="RRVBbp80QU" resolve="logical" />
                        </node>
                        <node concept="liA8E" id="RRVBbp84t6" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="RRVBbp86hN" role="3cqZAp">
                    <node concept="3clFbS" id="RRVBbp86hP" role="3clFbx">
                      <node concept="3cpWs6" id="RRVBbp8a6P" role="3cqZAp">
                        <node concept="2OqwBi" id="RRVBbp8aXh" role="3cqZAk">
                          <node concept="1eOMI4" id="RRVBbp8asG" role="2Oq$k0">
                            <node concept="10QFUN" id="RRVBbp8asD" role="1eOMHV">
                              <node concept="3uibUv" id="RRVBbp8asI" role="10QFUM">
                                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                              </node>
                              <node concept="37vLTw" id="RRVBbp8asJ" role="10QFUP">
                                <ref role="3cqZAo" node="RRVBbp84t3" resolve="value" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="RRVBbp8bS_" role="2OqNvi">
                            <ref role="37wK5l" to="6exd:3OPtF02Tjpr" resolve="mapRecursively" />
                            <node concept="37vLTw" id="RRVBbp8cgH" role="37wK5m">
                              <ref role="3cqZAo" node="3Lj6UsgEUPM" resolve="fallback" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="RRVBbp8a3O" role="3cqZAp" />
                    </node>
                    <node concept="2ZW3vV" id="RRVBbp87jk" role="3clFbw">
                      <node concept="3uibUv" id="RRVBbp87o0" role="2ZW6by">
                        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                      </node>
                      <node concept="37vLTw" id="RRVBbp86lF" role="2ZW6bz">
                        <ref role="3cqZAo" node="RRVBbp84t3" resolve="value" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="RRVBbp87tD" role="9aQIa">
                      <node concept="3clFbS" id="RRVBbp87tE" role="9aQI4">
                        <node concept="3SKdUt" id="10BVPEVKnIE" role="3cqZAp">
                          <node concept="3SKdUq" id="10BVPEVKnIG" role="3SKWNk">
                            <property role="3SKdUp" value="FIXME support other values?" />
                          </node>
                        </node>
                        <node concept="YS8fn" id="RRVBbp87xC" role="3cqZAp">
                          <node concept="2ShNRf" id="RRVBbp87$H" role="YScLw">
                            <node concept="1pGfFk" id="RRVBbp89Ty" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="RRVBbp83vM" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="RRVBbp837v" role="3clFbw">
                  <node concept="37vLTw" id="RRVBbp81Ma" role="2Oq$k0">
                    <ref role="3cqZAo" node="RRVBbp80QU" resolve="logical" />
                  </node>
                  <node concept="liA8E" id="RRVBbp83m4" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                  </node>
                </node>
                <node concept="9aQIb" id="RRVBbp83sQ" role="9aQIa">
                  <node concept="3clFbS" id="RRVBbp83sR" role="9aQI4">
                    <node concept="3cpWs8" id="10BVPEVKsHR" role="3cqZAp">
                      <node concept="3cpWsn" id="10BVPEVKsHS" role="3cpWs9">
                        <property role="TrG5h" value="logicalCopy" />
                        <node concept="3uibUv" id="10BVPEVKsGh" role="1tU5fm">
                          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                          <node concept="3qTvmN" id="10BVPEVKsGk" role="11_B2D" />
                        </node>
                        <node concept="3EllGN" id="10BVPEVKvGX" role="33vP2m">
                          <node concept="37vLTw" id="10BVPEVKvUB" role="3ElVtu">
                            <ref role="3cqZAo" node="RRVBbp80QU" resolve="logical" />
                          </node>
                          <node concept="37vLTw" id="10BVPEVKv9e" role="3ElQJh">
                            <ref role="3cqZAo" node="10BVPEVKmKL" resolve="logicalMap" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="10BVPEVKo4j" role="3cqZAp">
                      <node concept="3clFbS" id="10BVPEVKo4l" role="3clFbx">
                        <node concept="3clFbF" id="10BVPEVKtAt" role="3cqZAp">
                          <node concept="37vLTI" id="10BVPEVKtAv" role="3clFbG">
                            <node concept="2OqwBi" id="10BVPEVKsHT" role="37vLTx">
                              <node concept="37vLTw" id="10BVPEVKsHU" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Lj6UsgEUPl" resolve="logicalContext" />
                              </node>
                              <node concept="liA8E" id="10BVPEVKsHV" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical):jetbrains.mps.logic.reactor.logical.Logical" resolve="variable" />
                                <node concept="2OqwBi" id="10BVPEVKsHW" role="37wK5m">
                                  <node concept="37vLTw" id="10BVPEVKsHX" role="2Oq$k0">
                                    <ref role="3cqZAo" node="RRVBbp80QU" resolve="logical" />
                                  </node>
                                  <node concept="liA8E" id="10BVPEVKsHY" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.metaLogical():jetbrains.mps.logic.reactor.logical.MetaLogical" resolve="metaLogical" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="10BVPEVKtAz" role="37vLTJ">
                              <ref role="3cqZAo" node="10BVPEVKsHS" resolve="logicalCopy" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="10BVPEVKroD" role="3cqZAp">
                          <node concept="37vLTI" id="10BVPEVKsdu" role="3clFbG">
                            <node concept="3EllGN" id="10BVPEVKrNK" role="37vLTJ">
                              <node concept="37vLTw" id="10BVPEVKrWD" role="3ElVtu">
                                <ref role="3cqZAo" node="RRVBbp80QU" resolve="logical" />
                              </node>
                              <node concept="37vLTw" id="10BVPEVKroC" role="3ElQJh">
                                <ref role="3cqZAo" node="10BVPEVKmKL" resolve="logicalMap" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="10BVPEVKsHZ" role="37vLTx">
                              <ref role="3cqZAo" node="10BVPEVKsHS" resolve="logicalCopy" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="10BVPEVKyRd" role="3clFbw">
                        <node concept="10Nm6u" id="10BVPEVKz4k" role="3uHU7w" />
                        <node concept="37vLTw" id="10BVPEVKwiM" role="3uHU7B">
                          <ref role="3cqZAo" node="10BVPEVKsHS" resolve="logicalCopy" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3Lj6UsgEUPV" role="3cqZAp">
                      <node concept="2ShNRf" id="3Lj6UsgEVDK" role="3cqZAk">
                        <node concept="1pGfFk" id="3Lj6UsgEVFj" role="2ShVmc">
                          <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalTreeForm" />
                          <node concept="37vLTw" id="10BVPEVKzXF" role="37wK5m">
                            <ref role="3cqZAo" node="10BVPEVKsHS" resolve="logicalCopy" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3Lj6UsgF0hI" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3Lj6UsgEUQ9" role="1B3o_S" />
        <node concept="3uibUv" id="3Lj6UsgEUQa" role="3clF45">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="312cEg" id="3Lj6UsgEUPl" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="logicalContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3Lj6UsgEUPn" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
        <node concept="3Tm6S6" id="3Lj6UsgEUPo" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="10BVPEVKmKL" role="jymVt">
        <property role="TrG5h" value="logicalMap" />
        <node concept="3Tm6S6" id="10BVPEVKmKM" role="1B3o_S" />
        <node concept="3rvAFt" id="10BVPEVKnla" role="1tU5fm">
          <node concept="3uibUv" id="10BVPEVKnnE" role="3rvQeY">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          </node>
          <node concept="3uibUv" id="10BVPEVKnsH" role="3rvSg0">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          </node>
        </node>
        <node concept="2ShNRf" id="10BVPEVKnA3" role="33vP2m">
          <node concept="3rGOSV" id="10BVPEVKny_" role="2ShVmc">
            <node concept="3uibUv" id="10BVPEVKnyA" role="3rHrn6">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            </node>
            <node concept="3uibUv" id="10BVPEVKnyB" role="3rHtpV">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Lj6UsgEUD1" role="jymVt" />
    <node concept="3Tm1VV" id="4dPZ2m2jfZF" role="1B3o_S" />
  </node>
  <node concept="AVZre" id="12dHl3ZCEwp">
    <property role="TrG5h" value="forall" />
    <node concept="AVZhu" id="12dHl3ZCEws" role="3ArX_J">
      <property role="TrG5h" value="gen_forall" />
      <node concept="3Aq93q" id="12dHl3ZCEwv" role="3orSU4">
        <node concept="3NuqgR" id="12dHl3ZCEwz" role="3Nuqhd">
          <node concept="aZer4" id="12dHl3ZCEw$" role="3XD1gS">
            <property role="TrG5h" value="G" />
          </node>
          <node concept="aZer4" id="12dHl3ZCEy$" role="3XD1gS">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3I6sU6" id="12dHl3ZCEww" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCExG" role="3I6sU7">
            <node concept="3Aqt3T" id="12dHl3ZCExE" role="3I6s78">
              <ref role="3AqCNq" node="12dHl3ZCEwE" resolve="gen" />
              <node concept="a7P8L" id="12dHl3ZCE$h" role="3AunhB">
                <ref role="a7OzE" node="12dHl3ZCEw$" resolve="G" />
              </node>
              <node concept="1uarlV" id="12dHl3ZCEzB" role="3AunhB">
                <node concept="a7P8L" id="12dHl3ZCEyM" role="1uarlU">
                  <ref role="a7OzE" node="12dHl3ZCEy$" resolve="T" />
                </node>
                <node concept="1Q4cc8" id="12dHl3ZCEzW" role="1uarlW">
                  <ref role="1nfQt" node="12dHl3ZCxN1" resolve="Forall" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="12dHl3ZCEzz" role="3otmyu">
        <node concept="3I6sU6" id="12dHl3ZCEz$" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCE$x" role="3I6sU7">
            <node concept="3A8Hvi" id="12dHl3ZCE$u" role="3I6s78">
              <node concept="a7P8L" id="12dHl3ZCE$A" role="3A8wtg">
                <ref role="a7OzE" node="12dHl3ZCEw$" resolve="G" />
              </node>
              <node concept="a7P8L" id="12dHl3ZCE$F" role="3A8w4Q">
                <ref role="a7OzE" node="12dHl3ZCEy$" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="12dHl3ZCE_5" role="3ArX_J">
      <property role="TrG5h" value="gen" />
      <node concept="3Aq9_M" id="12dHl3ZCERz" role="3oo59u">
        <node concept="3I6sU6" id="12dHl3ZCER$" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCERC" role="3I6sU7">
            <node concept="2aLmEc" id="12dHl3ZCERB" role="3I6s78">
              <node concept="a7P8L" id="12dHl3ZCERF" role="2aLmnP">
                <ref role="a7OzE" node="12dHl3ZCE_w" resolve="G" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="12dHl3ZCE_r" role="3orSU4">
        <node concept="3NuqgR" id="12dHl3ZCE_v" role="3Nuqhd">
          <node concept="aZer4" id="12dHl3ZCE_w" role="3XD1gS">
            <property role="TrG5h" value="G" />
          </node>
          <node concept="aZer4" id="12dHl3ZCE_D" role="3XD1gS">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3I6sU6" id="12dHl3ZCE_s" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCE_O" role="3I6sU7">
            <node concept="3Aqt3T" id="12dHl3ZCE_M" role="3I6s78">
              <ref role="3AqCNq" node="12dHl3ZCEwE" resolve="gen" />
              <node concept="a7P8L" id="12dHl3ZCE_S" role="3AunhB">
                <ref role="a7OzE" node="12dHl3ZCE_w" resolve="G" />
              </node>
              <node concept="a7P8L" id="12dHl3ZCEA0" role="3AunhB">
                <ref role="a7OzE" node="12dHl3ZCE_D" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="12dHl3ZCEBY" role="3otmyu">
        <node concept="3I6sU6" id="12dHl3ZCEBZ" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCRqn" role="3I6sU7">
            <node concept="3A8Hvi" id="12dHl3ZCRqh" role="3I6s78">
              <node concept="a7P8L" id="12dHl3ZCRqB" role="3A8wtg">
                <ref role="a7OzE" node="12dHl3ZCE_w" resolve="G" />
              </node>
              <node concept="1Q4cc8" id="12dHl3ZCRqG" role="3A8w4Q">
                <ref role="1nfQt" node="12dHl3ZCxN1" resolve="Forall" />
                <node concept="1RziaG" id="12dHl3ZCRqR" role="1Ryyee">
                  <ref role="1RzibV" node="12dHl3ZCEvq" resolve="type" />
                  <node concept="3AP2Rn" id="12dHl3ZCRqS" role="1RzmR7">
                    <node concept="3clFbS" id="12dHl3ZCRqT" role="16YjZG">
                      <node concept="3clFbF" id="12dHl3ZCRr8" role="3cqZAp">
                        <node concept="3A9UF8" id="12dHl3ZCRr6" role="3clFbG">
                          <node concept="a7P8L" id="12dHl3ZCRrn" role="3A9W3M">
                            <ref role="a7OzE" node="12dHl3ZCE_D" resolve="T" />
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
    <node concept="AVZhu" id="12dHl3ZCESw" role="3ArX_J">
      <property role="TrG5h" value="inst_forall" />
      <node concept="3Aq9_M" id="12dHl3ZCF38" role="3oo59u">
        <node concept="3I6sU6" id="12dHl3ZCF39" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCF3d" role="3I6sU7">
            <node concept="2aLmEc" id="12dHl3ZCF3c" role="3I6s78">
              <node concept="a7P8L" id="12dHl3ZCF3g" role="2aLmnP">
                <ref role="a7OzE" node="12dHl3ZCETR" resolve="I" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="12dHl3ZCETi" role="3orSU4">
        <node concept="3NuqgR" id="12dHl3ZCETB" role="3Nuqhd">
          <node concept="aZer4" id="12dHl3ZCETR" role="3XD1gS">
            <property role="TrG5h" value="I" />
          </node>
          <node concept="aZer4" id="12dHl3ZCETC" role="3XD1gS">
            <property role="TrG5h" value="G" />
          </node>
          <node concept="aZer4" id="12dHl3ZCF13" role="3XD1gS">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3I6sU6" id="12dHl3ZCETj" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCETw" role="3I6sU7">
            <node concept="3Aqt3T" id="12dHl3ZCETu" role="3I6s78">
              <ref role="3AqCNq" node="12dHl3ZCEx3" resolve="inst" />
              <node concept="a7P8L" id="12dHl3ZCEU5" role="3AunhB">
                <ref role="a7OzE" node="12dHl3ZCETR" resolve="I" />
              </node>
              <node concept="1uarlV" id="12dHl3ZCEZQ" role="3AunhB">
                <node concept="a7P8L" id="12dHl3ZCETL" role="1uarlU">
                  <ref role="a7OzE" node="12dHl3ZCETC" resolve="G" />
                </node>
                <node concept="1Q4cc8" id="12dHl3ZCF08" role="1uarlW">
                  <ref role="1nfQt" node="12dHl3ZCxN1" resolve="Forall" />
                  <node concept="1RziaG" id="12dHl3ZCF0I" role="1Ryyee">
                    <ref role="1RzibV" node="12dHl3ZCEvq" resolve="type" />
                    <node concept="3AP2Rn" id="12dHl3ZCF0J" role="1RzmR7">
                      <node concept="3clFbS" id="12dHl3ZCF0K" role="16YjZG">
                        <node concept="3clFbF" id="12dHl3ZCF1p" role="3cqZAp">
                          <node concept="3A9UF8" id="12dHl3ZCF1n" role="3clFbG">
                            <node concept="a7P8L" id="12dHl3ZCF2j" role="3A9W3M">
                              <ref role="a7OzE" node="12dHl3ZCF13" resolve="T" />
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
      <node concept="3Aq9E8" id="12dHl3ZCEXN" role="3otmyu">
        <node concept="3NuqgR" id="3Lj6UsgFwI_" role="3Nuqhd">
          <node concept="aZer4" id="3Lj6UsgFwIA" role="3XD1gS">
            <property role="TrG5h" value="C" />
          </node>
        </node>
        <node concept="3I6sU6" id="12dHl3ZCEXO" role="3Ip0Jz">
          <node concept="3I6s7M" id="3Lj6UsgFwIL" role="3I6sU7">
            <node concept="3wWvb2" id="3Lj6UsgFwIJ" role="3I6s78">
              <node concept="2YIFZM" id="3Lj6UsgFwJb" role="3wWo3s">
                <ref role="37wK5l" node="12dHl3ZD0e_" resolve="copy" />
                <ref role="1Pybhc" node="4dPZ2m2jfZE" resolve="Util" />
                <node concept="3A9UF8" id="3Lj6UsgFwKz" role="37wK5m">
                  <node concept="a7P8L" id="3Lj6UsgFwKV" role="3A9W3M">
                    <ref role="a7OzE" node="3Lj6UsgFwIA" resolve="C" />
                  </node>
                </node>
                <node concept="3A9UF8" id="3Lj6UsgFwSi" role="37wK5m">
                  <node concept="a7P8L" id="3Lj6UsgFwUc" role="3A9W3M">
                    <ref role="a7OzE" node="12dHl3ZCF13" resolve="T" />
                  </node>
                </node>
                <node concept="1BjVvb" id="3Lj6UsgFwZ7" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="12dHl3ZCF3n" role="3I6sU7">
            <node concept="3A8Hvi" id="12dHl3ZCF3k" role="3I6s78">
              <node concept="a7P8L" id="12dHl3ZCF3s" role="3A8wtg">
                <ref role="a7OzE" node="12dHl3ZCETR" resolve="I" />
              </node>
              <node concept="a7P8L" id="3Lj6UsgFx2a" role="3A8w4Q">
                <ref role="a7OzE" node="3Lj6UsgFwIA" resolve="C" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="12dHl3ZCF4Q" role="3ArX_J">
      <property role="TrG5h" value="inst" />
      <node concept="3Aq9_M" id="12dHl3ZCF71" role="3oo59u">
        <node concept="3I6sU6" id="12dHl3ZCF72" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCF76" role="3I6sU7">
            <node concept="2aLmEc" id="12dHl3ZCF75" role="3I6s78">
              <node concept="a7P8L" id="12dHl3ZCF79" role="2aLmnP">
                <ref role="a7OzE" node="12dHl3ZCF6q" resolve="I" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="12dHl3ZCF67" role="3orSU4">
        <node concept="3NuqgR" id="12dHl3ZCF6p" role="3Nuqhd">
          <node concept="aZer4" id="12dHl3ZCF6q" role="3XD1gS">
            <property role="TrG5h" value="I" />
          </node>
          <node concept="aZer4" id="12dHl3ZCF6z" role="3XD1gS">
            <property role="TrG5h" value="G" />
          </node>
        </node>
        <node concept="3I6sU6" id="12dHl3ZCF68" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCF6l" role="3I6sU7">
            <node concept="3Aqt3T" id="12dHl3ZCF6j" role="3I6s78">
              <ref role="3AqCNq" node="12dHl3ZCEx3" resolve="inst" />
              <node concept="a7P8L" id="12dHl3ZCF6N" role="3AunhB">
                <ref role="a7OzE" node="12dHl3ZCF6q" resolve="I" />
              </node>
              <node concept="a7P8L" id="12dHl3ZCF6V" role="3AunhB">
                <ref role="a7OzE" node="12dHl3ZCF6z" resolve="G" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="12dHl3ZCFa9" role="3otmyu">
        <node concept="3I6sU6" id="12dHl3ZCFaa" role="3Ip0Jz">
          <node concept="3I6s7M" id="12dHl3ZCFag" role="3I6sU7">
            <node concept="3A8Hvi" id="12dHl3ZCFad" role="3I6s78">
              <node concept="a7P8L" id="12dHl3ZCFal" role="3A8wtg">
                <ref role="a7OzE" node="12dHl3ZCF6q" resolve="I" />
              </node>
              <node concept="a7P8L" id="12dHl3ZCFaq" role="3A8w4Q">
                <ref role="a7OzE" node="12dHl3ZCF6z" resolve="G" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1HGPq" id="5gga3s6wGnl">
    <property role="TrG5h" value="terms" />
    <node concept="BRKj$" id="4dPZ2m2hTAN" role="1HGPt">
      <property role="TrG5h" value="Bool" />
      <node concept="0oftK" id="4dPZ2m2hTAO" role="BRKSY">
        <node concept="0ofun" id="4dPZ2m2hTAX" role="0ofug">
          <property role="TrG5h" value="concept" />
          <property role="3JpusR" value="true" />
          <node concept="3AP2Rn" id="4dPZ2m2hUlX" role="3AP2R9">
            <node concept="3clFbS" id="4dPZ2m2hUlY" role="16YjZG">
              <node concept="3clFbF" id="4dPZ2m2hUmb" role="3cqZAp">
                <node concept="2OqwBi" id="4dPZ2m2hUDU" role="3clFbG">
                  <node concept="35c_gC" id="4dPZ2m2hUma" role="2Oq$k0">
                    <ref role="35c_gD" to="8tt8:492bFERodLp" resolve="BoolType" />
                  </node>
                  <node concept="liA8E" id="4dPZ2m2hVir" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="BRKj$" id="4dPZ2m2hWGK" role="1HGPt">
      <property role="TrG5h" value="Fun" />
      <node concept="0oftK" id="4dPZ2m2hWGL" role="BRKSY">
        <node concept="0ofun" id="4dPZ2m2hWGZ" role="0ofug">
          <property role="TrG5h" value="concept" />
          <property role="3JpusR" value="true" />
          <node concept="3AP2Rn" id="4dPZ2m2hWH8" role="3AP2R9">
            <node concept="3clFbS" id="4dPZ2m2hWH9" role="16YjZG">
              <node concept="3clFbF" id="4dPZ2m2hWIj" role="3cqZAp">
                <node concept="2OqwBi" id="4dPZ2m2hWZj" role="3clFbG">
                  <node concept="35c_gC" id="4dPZ2m2hWIi" role="2Oq$k0">
                    <ref role="35c_gD" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                  </node>
                  <node concept="liA8E" id="4dPZ2m2hXCv" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="0ofuC" id="4dPZ2m2hXGZ" role="0ofug">
          <property role="TrG5h" value="arg" />
        </node>
        <node concept="0ofuC" id="4dPZ2m2hXHj" role="0ofug">
          <property role="TrG5h" value="res" />
        </node>
      </node>
    </node>
    <node concept="BRKj$" id="12dHl3ZCxN1" role="1HGPt">
      <property role="TrG5h" value="Forall" />
      <node concept="0oftK" id="12dHl3ZCxN2" role="BRKSY">
        <node concept="0ofun" id="12dHl3ZCxNH" role="0ofug">
          <property role="TrG5h" value="concept" />
          <property role="3JpusR" value="true" />
          <node concept="3AP2Rn" id="12dHl3ZCDqj" role="3AP2R9">
            <node concept="3clFbS" id="12dHl3ZCDqk" role="16YjZG">
              <node concept="3clFbF" id="12dHl3ZCDqx" role="3cqZAp">
                <node concept="2OqwBi" id="12dHl3ZCDSR" role="3clFbG">
                  <node concept="35c_gC" id="12dHl3ZCDqw" role="2Oq$k0">
                    <ref role="35c_gD" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                  </node>
                  <node concept="liA8E" id="12dHl3ZCEtB" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="0ofuC" id="12dHl3ZCEvq" role="0ofug">
          <property role="TrG5h" value="type" />
        </node>
      </node>
    </node>
  </node>
</model>

