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
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification(jetbrains.mps.unification.tree/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.constraint)" />
    <import index="i8dg" ref="r:e8529b97-a186-4c32-8f12-771b2a92b55a(jetbrains.mps.logic.reactor.rule)" />
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
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
        <property role="TrG5h" value="multiLogicalPattern" />
        <node concept="3uibUv" id="7HUwyZb7bf2" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7HUwyZaNIC5" resolve="MultiLogicalPattern" />
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
                      <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiLogicalPattern" />
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
                      <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiLogicalPattern" />
                    </node>
                    <node concept="liA8E" id="7HUwyZbdRgZ" role="2OqNvi">
                      <ref role="37wK5l" to="45ys:7HUwyZaNHY_" resolve="patternAt" />
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
                <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiLogicalPattern" />
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
      <node concept="37vLTG" id="7HUwyZb7chk" role="3clF46">
        <property role="TrG5h" value="logicalPattern" />
        <node concept="3uibUv" id="7HUwyZb7chm" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
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
              <ref role="37wK5l" to="oy3s:7HUwyZbdNAd" resolve="LogicalPatternAtom" />
              <node concept="37vLTw" id="7HUwyZbdQO9" role="37wK5m">
                <ref role="3cqZAo" node="7HUwyZb7chk" resolve="logicalPattern" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="677NV565VBQ" role="jymVt" />
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
    <property role="TrG5h" value="ComputingTracerExt" />
    <node concept="2tJIrI" id="qubcdtxBuI" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7gU0T" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="result" />
      <node concept="37vLTG" id="7nkyKX7gU0U" role="3clF46">
        <property role="TrG5h" value="constraint" />
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
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="5mr7UHccdlH" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3cqZAl" id="7nkyKX7gU3Q" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7gU3R" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7gU3S" role="3clF47" />
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
            <ref role="1Y3XeK" node="qubcdtxBiR" resolve="ComputingTracerExt" />
            <node concept="3Tm1VV" id="24Vro6cS5SP" role="1B3o_S" />
            <node concept="3clFb_" id="24Vro6cS5SQ" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askSuccess" />
              <node concept="37vLTG" id="24Vro6cS5SR" role="3clF46">
                <property role="TrG5h" value="predicateSymbol" />
                <node concept="3uibUv" id="5uFPQ7C61lQ" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
                  <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
                  <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
                  <ref role="3uigEE" to="qrld:5uFPQ7B$mzX" resolve="Symbol" />
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
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="qubcdtxJQt" role="1tU5fm">
        <ref role="3uigEE" node="qubcdtxBiR" resolve="ComputingTracerExt" />
      </node>
    </node>
    <node concept="2tJIrI" id="qubcdtxJFT" role="jymVt" />
    <node concept="3Tm1VV" id="qubcdtxBiS" role="1B3o_S" />
    <node concept="3uibUv" id="qubcdtxBjm" role="3HQHJm">
      <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="ComputingTracer" />
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
  <node concept="312cEu" id="7HUwyZaPe5Y">
    <property role="TrG5h" value="AbstractLogicalPattern" />
    <node concept="2tJIrI" id="7HUwyZbd41c" role="jymVt" />
    <node concept="Wx3nA" id="7HUwyZbd3UL" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="WILDCARD" />
      <node concept="3Tm6S6" id="7HUwyZbd3UI" role="1B3o_S" />
      <node concept="17QB3L" id="7HUwyZbd3UJ" role="1tU5fm" />
      <node concept="Xl_RD" id="7HUwyZbd3UK" role="33vP2m">
        <property role="Xl_RC" value="_" />
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPenm" role="jymVt" />
    <node concept="3clFbW" id="7HUwyZaPeCi" role="jymVt">
      <node concept="37vLTG" id="7HUwyZaPeEp" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7HUwyZaPeI0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7HUwyZaPm0l" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7HUwyZaPm4r" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="49L2l3F7IEJ" role="11_B2D">
            <ref role="16sUi3" node="49L2l3F7Igu" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7HUwyZaPeCk" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZaPeCl" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZaPeCm" role="3clF47">
        <node concept="3clFbF" id="7HUwyZaPeMj" role="3cqZAp">
          <node concept="37vLTI" id="7HUwyZaPeMl" role="3clFbG">
            <node concept="2OqwBi" id="7HUwyZaPeMp" role="37vLTJ">
              <node concept="Xjq3P" id="7HUwyZaPeMs" role="2Oq$k0" />
              <node concept="2OwXpG" id="7HUwyZaPeMo" role="2OqNvi">
                <ref role="2Oxat5" node="7HUwyZaPeMf" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="7HUwyZaPeMt" role="37vLTx">
              <ref role="3cqZAo" node="7HUwyZaPeEp" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZaPmhJ" role="3cqZAp">
          <node concept="37vLTI" id="7HUwyZaPmhL" role="3clFbG">
            <node concept="2OqwBi" id="7HUwyZaPmhP" role="37vLTJ">
              <node concept="Xjq3P" id="7HUwyZaPmhS" role="2Oq$k0" />
              <node concept="2OwXpG" id="7HUwyZaPmhO" role="2OqNvi">
                <ref role="2Oxat5" node="7HUwyZaPmhE" resolve="type" />
              </node>
            </node>
            <node concept="37vLTw" id="7HUwyZaPmhT" role="37vLTx">
              <ref role="3cqZAo" node="7HUwyZaPm0l" resolve="type" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZbd3HS" role="jymVt" />
    <node concept="3clFbW" id="7HUwyZbd3B1" role="jymVt">
      <node concept="37vLTG" id="7HUwyZbd3B4" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7HUwyZbd3B5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="49L2l3F7IIZ" role="11_B2D">
            <ref role="16sUi3" node="49L2l3F7Igu" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7HUwyZbd3B7" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZbd3B8" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZbd3B9" role="3clF47">
        <node concept="3clFbF" id="7HUwyZbd3Ba" role="3cqZAp">
          <node concept="37vLTI" id="7HUwyZbd3Bb" role="3clFbG">
            <node concept="2OqwBi" id="7HUwyZbd3Bc" role="37vLTJ">
              <node concept="Xjq3P" id="7HUwyZbd3Bd" role="2Oq$k0" />
              <node concept="2OwXpG" id="7HUwyZbd3Be" role="2OqNvi">
                <ref role="2Oxat5" node="7HUwyZaPeMf" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="7FFmDVAIEc1" role="37vLTx">
              <node concept="2YIFZM" id="7FFmDVAIEhM" role="3uHU7w">
                <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object):int" resolve="identityHashCode" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="Xjq3P" id="7FFmDVAIEjP" role="37wK5m" />
              </node>
              <node concept="37vLTw" id="7HUwyZbd3UO" role="3uHU7B">
                <ref role="3cqZAo" node="7HUwyZbd3UL" resolve="WILDCARD" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZbd3Bg" role="3cqZAp">
          <node concept="37vLTI" id="7HUwyZbd3Bh" role="3clFbG">
            <node concept="2OqwBi" id="7HUwyZbd3Bi" role="37vLTJ">
              <node concept="Xjq3P" id="7HUwyZbd3Bj" role="2Oq$k0" />
              <node concept="2OwXpG" id="7HUwyZbd3Bk" role="2OqNvi">
                <ref role="2Oxat5" node="7HUwyZaPmhE" resolve="type" />
              </node>
            </node>
            <node concept="37vLTw" id="7HUwyZbd3Bl" role="37vLTx">
              <ref role="3cqZAo" node="7HUwyZbd3B4" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZbd4uZ" role="3cqZAp">
          <node concept="37vLTI" id="7HUwyZbd4C9" role="3clFbG">
            <node concept="3clFbT" id="7HUwyZbd4D_" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="7HUwyZbd4wR" role="37vLTJ">
              <node concept="Xjq3P" id="7HUwyZbd4uX" role="2Oq$k0" />
              <node concept="2OwXpG" id="7HUwyZbd4$s" role="2OqNvi">
                <ref role="2Oxat5" node="7HUwyZbd4j1" resolve="wildcard" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPe_N" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPenz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="7HUwyZaPen$" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZaPen_" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZaPenB" role="3clF47">
        <node concept="3clFbF" id="7HUwyZaPeSo" role="3cqZAp">
          <node concept="37vLTw" id="7HUwyZaPeSn" role="3clFbG">
            <ref role="3cqZAo" node="7HUwyZaPeMf" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPeTV" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPenC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="7HUwyZaPenD" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZaPenE" role="1B3o_S" />
      <node concept="37vLTG" id="7HUwyZaPenG" role="3clF46">
        <property role="TrG5h" value="namingContext" />
        <node concept="3uibUv" id="7HUwyZaPenH" role="1tU5fm">
          <ref role="3uigEE" to="45ys:2$F5QputikM" resolve="NamingContext" />
        </node>
      </node>
      <node concept="3clFbS" id="7HUwyZaPenI" role="3clF47">
        <node concept="3clFbF" id="2$F5QputK8y" role="3cqZAp">
          <node concept="2OqwBi" id="2$F5QputKbf" role="3clFbG">
            <node concept="37vLTw" id="2$F5QputK8x" role="2Oq$k0">
              <ref role="3cqZAo" node="7HUwyZaPenG" resolve="namingContext" />
            </node>
            <node concept="liA8E" id="2$F5QputKkL" role="2OqNvi">
              <ref role="37wK5l" to="45ys:7HUwyZaPiEo" resolve="uniqueName" />
              <node concept="Xjq3P" id="2$F5QputKnk" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPgcH" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPenJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isWildcard" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7HUwyZaPenL" role="1B3o_S" />
      <node concept="10P_77" id="7HUwyZaPenM" role="3clF45" />
      <node concept="3clFbS" id="7HUwyZaPenN" role="3clF47">
        <node concept="3clFbF" id="7HUwyZbd4Lb" role="3cqZAp">
          <node concept="37vLTw" id="7HUwyZbd4La" role="3clFbG">
            <ref role="3cqZAo" node="7HUwyZbd4j1" resolve="wildcard" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPl1c" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPenQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="type" />
      <node concept="3uibUv" id="7HUwyZaPenR" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="16syzq" id="49L2l3F7Iys" role="11_B2D">
          <ref role="16sUi3" node="49L2l3F7Igu" resolve="V" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZaPenT" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZaPenV" role="3clF47">
        <node concept="3clFbF" id="7HUwyZaPmx5" role="3cqZAp">
          <node concept="37vLTw" id="7HUwyZaPmx4" role="3clFbG">
            <ref role="3cqZAo" node="7HUwyZaPmhE" resolve="type" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPlVS" role="jymVt" />
    <node concept="3Tm1VV" id="7HUwyZaPe5Z" role="1B3o_S" />
    <node concept="3uibUv" id="7HUwyZaPelp" role="EKbjA">
      <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
      <node concept="16syzq" id="49L2l3F7Itn" role="11_B2D">
        <ref role="16sUi3" node="49L2l3F7Igu" resolve="V" />
      </node>
    </node>
    <node concept="312cEg" id="7HUwyZaPeMf" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="7HUwyZaPeMg" role="1B3o_S" />
      <node concept="17QB3L" id="7HUwyZaPeMi" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7HUwyZaPmhE" role="jymVt">
      <property role="TrG5h" value="type" />
      <node concept="3Tm6S6" id="7HUwyZaPmhF" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaPmhH" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="16syzq" id="49L2l3F7I_v" role="11_B2D">
          <ref role="16sUi3" node="49L2l3F7Igu" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7HUwyZbd4j1" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="wildcard" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7HUwyZbd4dX" role="1B3o_S" />
      <node concept="10P_77" id="7HUwyZbd4iZ" role="1tU5fm" />
      <node concept="3clFbT" id="7HUwyZbd4qk" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="16euLQ" id="49L2l3F7Igu" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
  </node>
  <node concept="312cEu" id="7HUwyZaPnLG">
    <property role="TrG5h" value="AbstractMultiLogicalPattern" />
    <node concept="2tJIrI" id="7HUwyZaPnNr" role="jymVt" />
    <node concept="3clFbW" id="7HUwyZaPnRd" role="jymVt">
      <node concept="3cqZAl" id="7HUwyZaPnRf" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZaPnRg" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZaPnRh" role="3clF47">
        <node concept="XkiVB" id="7HUwyZaPv9n" role="3cqZAp">
          <ref role="37wK5l" node="7HUwyZaPeCi" resolve="AbstractLogicalPattern" />
          <node concept="37vLTw" id="7HUwyZaPvd0" role="37wK5m">
            <ref role="3cqZAo" node="7HUwyZaPuZ7" resolve="name" />
          </node>
          <node concept="37vLTw" id="7HUwyZaPvl$" role="37wK5m">
            <ref role="3cqZAo" node="7HUwyZaPv1V" resolve="type" />
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZaPnU3" role="3cqZAp">
          <node concept="37vLTI" id="7HUwyZaPnU5" role="3clFbG">
            <node concept="2OqwBi" id="7HUwyZaPnU9" role="37vLTJ">
              <node concept="Xjq3P" id="7HUwyZaPnUc" role="2Oq$k0" />
              <node concept="2OwXpG" id="7HUwyZaPnU8" role="2OqNvi">
                <ref role="2Oxat5" node="7HUwyZaPnTZ" resolve="cardinality" />
              </node>
            </node>
            <node concept="37vLTw" id="7HUwyZaPnUd" role="37vLTx">
              <ref role="3cqZAo" node="7HUwyZaPnSR" resolve="cardinality" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZaPuL1" role="3cqZAp">
          <node concept="1rXfSq" id="7HUwyZaPuKZ" role="3clFbG">
            <ref role="37wK5l" node="7HUwyZaPohI" resolve="init" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7HUwyZaPuZ7" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7HUwyZaPv1C" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7HUwyZaPv1V" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7HUwyZaPv4u" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="49L2l3F83ge" role="11_B2D">
            <ref role="16sUi3" node="49L2l3F8201" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7HUwyZaPnSR" role="3clF46">
        <property role="TrG5h" value="cardinality" />
        <node concept="10Oyi0" id="7HUwyZaPnSQ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPnNu" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPnNB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="cardinality" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7HUwyZaPnND" role="1B3o_S" />
      <node concept="10Oyi0" id="7HUwyZaPnNE" role="3clF45" />
      <node concept="3clFbS" id="7HUwyZaPnNG" role="3clF47">
        <node concept="3clFbF" id="7HUwyZaPnZp" role="3cqZAp">
          <node concept="37vLTw" id="7HUwyZaPnZo" role="3clFbG">
            <ref role="3cqZAo" node="7HUwyZaPnTZ" resolve="cardinality" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPo1a" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPnNH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="patternAt" />
      <node concept="37vLTG" id="7HUwyZaPnNI" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="7HUwyZaPnNJ" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7HUwyZaPnNL" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaPnNM" role="3clF45">
        <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
        <node concept="16syzq" id="49L2l3F83cX" role="11_B2D">
          <ref role="16sUi3" node="49L2l3F8201" resolve="V" />
        </node>
      </node>
      <node concept="3clFbS" id="7HUwyZaPnNO" role="3clF47">
        <node concept="3clFbF" id="7HUwyZb20vP" role="3cqZAp">
          <node concept="2OqwBi" id="7HUwyZb20DU" role="3clFbG">
            <node concept="37vLTw" id="7HUwyZb20vO" role="2Oq$k0">
              <ref role="3cqZAo" node="7HUwyZaPotY" resolve="patterns" />
            </node>
            <node concept="liA8E" id="7HUwyZb20V0" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
              <node concept="37vLTw" id="7HUwyZb216V" role="37wK5m">
                <ref role="3cqZAo" node="7HUwyZaPnNI" resolve="idx" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZbfzof" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZbfzaS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="toArray" />
      <node concept="3Tm1VV" id="7HUwyZbfzaU" role="1B3o_S" />
      <node concept="10Q1$e" id="7HUwyZbfzaV" role="3clF45">
        <node concept="3uibUv" id="7HUwyZbfzaW" role="10Q1$1">
          <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
        </node>
      </node>
      <node concept="3clFbS" id="7HUwyZbfzaY" role="3clF47">
        <node concept="3cpWs8" id="7HUwyZbf_5R" role="3cqZAp">
          <node concept="3cpWsn" id="7HUwyZbf_5S" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="7HUwyZbf_5M" role="1tU5fm">
              <node concept="3uibUv" id="7HUwyZbf_5P" role="10Q1$1">
                <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
              </node>
            </node>
            <node concept="2ShNRf" id="7HUwyZbf_5T" role="33vP2m">
              <node concept="3$_iS1" id="7HUwyZbf_5U" role="2ShVmc">
                <node concept="3$GHV9" id="7HUwyZbf_5V" role="3$GQph">
                  <node concept="37vLTw" id="7HUwyZbf_5W" role="3$I4v7">
                    <ref role="3cqZAo" node="7HUwyZaPnTZ" resolve="cardinality" />
                  </node>
                </node>
                <node concept="3uibUv" id="7HUwyZbf_5X" role="3$_nBY">
                  <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZbfzA8" role="3cqZAp">
          <node concept="2OqwBi" id="7HUwyZbfzP9" role="3clFbG">
            <node concept="37vLTw" id="7HUwyZbfzEy" role="2Oq$k0">
              <ref role="3cqZAo" node="7HUwyZaPotY" resolve="patterns" />
            </node>
            <node concept="liA8E" id="7HUwyZbf$mG" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[]):java.lang.Object[]" resolve="toArray" />
              <node concept="37vLTw" id="7HUwyZbf_gZ" role="37wK5m">
                <ref role="3cqZAo" node="7HUwyZbf_5S" resolve="array" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPnMx" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPohI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7HUwyZaPohL" role="3clF47">
        <node concept="1Dw8fO" id="7HUwyZaPoYc" role="3cqZAp">
          <node concept="3uNrnE" id="7HUwyZaPraC" role="1Dwrff">
            <node concept="37vLTw" id="7HUwyZaPraE" role="2$L3a6">
              <ref role="3cqZAo" node="7HUwyZaPoYd" resolve="i" />
            </node>
          </node>
          <node concept="3cpWsn" id="7HUwyZaPoYd" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7HUwyZaPoYB" role="1tU5fm" />
            <node concept="3cmrfG" id="7HUwyZaPoZD" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="7HUwyZaPoYe" role="2LFqv$">
            <node concept="3clFbF" id="7HUwyZaPrdO" role="3cqZAp">
              <node concept="2OqwBi" id="7HUwyZaPrmw" role="3clFbG">
                <node concept="37vLTw" id="7HUwyZaPrdN" role="2Oq$k0">
                  <ref role="3cqZAo" node="7HUwyZaPotY" resolve="patterns" />
                </node>
                <node concept="liA8E" id="7HUwyZaPrBA" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="2ShNRf" id="7HUwyZaPrFp" role="37wK5m">
                    <node concept="1pGfFk" id="7HUwyZaPrZ$" role="2ShVmc">
                      <ref role="37wK5l" node="7HUwyZaPeCi" resolve="AbstractLogicalPattern" />
                      <node concept="3cpWs3" id="7HUwyZaPtoj" role="37wK5m">
                        <node concept="3cpWs3" id="7HUwyZaPt7Q" role="3uHU7B">
                          <node concept="1rXfSq" id="7HUwyZaPt0j" role="3uHU7B">
                            <ref role="37wK5l" node="7HUwyZaPenz" resolve="name" />
                          </node>
                          <node concept="Xl_RD" id="7HUwyZaPtdh" role="3uHU7w">
                            <property role="Xl_RC" value="_" />
                          </node>
                        </node>
                        <node concept="1eOMI4" id="7HUwyZaPufC" role="3uHU7w">
                          <node concept="3cpWs3" id="7HUwyZaPtND" role="1eOMHV">
                            <node concept="37vLTw" id="7HUwyZaPtup" role="3uHU7B">
                              <ref role="3cqZAo" node="7HUwyZaPoYd" resolve="i" />
                            </node>
                            <node concept="3cmrfG" id="7HUwyZaPtOp" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="7HUwyZaPuDB" role="37wK5m">
                        <ref role="37wK5l" node="7HUwyZaPenQ" resolve="type" />
                      </node>
                      <node concept="16syzq" id="49L2l3F84tv" role="1pMfVU">
                        <ref role="16sUi3" node="49L2l3F8201" resolve="V" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="7HUwyZaPpc2" role="1Dwp0S">
            <node concept="37vLTw" id="7HUwyZaPqYT" role="3uHU7w">
              <ref role="3cqZAo" node="7HUwyZaPnTZ" resolve="cardinality" />
            </node>
            <node concept="37vLTw" id="7HUwyZaPp0E" role="3uHU7B">
              <ref role="3cqZAo" node="7HUwyZaPoYd" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7HUwyZaPoeC" role="1B3o_S" />
      <node concept="3cqZAl" id="7HUwyZaPohG" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaPo50" role="jymVt" />
    <node concept="3Tm1VV" id="7HUwyZaPnLH" role="1B3o_S" />
    <node concept="3uibUv" id="7HUwyZaPnMn" role="EKbjA">
      <ref role="3uigEE" to="45ys:7HUwyZaNIC5" resolve="MultiLogicalPattern" />
      <node concept="16syzq" id="49L2l3F82Mb" role="11_B2D">
        <ref role="16sUi3" node="49L2l3F8201" resolve="V" />
      </node>
    </node>
    <node concept="3uibUv" id="7HUwyZaPnNh" role="1zkMxy">
      <ref role="3uigEE" node="7HUwyZaPe5Y" resolve="AbstractLogicalPattern" />
      <node concept="16syzq" id="49L2l3F82wL" role="11_B2D">
        <ref role="16sUi3" node="49L2l3F8201" resolve="V" />
      </node>
    </node>
    <node concept="312cEg" id="7HUwyZaPnTZ" role="jymVt">
      <property role="TrG5h" value="cardinality" />
      <node concept="3Tm6S6" id="7HUwyZaPnU0" role="1B3o_S" />
      <node concept="10Oyi0" id="7HUwyZaPnU2" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaPoOU" role="jymVt" />
    <node concept="312cEg" id="7HUwyZaPotY" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="patterns" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7HUwyZaPonS" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaPorg" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7HUwyZaPosS" role="11_B2D">
          <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
          <node concept="16syzq" id="49L2l3F83vr" role="11_B2D">
            <ref role="16sUi3" node="49L2l3F8201" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7HUwyZaPoxY" role="33vP2m">
        <node concept="1pGfFk" id="7HUwyZaPoFG" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="7HUwyZaPoMa" role="1pMfVU">
            <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
            <node concept="16syzq" id="49L2l3F83T_" role="11_B2D">
              <ref role="16sUi3" node="49L2l3F8201" resolve="V" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPvm9" role="jymVt" />
    <node concept="16euLQ" id="49L2l3F8201" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
  </node>
</model>

