<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:023e4571-f779-4131-9ae1-88b3dd330e93(jetbrains.mps.lang.typesystem2.samplechecker.util)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification(jetbrains.mps.logic.atom/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224573963862" name="jetbrains.mps.baseLanguage.structure.EnumValuesExpression" flags="nn" index="uiWXb">
        <reference id="1224573974191" name="enumClass" index="uiZuM" />
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
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf">
        <child id="492581319488141108" name="method" index="2HKRsH" />
      </concept>
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
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4peSo3CHy8D">
    <property role="TrG5h" value="NodePrinter" />
    <node concept="Wx3nA" id="6XxJ1FLXd5E" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CLASS_PARAMS" />
      <node concept="3Tm6S6" id="6XxJ1FLXd5z" role="1B3o_S" />
      <node concept="10Q1$e" id="6XxJ1FLXd5$" role="1tU5fm">
        <node concept="17QB3L" id="6XxJ1FLXd5_" role="10Q1$1" />
      </node>
      <node concept="2BsdOp" id="6XxJ1FLXd5A" role="33vP2m">
        <node concept="Xl_RD" id="6XxJ1FLXd5B" role="2BsfMF">
          <property role="Xl_RC" value="&lt;" />
        </node>
        <node concept="Xl_RD" id="6XxJ1FLXd5C" role="2BsfMF">
          <property role="Xl_RC" value=", " />
        </node>
        <node concept="Xl_RD" id="6XxJ1FLXd5D" role="2BsfMF">
          <property role="Xl_RC" value="&gt;" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="6XxJ1FLXefa" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ARRAY_PARAMS" />
      <node concept="3Tm6S6" id="6XxJ1FLXefb" role="1B3o_S" />
      <node concept="10Q1$e" id="6XxJ1FLXefc" role="1tU5fm">
        <node concept="17QB3L" id="6XxJ1FLXefd" role="10Q1$1" />
      </node>
      <node concept="2BsdOp" id="6XxJ1FLXefe" role="33vP2m">
        <node concept="Xl_RD" id="6XxJ1FLXeff" role="2BsfMF">
          <property role="Xl_RC" value="[" />
        </node>
        <node concept="Xl_RD" id="6XxJ1FLXefg" role="2BsfMF">
          <property role="Xl_RC" value=", " />
        </node>
        <node concept="Xl_RD" id="6XxJ1FLXefh" role="2BsfMF">
          <property role="Xl_RC" value="]" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="6XxJ1FLYfHw" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NO_PARAMS" />
      <node concept="3Tm6S6" id="6XxJ1FLYfHx" role="1B3o_S" />
      <node concept="10Q1$e" id="6XxJ1FLYfHy" role="1tU5fm">
        <node concept="17QB3L" id="6XxJ1FLYfHz" role="10Q1$1" />
      </node>
      <node concept="2BsdOp" id="6XxJ1FLYfH$" role="33vP2m">
        <node concept="Xl_RD" id="6XxJ1FLYfH_" role="2BsfMF" />
        <node concept="Xl_RD" id="6XxJ1FLYfHA" role="2BsfMF" />
        <node concept="Xl_RD" id="6XxJ1FLYfHB" role="2BsfMF" />
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CHzMd" role="jymVt" />
    <node concept="2YIFZL" id="4peSo3CHBfF" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="print" />
      <node concept="37vLTG" id="4peSo3CHB$z" role="3clF46">
        <property role="TrG5h" value="atom" />
        <node concept="3uibUv" id="4peSo3CHBGl" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3clFbS" id="4peSo3CHB5z" role="3clF47">
        <node concept="3cpWs8" id="4peSo3CILeK" role="3cqZAp">
          <node concept="3cpWsn" id="4peSo3CILeL" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4peSo3CILeI" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="4peSo3CILeM" role="33vP2m">
              <node concept="1pGfFk" id="4peSo3CILeN" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4peSo3CILp_" role="3cqZAp">
          <node concept="1rXfSq" id="4peSo3CILpz" role="3clFbG">
            <ref role="37wK5l" node="4peSo3CIJRO" resolve="doPrint" />
            <node concept="37vLTw" id="6HT7BWBRhCT" role="37wK5m">
              <ref role="3cqZAo" node="4peSo3CHB$z" resolve="atom" />
            </node>
            <node concept="2ShNRf" id="4peSo3D1xgT" role="37wK5m">
              <node concept="HV5vD" id="4peSo3D1x$v" role="2ShVmc">
                <ref role="HV5vE" node="3gJBs5s$bxr" resolve="NodePrinter.DefaultVariableSymbol" />
              </node>
            </node>
            <node concept="37vLTw" id="4peSo3CILG0" role="37wK5m">
              <ref role="3cqZAo" node="4peSo3CILeL" resolve="builder" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4peSo3CILQg" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CIMct" role="3cqZAk">
            <node concept="37vLTw" id="4peSo3CIM42" role="2Oq$k0">
              <ref role="3cqZAo" node="4peSo3CILeL" resolve="builder" />
            </node>
            <node concept="liA8E" id="4peSo3CIMLV" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4peSo3CIKv4" role="3clF45" />
      <node concept="3Tm1VV" id="4peSo3CHB5y" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4peSo3CIKfj" role="jymVt" />
    <node concept="2YIFZL" id="4peSo3D04j7" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="print" />
      <node concept="37vLTG" id="4peSo3D04j8" role="3clF46">
        <property role="TrG5h" value="atom" />
        <node concept="3uibUv" id="4peSo3D04j9" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4peSo3D075N" role="3clF46">
        <property role="TrG5h" value="variableSymbol" />
        <node concept="3uibUv" id="4peSo3D18yQ" role="1tU5fm">
          <ref role="3uigEE" node="3gJBs5s$bxr" resolve="NodePrinter.DefaultVariableSymbol" />
        </node>
      </node>
      <node concept="3clFbS" id="4peSo3D04jd" role="3clF47">
        <node concept="3cpWs8" id="4peSo3D1wNi" role="3cqZAp">
          <node concept="3cpWsn" id="4peSo3D1wNj" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4peSo3D1wNk" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="4peSo3D1wNl" role="33vP2m">
              <node concept="1pGfFk" id="4peSo3D1wNm" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4peSo3D1wNn" role="3cqZAp">
          <node concept="1rXfSq" id="4peSo3D1wNo" role="3clFbG">
            <ref role="37wK5l" node="4peSo3CIJRO" resolve="doPrint" />
            <node concept="37vLTw" id="6HT7BWBRh_w" role="37wK5m">
              <ref role="3cqZAo" node="4peSo3D04j8" resolve="atom" />
            </node>
            <node concept="37vLTw" id="4peSo3D1xXE" role="37wK5m">
              <ref role="3cqZAo" node="4peSo3D075N" resolve="variableSymbol" />
            </node>
            <node concept="37vLTw" id="4peSo3D1wNq" role="37wK5m">
              <ref role="3cqZAo" node="4peSo3D1wNj" resolve="builder" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4peSo3D1wNr" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3D1wNs" role="3cqZAk">
            <node concept="37vLTw" id="4peSo3D1wNt" role="2Oq$k0">
              <ref role="3cqZAo" node="4peSo3D1wNj" resolve="builder" />
            </node>
            <node concept="liA8E" id="4peSo3D1wNu" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4peSo3D1yj6" role="3clF45" />
      <node concept="3Tm1VV" id="4peSo3D04jB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4peSo3D1uDA" role="jymVt" />
    <node concept="2YIFZL" id="4peSo3CIJRO" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="doPrint" />
      <node concept="37vLTG" id="4peSo3CIJRP" role="3clF46">
        <property role="TrG5h" value="atom" />
        <node concept="3uibUv" id="4peSo3CIJRQ" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4peSo3D1wUl" role="3clF46">
        <property role="TrG5h" value="variableSymbol" />
        <node concept="3uibUv" id="4peSo3D1wUm" role="1tU5fm">
          <ref role="3uigEE" node="3gJBs5s$bxr" resolve="NodePrinter.DefaultVariableSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="4peSo3CIJRS" role="3clF46">
        <property role="TrG5h" value="sb" />
        <node concept="3uibUv" id="4peSo3CIJRT" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
        </node>
      </node>
      <node concept="3clFbS" id="4peSo3CIJRU" role="3clF47">
        <node concept="3clFbJ" id="4peSo3CIJRV" role="3cqZAp">
          <node concept="3clFbS" id="4peSo3CIJRW" role="3clFbx">
            <node concept="3clFbF" id="4peSo3CIJRX" role="3cqZAp">
              <node concept="2OqwBi" id="4peSo3CIJRY" role="3clFbG">
                <node concept="37vLTw" id="4peSo3CIJRZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4peSo3CIJRS" resolve="sb" />
                </node>
                <node concept="liA8E" id="4peSo3CIJS0" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2YIFZM" id="4peSo3CIJS1" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="37vLTw" id="4peSo3CIJS2" role="37wK5m">
                      <ref role="3cqZAo" node="4peSo3CIJRP" resolve="atom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4peSo3CIJS3" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4peSo3CIJS4" role="3clFbw">
            <node concept="liA8E" id="4peSo3CIJS5" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
              <node concept="Rm8GO" id="4peSo3CIJS6" role="37wK5m">
                <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
              </node>
            </node>
            <node concept="37vLTw" id="4peSo3CIJS7" role="2Oq$k0">
              <ref role="3cqZAo" node="4peSo3CIJRP" resolve="atom" />
            </node>
          </node>
          <node concept="9aQIb" id="4peSo3CIJS8" role="9aQIa">
            <node concept="3clFbS" id="4peSo3CIJS9" role="9aQI4">
              <node concept="3clFbF" id="4peSo3CIJSa" role="3cqZAp">
                <node concept="2OqwBi" id="4peSo3CIJSb" role="3clFbG">
                  <node concept="2ShNRf" id="4peSo3CIJSc" role="2Oq$k0">
                    <node concept="1pGfFk" id="4peSo3CIJSd" role="2ShVmc">
                      <ref role="37wK5l" to="ie8e:47nvOnTQN6Q" resolve="AtomWalk" />
                      <node concept="2ShNRf" id="4peSo3CINyv" role="37wK5m">
                        <node concept="1pGfFk" id="4peSo3CINPP" role="2ShVmc">
                          <ref role="37wK5l" node="4peSo3CIw3p" resolve="NodePrinter" />
                          <node concept="37vLTw" id="4peSo3CINVt" role="37wK5m">
                            <ref role="3cqZAo" node="4peSo3CIJRS" resolve="sb" />
                          </node>
                          <node concept="37vLTw" id="5_6ImQYJS0a" role="37wK5m">
                            <ref role="3cqZAo" node="4peSo3D1wUl" resolve="variableSymbol" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4peSo3CIJSf" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:1hOy_Afq63K" resolve="walk" />
                    <node concept="2YIFZM" id="6HT7BWBRh6I" role="37wK5m">
                      <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
                      <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
                      <node concept="37vLTw" id="6HT7BWBRhg3" role="37wK5m">
                        <ref role="3cqZAo" node="4peSo3CIJRP" resolve="atom" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4peSo3CIJSh" role="3clF45" />
      <node concept="3Tm1VV" id="4peSo3CIJSi" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4peSo3CIHWU" role="jymVt" />
    <node concept="3clFbW" id="4peSo3CIw3p" role="jymVt">
      <node concept="37vLTG" id="4peSo3CIwrc" role="3clF46">
        <property role="TrG5h" value="stringBuilder" />
        <node concept="3uibUv" id="4peSo3CIwye" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="4peSo3D0GSX" role="3clF46">
        <property role="TrG5h" value="variableSymbol" />
        <node concept="3uibUv" id="4peSo3D17ux" role="1tU5fm">
          <ref role="3uigEE" node="3gJBs5s$bxr" resolve="NodePrinter.DefaultVariableSymbol" />
        </node>
      </node>
      <node concept="3cqZAl" id="4peSo3CIw3r" role="3clF45" />
      <node concept="3Tm6S6" id="4peSo3CIwnr" role="1B3o_S" />
      <node concept="3clFbS" id="4peSo3CIw3t" role="3clF47">
        <node concept="3clFbF" id="4peSo3CIw_D" role="3cqZAp">
          <node concept="37vLTI" id="4peSo3CIw_F" role="3clFbG">
            <node concept="2OqwBi" id="4peSo3CIw_J" role="37vLTJ">
              <node concept="Xjq3P" id="4peSo3CIw_M" role="2Oq$k0" />
              <node concept="2OwXpG" id="4peSo3CIw_I" role="2OqNvi">
                <ref role="2Oxat5" node="4peSo3CIw__" resolve="stringBuilder" />
              </node>
            </node>
            <node concept="37vLTw" id="4peSo3CIw_N" role="37vLTx">
              <ref role="3cqZAo" node="4peSo3CIwrc" resolve="stringBuilder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4peSo3D0HuR" role="3cqZAp">
          <node concept="37vLTI" id="4peSo3D0HuT" role="3clFbG">
            <node concept="2OqwBi" id="4peSo3D0HuX" role="37vLTJ">
              <node concept="Xjq3P" id="4peSo3D0Hv0" role="2Oq$k0" />
              <node concept="2OwXpG" id="4peSo3D0HuW" role="2OqNvi">
                <ref role="2Oxat5" node="4peSo3D0HuN" resolve="variableSymbol" />
              </node>
            </node>
            <node concept="37vLTw" id="4peSo3D0Hv1" role="37vLTx">
              <ref role="3cqZAo" node="4peSo3D0GSX" resolve="variableSymbol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CIBGi" role="jymVt" />
    <node concept="3Tm1VV" id="4peSo3CHy8E" role="1B3o_S" />
    <node concept="3uibUv" id="4peSo3CHzrM" role="EKbjA">
      <ref role="3uigEE" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
    </node>
    <node concept="3clFb_" id="4peSo3CHzzR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkTerms" />
      <node concept="3uibUv" id="4peSo3CHzzS" role="3clF45">
        <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="4peSo3CHzzT" role="1B3o_S" />
      <node concept="37vLTG" id="4peSo3CHzzV" role="3clF46">
        <property role="TrG5h" value="cb" />
        <node concept="3uibUv" id="4peSo3CHzzW" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
        </node>
      </node>
      <node concept="3clFbS" id="4peSo3CHz$5" role="3clF47">
        <node concept="3clFbH" id="6infEALsoez" role="3cqZAp" />
        <node concept="3SKdUt" id="4peSo3CJDAn" role="3cqZAp">
          <node concept="3SKdUq" id="4peSo3CJDKb" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: the constants must be extracted" />
          </node>
        </node>
        <node concept="3clFbJ" id="4peSo3CJCAw" role="3cqZAp">
          <node concept="3clFbS" id="4peSo3CJCAy" role="3clFbx">
            <node concept="3SKdUt" id="5_6ImQYCh12" role="3cqZAp">
              <node concept="3SKdUq" id="5_6ImQYChcI" role="3SKWNk">
                <property role="3SKdUp" value="TODO: no-formatter" />
              </node>
            </node>
            <node concept="3clFbJ" id="4peSo3CKstE" role="3cqZAp">
              <node concept="3clFbS" id="4peSo3CKstG" role="3clFbx">
                <node concept="3clFbF" id="4peSo3CKycV" role="3cqZAp">
                  <node concept="2OqwBi" id="4peSo3CKBwI" role="3clFbG">
                    <node concept="2OqwBi" id="4peSo3CKyM6" role="2Oq$k0">
                      <node concept="37vLTw" id="4peSo3CKycT" role="2Oq$k0">
                        <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
                      </node>
                      <node concept="liA8E" id="4peSo3CKBj_" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4peSo3CKCbF" role="2OqNvi">
                      <ref role="37wK5l" node="6infEALrBJ1" resolve="listNext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="4peSo3CKsD_" role="3clFbw">
                <node concept="2OqwBi" id="4peSo3CKty1" role="3fr31v">
                  <node concept="37vLTw" id="4peSo3CKsLa" role="2Oq$k0">
                    <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
                  </node>
                  <node concept="liA8E" id="4peSo3CKxPU" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6XxJ1FLY2M$" role="3cqZAp" />
            <node concept="3clFbF" id="4peSo3CJy0U" role="3cqZAp">
              <node concept="2OqwBi" id="4peSo3CJyA7" role="3clFbG">
                <node concept="37vLTw" id="4peSo3CJy0S" role="2Oq$k0">
                  <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
                </node>
                <node concept="liA8E" id="4peSo3CJATL" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
                  <node concept="2ShNRf" id="4peSo3CJBr$" role="37wK5m">
                    <node concept="1pGfFk" id="6XxJ1FLXDxt" role="2ShVmc">
                      <ref role="37wK5l" node="6XxJ1FLXDlP" resolve="NodePrinter.NodeFormatter" />
                      <node concept="37vLTw" id="6XxJ1FLXLyX" role="37wK5m">
                        <ref role="3cqZAo" node="6XxJ1FLXd5E" resolve="CLASS_PARAMS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4peSo3CJHeA" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4peSo3CJD0t" role="3clFbw">
            <node concept="Xl_RD" id="4peSo3CJCKN" role="2Oq$k0">
              <property role="Xl_RC" value="node" />
            </node>
            <node concept="liA8E" id="4peSo3CJEby" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="4peSo3CJEmY" role="37wK5m">
                <node concept="37vLTw" id="4peSo3CJEcE" role="2Oq$k0">
                  <ref role="3cqZAo" node="4peSo3CHzzV" resolve="cb" />
                </node>
                <node concept="liA8E" id="4peSo3CJFNB" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:1R$Cm9qGRoH" resolve="symbol" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5_6ImQY3GdE" role="3eNLev">
            <node concept="2OqwBi" id="5_6ImQY3GdG" role="3eO9$A">
              <node concept="Xl_RD" id="5_6ImQY3GdH" role="2Oq$k0">
                <property role="Xl_RC" value="parameter" />
              </node>
              <node concept="liA8E" id="5_6ImQY3GdI" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="5_6ImQY3GdJ" role="37wK5m">
                  <node concept="37vLTw" id="5_6ImQY3GdK" role="2Oq$k0">
                    <ref role="3cqZAo" node="4peSo3CHzzV" resolve="cb" />
                  </node>
                  <node concept="liA8E" id="5_6ImQY3GdL" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:1R$Cm9qGRoH" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5_6ImQY3GdM" role="3eOfB_">
              <node concept="3cpWs8" id="63ioh_TT1_9" role="3cqZAp">
                <node concept="3cpWsn" id="63ioh_TT1_a" role="3cpWs9">
                  <property role="TrG5h" value="peek" />
                  <node concept="3uibUv" id="63ioh_TT1_3" role="1tU5fm">
                    <ref role="3uigEE" node="6infEALqzXA" resolve="NodePrinter.Formatter" />
                  </node>
                  <node concept="2OqwBi" id="63ioh_TT1_b" role="33vP2m">
                    <node concept="37vLTw" id="63ioh_TT1_c" role="2Oq$k0">
                      <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
                    </node>
                    <node concept="liA8E" id="63ioh_TT1_d" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6XxJ1FLXNhS" role="3cqZAp">
                <node concept="2OqwBi" id="6XxJ1FLXNhT" role="3clFbG">
                  <node concept="37vLTw" id="6XxJ1FLXNhU" role="2Oq$k0">
                    <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
                  </node>
                  <node concept="liA8E" id="6XxJ1FLXNhV" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2ShNRf" id="6XxJ1FLYIVq" role="37wK5m">
                      <node concept="1pGfFk" id="6XxJ1FLYJmt" role="2ShVmc">
                        <ref role="37wK5l" node="6XxJ1FLXDlP" resolve="NodePrinter.NodeFormatter" />
                        <node concept="3K4zz7" id="63ioh_TT2cr" role="37wK5m">
                          <node concept="37vLTw" id="63ioh_TT2oC" role="3K4GZi">
                            <ref role="3cqZAo" node="6XxJ1FLYfHw" resolve="NO_PARAMS" />
                          </node>
                          <node concept="3y3z36" id="63ioh_TT21N" role="3K4Cdx">
                            <node concept="10Nm6u" id="63ioh_TT27b" role="3uHU7w" />
                            <node concept="37vLTw" id="63ioh_TT1Wz" role="3uHU7B">
                              <ref role="3cqZAo" node="63ioh_TT1_a" resolve="peek" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6XxJ1FLYIjo" role="3K4E3e">
                            <node concept="37vLTw" id="63ioh_TT1_e" role="2Oq$k0">
                              <ref role="3cqZAo" node="63ioh_TT1_a" resolve="peek" />
                            </node>
                            <node concept="liA8E" id="6XxJ1FLYN8c" role="2OqNvi">
                              <ref role="37wK5l" node="6XxJ1FLYJFR" resolve="getSeparators" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5_6ImQYAkSP" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="6infEALqiR1" role="3eNLev">
            <node concept="2OqwBi" id="3t7_2FgUSos" role="3eO9$A">
              <node concept="Xl_RD" id="3t7_2FgUSot" role="2Oq$k0">
                <property role="Xl_RC" value="list" />
              </node>
              <node concept="liA8E" id="3t7_2FgUSou" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="3t7_2FgUSov" role="37wK5m">
                  <node concept="37vLTw" id="3t7_2FgUSow" role="2Oq$k0">
                    <ref role="3cqZAo" node="4peSo3CHzzV" resolve="cb" />
                  </node>
                  <node concept="liA8E" id="3t7_2FgUSox" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:1R$Cm9qGRoH" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6infEALqiR3" role="3eOfB_">
              <node concept="3clFbF" id="6XxJ1FLXLE4" role="3cqZAp">
                <node concept="2OqwBi" id="6XxJ1FLXLE5" role="3clFbG">
                  <node concept="37vLTw" id="6XxJ1FLXLE6" role="2Oq$k0">
                    <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
                  </node>
                  <node concept="liA8E" id="6XxJ1FLXLE7" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2ShNRf" id="6XxJ1FLXLE8" role="37wK5m">
                      <node concept="1pGfFk" id="6XxJ1FLXLE9" role="2ShVmc">
                        <ref role="37wK5l" node="6XxJ1FLXDlP" resolve="NodePrinter.NodeFormatter" />
                        <node concept="37vLTw" id="6XxJ1FLXMZQ" role="37wK5m">
                          <ref role="3cqZAo" node="6XxJ1FLXefa" resolve="ARRAY_PARAMS" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5_6ImQY3Gzl" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="5_6ImQYAla0" role="9aQIa">
            <node concept="3clFbS" id="5_6ImQYAla1" role="9aQI4">
              <node concept="3SKdUt" id="5_6ImQY3GdN" role="3cqZAp">
                <node concept="3SKdUq" id="5_6ImQY3GdO" role="3SKWNk">
                  <property role="3SKdUp" value="FIXME: implement" />
                </node>
              </node>
              <node concept="YS8fn" id="5_6ImQY3GdP" role="3cqZAp">
                <node concept="2ShNRf" id="5_6ImQY3GdQ" role="YScLw">
                  <node concept="1pGfFk" id="5_6ImQY3GdR" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4peSo3CNtem" role="3cqZAp" />
        <node concept="3clFbF" id="4peSo3CNsGJ" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CNsGK" role="3clFbG">
            <node concept="37vLTw" id="4peSo3CNsGL" role="2Oq$k0">
              <ref role="3cqZAo" node="4peSo3CK9Ka" resolve="endStack" />
            </node>
            <node concept="liA8E" id="4peSo3CNsGM" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
              <node concept="Rm8GO" id="4peSo3CNu8z" role="37wK5m">
                <ref role="Rm8GQ" node="5s497Vr9kSP" resolve="END_TERMS" />
                <ref role="1Px2BO" node="5s497Vr8LPr" resolve="NodePrinter.EndWalk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4peSo3CJxFt" role="3cqZAp">
          <node concept="Rm8GO" id="4peSo3CJxLa" role="3clFbG">
            <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
            <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CJHIx" role="jymVt" />
    <node concept="3clFb_" id="4peSo3CHz$y" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkList" />
      <node concept="3uibUv" id="4peSo3CHz$z" role="3clF45">
        <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="4peSo3CHz$$" role="1B3o_S" />
      <node concept="3clFbS" id="4peSo3CHz$L" role="3clF47">
        <node concept="3clFbF" id="4peSo3CPC4k" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CPHs4" role="3clFbG">
            <node concept="2OqwBi" id="4peSo3CPCDw" role="2Oq$k0">
              <node concept="37vLTw" id="4peSo3CPC4i" role="2Oq$k0">
                <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
              </node>
              <node concept="liA8E" id="4peSo3CPHaS" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
              </node>
            </node>
            <node concept="liA8E" id="4peSo3CQr9o" role="2OqNvi">
              <ref role="37wK5l" node="6infEALrJVZ" resolve="listStart" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5_6ImQYC1nT" role="3cqZAp">
          <node concept="2OqwBi" id="5_6ImQYC1nU" role="3clFbG">
            <node concept="37vLTw" id="5_6ImQYC1nV" role="2Oq$k0">
              <ref role="3cqZAo" node="4peSo3CK9Ka" resolve="endStack" />
            </node>
            <node concept="liA8E" id="5_6ImQYC1nW" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
              <node concept="Rm8GO" id="5_6ImQYC1Cy" role="37wK5m">
                <ref role="Rm8GQ" node="5s497Vr8Sxa" resolve="END_LIST" />
                <ref role="1Px2BO" node="5s497Vr8LPr" resolve="NodePrinter.EndWalk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4peSo3CK1PR" role="3cqZAp">
          <node concept="Rm8GO" id="4peSo3CK1Y2" role="3clFbG">
            <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
            <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4peSo3CHz$A" role="3clF46">
        <property role="TrG5h" value="listb" />
        <node concept="3uibUv" id="5YIOneOU7$j" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CJMqa" role="jymVt" />
    <node concept="3clFb_" id="4peSo3CHz$8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkValues" />
      <node concept="3uibUv" id="4peSo3CHz$9" role="3clF45">
        <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="4peSo3CHz$a" role="1B3o_S" />
      <node concept="16euLQ" id="4peSo3CHz$i" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="3clFbS" id="4peSo3CHz$j" role="3clF47">
        <node concept="3cpWs8" id="4peSo3CL10f" role="3cqZAp">
          <node concept="3cpWsn" id="4peSo3CL10g" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="4peSo3CL3cC" role="1tU5fm" />
            <node concept="2YIFZM" id="4peSo3CL10h" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="5YIOneON9dE" role="37wK5m">
                <node concept="2OqwBi" id="5YIOneON8CN" role="2Oq$k0">
                  <node concept="2OqwBi" id="5YIOneON8es" role="2Oq$k0">
                    <node concept="37vLTw" id="5YIOneON85J" role="2Oq$k0">
                      <ref role="3cqZAo" node="4peSo3CHz$c" resolve="valb" />
                    </node>
                    <node concept="liA8E" id="5YIOneON8ue" role="2OqNvi">
                      <ref role="37wK5l" to="ie8e:5YIOneOMEJi" resolve="values" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5YIOneON95r" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="5YIOneON9xb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6infEALrTkZ" role="3cqZAp">
          <node concept="3cpWsn" id="6infEALrTl0" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="6infEALrTJi" role="1tU5fm" />
            <node concept="2YIFZM" id="6infEALrUcU" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="6infEALrTl1" role="37wK5m">
                <node concept="37vLTw" id="6infEALrTl2" role="2Oq$k0">
                  <ref role="3cqZAo" node="4peSo3CHz$c" resolve="valb" />
                </node>
                <node concept="liA8E" id="6infEALrTl3" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:1R$Cm9qGRoH" resolve="symbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6infEALrX8F" role="3cqZAp" />
        <node concept="3clFbF" id="6infEALrQyb" role="3cqZAp">
          <node concept="2OqwBi" id="6infEALrQIX" role="3clFbG">
            <node concept="2OqwBi" id="6infEALrVJi" role="2Oq$k0">
              <node concept="37vLTw" id="6infEALrVJj" role="2Oq$k0">
                <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
              </node>
              <node concept="liA8E" id="6infEALrVJk" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
              </node>
            </node>
            <node concept="liA8E" id="6infEALrQYE" role="2OqNvi">
              <ref role="37wK5l" node="6infEALqKZg" resolve="formatValue" />
              <node concept="37vLTw" id="6infEALrTl4" role="37wK5m">
                <ref role="3cqZAo" node="6infEALrTl0" resolve="name" />
              </node>
              <node concept="37vLTw" id="6infEALrSME" role="37wK5m">
                <ref role="3cqZAo" node="4peSo3CL10g" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4peSo3CK097" role="3cqZAp">
          <node concept="Rm8GO" id="4peSo3CK0nk" role="3clFbG">
            <ref role="Rm8GQ" to="ie8e:2q_78a95hAN" resolve="CONTINUE" />
            <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4peSo3CHz$c" role="3clF46">
        <property role="TrG5h" value="valb" />
        <node concept="3uibUv" id="5YIOneONkSZ" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1msb0mq99GH" resolve="ValueFunc" />
          <node concept="16syzq" id="5YIOneONkT0" role="11_B2D">
            <ref role="16sUi3" node="4peSo3CHz$i" resolve="V" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CJJ6l" role="jymVt" />
    <node concept="3clFb_" id="4peSo3CHz$O" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkValue" />
      <node concept="3uibUv" id="4peSo3CHz$P" role="3clF45">
        <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="4peSo3CHz$Q" role="1B3o_S" />
      <node concept="37vLTG" id="4peSo3CHz$S" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="4peSo3CHz$T" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
          <node concept="3qTvmN" id="4peSo3CHz$U" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="4peSo3CHz$V" role="3clF47">
        <node concept="3clFbF" id="3mz2_dYmgOv" role="3cqZAp">
          <node concept="2OqwBi" id="3mz2_dYmh_P" role="3clFbG">
            <node concept="2OqwBi" id="3mz2_dYmgVH" role="2Oq$k0">
              <node concept="37vLTw" id="3mz2_dYmgOu" role="2Oq$k0">
                <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
              </node>
              <node concept="liA8E" id="3mz2_dYmhrf" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
              </node>
            </node>
            <node concept="liA8E" id="3mz2_dYmhLX" role="2OqNvi">
              <ref role="37wK5l" node="3mz2_dYmhS3" resolve="formatValue" />
              <node concept="2YIFZM" id="3mz2_dYml7v" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="3mz2_dYmlnT" role="37wK5m">
                  <node concept="37vLTw" id="3mz2_dYmlgS" role="2Oq$k0">
                    <ref role="3cqZAo" node="4peSo3CHz$S" resolve="value" />
                  </node>
                  <node concept="liA8E" id="3mz2_dYmlx$" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:1msb0mq8QTt" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3mz2_dYmvJJ" role="3cqZAp">
          <node concept="Rm8GO" id="3mz2_dYmvJK" role="3clFbG">
            <ref role="Rm8GQ" to="ie8e:2q_78a95hAN" resolve="CONTINUE" />
            <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CJMXP" role="jymVt" />
    <node concept="3clFb_" id="4peSo3CHz$m" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkVariables" />
      <node concept="3uibUv" id="4peSo3CHz$n" role="3clF45">
        <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="4peSo3CHz$o" role="1B3o_S" />
      <node concept="3clFbS" id="4peSo3CHz$v" role="3clF47">
        <node concept="3SKdUt" id="4peSo3CJJEz" role="3cqZAp">
          <node concept="3SKdUq" id="4peSo3CJJE$" role="3SKWNk">
            <property role="3SKdUp" value="FIXME implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="4peSo3CJJE_" role="3cqZAp">
          <node concept="2ShNRf" id="4peSo3CJJEA" role="YScLw">
            <node concept="1pGfFk" id="4peSo3CJJEB" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4peSo3CHz$q" role="3clF46">
        <property role="TrG5h" value="varb" />
        <node concept="3uibUv" id="5YIOneOSlWm" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:uNmovXiSQ6" resolve="VariableFunc" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CJNnW" role="jymVt" />
    <node concept="3clFb_" id="4peSo3CHz$Y" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkVariable" />
      <node concept="3uibUv" id="4peSo3CHz$Z" role="3clF45">
        <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="4peSo3CHz_0" role="1B3o_S" />
      <node concept="37vLTG" id="4peSo3CHz_2" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3uibUv" id="4peSo3CHz_3" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3clFbS" id="4peSo3CHz_4" role="3clF47">
        <node concept="3clFbF" id="4peSo3CNNmX" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CNSB1" role="3clFbG">
            <node concept="2OqwBi" id="4peSo3CNNSw" role="2Oq$k0">
              <node concept="37vLTw" id="4peSo3CNNmW" role="2Oq$k0">
                <ref role="3cqZAo" node="4peSo3CIVXA" resolve="formatStack" />
              </node>
              <node concept="liA8E" id="4peSo3CNSpS" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
              </node>
            </node>
            <node concept="liA8E" id="4peSo3CNTik" role="2OqNvi">
              <ref role="37wK5l" node="6infEALrBJ1" resolve="listNext" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4peSo3CNTGL" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CNTQn" role="3clFbG">
            <node concept="37vLTw" id="4peSo3CNTGJ" role="2Oq$k0">
              <ref role="3cqZAo" node="4peSo3CIw__" resolve="stringBuilder" />
            </node>
            <node concept="liA8E" id="4peSo3CNUgl" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="2OqwBi" id="4peSo3D0Vo_" role="37wK5m">
                <node concept="37vLTw" id="4peSo3D0VkF" role="2Oq$k0">
                  <ref role="3cqZAo" node="4peSo3D0HuN" resolve="variableSymbol" />
                </node>
                <node concept="liA8E" id="4peSo3D0VPs" role="2OqNvi">
                  <ref role="37wK5l" node="3gJBs5s$cVK" resolve="variableSymbol" />
                  <node concept="37vLTw" id="4peSo3D0VSw" role="37wK5m">
                    <ref role="3cqZAo" node="4peSo3CHz_2" resolve="variable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4peSo3CNUWB" role="3cqZAp">
          <node concept="Rm8GO" id="4peSo3CNVh5" role="3clFbG">
            <ref role="Rm8GQ" to="ie8e:2q_78a95hAN" resolve="CONTINUE" />
            <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CJNM4" role="jymVt" />
    <node concept="3clFb_" id="4peSo3CHz_7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="endWalk" />
      <node concept="3cqZAl" id="4peSo3CHz_8" role="3clF45" />
      <node concept="3Tm1VV" id="4peSo3CHz_9" role="1B3o_S" />
      <node concept="3clFbS" id="4peSo3CHz_b" role="3clF47">
        <node concept="3clFbF" id="4peSo3CKhiq" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CKkmF" role="3clFbG">
            <node concept="2OqwBi" id="4peSo3CKhNN" role="2Oq$k0">
              <node concept="37vLTw" id="4peSo3CKhip" role="2Oq$k0">
                <ref role="3cqZAo" node="4peSo3CK9Ka" resolve="endStack" />
              </node>
              <node concept="liA8E" id="4peSo3CKk3r" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~LinkedList.pop():java.lang.Object" resolve="pop" />
              </node>
            </node>
            <node concept="liA8E" id="4peSo3CKldW" role="2OqNvi">
              <ref role="37wK5l" node="5s497Vr8NSN" resolve="endAction" />
              <node concept="Xjq3P" id="4peSo3CKlmC" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CIChO" role="jymVt" />
    <node concept="3clFb_" id="4peSo3CICTQ" role="jymVt">
      <property role="TrG5h" value="reset" />
      <node concept="3cqZAl" id="4peSo3CICTS" role="3clF45" />
      <node concept="3Tm6S6" id="4peSo3CIDl$" role="1B3o_S" />
      <node concept="3clFbS" id="4peSo3CICTU" role="3clF47">
        <node concept="3clFbF" id="4peSo3CIDQc" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CIE1E" role="3clFbG">
            <node concept="37vLTw" id="4peSo3CIDQb" role="2Oq$k0">
              <ref role="3cqZAo" node="4peSo3CIw__" resolve="stringBuilder" />
            </node>
            <node concept="liA8E" id="4peSo3CIHLR" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~AbstractStringBuilder.setLength(int):void" resolve="setLength" />
              <node concept="3cmrfG" id="4peSo3CIHNw" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CID9F" role="jymVt" />
    <node concept="2tJIrI" id="6XxJ1FLX5sV" role="jymVt" />
    <node concept="312cEu" id="6infEALqzXA" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Formatter" />
      <property role="1sVAO0" value="true" />
      <node concept="3clFbW" id="6XxJ1FLX$2H" role="jymVt">
        <node concept="3cqZAl" id="6XxJ1FLX$2J" role="3clF45" />
        <node concept="3Tmbuc" id="6XxJ1FLYome" role="1B3o_S" />
        <node concept="3clFbS" id="6XxJ1FLX$2L" role="3clF47">
          <node concept="3clFbF" id="6XxJ1FLX$Wu" role="3cqZAp">
            <node concept="37vLTI" id="6XxJ1FLX_kR" role="3clFbG">
              <node concept="37vLTw" id="6XxJ1FLX_CZ" role="37vLTx">
                <ref role="3cqZAo" node="6XxJ1FLX$I4" resolve="listSeparators" />
              </node>
              <node concept="2OqwBi" id="6XxJ1FLX$WU" role="37vLTJ">
                <node concept="Xjq3P" id="6XxJ1FLX$Wt" role="2Oq$k0" />
                <node concept="2OwXpG" id="6XxJ1FLX_6S" role="2OqNvi">
                  <ref role="2Oxat5" node="6XxJ1FLXvac" resolve="listSep" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6XxJ1FLX$I4" role="3clF46">
          <property role="TrG5h" value="listSeparators" />
          <node concept="10Q1$e" id="6XxJ1FLX$NH" role="1tU5fm">
            <node concept="17QB3L" id="6XxJ1FLX$I3" role="10Q1$1" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6XxJ1FLYizn" role="jymVt">
        <property role="TrG5h" value="setSeparators" />
        <node concept="37vLTG" id="6XxJ1FLYkZs" role="3clF46">
          <property role="TrG5h" value="listSeparators" />
          <node concept="10Q1$e" id="6XxJ1FLYl$l" role="1tU5fm">
            <node concept="17QB3L" id="6XxJ1FLYly2" role="10Q1$1" />
          </node>
        </node>
        <node concept="3cqZAl" id="6XxJ1FLYizp" role="3clF45" />
        <node concept="3Tmbuc" id="6XxJ1FLYnPa" role="1B3o_S" />
        <node concept="3clFbS" id="6XxJ1FLYizr" role="3clF47">
          <node concept="3clFbF" id="6XxJ1FLYlAx" role="3cqZAp">
            <node concept="37vLTI" id="6XxJ1FLYlAy" role="3clFbG">
              <node concept="37vLTw" id="6XxJ1FLYnMK" role="37vLTx">
                <ref role="3cqZAo" node="6XxJ1FLYkZs" resolve="listSeparators" />
              </node>
              <node concept="2OqwBi" id="6XxJ1FLYlA$" role="37vLTJ">
                <node concept="Xjq3P" id="6XxJ1FLYlA_" role="2Oq$k0" />
                <node concept="2OwXpG" id="6XxJ1FLYlAA" role="2OqNvi">
                  <ref role="2Oxat5" node="6XxJ1FLXvac" resolve="listSep" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6XxJ1FLYJFR" role="jymVt">
        <property role="TrG5h" value="getSeparators" />
        <node concept="10Q1$e" id="6XxJ1FLYL1n" role="3clF45">
          <node concept="17QB3L" id="6XxJ1FLYKo8" role="10Q1$1" />
        </node>
        <node concept="3Tmbuc" id="6XxJ1FLYJFW" role="1B3o_S" />
        <node concept="3clFbS" id="6XxJ1FLYJFX" role="3clF47">
          <node concept="3clFbF" id="6XxJ1FLYN3Z" role="3cqZAp">
            <node concept="37vLTw" id="6XxJ1FLYN3Y" role="3clFbG">
              <ref role="3cqZAo" node="6XxJ1FLXvac" resolve="listSep" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6XxJ1FLYoWY" role="jymVt">
        <property role="TrG5h" value="append" />
        <node concept="3cqZAl" id="6XxJ1FLYoX0" role="3clF45" />
        <node concept="3Tmbuc" id="6XxJ1FLYpxo" role="1B3o_S" />
        <node concept="3clFbS" id="6XxJ1FLYoX2" role="3clF47">
          <node concept="3clFbF" id="6XxJ1FLYseT" role="3cqZAp">
            <node concept="2OqwBi" id="6XxJ1FLYsls" role="3clFbG">
              <node concept="37vLTw" id="6XxJ1FLYseS" role="2Oq$k0">
                <ref role="3cqZAo" node="4peSo3CIw__" resolve="stringBuilder" />
              </node>
              <node concept="liA8E" id="6XxJ1FLYsBR" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="37vLTw" id="6XxJ1FLYsEf" role="37wK5m">
                  <ref role="3cqZAo" node="6XxJ1FLYrv$" resolve="str" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6XxJ1FLYrv$" role="3clF46">
          <property role="TrG5h" value="str" />
          <node concept="17QB3L" id="6XxJ1FLYrvz" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="6infEALqKZg" role="jymVt">
        <property role="TrG5h" value="formatValue" />
        <property role="1EzhhJ" value="true" />
        <node concept="37vLTG" id="6infEALqKZu" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="6infEALqKZC" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="6infEALqKZF" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="6infEALqKZR" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6infEALqKZi" role="3clF45" />
        <node concept="3Tmbuc" id="6infEALqKZr" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALqKZk" role="3clF47" />
      </node>
      <node concept="3clFb_" id="3mz2_dYmhS3" role="jymVt">
        <property role="TrG5h" value="formatValue" />
        <property role="1EzhhJ" value="true" />
        <node concept="37vLTG" id="3mz2_dYmhS6" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="3mz2_dYmhS7" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="3mz2_dYmhS8" role="3clF45" />
        <node concept="3Tmbuc" id="3mz2_dYmhS9" role="1B3o_S" />
        <node concept="3clFbS" id="3mz2_dYmhSa" role="3clF47" />
      </node>
      <node concept="3clFb_" id="6XxJ1FLY4K6" role="jymVt">
        <property role="TrG5h" value="end" />
        <node concept="3cqZAl" id="6XxJ1FLY4K8" role="3clF45" />
        <node concept="3Tmbuc" id="6XxJ1FLY5gs" role="1B3o_S" />
        <node concept="3clFbS" id="6XxJ1FLY4Ka" role="3clF47">
          <node concept="YS8fn" id="6XxJ1FLY6BG" role="3cqZAp">
            <node concept="2ShNRf" id="6XxJ1FLY6Dn" role="YScLw">
              <node concept="1pGfFk" id="6XxJ1FLY7XZ" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                <node concept="Xl_RD" id="6XxJ1FLY7ZR" role="37wK5m">
                  <property role="Xl_RC" value="not implemented" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6infEALrJVZ" role="jymVt">
        <property role="TrG5h" value="listStart" />
        <property role="1EzhhJ" value="false" />
        <node concept="3cqZAl" id="6infEALrJW0" role="3clF45" />
        <node concept="3Tmbuc" id="6infEALrJW1" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALrJW2" role="3clF47">
          <node concept="3clFbF" id="6XxJ1FLXlfH" role="3cqZAp">
            <node concept="37vLTI" id="6XxJ1FLXlvC" role="3clFbG">
              <node concept="3cmrfG" id="6XxJ1FLXlyb" role="37vLTx">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6XxJ1FLXlfG" role="37vLTJ">
                <ref role="3cqZAo" node="6XxJ1FLXfBM" resolve="sepIdx" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6infEALrBJ1" role="jymVt">
        <property role="TrG5h" value="listNext" />
        <property role="1EzhhJ" value="false" />
        <node concept="3cqZAl" id="6infEALrBJ4" role="3clF45" />
        <node concept="3Tmbuc" id="6infEALrCaP" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALrBJ6" role="3clF47">
          <node concept="3clFbF" id="6XxJ1FLXgP8" role="3cqZAp">
            <node concept="2OqwBi" id="6XxJ1FLXgP9" role="3clFbG">
              <node concept="37vLTw" id="6XxJ1FLXgPa" role="2Oq$k0">
                <ref role="3cqZAo" node="4peSo3CIw__" resolve="stringBuilder" />
              </node>
              <node concept="liA8E" id="6XxJ1FLXgPb" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="AH0OO" id="6XxJ1FLXkkK" role="37wK5m">
                  <node concept="37vLTw" id="6XxJ1FLXkW4" role="AHEQo">
                    <ref role="3cqZAo" node="6XxJ1FLXfBM" resolve="sepIdx" />
                  </node>
                  <node concept="37vLTw" id="6XxJ1FLXjWH" role="AHHXb">
                    <ref role="3cqZAo" node="6XxJ1FLXvac" resolve="listSep" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6XxJ1FLXm2o" role="3cqZAp">
            <node concept="37vLTI" id="6XxJ1FLXmjG" role="3clFbG">
              <node concept="3cmrfG" id="6XxJ1FLXmoe" role="37vLTx">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="6XxJ1FLXm2m" role="37vLTJ">
                <ref role="3cqZAo" node="6XxJ1FLXfBM" resolve="sepIdx" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6infEALrKRp" role="jymVt">
        <property role="TrG5h" value="listEnd" />
        <property role="1EzhhJ" value="false" />
        <node concept="3cqZAl" id="6infEALrKRq" role="3clF45" />
        <node concept="3Tmbuc" id="6infEALrKRr" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALrKRs" role="3clF47">
          <node concept="3clFbJ" id="6XxJ1FLXmEU" role="3cqZAp">
            <node concept="3clFbS" id="6XxJ1FLXmEV" role="3clFbx">
              <node concept="3clFbF" id="6XxJ1FLXnn6" role="3cqZAp">
                <node concept="2OqwBi" id="6XxJ1FLXnn8" role="3clFbG">
                  <node concept="37vLTw" id="6XxJ1FLXnn9" role="2Oq$k0">
                    <ref role="3cqZAo" node="4peSo3CIw__" resolve="stringBuilder" />
                  </node>
                  <node concept="liA8E" id="6XxJ1FLXnna" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="AH0OO" id="6XxJ1FLXnnb" role="37wK5m">
                      <node concept="3cmrfG" id="6XxJ1FLXnHB" role="AHEQo">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="37vLTw" id="6XxJ1FLXnnd" role="AHHXb">
                        <ref role="3cqZAo" node="6XxJ1FLXvac" resolve="listSep" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="6XxJ1FLXXWV" role="3clFbw">
              <node concept="37vLTw" id="6XxJ1FLXmM1" role="3uHU7B">
                <ref role="3cqZAo" node="6XxJ1FLXfBM" resolve="sepIdx" />
              </node>
              <node concept="3cmrfG" id="6XxJ1FLXnf9" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6XxJ1FLXo94" role="3cqZAp">
            <node concept="37vLTI" id="6XxJ1FLXojM" role="3clFbG">
              <node concept="37vLTw" id="6XxJ1FLXo92" role="37vLTJ">
                <ref role="3cqZAo" node="6XxJ1FLXfBM" resolve="sepIdx" />
              </node>
              <node concept="3cmrfG" id="6XxJ1FLXoBB" role="37vLTx">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="6XxJ1FLXfBM" role="jymVt">
        <property role="TrG5h" value="sepIdx" />
        <node concept="3Tm6S6" id="6XxJ1FLXfBN" role="1B3o_S" />
        <node concept="10Oyi0" id="6XxJ1FLXg97" role="1tU5fm" />
        <node concept="3cmrfG" id="6XxJ1FLXgpG" role="33vP2m">
          <property role="3cmrfH" value="-1" />
        </node>
      </node>
      <node concept="312cEg" id="6XxJ1FLXvac" role="jymVt">
        <property role="TrG5h" value="listSep" />
        <node concept="3Tm6S6" id="6XxJ1FLXvad" role="1B3o_S" />
        <node concept="10Q1$e" id="6XxJ1FLXvOE" role="1tU5fm">
          <node concept="17QB3L" id="6XxJ1FLXvO0" role="10Q1$1" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6infEALqKVT" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6XxJ1FLX47M" role="jymVt" />
    <node concept="Qs71p" id="5s497Vr8LPr" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="EndWalk" />
      <node concept="QsSxf" id="5s497Vr8Sxa" role="Qtgdg">
        <property role="TrG5h" value="END_LIST" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        <node concept="3clFb_" id="5s497Vr8SLw" role="2HKRsH">
          <property role="TrG5h" value="endAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="5s497Vr8V8B" role="3clF46">
            <property role="TrG5h" value="printer" />
            <node concept="3uibUv" id="4peSo3CK7M2" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CHy8D" resolve="NodePrinter" />
            </node>
          </node>
          <node concept="3cqZAl" id="5s497Vr8SLx" role="3clF45" />
          <node concept="3Tmbuc" id="5s497Vr8SLy" role="1B3o_S" />
          <node concept="3clFbS" id="5s497Vr8SL$" role="3clF47">
            <node concept="3SKdUt" id="6XxJ1FLY1ww" role="3cqZAp">
              <node concept="3SKdUq" id="6XxJ1FLY1_4" role="3SKWNk">
                <property role="3SKdUp" value="don't pop here, &quot;visitTerms&quot; is responsible for that" />
              </node>
            </node>
            <node concept="3clFbF" id="4peSo3CPN64" role="3cqZAp">
              <node concept="2OqwBi" id="4peSo3CPWIF" role="3clFbG">
                <node concept="2OqwBi" id="4peSo3CPNG9" role="2Oq$k0">
                  <node concept="liA8E" id="4peSo3CPWxc" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                  <node concept="2OqwBi" id="4peSo3CQ$MB" role="2Oq$k0">
                    <node concept="37vLTw" id="4peSo3CQ$He" role="2Oq$k0">
                      <ref role="3cqZAo" node="5s497Vr8V8B" resolve="printer" />
                    </node>
                    <node concept="2OwXpG" id="4peSo3CQ_0G" role="2OqNvi">
                      <ref role="2Oxat5" node="4peSo3CIVXA" resolve="formatStack" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4peSo3CPXDM" role="2OqNvi">
                  <ref role="37wK5l" node="6infEALrKRp" resolve="listEnd" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="5s497VrcvXU" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
      </node>
      <node concept="QsSxf" id="5s497Vr9kSP" role="Qtgdg">
        <property role="TrG5h" value="END_TERMS" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        <node concept="3clFb_" id="5s497Vr9lBv" role="2HKRsH">
          <property role="TrG5h" value="endAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="3cqZAl" id="5s497Vr9lBy" role="3clF45" />
          <node concept="3Tmbuc" id="5s497Vr9lBz" role="1B3o_S" />
          <node concept="3clFbS" id="5s497Vr9lB_" role="3clF47">
            <node concept="3clFbF" id="5_6ImQYBG$T" role="3cqZAp">
              <node concept="2OqwBi" id="6XxJ1FLYCPr" role="3clFbG">
                <node concept="2OqwBi" id="5_6ImQYBG$V" role="2Oq$k0">
                  <node concept="liA8E" id="5_6ImQYBG$W" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.pop():java.lang.Object" resolve="pop" />
                  </node>
                  <node concept="2OqwBi" id="5_6ImQYBG$X" role="2Oq$k0">
                    <node concept="37vLTw" id="5_6ImQYBG$Y" role="2Oq$k0">
                      <ref role="3cqZAo" node="4peSo3CK90i" resolve="printer" />
                    </node>
                    <node concept="2OwXpG" id="5_6ImQYBG$Z" role="2OqNvi">
                      <ref role="2Oxat5" node="4peSo3CIVXA" resolve="formatStack" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6XxJ1FLYD2J" role="2OqNvi">
                  <ref role="37wK5l" node="6XxJ1FLY4K6" resolve="end" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="5s497VrcwfQ" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
          <node concept="37vLTG" id="4peSo3CK90i" role="3clF46">
            <property role="TrG5h" value="printer" />
            <node concept="3uibUv" id="4peSo3CK90h" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CHy8D" resolve="NodePrinter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5s497Vr8NgH" role="1B3o_S" />
      <node concept="3clFb_" id="5s497Vr8NSN" role="jymVt">
        <property role="TrG5h" value="endAction" />
        <property role="1EzhhJ" value="true" />
        <node concept="3cqZAl" id="5s497Vr8NSO" role="3clF45" />
        <node concept="3Tmbuc" id="5s497Vr8Ob3" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr8NSQ" role="3clF47" />
        <node concept="37vLTG" id="4peSo3CK8$T" role="3clF46">
          <property role="TrG5h" value="printer" />
          <node concept="3uibUv" id="4peSo3CK8$S" role="1tU5fm">
            <ref role="3uigEE" node="4peSo3CHy8D" resolve="NodePrinter" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALqzsn" role="jymVt" />
    <node concept="312cEu" id="4peSo3CIWKi" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="NodeFormatter" />
      <node concept="312cEg" id="6XxJ1FLY6dx" role="jymVt">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3Tm6S6" id="6XxJ1FLY6dv" role="1B3o_S" />
        <node concept="3uibUv" id="6XxJ1FLY6dw" role="1tU5fm">
          <ref role="3uigEE" node="4peSo3CQ4MO" resolve="NodePrinter.TypeConcept" />
        </node>
      </node>
      <node concept="3clFbW" id="6XxJ1FLXDlP" role="jymVt">
        <node concept="3cqZAl" id="6XxJ1FLXDlR" role="3clF45" />
        <node concept="3Tm6S6" id="6XxJ1FLXDlS" role="1B3o_S" />
        <node concept="3clFbS" id="6XxJ1FLXDlT" role="3clF47">
          <node concept="XkiVB" id="6XxJ1FLXDLY" role="3cqZAp">
            <ref role="37wK5l" node="6XxJ1FLX$2H" resolve="NodePrinter.Formatter" />
            <node concept="37vLTw" id="6XxJ1FLXEFL" role="37wK5m">
              <ref role="3cqZAo" node="6XxJ1FLXDU0" resolve="listSep" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6XxJ1FLXDU0" role="3clF46">
          <property role="TrG5h" value="listSep" />
          <node concept="10Q1$e" id="6XxJ1FLXE55" role="1tU5fm">
            <node concept="17QB3L" id="6XxJ1FLXDTZ" role="10Q1$1" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6XxJ1FLXEGe" role="jymVt" />
      <node concept="3clFb_" id="6infEALq$_r" role="jymVt">
        <property role="TrG5h" value="formatValue" />
        <node concept="37vLTG" id="6infEALqA5W" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="6infEALqA68" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="6infEALq$Bx" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="6infEALq$BF" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6infEALq$_t" role="3clF45" />
        <node concept="3Tmbuc" id="6infEALqKZ1" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALq$_v" role="3clF47">
          <node concept="3clFbJ" id="6infEALqDY_" role="3cqZAp">
            <node concept="3clFbS" id="6infEALqDYA" role="3clFbx">
              <node concept="1DcWWT" id="6infEALqUJn" role="3cqZAp">
                <node concept="3clFbS" id="6infEALqUJo" role="2LFqv$">
                  <node concept="3clFbJ" id="6infEALqUJp" role="3cqZAp">
                    <node concept="3clFbS" id="6infEALqUJq" role="3clFbx">
                      <node concept="3clFbF" id="6XxJ1FLY6dC" role="3cqZAp">
                        <node concept="37vLTI" id="6XxJ1FLY6dD" role="3clFbG">
                          <node concept="2OqwBi" id="6XxJ1FLY6dE" role="37vLTJ">
                            <node concept="Xjq3P" id="6XxJ1FLY6dF" role="2Oq$k0" />
                            <node concept="2OwXpG" id="6XxJ1FLY6dG" role="2OqNvi">
                              <ref role="2Oxat5" node="6XxJ1FLY6dx" resolve="typeConcept" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="6XxJ1FLY6dH" role="37vLTx">
                            <ref role="3cqZAo" node="6infEALqUJB" resolve="cpt" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6infEALqUJr" role="3cqZAp">
                        <node concept="2OqwBi" id="6infEALqUJs" role="3clFbG">
                          <node concept="2OqwBi" id="6XxJ1FLY6dI" role="2Oq$k0">
                            <node concept="Xjq3P" id="6XxJ1FLY6dJ" role="2Oq$k0" />
                            <node concept="2OwXpG" id="6XxJ1FLY6dK" role="2OqNvi">
                              <ref role="2Oxat5" node="6XxJ1FLY6dx" resolve="typeConcept" />
                            </node>
                          </node>
                          <node concept="liA8E" id="6infEALqUJu" role="2OqNvi">
                            <ref role="37wK5l" node="4peSo3CQgRP" resolve="doAction" />
                            <node concept="Xjq3P" id="6XxJ1FLYykg" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="6infEALqUJw" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="6infEALqUJx" role="3clFbw">
                      <node concept="2OqwBi" id="6infEALqUJy" role="2Oq$k0">
                        <node concept="37vLTw" id="6infEALqUJz" role="2Oq$k0">
                          <ref role="3cqZAo" node="6infEALqUJB" resolve="cpt" />
                        </node>
                        <node concept="liA8E" id="6infEALqUJ$" role="2OqNvi">
                          <ref role="37wK5l" node="4peSo3CQeqc" resolve="conceptName" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6infEALqUJ_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="37vLTw" id="6infEALqXqy" role="37wK5m">
                          <ref role="3cqZAo" node="6infEALq$Bx" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="6infEALqUJB" role="1Duv9x">
                  <property role="TrG5h" value="cpt" />
                  <node concept="3uibUv" id="6infEALqUJC" role="1tU5fm">
                    <ref role="3uigEE" node="4peSo3CQ4MO" resolve="NodePrinter.TypeConcept" />
                  </node>
                </node>
                <node concept="uiWXb" id="6infEALqUJD" role="1DdaDG">
                  <ref role="uiZuM" node="4peSo3CQ4MO" resolve="NodePrinter.TypeConcept" />
                </node>
              </node>
              <node concept="3SKdUt" id="1jo82tq5ogp" role="3cqZAp">
                <node concept="3SKdUq" id="1jo82tq5ojq" role="3SKWNk">
                  <property role="3SKdUp" value="default: print the concept name" />
                </node>
              </node>
              <node concept="3clFbF" id="6infEALqUJE" role="3cqZAp">
                <node concept="2OqwBi" id="1jo82tq5nKw" role="3clFbG">
                  <node concept="2OqwBi" id="6infEALqUJF" role="2Oq$k0">
                    <node concept="37vLTw" id="6infEALqUJG" role="2Oq$k0">
                      <ref role="3cqZAo" node="4peSo3CIw__" resolve="stringBuilder" />
                    </node>
                    <node concept="liA8E" id="6infEALqUJH" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                      <node concept="37vLTw" id="6infEALqXq_" role="37wK5m">
                        <ref role="3cqZAo" node="6infEALq$Bx" resolve="value" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1jo82tq5o1I" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="Xl_RD" id="1jo82tq5o4i" role="37wK5m">
                      <property role="Xl_RC" value=" " />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="6infEALqUJJ" role="3cqZAp">
                <node concept="3SKdUq" id="6infEALqUJK" role="3SKWNk">
                  <property role="3SKdUp" value="expect name" />
                </node>
              </node>
              <node concept="3clFbH" id="6infEALqDYG" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="6infEALqDYH" role="3clFbw">
              <node concept="Xl_RD" id="6infEALqDYI" role="2Oq$k0">
                <property role="Xl_RC" value="concept" />
              </node>
              <node concept="liA8E" id="6infEALqDYJ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="6infEALqK7y" role="37wK5m">
                  <ref role="3cqZAo" node="6infEALqA5W" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="6infEALqDYN" role="9aQIa">
              <node concept="3clFbS" id="6infEALqDYO" role="9aQI4">
                <node concept="YS8fn" id="6infEALsc7v" role="3cqZAp">
                  <node concept="2ShNRf" id="6infEALsc8q" role="YScLw">
                    <node concept="1pGfFk" id="6infEALscpK" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                      <node concept="Xl_RD" id="6infEALscsF" role="37wK5m">
                        <property role="Xl_RC" value="not implemented" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="6infEALqDYV" role="3eNLev">
              <node concept="3clFbS" id="6infEALqDYW" role="3eOfB_">
                <node concept="3clFbF" id="6infEALqKp7" role="3cqZAp">
                  <node concept="2OqwBi" id="6infEALqKp8" role="3clFbG">
                    <node concept="37vLTw" id="6infEALqKpa" role="2Oq$k0">
                      <ref role="3cqZAo" node="4peSo3CIw__" resolve="stringBuilder" />
                    </node>
                    <node concept="liA8E" id="6infEALqKpd" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                      <node concept="37vLTw" id="6infEALqKuI" role="37wK5m">
                        <ref role="3cqZAo" node="6infEALq$Bx" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6infEALqDZ2" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6infEALqDZ3" role="3eO9$A">
                <node concept="Xl_RD" id="6infEALqDZ4" role="2Oq$k0">
                  <property role="Xl_RC" value="name" />
                </node>
                <node concept="liA8E" id="6infEALqK7G" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="6infEALqK7H" role="37wK5m">
                    <ref role="3cqZAo" node="6infEALqA5W" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="6infEALqDZ9" role="3eNLev">
              <node concept="3clFbS" id="6infEALqDZa" role="3eOfB_">
                <node concept="3clFbF" id="6infEALqKAx" role="3cqZAp">
                  <node concept="2OqwBi" id="6infEALqKAy" role="3clFbG">
                    <node concept="37vLTw" id="6infEALqKAz" role="2Oq$k0">
                      <ref role="3cqZAo" node="4peSo3CIw__" resolve="stringBuilder" />
                    </node>
                    <node concept="liA8E" id="6infEALqKA$" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                      <node concept="37vLTw" id="6infEALqKD9" role="37wK5m">
                        <ref role="3cqZAo" node="6infEALq$Bx" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6infEALqDZg" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6infEALqDZh" role="3eO9$A">
                <node concept="Xl_RD" id="6infEALqDZi" role="2Oq$k0">
                  <property role="Xl_RC" value="classifier" />
                </node>
                <node concept="liA8E" id="6infEALqK7Q" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="6infEALqK7R" role="37wK5m">
                    <ref role="3cqZAo" node="6infEALqA5W" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="6infEALqDZn" role="3eNLev">
              <node concept="3clFbS" id="6infEALqDZo" role="3eOfB_">
                <node concept="3SKdUt" id="6infEALqKFm" role="3cqZAp">
                  <node concept="3SKdUq" id="6infEALqKFn" role="3SKWNk">
                    <property role="3SKdUp" value="do nothing" />
                  </node>
                </node>
                <node concept="3clFbH" id="6infEALqDZu" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6infEALqDZv" role="3eO9$A">
                <node concept="Xl_RD" id="6infEALqDZw" role="2Oq$k0">
                  <property role="Xl_RC" value="cid" />
                </node>
                <node concept="liA8E" id="6infEALqK80" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="6infEALqK81" role="37wK5m">
                    <ref role="3cqZAo" node="6infEALqA5W" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="6infEALqDZ_" role="3eNLev">
              <node concept="3clFbS" id="6infEALqDZA" role="3eOfB_">
                <node concept="3SKdUt" id="6infEALqKFz" role="3cqZAp">
                  <node concept="3SKdUq" id="6infEALqKF$" role="3SKWNk">
                    <property role="3SKdUp" value="do nothing" />
                  </node>
                </node>
                <node concept="3clFbH" id="6infEALqDZG" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6infEALqDZH" role="3eO9$A">
                <node concept="Xl_RD" id="6infEALqDZI" role="2Oq$k0">
                  <property role="Xl_RC" value="id" />
                </node>
                <node concept="liA8E" id="6infEALqK8a" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="6infEALqK8b" role="37wK5m">
                    <ref role="3cqZAo" node="6infEALqA5W" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6XxJ1FLYcyM" role="jymVt" />
      <node concept="3clFb_" id="3mz2_dYmjYp" role="jymVt">
        <property role="TrG5h" value="formatValue" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="3mz2_dYmjYq" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="3mz2_dYmjYr" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="3mz2_dYmjYs" role="3clF45" />
        <node concept="3Tmbuc" id="3mz2_dYmjYt" role="1B3o_S" />
        <node concept="3clFbS" id="3mz2_dYmjYv" role="3clF47">
          <node concept="3clFbF" id="3mz2_dYmkTh" role="3cqZAp">
            <node concept="2OqwBi" id="3mz2_dYmkTj" role="3clFbG">
              <node concept="37vLTw" id="3mz2_dYmkTk" role="2Oq$k0">
                <ref role="3cqZAo" node="4peSo3CIw__" resolve="stringBuilder" />
              </node>
              <node concept="liA8E" id="3mz2_dYmkTl" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="37vLTw" id="3mz2_dYmkTm" role="37wK5m">
                  <ref role="3cqZAo" node="3mz2_dYmjYq" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3mz2_dYmksG" role="jymVt" />
      <node concept="3clFb_" id="6XxJ1FLYcN8" role="jymVt">
        <property role="TrG5h" value="end" />
        <property role="1EzhhJ" value="false" />
        <node concept="3cqZAl" id="6XxJ1FLYcN9" role="3clF45" />
        <node concept="3Tmbuc" id="6XxJ1FLYcNa" role="1B3o_S" />
        <node concept="3clFbS" id="6XxJ1FLYcNg" role="3clF47">
          <node concept="3clFbJ" id="6XxJ1FLYdeb" role="3cqZAp">
            <node concept="3clFbS" id="6XxJ1FLYdec" role="3clFbx">
              <node concept="3clFbF" id="6XxJ1FLYhBW" role="3cqZAp">
                <node concept="2OqwBi" id="6XxJ1FLYhGE" role="3clFbG">
                  <node concept="37vLTw" id="6XxJ1FLYhBV" role="2Oq$k0">
                    <ref role="3cqZAo" node="6XxJ1FLY6dx" resolve="typeConcept" />
                  </node>
                  <node concept="liA8E" id="6XxJ1FLYhPs" role="2OqNvi">
                    <ref role="37wK5l" node="6XxJ1FLYeRG" resolve="endAction" />
                    <node concept="Xjq3P" id="6XxJ1FLYy7b" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6XxJ1FLYdoi" role="3clFbw">
              <node concept="10Nm6u" id="6XxJ1FLYdqs" role="3uHU7w" />
              <node concept="37vLTw" id="6XxJ1FLYdiT" role="3uHU7B">
                <ref role="3cqZAo" node="6XxJ1FLY6dx" resolve="typeConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6XxJ1FLYcNh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4peSo3CIWCa" role="1B3o_S" />
      <node concept="3uibUv" id="6infEALqDFH" role="1zkMxy">
        <ref role="3uigEE" node="6infEALqzXA" resolve="NodePrinter.Formatter" />
      </node>
    </node>
    <node concept="2tJIrI" id="6XxJ1FLY8hR" role="jymVt" />
    <node concept="Qs71p" id="4peSo3CQ4MO" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TypeConcept" />
      <node concept="QsSxf" id="4peSo3CQ66U" role="Qtgdg">
        <property role="TrG5h" value="CLASSIFIER_TYPE" />
        <ref role="37wK5l" node="4peSo3CQ5Wp" resolve="NodePrinter.TypeConcept" />
        <node concept="Xl_RD" id="4peSo3CQ6dt" role="37wK5m">
          <property role="Xl_RC" value="ClassifierType" />
        </node>
        <node concept="3clFb_" id="4peSo3CQi4z" role="2HKRsH">
          <property role="TrG5h" value="doAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="4peSo3CQi4$" role="3clF46">
            <property role="TrG5h" value="fomatter" />
            <node concept="3uibUv" id="6XxJ1FLYuP2" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
            </node>
          </node>
          <node concept="3cqZAl" id="4peSo3CQi4A" role="3clF45" />
          <node concept="3Tm1VV" id="4peSo3CQi4B" role="1B3o_S" />
          <node concept="3clFbS" id="4peSo3CQi4D" role="3clF47" />
        </node>
      </node>
      <node concept="QsSxf" id="7DXHbsZBcQM" role="Qtgdg">
        <property role="TrG5h" value="ARRAY_TYPE" />
        <ref role="37wK5l" node="4peSo3CQ5Wp" resolve="NodePrinter.TypeConcept" />
        <node concept="Xl_RD" id="7DXHbsZBcQN" role="37wK5m">
          <property role="Xl_RC" value="ArrayType" />
        </node>
        <node concept="3clFb_" id="7DXHbsZBcQO" role="2HKRsH">
          <property role="TrG5h" value="doAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="7DXHbsZBcQP" role="3clF46">
            <property role="TrG5h" value="fomatter" />
            <node concept="3uibUv" id="6XxJ1FLYuBa" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
            </node>
          </node>
          <node concept="3cqZAl" id="7DXHbsZBcQR" role="3clF45" />
          <node concept="3Tm1VV" id="7DXHbsZBcQS" role="1B3o_S" />
          <node concept="3clFbS" id="7DXHbsZBcQT" role="3clF47">
            <node concept="3clFbF" id="6XxJ1FLYyLI" role="3cqZAp">
              <node concept="2OqwBi" id="6XxJ1FLYyQW" role="3clFbG">
                <node concept="37vLTw" id="6XxJ1FLYyLH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DXHbsZBcQP" resolve="fomatter" />
                </node>
                <node concept="liA8E" id="6XxJ1FLYyWy" role="2OqNvi">
                  <ref role="37wK5l" node="6XxJ1FLYizn" resolve="setSeparators" />
                  <node concept="37vLTw" id="6XxJ1FLYz3C" role="37wK5m">
                    <ref role="3cqZAo" node="6XxJ1FLYfHw" resolve="NO_PARAMS" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="6XxJ1FLYh8B" role="2HKRsH">
          <property role="TrG5h" value="endAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="6XxJ1FLYh8C" role="3clF46">
            <property role="TrG5h" value="fomatter" />
            <node concept="3uibUv" id="6XxJ1FLYuou" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
            </node>
          </node>
          <node concept="3cqZAl" id="6XxJ1FLYh8E" role="3clF45" />
          <node concept="3Tmbuc" id="6XxJ1FLYh8F" role="1B3o_S" />
          <node concept="3clFbS" id="6XxJ1FLYh8H" role="3clF47">
            <node concept="3clFbF" id="6XxJ1FLYhpn" role="3cqZAp">
              <node concept="2OqwBi" id="6XxJ1FLYhpo" role="3clFbG">
                <node concept="37vLTw" id="6XxJ1FLYhpq" role="2Oq$k0">
                  <ref role="3cqZAo" node="6XxJ1FLYh8C" resolve="fomatter" />
                </node>
                <node concept="liA8E" id="6XxJ1FLYhps" role="2OqNvi">
                  <ref role="37wK5l" node="6XxJ1FLYoWY" resolve="append" />
                  <node concept="Xl_RD" id="6XxJ1FLYhpt" role="37wK5m">
                    <property role="Xl_RC" value="[]" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="QsSxf" id="4peSo3CQ8US" role="Qtgdg">
        <property role="TrG5h" value="TYPE_VARIABLE_REFERENCE" />
        <ref role="37wK5l" node="4peSo3CQ5Wp" resolve="NodePrinter.TypeConcept" />
        <node concept="Xl_RD" id="4peSo3CQ8UT" role="37wK5m">
          <property role="Xl_RC" value="TypeVariableReference" />
        </node>
        <node concept="3clFb_" id="4peSo3CQicN" role="2HKRsH">
          <property role="TrG5h" value="doAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="4peSo3CQicO" role="3clF46">
            <property role="TrG5h" value="fomatter" />
            <node concept="3uibUv" id="6XxJ1FLYuaM" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
            </node>
          </node>
          <node concept="3cqZAl" id="4peSo3CQicQ" role="3clF45" />
          <node concept="3Tm1VV" id="4peSo3CQicR" role="1B3o_S" />
          <node concept="3clFbS" id="4peSo3CQicS" role="3clF47" />
        </node>
      </node>
      <node concept="QsSxf" id="4peSo3CQ8ZD" role="Qtgdg">
        <property role="TrG5h" value="WILDCARD_TYPE" />
        <ref role="37wK5l" node="4peSo3CQ5Wp" resolve="NodePrinter.TypeConcept" />
        <node concept="3clFb_" id="4peSo3CQiyg" role="2HKRsH">
          <property role="TrG5h" value="doAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="4peSo3CQiyh" role="3clF46">
            <property role="TrG5h" value="fomatter" />
            <node concept="3uibUv" id="6XxJ1FLYtWs" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
            </node>
          </node>
          <node concept="3cqZAl" id="4peSo3CQiyj" role="3clF45" />
          <node concept="3Tm1VV" id="4peSo3CQiyk" role="1B3o_S" />
          <node concept="3clFbS" id="4peSo3CQiyl" role="3clF47">
            <node concept="3clFbF" id="4peSo3CQjoy" role="3cqZAp">
              <node concept="2OqwBi" id="4peSo3CQjoz" role="3clFbG">
                <node concept="37vLTw" id="4peSo3CQuiu" role="2Oq$k0">
                  <ref role="3cqZAo" node="4peSo3CQiyh" resolve="fomatter" />
                </node>
                <node concept="liA8E" id="4peSo3CQjo_" role="2OqNvi">
                  <ref role="37wK5l" node="6XxJ1FLYoWY" resolve="append" />
                  <node concept="Xl_RD" id="4peSo3CQjoA" role="37wK5m">
                    <property role="Xl_RC" value="?" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="4peSo3CQ8ZE" role="37wK5m">
          <property role="Xl_RC" value="WildcardType" />
        </node>
      </node>
      <node concept="QsSxf" id="4peSo3CQ94y" role="Qtgdg">
        <property role="TrG5h" value="UPPER_BOUND_TYPE" />
        <ref role="37wK5l" node="4peSo3CQ5Wp" resolve="NodePrinter.TypeConcept" />
        <node concept="3clFb_" id="4peSo3CQiFE" role="2HKRsH">
          <property role="TrG5h" value="doAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="4peSo3CQiFF" role="3clF46">
            <property role="TrG5h" value="fomatter" />
            <node concept="3uibUv" id="6XxJ1FLYtIc" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
            </node>
          </node>
          <node concept="3cqZAl" id="4peSo3CQiFH" role="3clF45" />
          <node concept="3Tm1VV" id="4peSo3CQiFI" role="1B3o_S" />
          <node concept="3clFbS" id="4peSo3CQiFJ" role="3clF47">
            <node concept="3clFbF" id="4peSo3CQjyw" role="3cqZAp">
              <node concept="2OqwBi" id="4peSo3CQjyx" role="3clFbG">
                <node concept="liA8E" id="4peSo3CQjyz" role="2OqNvi">
                  <ref role="37wK5l" node="6XxJ1FLYoWY" resolve="append" />
                  <node concept="Xl_RD" id="4peSo3CQjy$" role="37wK5m">
                    <property role="Xl_RC" value="? extends " />
                  </node>
                </node>
                <node concept="37vLTw" id="4peSo3CQuAs" role="2Oq$k0">
                  <ref role="3cqZAo" node="4peSo3CQiFF" resolve="fomatter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="4peSo3CQ94z" role="37wK5m">
          <property role="Xl_RC" value="UpperBoundType" />
        </node>
      </node>
      <node concept="QsSxf" id="4peSo3CQ99t" role="Qtgdg">
        <property role="TrG5h" value="LOWER_BOUND_TYPE" />
        <ref role="37wK5l" node="4peSo3CQ5Wp" resolve="NodePrinter.TypeConcept" />
        <node concept="3clFb_" id="4peSo3CQiPz" role="2HKRsH">
          <property role="TrG5h" value="doAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="4peSo3CQiP$" role="3clF46">
            <property role="TrG5h" value="fomatter" />
            <node concept="3uibUv" id="6XxJ1FLYtw2" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
            </node>
          </node>
          <node concept="3cqZAl" id="4peSo3CQiPA" role="3clF45" />
          <node concept="3Tm1VV" id="4peSo3CQiPB" role="1B3o_S" />
          <node concept="3clFbS" id="4peSo3CQiPC" role="3clF47">
            <node concept="3clFbF" id="4peSo3CQjGD" role="3cqZAp">
              <node concept="2OqwBi" id="4peSo3CQjGE" role="3clFbG">
                <node concept="liA8E" id="4peSo3CQjGG" role="2OqNvi">
                  <ref role="37wK5l" node="6XxJ1FLYoWY" resolve="append" />
                  <node concept="Xl_RD" id="4peSo3CQjGH" role="37wK5m">
                    <property role="Xl_RC" value="? super " />
                  </node>
                </node>
                <node concept="37vLTw" id="4peSo3CQuHa" role="2Oq$k0">
                  <ref role="3cqZAo" node="4peSo3CQiP$" resolve="fomatter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="4peSo3CQ99u" role="37wK5m">
          <property role="Xl_RC" value="LowerBoundType" />
        </node>
      </node>
      <node concept="QsSxf" id="1jo82tq6raN" role="Qtgdg">
        <property role="TrG5h" value="NULL_TYPE" />
        <ref role="37wK5l" node="4peSo3CQ5Wp" resolve="NodePrinter.TypeConcept" />
        <node concept="3clFb_" id="1jo82tq6raO" role="2HKRsH">
          <property role="TrG5h" value="doAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="1jo82tq6raP" role="3clF46">
            <property role="TrG5h" value="fomatter" />
            <node concept="3uibUv" id="6XxJ1FLYthY" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
            </node>
          </node>
          <node concept="3cqZAl" id="1jo82tq6raR" role="3clF45" />
          <node concept="3Tm1VV" id="1jo82tq6raS" role="1B3o_S" />
          <node concept="3clFbS" id="1jo82tq6raT" role="3clF47">
            <node concept="3clFbF" id="1jo82tq6raU" role="3cqZAp">
              <node concept="2OqwBi" id="1jo82tq6raV" role="3clFbG">
                <node concept="liA8E" id="1jo82tq6raW" role="2OqNvi">
                  <ref role="37wK5l" node="6XxJ1FLYoWY" resolve="append" />
                  <node concept="Xl_RD" id="1jo82tq6raX" role="37wK5m">
                    <property role="Xl_RC" value="nulltype" />
                  </node>
                </node>
                <node concept="37vLTw" id="1jo82tq6raZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jo82tq6raP" resolve="fomatter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="1jo82tq6rb1" role="37wK5m">
          <property role="Xl_RC" value="NullType" />
        </node>
      </node>
      <node concept="QsSxf" id="6XxJ1FLYEiw" role="Qtgdg">
        <property role="TrG5h" value="BOOLEAN_TYPE" />
        <ref role="37wK5l" node="4peSo3CQ5Wp" resolve="NodePrinter.TypeConcept" />
        <node concept="3clFb_" id="6XxJ1FLYEix" role="2HKRsH">
          <property role="TrG5h" value="doAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="6XxJ1FLYEiy" role="3clF46">
            <property role="TrG5h" value="fomatter" />
            <node concept="3uibUv" id="6XxJ1FLYEiz" role="1tU5fm">
              <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
            </node>
          </node>
          <node concept="3cqZAl" id="6XxJ1FLYEi$" role="3clF45" />
          <node concept="3Tm1VV" id="6XxJ1FLYEi_" role="1B3o_S" />
          <node concept="3clFbS" id="6XxJ1FLYEiA" role="3clF47">
            <node concept="3clFbF" id="6XxJ1FLYEiB" role="3cqZAp">
              <node concept="2OqwBi" id="6XxJ1FLYEiC" role="3clFbG">
                <node concept="liA8E" id="6XxJ1FLYEiD" role="2OqNvi">
                  <ref role="37wK5l" node="6XxJ1FLYoWY" resolve="append" />
                  <node concept="Xl_RD" id="6XxJ1FLYEiE" role="37wK5m">
                    <property role="Xl_RC" value="boolean" />
                  </node>
                </node>
                <node concept="37vLTw" id="6XxJ1FLYEiF" role="2Oq$k0">
                  <ref role="3cqZAo" node="6XxJ1FLYEiy" resolve="fomatter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="6XxJ1FLYEiG" role="37wK5m">
          <property role="Xl_RC" value="BooleanType" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4peSo3CQ4MP" role="1B3o_S" />
      <node concept="3clFbW" id="4peSo3CQ5Wp" role="jymVt">
        <node concept="3cqZAl" id="4peSo3CQ5Wq" role="3clF45" />
        <node concept="3Tm6S6" id="2zBk6uIqoeS" role="1B3o_S" />
        <node concept="3clFbS" id="4peSo3CQ5Ws" role="3clF47">
          <node concept="3clFbF" id="4peSo3CQ61V" role="3cqZAp">
            <node concept="37vLTI" id="4peSo3CQ61X" role="3clFbG">
              <node concept="2OqwBi" id="4peSo3CQ621" role="37vLTJ">
                <node concept="Xjq3P" id="4peSo3CQ624" role="2Oq$k0" />
                <node concept="2OwXpG" id="4peSo3CQ620" role="2OqNvi">
                  <ref role="2Oxat5" node="4peSo3CQ61R" resolve="name" />
                </node>
              </node>
              <node concept="37vLTw" id="4peSo3CQ625" role="37vLTx">
                <ref role="3cqZAo" node="4peSo3CQ60D" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4peSo3CQ60D" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="4peSo3CQ60C" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="4peSo3CQeqc" role="jymVt">
        <property role="TrG5h" value="conceptName" />
        <node concept="17QB3L" id="4peSo3CQexH" role="3clF45" />
        <node concept="3Tm1VV" id="4peSo3CQeqf" role="1B3o_S" />
        <node concept="3clFbS" id="4peSo3CQeqg" role="3clF47">
          <node concept="3clFbF" id="4peSo3CQeLF" role="3cqZAp">
            <node concept="37vLTw" id="4peSo3CQeLE" role="3clFbG">
              <ref role="3cqZAo" node="4peSo3CQ61R" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4peSo3CQgRP" role="jymVt">
        <property role="TrG5h" value="doAction" />
        <property role="1EzhhJ" value="true" />
        <node concept="37vLTG" id="4peSo3CQhtO" role="3clF46">
          <property role="TrG5h" value="fomatter" />
          <node concept="3uibUv" id="6XxJ1FLYsMF" role="1tU5fm">
            <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
          </node>
        </node>
        <node concept="3cqZAl" id="4peSo3CQgRR" role="3clF45" />
        <node concept="3Tmbuc" id="4peSo3CQ$7S" role="1B3o_S" />
        <node concept="3clFbS" id="4peSo3CQgRT" role="3clF47" />
      </node>
      <node concept="3clFb_" id="6XxJ1FLYeRG" role="jymVt">
        <property role="TrG5h" value="endAction" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="6XxJ1FLYeRH" role="3clF46">
          <property role="TrG5h" value="fomatter" />
          <node concept="3uibUv" id="6XxJ1FLYt3V" role="1tU5fm">
            <ref role="3uigEE" node="4peSo3CIWKi" resolve="NodePrinter.NodeFormatter" />
          </node>
        </node>
        <node concept="3cqZAl" id="6XxJ1FLYeRJ" role="3clF45" />
        <node concept="3Tmbuc" id="6XxJ1FLYeRK" role="1B3o_S" />
        <node concept="3clFbS" id="6XxJ1FLYeRL" role="3clF47" />
      </node>
      <node concept="312cEg" id="4peSo3CQ61R" role="jymVt">
        <property role="TrG5h" value="name" />
        <node concept="3Tm6S6" id="4peSo3CQ61S" role="1B3o_S" />
        <node concept="17QB3L" id="4peSo3CQ61U" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CQ3Is" role="jymVt" />
    <node concept="312cEu" id="3gJBs5s$bxr" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="DefaultVariableSymbol" />
      <node concept="3clFb_" id="3gJBs5s$cVK" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="variableSymbol" />
        <node concept="37vLTG" id="3gJBs5s$cVL" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="3gJBs5s$cVM" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="17QB3L" id="4peSo3D15vm" role="3clF45" />
        <node concept="3Tm1VV" id="3gJBs5s$cVO" role="1B3o_S" />
        <node concept="3clFbS" id="3gJBs5s$cVQ" role="3clF47">
          <node concept="3clFbF" id="3gJBs5s$DhZ" role="3cqZAp">
            <node concept="2YIFZM" id="4peSo3D16mZ" role="3clFbG">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="37vLTw" id="3gJBs5s$DhY" role="37wK5m">
                <ref role="3cqZAo" node="3gJBs5s$cVL" resolve="variable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3gJBs5s$bxs" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4peSo3CIWrc" role="jymVt" />
    <node concept="312cEg" id="4peSo3CIVXA" role="jymVt">
      <property role="TrG5h" value="formatStack" />
      <node concept="3Tm6S6" id="4peSo3CIVXB" role="1B3o_S" />
      <node concept="3uibUv" id="4peSo3CIWaF" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
        <node concept="3uibUv" id="6infEALrN9U" role="11_B2D">
          <ref role="3uigEE" node="6infEALqzXA" resolve="NodePrinter.Formatter" />
        </node>
      </node>
      <node concept="2ShNRf" id="4peSo3CIZew" role="33vP2m">
        <node concept="1pGfFk" id="4peSo3CJxdg" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
          <node concept="3uibUv" id="6infEALrNT$" role="1pMfVU">
            <ref role="3uigEE" node="6infEALqzXA" resolve="NodePrinter.Formatter" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4peSo3CK9Ka" role="jymVt">
      <property role="TrG5h" value="endStack" />
      <node concept="3Tm6S6" id="4peSo3CK9Kb" role="1B3o_S" />
      <node concept="3uibUv" id="4peSo3CK9Kc" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
        <node concept="3uibUv" id="4peSo3CKagg" role="11_B2D">
          <ref role="3uigEE" node="5s497Vr8LPr" resolve="NodePrinter.EndWalk" />
        </node>
      </node>
      <node concept="2ShNRf" id="4peSo3CK9Ke" role="33vP2m">
        <node concept="1pGfFk" id="4peSo3CK9Kf" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
          <node concept="3uibUv" id="4peSo3CKas6" role="1pMfVU">
            <ref role="3uigEE" node="5s497Vr8LPr" resolve="NodePrinter.EndWalk" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4peSo3CIw__" role="jymVt">
      <property role="TrG5h" value="stringBuilder" />
      <node concept="3Tm6S6" id="4peSo3CIw_A" role="1B3o_S" />
      <node concept="3uibUv" id="4peSo3CIw_C" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
      </node>
    </node>
    <node concept="312cEg" id="4peSo3D0HuN" role="jymVt">
      <property role="TrG5h" value="variableSymbol" />
      <node concept="3Tm6S6" id="4peSo3D0HuO" role="1B3o_S" />
      <node concept="3uibUv" id="4peSo3D17Iw" role="1tU5fm">
        <ref role="3uigEE" node="3gJBs5s$bxr" resolve="NodePrinter.DefaultVariableSymbol" />
      </node>
    </node>
  </node>
</model>

