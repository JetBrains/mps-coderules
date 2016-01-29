<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.evaluation)" />
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
    <import index="omn0" ref="r:4e44cb56-a834-45de-a0c4-c49a5c86e78e(jetbrains.mps.logic.builtin.solver)" />
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification(jetbrains.mps.unification.tree/)" />
    <import index="nz6g" ref="r:ac00f724-30be-446e-805c-2345efc460d7(jetbrains.mps.lang.typesystem2.program)" />
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
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="677NV565N1x">
    <property role="TrG5h" value="LogicalUtil" />
    <node concept="2tJIrI" id="677NV565N1L" role="jymVt" />
    <node concept="2YIFZL" id="677NV565VC2" role="jymVt">
      <property role="TrG5h" value="asAtomArray" />
      <node concept="37vLTG" id="677NV565VMW" role="3clF46">
        <property role="TrG5h" value="logicalArr" />
        <node concept="8X2XB" id="677NV565VO6" role="1tU5fm">
          <node concept="3uibUv" id="qubcdt7lYi" role="8Xvag">
            <ref role="3uigEE" node="qubcdt1pkm" resolve="LogicalExt" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="677NV565VLO" role="3clF45">
        <node concept="3uibUv" id="677NV565VLD" role="10Q1$1">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3Tm1VV" id="677NV565VC5" role="1B3o_S" />
      <node concept="3clFbS" id="677NV565VC6" role="3clF47">
        <node concept="3cpWs8" id="677NV565Z2M" role="3cqZAp">
          <node concept="3cpWsn" id="677NV565Z2N" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="677NV565Z2E" role="1tU5fm">
              <node concept="3uibUv" id="677NV565Z2H" role="10Q1$1">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2ShNRf" id="677NV565Z2O" role="33vP2m">
              <node concept="3$_iS1" id="677NV565Z2P" role="2ShVmc">
                <node concept="3$GHV9" id="677NV565Z2Q" role="3$GQph">
                  <node concept="2OqwBi" id="677NV565ZG1" role="3$I4v7">
                    <node concept="37vLTw" id="677NV565ZcD" role="2Oq$k0">
                      <ref role="3cqZAo" node="677NV565VMW" resolve="logicalArr" />
                    </node>
                    <node concept="1Rwk04" id="677NV5660Jm" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uibUv" id="677NV565Z2R" role="3$_nBY">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="677NV5660P6" role="3cqZAp">
          <node concept="3clFbS" id="677NV5660P8" role="2LFqv$">
            <node concept="3clFbF" id="677NV566355" role="3cqZAp">
              <node concept="37vLTI" id="677NV5663dk" role="3clFbG">
                <node concept="2OqwBi" id="677NV5664S0" role="37vLTx">
                  <node concept="2OqwBi" id="677NV56641N" role="2Oq$k0">
                    <node concept="AH0OO" id="677NV5663zs" role="2Oq$k0">
                      <node concept="37vLTw" id="677NV5663K_" role="AHEQo">
                        <ref role="3cqZAo" node="677NV5660P9" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="677NV5663ha" role="AHHXb">
                        <ref role="3cqZAo" node="677NV565VMW" resolve="logicalArr" />
                      </node>
                    </node>
                    <node concept="liA8E" id="677NV5664Mj" role="2OqNvi">
                      <ref role="37wK5l" node="7jC45Kci98e" resolve="asAtom" />
                    </node>
                  </node>
                  <node concept="liA8E" id="677NV5665A4" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
                  </node>
                </node>
                <node concept="AH0OO" id="677NV56636O" role="37vLTJ">
                  <node concept="37vLTw" id="677NV56639b" role="AHEQo">
                    <ref role="3cqZAo" node="677NV5660P9" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="677NV566353" role="AHHXb">
                    <ref role="3cqZAo" node="677NV565Z2N" resolve="array" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="677NV5660P9" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="677NV5660QJ" role="1tU5fm" />
            <node concept="3cmrfG" id="677NV5660T9" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="677NV56j4xv" role="1Dwp0S">
            <node concept="37vLTw" id="677NV5660Uc" role="3uHU7B">
              <ref role="3cqZAo" node="677NV5660P9" resolve="i" />
            </node>
            <node concept="2OqwBi" id="677NV5661$p" role="3uHU7w">
              <node concept="37vLTw" id="677NV5661mM" role="2Oq$k0">
                <ref role="3cqZAo" node="677NV565VMW" resolve="logicalArr" />
              </node>
              <node concept="1Rwk04" id="677NV5662Ak" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="677NV5662VZ" role="1Dwrff">
            <node concept="37vLTw" id="677NV5662W1" role="2$L3a6">
              <ref role="3cqZAo" node="677NV5660P9" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="677NV565X25" role="3cqZAp">
          <node concept="37vLTw" id="677NV565Z2S" role="3clFbG">
            <ref role="3cqZAo" node="677NV565Z2N" resolve="array" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="514BAS_YB7x" role="jymVt" />
    <node concept="2YIFZL" id="514BAS_YAUt" role="jymVt">
      <property role="TrG5h" value="asAtom" />
      <node concept="37vLTG" id="514BAS_YAUu" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="514BAS_YBf7" role="1tU5fm">
          <ref role="3uigEE" node="qubcdt1pkm" resolve="LogicalExt" />
        </node>
      </node>
      <node concept="3uibUv" id="514BAS_YAUw" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="514BAS_YAUx" role="1B3o_S" />
      <node concept="3clFbS" id="514BAS_YAUy" role="3clF47">
        <node concept="3SKdUt" id="4TCblo5Prob" role="3cqZAp">
          <node concept="3SKdUq" id="4TCblo5Prod" role="3SKWNk">
            <property role="3SKdUp" value="FIXME use LogicalAtom" />
          </node>
        </node>
        <node concept="3clFbF" id="514BAS_YBiz" role="3cqZAp">
          <node concept="2OqwBi" id="514BAS_YBk4" role="3clFbG">
            <node concept="37vLTw" id="514BAS_YBiy" role="2Oq$k0">
              <ref role="3cqZAo" node="514BAS_YAUu" resolve="logical" />
            </node>
            <node concept="liA8E" id="514BAS_YBoG" role="2OqNvi">
              <ref role="37wK5l" node="7jC45Kci98e" resolve="asAtom" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZb7alE" role="jymVt" />
    <node concept="2YIFZL" id="7FFmDVAK9bb" role="jymVt">
      <property role="TrG5h" value="asAtom" />
      <node concept="37vLTG" id="7FFmDVAK9bc" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="7FFmDVAK9bd" role="1tU5fm">
          <ref role="3uigEE" node="qubcdt1pkm" resolve="LogicalExt" />
        </node>
      </node>
      <node concept="37vLTG" id="7FFmDVAK9e4" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="7FFmDVAK9Ej" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="7FFmDVAK9Kv" role="11_B2D">
            <node concept="3uibUv" id="7FFmDVAK9Mu" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7FFmDVAK9be" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7FFmDVAK9bf" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAK9bg" role="3clF47">
        <node concept="3SKdUt" id="4TCblo5Pro_" role="3cqZAp">
          <node concept="3SKdUq" id="4TCblo5ProA" role="3SKWNk">
            <property role="3SKdUp" value="FIXME use LogicalAtom" />
          </node>
        </node>
        <node concept="3clFbF" id="7FFmDVAK9bh" role="3cqZAp">
          <node concept="2OqwBi" id="7FFmDVAK9bi" role="3clFbG">
            <node concept="37vLTw" id="7FFmDVAK9bj" role="2Oq$k0">
              <ref role="3cqZAo" node="7FFmDVAK9bc" resolve="logical" />
            </node>
            <node concept="liA8E" id="7FFmDVAK9bk" role="2OqNvi">
              <ref role="37wK5l" node="7MlQDeOy9SE" resolve="asAtom" />
              <node concept="37vLTw" id="7FFmDVAK9R_" role="37wK5m">
                <ref role="3cqZAo" node="7FFmDVAK9e4" resolve="prototype" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7FFmDVAK9ba" role="jymVt" />
    <node concept="2YIFZL" id="7HUwyZb7b7C" role="jymVt">
      <property role="TrG5h" value="asAtomArray" />
      <node concept="37vLTG" id="7HUwyZb7b7D" role="3clF46">
        <property role="TrG5h" value="multiMetaLogical" />
        <node concept="3uibUv" id="7HUwyZb7bf2" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7HUwyZaNIC5" resolve="MultiMetaLogical" />
        </node>
      </node>
      <node concept="10Q1$e" id="7HUwyZb7b7G" role="3clF45">
        <node concept="3uibUv" id="7HUwyZb7b7H" role="10Q1$1">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZb7b7I" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZb7b7J" role="3clF47">
        <node concept="3cpWs8" id="7HUwyZb7b7R" role="3cqZAp">
          <node concept="3cpWsn" id="7HUwyZb7b7S" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="7HUwyZb7b7T" role="1tU5fm">
              <node concept="3uibUv" id="7HUwyZb7b7U" role="10Q1$1">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                      <ref role="37wK5l" to="45ys:7HUwyZaC4ZZ" resolve="cardinality" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="7HUwyZb7b81" role="3$_nBY">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                  <ref role="37wK5l" node="7HUwyZb7chj" resolve="asAtom" />
                  <node concept="2OqwBi" id="7HUwyZbdRec" role="37wK5m">
                    <node concept="37vLTw" id="7HUwyZbdRce" role="2Oq$k0">
                      <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiMetaLogical" />
                    </node>
                    <node concept="liA8E" id="7HUwyZbdRgZ" role="2OqNvi">
                      <ref role="37wK5l" to="45ys:7HUwyZaNHY_" resolve="logicalAt" />
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
                <ref role="37wK5l" to="45ys:7HUwyZaC4ZZ" resolve="cardinality" />
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
      <property role="TrG5h" value="asAtom" />
      <node concept="16euLQ" id="4TCblo5YIpd" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="7HUwyZb7chk" role="3clF46">
        <property role="TrG5h" value="metaLogical" />
        <node concept="3uibUv" id="7HUwyZb7chm" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
          <node concept="3qTvmN" id="4TCblo5YIjG" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="7HUwyZb7cho" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7HUwyZb7chp" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZb7chq" role="3clF47">
        <node concept="3clFbF" id="7HUwyZbdQz9" role="3cqZAp">
          <node concept="2ShNRf" id="7HUwyZbdQz7" role="3clFbG">
            <node concept="1pGfFk" id="7HUwyZbdQMO" role="2ShVmc">
              <ref role="37wK5l" to="oy3s:7HUwyZbdNAd" resolve="MetaLogicalAtom" />
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
      <property role="TrG5h" value="asAtom" />
      <node concept="37vLTG" id="4TCblo5YI1I" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="4TCblo5YI1J" role="1tU5fm">
          <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
          <node concept="16syzq" id="4TCblo5YIOD" role="11_B2D">
            <ref role="16sUi3" node="4TCblo5YIIG" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4TCblo5YI1K" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="4TCblo5YI1L" role="1B3o_S" />
      <node concept="3clFbS" id="4TCblo5YI1M" role="3clF47">
        <node concept="3clFbF" id="4TCblo5YITN" role="3cqZAp">
          <node concept="2ShNRf" id="4TCblo5YITJ" role="3clFbG">
            <node concept="1pGfFk" id="4TCblo5YJa3" role="2ShVmc">
              <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalAtom" />
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
              <ref role="37wK5l" to="ie8e:5s497VqteR6" resolve="mapper" />
              <ref role="1Pybhc" to="ie8e:3OPtF02T8yx" resolve="Mappers" />
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
              <ref role="37wK5l" to="ie8e:3OPtF02TgQt" resolve="map" />
              <node concept="37vLTw" id="4TCblo5Nl9o" role="37wK5m">
                <ref role="3cqZAo" node="4TCblo5NkAJ" resolve="atom" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4TCblo5NkAJ" role="3clF46">
        <property role="TrG5h" value="atom" />
        <node concept="3uibUv" id="4TCblo5NkFx" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4TCblo5NkwR" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="4TCblo5Nk_K" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3uibUv" id="4TCblo5Nlai" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
            <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4TCblo5MHTP" role="jymVt" />
      <node concept="3Tm6S6" id="4TCblo5MG2k" role="1B3o_S" />
      <node concept="3uibUv" id="4TCblo5MGIz" role="EKbjA">
        <ref role="3uigEE" to="ie8e:3OPtF031GQe" resolve="Mappers.MapDelegate" />
      </node>
      <node concept="3clFb_" id="6HT7BWBPa9I" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="canMap" />
        <node concept="37vLTG" id="6HT7BWBPa9J" role="3clF46">
          <property role="TrG5h" value="atom" />
          <node concept="3uibUv" id="6HT7BWBPa9K" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
        <node concept="10P_77" id="6HT7BWBPa9L" role="3clF45" />
        <node concept="3Tm1VV" id="6HT7BWBPa9M" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBPa9N" role="3clF47">
          <node concept="3clFbF" id="6HT7BWBQdtU" role="3cqZAp">
            <node concept="3clFbC" id="6HT7BWBQeoD" role="3clFbG">
              <node concept="10M0yZ" id="6HT7BWBQekA" role="3uHU7B">
                <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="2OqwBi" id="6HT7BWBQdzA" role="3uHU7w">
                <node concept="37vLTw" id="6HT7BWBQdtS" role="2Oq$k0">
                  <ref role="3cqZAo" node="6HT7BWBPa9J" resolve="atom" />
                </node>
                <node concept="liA8E" id="6HT7BWBQdDR" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:104EUzFOBnD" resolve="acceptVisitor" />
                  <node concept="2ShNRf" id="6HT7BWBQdEF" role="37wK5m">
                    <node concept="YeOm9" id="6HT7BWBQdQT" role="2ShVmc">
                      <node concept="1Y3b0j" id="6HT7BWBQdQW" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="ie8e:6HT7BWBQcxv" resolve="Atom.Visitor.Stub" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3Tm1VV" id="6HT7BWBQdQX" role="1B3o_S" />
                        <node concept="3clFb_" id="6HT7BWBQdTD" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="visitVariable" />
                          <node concept="37vLTG" id="6HT7BWBQdTE" role="3clF46">
                            <property role="TrG5h" value="variable" />
                            <node concept="3uibUv" id="6HT7BWBQdTF" role="1tU5fm">
                              <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="6HT7BWBQdTG" role="3clF45">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                          <node concept="3Tm1VV" id="6HT7BWBQdTH" role="1B3o_S" />
                          <node concept="2AHcQZ" id="6HT7BWBQdTL" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                          <node concept="3clFbS" id="6HT7BWBQdTN" role="3clF47">
                            <node concept="3clFbF" id="4TCblo5MCet" role="3cqZAp">
                              <node concept="2ZW3vV" id="4TCblo5MCk$" role="3clFbG">
                                <node concept="3uibUv" id="4TCblo5MCof" role="2ZW6by">
                                  <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalAtom" />
                                </node>
                                <node concept="37vLTw" id="4TCblo5MCes" role="2ZW6bz">
                                  <ref role="3cqZAo" node="6HT7BWBQdTE" resolve="variable" />
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
      <node concept="2tJIrI" id="4TCblo5MIEy" role="jymVt" />
      <node concept="3clFb_" id="6HT7BWBPa9O" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="6HT7BWBPa9P" role="3clF46">
          <property role="TrG5h" value="atom" />
          <node concept="3uibUv" id="6HT7BWBPa9Q" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
        <node concept="37vLTG" id="6HT7BWBPa9R" role="3clF46">
          <property role="TrG5h" value="fallback" />
          <node concept="3uibUv" id="6HT7BWBPa9S" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:3OPtF02TdNT" resolve="Atom.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="6HT7BWBPa9T" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBPa9U" role="3clF45">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
        <node concept="3clFbS" id="6HT7BWBPa9V" role="3clF47">
          <node concept="3clFbF" id="4TCblo5Pq93" role="3cqZAp">
            <node concept="2ShNRf" id="4TCblo5Pq8Z" role="3clFbG">
              <node concept="1pGfFk" id="4TCblo5PqjT" role="2ShVmc">
                <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalAtom" />
                <node concept="2OqwBi" id="4TCblo5PabD" role="37wK5m">
                  <node concept="37vLTw" id="4TCblo5PabE" role="2Oq$k0">
                    <ref role="3cqZAo" node="4TCblo5MI7r" resolve="logicalContext" />
                  </node>
                  <node concept="liA8E" id="4TCblo5PabF" role="2OqNvi">
                    <ref role="37wK5l" to="45ys:7IvepusY4EY" resolve="variable" />
                    <node concept="2OqwBi" id="4TCblo5PabG" role="37wK5m">
                      <node concept="1eOMI4" id="4TCblo5PabH" role="2Oq$k0">
                        <node concept="10QFUN" id="4TCblo5PabI" role="1eOMHV">
                          <node concept="37vLTw" id="4TCblo5PabJ" role="10QFUP">
                            <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="atom" />
                          </node>
                          <node concept="3uibUv" id="4TCblo5PabK" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:7HUwyZbdMWH" resolve="MetaLogicalAtom" />
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
        </node>
      </node>
      <node concept="2tJIrI" id="4TCblo5MI$W" role="jymVt" />
      <node concept="312cEg" id="4TCblo5MI7r" role="jymVt">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3Tm6S6" id="4TCblo5MI7s" role="1B3o_S" />
        <node concept="3uibUv" id="4TCblo5MI7u" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5NlYH" role="jymVt" />
    <node concept="3Tm1VV" id="677NV565N1y" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5_6ImQZ8j9D">
    <property role="TrG5h" value="SolverUtil" />
    <node concept="2tJIrI" id="5_6ImQZ8j9N" role="jymVt" />
    <node concept="2YIFZL" id="5_6ImQZ8ja0" role="jymVt">
      <property role="TrG5h" value="fail" />
      <node concept="3cqZAl" id="5_6ImQZ8ja2" role="3clF45" />
      <node concept="3Tm1VV" id="5_6ImQZ8ja3" role="1B3o_S" />
      <node concept="3clFbS" id="5_6ImQZ8ja4" role="3clF47">
        <node concept="YS8fn" id="5_6ImQZ8jaz" role="3cqZAp">
          <node concept="2ShNRf" id="5_6ImQZ8jaX" role="YScLw">
            <node concept="1pGfFk" id="5_6ImQZ8l0Z" role="2ShVmc">
              <ref role="37wK5l" to="eifs:~FailureException.&lt;init&gt;(java.lang.String)" resolve="FailureException" />
              <node concept="37vLTw" id="5_6ImQZ8l2j" role="37wK5m">
                <ref role="3cqZAo" node="5_6ImQZ8l1u" resolve="message" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5_6ImQZ8l1u" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="5_6ImQZ8l1t" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5_6ImQZ8j9E" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="qubcdt1pkm">
    <property role="TrG5h" value="LogicalExt" />
    <node concept="2tJIrI" id="qubcdt7pFV" role="jymVt" />
    <node concept="3clFb_" id="dfChU1eNVy" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="dfChU1eNWP" role="3clF45">
        <ref role="3uigEE" node="qubcdt1pkm" resolve="LogicalExt" />
        <node concept="16syzq" id="dfChU1eNXI" role="11_B2D">
          <ref role="16sUi3" node="qubcdt52KU" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="dfChU1eNV_" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1eNVA" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="qubcdt7pGl" role="jymVt" />
    <node concept="3clFb_" id="7jC45Kci98e" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="7jC45Kci98f" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7jC45Kci98h" role="1B3o_S" />
      <node concept="3clFbS" id="7jC45Kci98i" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7MlQDeOyaKI" role="jymVt" />
    <node concept="3clFb_" id="7MlQDeOy9SE" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="7MlQDeOy9SF" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7MlQDeOy9SG" role="1B3o_S" />
      <node concept="3clFbS" id="7MlQDeOy9SH" role="3clF47" />
      <node concept="37vLTG" id="7MlQDeOybAm" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="7MlQDeOybAl" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="7MlQDeOybG7" role="11_B2D">
            <node concept="3uibUv" id="7MlQDeOybIO" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5zfvpQ7aL7l" role="jymVt" />
    <node concept="3clFb_" id="6Sag3Ksvh9N" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isValid" />
      <node concept="37vLTG" id="6Sag3Ksvngn" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="6Sag3KsvnoC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="6Sag3KsvnJK" role="11_B2D">
            <node concept="3uibUv" id="6Sag3KsvnR$" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6Sag3KsvhiY" role="3clF45" />
      <node concept="3Tm1VV" id="6Sag3Ksvh9Q" role="1B3o_S" />
      <node concept="3clFbS" id="6Sag3Ksvh9R" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Sag3Ksvh8c" role="jymVt" />
    <node concept="3Tm1VV" id="qubcdt1pkn" role="1B3o_S" />
    <node concept="3uibUv" id="qubcdt1pkF" role="3HQHJm">
      <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
      <node concept="16syzq" id="qubcdt52Lk" role="11_B2D">
        <ref role="16sUi3" node="qubcdt52KU" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="qubcdt52KU" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="3HP615" id="qubcdtxBiR">
    <property role="TrG5h" value="EvaluationTraceExt" />
    <node concept="2tJIrI" id="qubcdtxBuI" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7gU0T" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="result" />
      <node concept="37vLTG" id="7nkyKX7gU0U" role="3clF46">
        <property role="TrG5h" value="occurrence" />
        <node concept="3uibUv" id="5mr7UHccdcS" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
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
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
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
    <node concept="Wx3nA" id="24Vro6cS5rK" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NULL" />
      <node concept="3Tm1VV" id="24Vro6cS5rM" role="1B3o_S" />
      <node concept="2ShNRf" id="24Vro6cS5M$" role="33vP2m">
        <node concept="YeOm9" id="24Vro6cS5SL" role="2ShVmc">
          <node concept="1Y3b0j" id="24Vro6cS5SO" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" node="qubcdtxBiR" resolve="EvaluationTraceExt" />
            <node concept="3clFb_" id="1n2ZgJ3M2s0" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="activate" />
              <node concept="37vLTG" id="1n2ZgJ3M2s1" role="3clF46">
                <property role="TrG5h" value="occurrence" />
                <node concept="3uibUv" id="1n2ZgJ3M2s2" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="3cqZAl" id="1n2ZgJ3M2s3" role="3clF45" />
              <node concept="3Tm1VV" id="1n2ZgJ3M2s4" role="1B3o_S" />
              <node concept="3clFbS" id="1n2ZgJ3M2s8" role="3clF47" />
            </node>
            <node concept="3clFb_" id="1n2ZgJ3M2s9" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="reactivate" />
              <node concept="37vLTG" id="1n2ZgJ3M2sa" role="3clF46">
                <property role="TrG5h" value="occurrence" />
                <node concept="3uibUv" id="1n2ZgJ3M2sb" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="3cqZAl" id="1n2ZgJ3M2sc" role="3clF45" />
              <node concept="3Tm1VV" id="1n2ZgJ3M2sd" role="1B3o_S" />
              <node concept="3clFbS" id="1n2ZgJ3M2sh" role="3clF47" />
            </node>
            <node concept="3clFb_" id="1n2ZgJ3M2si" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="suspend" />
              <node concept="37vLTG" id="1n2ZgJ3M2sj" role="3clF46">
                <property role="TrG5h" value="occurrence" />
                <node concept="3uibUv" id="1n2ZgJ3M2sk" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="3cqZAl" id="1n2ZgJ3M2sl" role="3clF45" />
              <node concept="3Tm1VV" id="1n2ZgJ3M2sm" role="1B3o_S" />
              <node concept="3clFbS" id="1n2ZgJ3M2sq" role="3clF47" />
            </node>
            <node concept="3clFb_" id="1n2ZgJ3M2sr" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="discard" />
              <node concept="37vLTG" id="1n2ZgJ3M2ss" role="3clF46">
                <property role="TrG5h" value="occurrence" />
                <node concept="3uibUv" id="1n2ZgJ3M2st" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="3cqZAl" id="1n2ZgJ3M2su" role="3clF45" />
              <node concept="3Tm1VV" id="1n2ZgJ3M2sv" role="1B3o_S" />
              <node concept="3clFbS" id="1n2ZgJ3M2sz" role="3clF47" />
            </node>
            <node concept="3clFb_" id="1n2ZgJ3MiVn" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="trigger" />
              <node concept="37vLTG" id="4TCblo5JLfn" role="3clF46">
                <property role="TrG5h" value="matchRule" />
                <node concept="3uibUv" id="4TCblo5JLfk" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:63ioh_TWUlF" resolve="MatchRule" />
                </node>
              </node>
              <node concept="3cqZAl" id="1n2ZgJ3MiVq" role="3clF45" />
              <node concept="3Tm1VV" id="1n2ZgJ3MiVr" role="1B3o_S" />
              <node concept="3clFbS" id="1n2ZgJ3MiVv" role="3clF47" />
            </node>
            <node concept="3clFb_" id="1n2ZgJ3MiVw" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="exit" />
              <node concept="37vLTG" id="1n2ZgJ3MiVx" role="3clF46">
                <property role="TrG5h" value="rule" />
                <node concept="3uibUv" id="1n2ZgJ3MiVy" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:7eGEHDlc$9y" resolve="Rule" />
                </node>
              </node>
              <node concept="3cqZAl" id="1n2ZgJ3MiVz" role="3clF45" />
              <node concept="3Tm1VV" id="1n2ZgJ3MiV$" role="1B3o_S" />
              <node concept="3clFbS" id="1n2ZgJ3MiVC" role="3clF47" />
            </node>
            <node concept="3Tm1VV" id="24Vro6cS5SP" role="1B3o_S" />
            <node concept="3clFb_" id="24Vro6cS5SQ" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askSuccess" />
              <node concept="37vLTG" id="24Vro6cS5SR" role="3clF46">
                <property role="TrG5h" value="predicateSymbol" />
                <node concept="3uibUv" id="5uFPQ7C61lQ" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                </node>
              </node>
              <node concept="37vLTG" id="24Vro6cS5ST" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="24Vro6cS5SU" role="1tU5fm">
                  <node concept="3uibUv" id="24Vro6cS5SV" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="24Vro6cS5SW" role="3clF45" />
              <node concept="3Tm1VV" id="24Vro6cS5SX" role="1B3o_S" />
              <node concept="3clFbS" id="24Vro6cS5SZ" role="3clF47" />
            </node>
            <node concept="3clFb_" id="24Vro6cS5T1" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askFailure" />
              <node concept="37vLTG" id="24Vro6cS5T2" role="3clF46">
                <property role="TrG5h" value="predicateSymbol" />
                <node concept="3uibUv" id="5uFPQ7C61sP" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                </node>
              </node>
              <node concept="37vLTG" id="24Vro6cS5T4" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="24Vro6cS5T5" role="1tU5fm">
                  <node concept="3uibUv" id="24Vro6cS5T6" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="24Vro6cS5T7" role="3clF45" />
              <node concept="3Tm1VV" id="24Vro6cS5T8" role="1B3o_S" />
              <node concept="3clFbS" id="24Vro6cS5Ta" role="3clF47" />
            </node>
            <node concept="3clFb_" id="6ps95k_HMH6" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="ask" />
              <node concept="37vLTG" id="6ps95k_HMH7" role="3clF46">
                <property role="TrG5h" value="predicateSymbol" />
                <node concept="3uibUv" id="6ps95k_HMH8" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                </node>
              </node>
              <node concept="37vLTG" id="6ps95k_HMH9" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="6ps95k_HMHa" role="1tU5fm">
                  <node concept="3uibUv" id="6ps95k_HMHb" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="6ps95k_HMHc" role="3clF45" />
              <node concept="3Tm1VV" id="6ps95k_HMHd" role="1B3o_S" />
              <node concept="3clFbS" id="6ps95k_HMHh" role="3clF47" />
            </node>
            <node concept="3clFb_" id="6ps95k_HMHi" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="tell" />
              <node concept="37vLTG" id="6ps95k_HMHj" role="3clF46">
                <property role="TrG5h" value="symbol" />
                <node concept="3uibUv" id="6ps95k_HMHk" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:5uFPQ7B$mzX" resolve="Symbol" />
                </node>
              </node>
              <node concept="37vLTG" id="6ps95k_HMHl" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="6ps95k_HMHm" role="1tU5fm">
                  <node concept="3uibUv" id="6ps95k_HMHn" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="6ps95k_HMHo" role="3clF45" />
              <node concept="3Tm1VV" id="6ps95k_HMHp" role="1B3o_S" />
              <node concept="3clFbS" id="6ps95k_HMHt" role="3clF47" />
            </node>
            <node concept="3clFb_" id="7feMCq_cIyn" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="reportFailure" />
              <node concept="37vLTG" id="7feMCq_cIyo" role="3clF46">
                <property role="TrG5h" value="message" />
                <node concept="17QB3L" id="7feMCq_cIyp" role="1tU5fm" />
              </node>
              <node concept="3cqZAl" id="7feMCq_cIyq" role="3clF45" />
              <node concept="3Tm1VV" id="7feMCq_cIyr" role="1B3o_S" />
              <node concept="3clFbS" id="7feMCq_cIyv" role="3clF47" />
            </node>
            <node concept="3clFb_" id="7nkyKX7h9eG" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="result" />
              <node concept="37vLTG" id="7nkyKX7h9eH" role="3clF46">
                <property role="TrG5h" value="constraint" />
                <node concept="3uibUv" id="5mr7UHccduP" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="3cqZAl" id="7nkyKX7h9eJ" role="3clF45" />
              <node concept="3Tm1VV" id="7nkyKX7h9eK" role="1B3o_S" />
              <node concept="3clFbS" id="7nkyKX7h9eN" role="3clF47" />
            </node>
            <node concept="3clFb_" id="7nkyKX7h9eO" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="garbage" />
              <node concept="37vLTG" id="7nkyKX7h9eP" role="3clF46">
                <property role="TrG5h" value="constraint" />
                <node concept="3uibUv" id="5mr7UHccd_Z" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="3cqZAl" id="7nkyKX7h9eR" role="3clF45" />
              <node concept="3Tm1VV" id="7nkyKX7h9eS" role="1B3o_S" />
              <node concept="3clFbS" id="7nkyKX7h9eV" role="3clF47" />
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
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="qubcdtxJQt" role="1tU5fm">
        <ref role="3uigEE" node="qubcdtxBiR" resolve="EvaluationTraceExt" />
      </node>
    </node>
    <node concept="2tJIrI" id="qubcdtxJFT" role="jymVt" />
    <node concept="3Tm1VV" id="qubcdtxBiS" role="1B3o_S" />
    <node concept="3uibUv" id="qubcdtxBjm" role="3HQHJm">
      <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="EvaluationTrace" />
    </node>
  </node>
  <node concept="3HP615" id="46l0wJhtOD_">
    <property role="TrG5h" value="ILogicalVar" />
    <node concept="2tJIrI" id="7HUwyZaOczR" role="jymVt" />
    <node concept="3clFb_" id="46l0wJhtXlr" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="logical" />
      <node concept="3uibUv" id="46l0wJhtXpb" role="3clF45">
        <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
        <node concept="3qTvmN" id="46l0wJhtXxO" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="46l0wJhtXlu" role="1B3o_S" />
      <node concept="3clFbS" id="46l0wJhtXlv" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="46l0wJhtOHe" role="jymVt" />
    <node concept="3Tm1VV" id="46l0wJhtODA" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4TCblo5ZkfI">
    <property role="TrG5h" value="AbstractAndItem" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4TCblo5ZkCv" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5M6dy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="concreteArguments" />
      <node concept="37vLTG" id="4TCblo5Nrp7" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="4TCblo5Nrr2" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3Tmbuc" id="4TCblo5ZoJF" role="1B3o_S" />
      <node concept="3uibUv" id="4TCblo5M6d_" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="4TCblo5M6dA" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="4TCblo5M6dC" role="3clF47">
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
                  <node concept="1rXfSq" id="4TCblo5ZmDR" role="2Oq$k0">
                    <ref role="37wK5l" to="rchb:5uFPQ7B_b06" resolve="arguments" />
                  </node>
                  <node concept="liA8E" id="4TCblo5Zn2F" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.size():int" resolve="size" />
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
                    <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
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
                            <ref role="3cqZAo" node="4TCblo5Nrp7" resolve="logicalContext" />
                          </node>
                          <node concept="liA8E" id="4TCblo5Z8s6" role="2OqNvi">
                            <ref role="37wK5l" to="45ys:7IvepusY4EY" resolve="variable" />
                            <node concept="10QFUN" id="4TCblo5Z8y1" role="37wK5m">
                              <node concept="37vLTw" id="4TCblo5Z97c" role="10QFUP">
                                <ref role="3cqZAo" node="4TCblo5NoSd" resolve="a" />
                              </node>
                              <node concept="3uibUv" id="4TCblo5Z8NB" role="10QFUM">
                                <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
                                <node concept="3uibUv" id="4TCblo5Z9P0" role="11_B2D">
                                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                        <ref role="37wK5l" node="4TCblo5NqWF" resolve="instantiateMetaLogicals" />
                        <ref role="1Pybhc" node="677NV565N1x" resolve="LogicalUtil" />
                        <node concept="10QFUN" id="4TCblo5Nskr" role="37wK5m">
                          <node concept="3uibUv" id="4TCblo5Nskp" role="10QFUM">
                            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                          </node>
                          <node concept="37vLTw" id="4TCblo5NsuL" role="10QFUP">
                            <ref role="3cqZAo" node="4TCblo5NoSd" resolve="a" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4TCblo5NsHZ" role="37wK5m">
                          <ref role="3cqZAo" node="4TCblo5Nrp7" resolve="logicalContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TCblo5Yuzk" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="4TCblo5NptX" role="3clFbw">
                <node concept="3uibUv" id="4TCblo5NpxS" role="2ZW6by">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
          <node concept="1rXfSq" id="4TCblo5Znfk" role="1DdaDG">
            <ref role="37wK5l" to="rchb:5uFPQ7B_b06" resolve="arguments" />
          </node>
        </node>
        <node concept="3clFbF" id="4TCblo5NpdK" role="3cqZAp">
          <node concept="37vLTw" id="4TCblo5NpdI" role="3clFbG">
            <ref role="3cqZAo" node="4TCblo5Nofq" resolve="res" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5Zp7C" role="jymVt" />
    <node concept="3Tm1VV" id="4TCblo5ZkfJ" role="1B3o_S" />
    <node concept="3uibUv" id="4TCblo5Zkgx" role="EKbjA">
      <ref role="3uigEE" to="rchb:5uFPQ7B$Pn9" resolve="AndItem" />
    </node>
  </node>
  <node concept="312cEu" id="5uFPQ7BZsAX">
    <property role="TrG5h" value="AbstractConstraint" />
    <node concept="3uibUv" id="4TCblo5ZtPg" role="1zkMxy">
      <ref role="3uigEE" node="4TCblo5ZkfI" resolve="AbstractAndItem" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZsC9" role="jymVt" />
    <node concept="3clFbW" id="5uFPQ7BZtsU" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7BZtxe" role="3clF46">
        <property role="TrG5h" value="constraintSymbol" />
        <node concept="3uibUv" id="5uFPQ7BZtBR" role="1tU5fm">
          <ref role="3uigEE" to="rchb:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7BZtIF" role="3clF46">
        <property role="TrG5h" value="arguments" />
        <node concept="8X2XB" id="5uFPQ7BZzvm" role="1tU5fm">
          <node concept="3uibUv" id="5uFPQ7BZzov" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5uFPQ7BZtsW" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7BZtsX" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZtsY" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZu64" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7BZu66" role="3clFbG">
            <node concept="2OqwBi" id="5uFPQ7BZu6a" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7BZu6d" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7BZu69" role="2OqNvi">
                <ref role="2Oxat5" node="5uFPQ7BZu60" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="5uFPQ7BZu6e" role="37vLTx">
              <ref role="3cqZAo" node="5uFPQ7BZtxe" resolve="constraintSymbol" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5uFPQ7BZuek" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7BZuem" role="3clFbG">
            <node concept="2OqwBi" id="5uFPQ7BZueq" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7BZuet" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7BZuep" role="2OqNvi">
                <ref role="2Oxat5" node="5uFPQ7BZuef" resolve="arguments" />
              </node>
            </node>
            <node concept="37vLTw" id="5uFPQ7BZueu" role="37vLTx">
              <ref role="3cqZAo" node="5uFPQ7BZtIF" resolve="arguments" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZto4" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZsCD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="5uFPQ7BZsCE" role="3clF45">
        <ref role="3uigEE" to="rchb:54i3FxcZHHF" resolve="ConstraintSymbol" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BZsCF" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZsCH" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZvwz" role="3cqZAp">
          <node concept="37vLTw" id="5uFPQ7BZvwy" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7BZu60" resolve="symbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZvzp" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZsCK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm1VV" id="5uFPQ7BZsCO" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZsCS" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZvJl" role="3cqZAp">
          <node concept="2YIFZM" id="5uFPQ7BZvJm" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <node concept="2YIFZM" id="5uFPQ7BZvJn" role="37wK5m">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="5uFPQ7BZvJo" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7BZuef" resolve="arguments" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7HUwyZaBHhW" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="7HUwyZaBHwS" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcOxO4" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcOxDH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="argumentTypes" />
      <node concept="3uibUv" id="78CwJJcOxDI" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="78CwJJcOxDJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="78CwJJcOxDK" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcOxDL" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcOxDN" role="3clF47">
        <node concept="3cpWs8" id="78CwJJcO$LY" role="3cqZAp">
          <node concept="3cpWsn" id="78CwJJcO$LZ" role="3cpWs9">
            <property role="TrG5h" value="types" />
            <node concept="3uibUv" id="78CwJJcO$LM" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="78CwJJcO$LS" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                <node concept="3qTvmN" id="78CwJJcO$LT" role="11_B2D" />
              </node>
            </node>
            <node concept="2ShNRf" id="78CwJJcO$M0" role="33vP2m">
              <node concept="1pGfFk" id="78CwJJcO$M1" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="2OqwBi" id="78CwJJcO$M2" role="37wK5m">
                  <node concept="37vLTw" id="78CwJJcO$M3" role="2Oq$k0">
                    <ref role="3cqZAo" node="5uFPQ7BZuef" resolve="arguments" />
                  </node>
                  <node concept="1Rwk04" id="78CwJJcO$M4" role="2OqNvi" />
                </node>
                <node concept="3uibUv" id="78CwJJcO$M5" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="3qTvmN" id="78CwJJcO$M6" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="78CwJJcO_52" role="3cqZAp">
          <node concept="3clFbS" id="78CwJJcO_54" role="2LFqv$">
            <node concept="3clFbJ" id="7HUwyZbi3jO" role="3cqZAp">
              <node concept="3clFbS" id="7HUwyZbi3jQ" role="3clFbx">
                <node concept="3clFbF" id="7HUwyZbi3VL" role="3cqZAp">
                  <node concept="2OqwBi" id="7HUwyZbi418" role="3clFbG">
                    <node concept="37vLTw" id="7HUwyZbi3VJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
                    </node>
                    <node concept="liA8E" id="7HUwyZbi4hh" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2OqwBi" id="7HUwyZbi4Af" role="37wK5m">
                        <node concept="1eOMI4" id="7HUwyZbi4o9" role="2Oq$k0">
                          <node concept="10QFUN" id="7HUwyZbi4o6" role="1eOMHV">
                            <node concept="37vLTw" id="7HUwyZbi4yM" role="10QFUP">
                              <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                            </node>
                            <node concept="3uibUv" id="7HUwyZbi4uN" role="10QFUM">
                              <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7HUwyZbi4HE" role="2OqNvi">
                          <ref role="37wK5l" to="45ys:7HUwyZaC3Q7" resolve="type" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TCblo5YN91" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="7HUwyZbi3ty" role="3clFbw">
                <node concept="3uibUv" id="7HUwyZbi3vq" role="2ZW6by">
                  <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
                </node>
                <node concept="37vLTw" id="7HUwyZbi3rn" role="2ZW6bz">
                  <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                </node>
              </node>
              <node concept="9aQIb" id="7HUwyZbi4Sk" role="9aQIa">
                <node concept="3clFbS" id="7HUwyZbi4Sl" role="9aQI4">
                  <node concept="3clFbF" id="78CwJJcO_ku" role="3cqZAp">
                    <node concept="2OqwBi" id="78CwJJcO_ok" role="3clFbG">
                      <node concept="37vLTw" id="78CwJJcO_ks" role="2Oq$k0">
                        <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
                      </node>
                      <node concept="liA8E" id="78CwJJcO_AW" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2OqwBi" id="78CwJJcO_HO" role="37wK5m">
                          <node concept="37vLTw" id="78CwJJcO_G3" role="2Oq$k0">
                            <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                          </node>
                          <node concept="liA8E" id="78CwJJcO_ND" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="78CwJJcO_55" role="1Duv9x">
            <property role="TrG5h" value="arg" />
            <node concept="3uibUv" id="78CwJJcO_9N" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="37vLTw" id="78CwJJcO_hl" role="1DdaDG">
            <ref role="3cqZAo" node="5uFPQ7BZuef" resolve="arguments" />
          </node>
        </node>
        <node concept="3clFbF" id="78CwJJcOAQH" role="3cqZAp">
          <node concept="37vLTw" id="78CwJJcOAQF" role="3clFbG">
            <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5M5Qi" role="jymVt" />
    <node concept="3clFb_" id="18cJbc16pY3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="occurrenceArguments" />
      <node concept="37vLTG" id="18cJbc16pY4" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="18cJbc16pY5" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4TCblo5M6d$" role="1B3o_S" />
      <node concept="3uibUv" id="18cJbc16pY6" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="18cJbc16pY7" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="18cJbc16pY8" role="3clF47">
        <node concept="3clFbF" id="4TCblo5ZuZ2" role="3cqZAp">
          <node concept="1rXfSq" id="4TCblo5ZuZ0" role="3clFbG">
            <ref role="37wK5l" node="4TCblo5M6dy" resolve="concreteArguments" />
            <node concept="37vLTw" id="4TCblo5Zvrm" role="37wK5m">
              <ref role="3cqZAo" node="18cJbc16pY4" resolve="logicalContext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4TCblo5ZkZt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7IvepusY5Hm" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7BZsAY" role="1B3o_S" />
    <node concept="3uibUv" id="5uFPQ7BZsBQ" role="EKbjA">
      <ref role="3uigEE" to="rchb:6Kcfpq7BfEn" resolve="Constraint" />
    </node>
    <node concept="312cEg" id="5uFPQ7BZu60" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="5uFPQ7BZu61" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7BZu63" role="1tU5fm">
        <ref role="3uigEE" to="rchb:54i3FxcZHHF" resolve="ConstraintSymbol" />
      </node>
    </node>
    <node concept="312cEg" id="5uFPQ7BZuef" role="jymVt">
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm6S6" id="5uFPQ7BZueg" role="1B3o_S" />
      <node concept="10Q1$e" id="5uFPQ7BZzdN" role="1tU5fm">
        <node concept="3uibUv" id="5uFPQ7BZzdK" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7nPD14NHRdy">
    <property role="TrG5h" value="WildcardMetaLogical" />
    <node concept="3Tm1VV" id="7nPD14NHRdz" role="1B3o_S" />
    <node concept="2tJIrI" id="7nPD14NHROF" role="jymVt" />
    <node concept="Wx3nA" id="7nPD14NHSoH" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="WILDCARD" />
      <node concept="3Tm6S6" id="7nPD14NHSoI" role="1B3o_S" />
      <node concept="17QB3L" id="7nPD14NHSoJ" role="1tU5fm" />
      <node concept="Xl_RD" id="7nPD14NHSoK" role="33vP2m">
        <property role="Xl_RC" value="_" />
      </node>
    </node>
    <node concept="2tJIrI" id="7nPD14NHSk6" role="jymVt" />
    <node concept="3clFbW" id="7nPD14NHRLE" role="jymVt">
      <node concept="3cqZAl" id="7nPD14NHRLG" role="3clF45" />
      <node concept="3Tm1VV" id="7nPD14NHRLH" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14NHRLI" role="3clF47">
        <node concept="XkiVB" id="7nPD14NXX3u" role="3cqZAp">
          <ref role="37wK5l" to="45ys:7nPD14NON$Y" resolve="MetaLogical" />
          <node concept="37vLTw" id="7nPD14NXX8t" role="37wK5m">
            <ref role="3cqZAo" node="7nPD14NHRSd" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7nPD14NHRSd" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7nPD14NHRSc" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="7nPD14NHRVY" role="11_B2D">
            <ref role="16sUi3" node="7nPD14NHRwV" resolve="V" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nPD14NXXeh" role="jymVt" />
    <node concept="16euLQ" id="7nPD14NHRwV" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
    <node concept="3uibUv" id="7nPD14NXWzX" role="1zkMxy">
      <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
      <node concept="16syzq" id="7nPD14NXWFt" role="11_B2D">
        <ref role="16sUi3" node="7nPD14NHRwV" resolve="V" />
      </node>
    </node>
  </node>
</model>

