<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5bf067fa-58b6-4b5f-bdcd-180ab9bc9976(jetbrains.mps.jchr.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="dmyu" ref="r:c6eeedda-084d-4659-9c4d-80b7768f2bb2(jetbrains.mps.baseLanguage.textGen)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="yy4t" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textGen(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="1f2y" ref="r:c2e9552f-aeab-4773-af70-c663afdf96a5(jetbrains.mps.jchr.behavior)" />
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237306003719" name="separator" index="lbP0B" />
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1233921373471" name="jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration" flags="ig" index="1bsvg0">
        <reference id="1234781160172" name="baseTextGen" index="1YGkfN" />
        <child id="1233922432965" name="operation" index="1bwxVq" />
      </concept>
      <concept id="1233922353619" name="jetbrains.mps.lang.textGen.structure.OperationDeclaration" flags="sg" stub="3147100357551177019" index="1bwezc" />
      <concept id="1233924848298" name="jetbrains.mps.lang.textGen.structure.OperationCall" flags="ng" index="1bDJIP">
        <reference id="1234190664409" name="function" index="1rvKf6" />
        <child id="1234191323697" name="parameter" index="1ryhcI" />
      </concept>
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
      <concept id="1234351783410" name="jetbrains.mps.lang.textGen.structure.BufferParameter" flags="nn" index="1_6nNH" />
      <concept id="1234529062040" name="jetbrains.mps.lang.textGen.structure.UtilityMethodCall" flags="nn" index="1JECQ7">
        <reference id="1234529163244" name="function" index="1JF1rN" />
        <child id="1234529174917" name="parameter" index="1JF4iq" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="WtQ9Q" id="1kcpyXx_DAp">
    <property role="3GE5qa" value="handler" />
    <ref role="WuzLi" to="vgt0:pmDhvH6q87" resolve="Handler" />
    <node concept="11bSqf" id="1kcpyXx_DJ6" role="11c4hB">
      <node concept="3clFbS" id="1kcpyXx_DJ7" role="2VODD2">
        <node concept="lc7rE" id="1kcpyXxCk$F" role="3cqZAp">
          <node concept="1bDJIP" id="1kcpyXxCk_1" role="lcghm">
            <ref role="1rvKf6" node="1kcpyXxBknc" resolve="fileHeader" />
            <node concept="117lpO" id="1kcpyXxCkJ7" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxDj91" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxFXyo" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxFXzm" role="lcghm">
            <property role="lacIc" value="public handler " />
          </node>
          <node concept="l9hG8" id="1kcpyXxFX_e" role="lcghm">
            <node concept="2OqwBi" id="1kcpyXxFXIT" role="lb14g">
              <node concept="117lpO" id="1kcpyXxFXA_" role="2Oq$k0" />
              <node concept="3TrcHB" id="1kcpyXxG0Se" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1kcpyXxG12h" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="l8MVK" id="1kcpyXxG1P8" role="lcghm" />
        </node>
        <node concept="3clFbH" id="1kcpyXxG1et" role="3cqZAp" />
        <node concept="3izx1p" id="1kcpyXxG1l4" role="3cqZAp">
          <node concept="3clFbS" id="1kcpyXxG1l6" role="3izTki">
            <node concept="lc7rE" id="1kcpyXxGfD0" role="3cqZAp">
              <node concept="1bDJIP" id="1kcpyXxGg6u" role="lcghm">
                <ref role="1rvKf6" node="1kcpyXxG7XO" resolve="constraintDeclarations" />
                <node concept="117lpO" id="1kcpyXxGg6K" role="1ryhcI" />
              </node>
            </node>
            <node concept="lc7rE" id="1kcpyXxGg7Q" role="3cqZAp">
              <node concept="l8MVK" id="1kcpyXxGg8M" role="lcghm" />
            </node>
            <node concept="lc7rE" id="6SkxsMzT2sv" role="3cqZAp">
              <node concept="1bDJIP" id="6SkxsMzT2ul" role="lcghm">
                <ref role="1rvKf6" node="6SkxsMzT195" resolve="solverDeclarations" />
                <node concept="117lpO" id="6SkxsMzT2wj" role="1ryhcI" />
              </node>
            </node>
            <node concept="lc7rE" id="6SkxsMzT2p1" role="3cqZAp">
              <node concept="l8MVK" id="6SkxsMzT2p2" role="lcghm" />
            </node>
            <node concept="lc7rE" id="1kcpyXxE2p5" role="3cqZAp">
              <node concept="1bDJIP" id="1kcpyXxE7Ao" role="lcghm">
                <ref role="1rvKf6" node="1kcpyXxE2$o" resolve="rules" />
                <node concept="117lpO" id="1kcpyXxE7AE" role="1ryhcI" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxG3Q_" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxG1AH" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxG1Gl" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="1kcpyXxG1JS" role="lcghm" />
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="6XrX4sTVy0o" role="33IsuW">
      <node concept="3clFbS" id="6XrX4sTVy0p" role="2VODD2">
        <node concept="3clFbF" id="6XrX4sTVyfF" role="3cqZAp">
          <node concept="Xl_RD" id="6XrX4sTVyfE" role="3clFbG">
            <property role="Xl_RC" value="jchr" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1bsvg0" id="1kcpyXxAXb9">
    <property role="TrG5h" value="JCHRTextGen" />
    <ref role="1YGkfN" to="dmyu:hXZ_k_W" resolve="BaseLanguageTextGen" />
    <node concept="1bwezc" id="1kcpyXxBknc" role="1bwxVq">
      <property role="TrG5h" value="fileHeader" />
      <node concept="3cqZAl" id="1kcpyXxBknd" role="3clF45" />
      <node concept="3clFbS" id="1kcpyXxBkne" role="3clF47">
        <node concept="3cpWs8" id="1kcpyXxFI5A" role="3cqZAp">
          <node concept="3cpWsn" id="1kcpyXxFI5B" role="3cpWs9">
            <property role="TrG5h" value="currPartId" />
            <node concept="10Oyi0" id="1kcpyXxFI5C" role="1tU5fm" />
            <node concept="2OqwBi" id="1kcpyXxFI5D" role="33vP2m">
              <node concept="1_6nNH" id="1kcpyXxFI5E" role="2Oq$k0" />
              <node concept="liA8E" id="1kcpyXxFI5F" role="2OqNvi">
                <ref role="37wK5l" to="yy4t:~TextGenBuffer.selectPart(int):int" resolve="selectPart" />
                <node concept="10M0yZ" id="1kcpyXxFI5G" role="37wK5m">
                  <ref role="1PxDUh" to="yy4t:~TextGenBuffer" resolve="TextGenBuffer" />
                  <ref role="3cqZAo" to="yy4t:~TextGenBuffer.TOP" resolve="TOP" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxFI5H" role="3cqZAp" />
        <node concept="3clFbF" id="1kcpyXxFI5I" role="3cqZAp">
          <node concept="2OqwBi" id="1kcpyXxFI5J" role="3clFbG">
            <node concept="1_6nNH" id="1kcpyXxFI5K" role="2Oq$k0" />
            <node concept="liA8E" id="1kcpyXxFI5L" role="2OqNvi">
              <ref role="37wK5l" to="yy4t:~TextGenBuffer.append(java.lang.String):void" resolve="append" />
              <node concept="Xl_RD" id="1kcpyXxFIob" role="37wK5m">
                <property role="Xl_RC" value="package " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1kcpyXxFI5U" role="3cqZAp">
          <node concept="2OqwBi" id="1kcpyXxFI5V" role="3clFbG">
            <node concept="1_6nNH" id="1kcpyXxFI5W" role="2Oq$k0" />
            <node concept="liA8E" id="1kcpyXxFI5X" role="2OqNvi">
              <ref role="37wK5l" to="yy4t:~TextGenBuffer.append(java.lang.String):void" resolve="append" />
              <node concept="1JECQ7" id="1kcpyXxFIOw" role="37wK5m">
                <ref role="1JF1rN" to="dmyu:hXZAS9u" resolve="getPackageName" />
                <node concept="37vLTw" id="1kcpyXxFIOx" role="1JF4iq">
                  <ref role="3cqZAo" node="1kcpyXxBnYb" resolve="handler" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1kcpyXxFI5Z" role="3cqZAp">
          <node concept="2OqwBi" id="1kcpyXxFI60" role="3clFbG">
            <node concept="1_6nNH" id="1kcpyXxFI61" role="2Oq$k0" />
            <node concept="liA8E" id="1kcpyXxFI62" role="2OqNvi">
              <ref role="37wK5l" to="yy4t:~TextGenBuffer.append(java.lang.String):void" resolve="append" />
              <node concept="Xl_RD" id="1kcpyXxFI63" role="37wK5m">
                <property role="Xl_RC" value=";\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxFI64" role="3cqZAp" />
        <node concept="3clFbF" id="1kcpyXxFI65" role="3cqZAp">
          <node concept="2OqwBi" id="1kcpyXxFI66" role="3clFbG">
            <node concept="1_6nNH" id="1kcpyXxFI67" role="2Oq$k0" />
            <node concept="liA8E" id="1kcpyXxFI68" role="2OqNvi">
              <ref role="37wK5l" to="yy4t:~TextGenBuffer.selectPart(int):int" resolve="selectPart" />
              <node concept="37vLTw" id="1kcpyXxFI69" role="37wK5m">
                <ref role="3cqZAo" node="1kcpyXxFI5B" resolve="currPartId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1kcpyXxBnYb" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3Tqbb2" id="1kcpyXxBnYa" role="1tU5fm">
          <ref role="ehGHo" to="vgt0:pmDhvH6q87" resolve="Handler" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="1kcpyXxE2$o" role="1bwxVq">
      <property role="TrG5h" value="rules" />
      <node concept="3cqZAl" id="1kcpyXxE2$p" role="3clF45" />
      <node concept="3clFbS" id="1kcpyXxE2$q" role="3clF47">
        <node concept="1bpajm" id="1kcpyXxG60i" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxE2HH" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxEDa9" role="lcghm">
            <property role="lacIc" value="rules {" />
          </node>
          <node concept="l8MVK" id="1kcpyXxE2NP" role="lcghm" />
        </node>
        <node concept="3clFbH" id="1kcpyXxED7o" role="3cqZAp" />
        <node concept="3izx1p" id="1kcpyXxFQLQ" role="3cqZAp">
          <node concept="3clFbS" id="1kcpyXxFQLS" role="3izTki">
            <node concept="lc7rE" id="6SkxsM$56Xm" role="3cqZAp">
              <node concept="1bDJIP" id="6SkxsM$56Yt" role="lcghm">
                <ref role="1rvKf6" node="6SkxsM$53G5" resolve="localDeclarations" />
                <node concept="37vLTw" id="6SkxsM$570h" role="1ryhcI">
                  <ref role="3cqZAo" node="1kcpyXxE74b" resolve="handler" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1kcpyXxE73M" role="3cqZAp">
              <node concept="l9S2W" id="1kcpyXxE73W" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="\n" />
                <node concept="2OqwBi" id="1kcpyXxE790" role="lbANJ">
                  <node concept="37vLTw" id="1kcpyXxE74F" role="2Oq$k0">
                    <ref role="3cqZAo" node="1kcpyXxE74b" resolve="handler" />
                  </node>
                  <node concept="3Tsc0h" id="1kcpyXxE7hA" role="2OqNvi">
                    <ref role="3TtcxE" to="vgt0:pmDhvH7QwP" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxEDgZ" role="3cqZAp" />
        <node concept="1bpajm" id="1kcpyXxG63W" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxE2Oy" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxEDhr" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="1kcpyXxG64t" role="lcghm" />
        </node>
      </node>
      <node concept="37vLTG" id="1kcpyXxE74b" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3Tqbb2" id="1kcpyXxE74a" role="1tU5fm">
          <ref role="ehGHo" to="vgt0:pmDhvH6q87" resolve="Handler" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="1kcpyXxG7XO" role="1bwxVq">
      <property role="TrG5h" value="constraintDeclarations" />
      <node concept="37vLTG" id="1kcpyXxG82V" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3Tqbb2" id="1kcpyXxG833" role="1tU5fm">
          <ref role="ehGHo" to="vgt0:pmDhvH6q87" resolve="Handler" />
        </node>
      </node>
      <node concept="3cqZAl" id="1kcpyXxG7XP" role="3clF45" />
      <node concept="3clFbS" id="1kcpyXxG7XQ" role="3clF47">
        <node concept="lc7rE" id="1kcpyXxG83y" role="3cqZAp">
          <node concept="l9S2W" id="1kcpyXxG83G" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="\n" />
            <node concept="2OqwBi" id="1kcpyXxG8bG" role="lbANJ">
              <node concept="37vLTw" id="1kcpyXxG83S" role="2Oq$k0">
                <ref role="3cqZAo" node="1kcpyXxG82V" resolve="handler" />
              </node>
              <node concept="3Tsc0h" id="1kcpyXxG9n2" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7Q5D" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="6SkxsMzT195" role="1bwxVq">
      <property role="TrG5h" value="solverDeclarations" />
      <node concept="37vLTG" id="6SkxsMzT196" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3Tqbb2" id="6SkxsMzT197" role="1tU5fm">
          <ref role="ehGHo" to="vgt0:pmDhvH6q87" resolve="Handler" />
        </node>
      </node>
      <node concept="3cqZAl" id="6SkxsMzT198" role="3clF45" />
      <node concept="3clFbS" id="6SkxsMzT199" role="3clF47">
        <node concept="lc7rE" id="6SkxsMzT19a" role="3cqZAp">
          <node concept="l9S2W" id="6SkxsMzT19b" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="\n" />
            <node concept="2OqwBi" id="6SkxsMzT19c" role="lbANJ">
              <node concept="37vLTw" id="6SkxsMzT19d" role="2Oq$k0">
                <ref role="3cqZAo" node="6SkxsMzT196" resolve="handler" />
              </node>
              <node concept="3Tsc0h" id="6SkxsMzT1Y4" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:6SkxsMzHbfs" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="6SkxsM$53G5" role="1bwxVq">
      <property role="TrG5h" value="localDeclarations" />
      <node concept="37vLTG" id="6SkxsM$53G6" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3Tqbb2" id="6SkxsM$53G7" role="1tU5fm">
          <ref role="ehGHo" to="vgt0:pmDhvH6q87" resolve="Handler" />
        </node>
      </node>
      <node concept="3cqZAl" id="6SkxsM$53G8" role="3clF45" />
      <node concept="3clFbS" id="6SkxsM$53G9" role="3clF47">
        <node concept="lc7rE" id="6SkxsM$53Ga" role="3cqZAp">
          <node concept="l9S2W" id="6SkxsM$53Gb" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="\n" />
            <node concept="2OqwBi" id="6SkxsM$53Gc" role="lbANJ">
              <node concept="37vLTw" id="6SkxsM$53Gd" role="2Oq$k0">
                <ref role="3cqZAo" node="6SkxsM$53G6" resolve="handler" />
              </node>
              <node concept="3Tsc0h" id="6SkxsM$54_2" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:6SkxsM$4Isc" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1kcpyXxEaJU">
    <property role="3GE5qa" value="handler.rules" />
    <ref role="WuzLi" to="vgt0:pmDhvH6BuV" resolve="PropagationRule" />
    <node concept="11bSqf" id="1kcpyXxEaJV" role="11c4hB">
      <node concept="3clFbS" id="1kcpyXxEaJW" role="2VODD2">
        <node concept="1bpajm" id="1kcpyXxEHK7" role="3cqZAp" />
        <node concept="3clFbH" id="1kcpyXxEHNu" role="3cqZAp" />
        <node concept="3clFbJ" id="6lpwCiZlOI$" role="3cqZAp">
          <node concept="3clFbS" id="6lpwCiZlOIA" role="3clFbx">
            <node concept="lc7rE" id="6lpwCiZlPm8" role="3cqZAp">
              <node concept="l9hG8" id="6lpwCiZlP$B" role="lcghm">
                <node concept="2OqwBi" id="6lpwCiZlPCL" role="lb14g">
                  <node concept="117lpO" id="6lpwCiZlPAL" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6lpwCiZlPMD" role="2OqNvi">
                    <ref role="3TsBF5" to="vgt0:pmDhvH6BuW" resolve="tag" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="6lpwCiZlPR2" role="lcghm">
                <property role="lacIc" value=" @ " />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6lpwCiZlPj2" role="3clFbw">
            <node concept="10Nm6u" id="6lpwCiZlPkH" role="3uHU7w" />
            <node concept="2OqwBi" id="6lpwCiZlOOW" role="3uHU7B">
              <node concept="117lpO" id="6lpwCiZlOMY" role="2Oq$k0" />
              <node concept="3TrcHB" id="6lpwCiZlOYs" role="2OqNvi">
                <ref role="3TsBF5" to="vgt0:pmDhvH6BuW" resolve="tag" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6lpwCiZlNbX" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxEXKE" role="3cqZAp">
          <node concept="l9S2W" id="1kcpyXxEXQa" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="1kcpyXxEYku" role="lbANJ">
              <node concept="2OqwBi" id="1kcpyXxEXS3" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxEXQu" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxEYad" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7EB6" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxEY$4" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7E_n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxEsUp" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxEsXC" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxEI9x" role="lcghm">
            <property role="lacIc" value=" ==&gt; " />
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxF2BC" role="3cqZAp" />
        <node concept="3clFbJ" id="1kcpyXxGoUH" role="3cqZAp">
          <node concept="3clFbS" id="1kcpyXxGoUI" role="3clFbx">
            <node concept="lc7rE" id="1kcpyXxGoUJ" role="3cqZAp">
              <node concept="l9S2W" id="1kcpyXxGoUK" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="," />
                <node concept="2OqwBi" id="1kcpyXxGoUL" role="lbANJ">
                  <node concept="2OqwBi" id="1kcpyXxGoUM" role="2Oq$k0">
                    <node concept="117lpO" id="1kcpyXxGoUN" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1kcpyXxGoUO" role="2OqNvi">
                      <ref role="3Tt5mk" to="vgt0:pmDhvH7GDW" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1kcpyXxGoUP" role="2OqNvi">
                    <ref role="3TtcxE" to="vgt0:pmDhvH7GBk" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="1kcpyXxGt4C" role="lcghm">
                <property role="lacIc" value=" | " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1kcpyXxGoUT" role="3clFbw">
            <node concept="2OqwBi" id="1kcpyXxGoUU" role="2Oq$k0">
              <node concept="2OqwBi" id="1kcpyXxGoUV" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxGoUW" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxGoUX" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7GDW" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxGoUY" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7GBk" />
              </node>
            </node>
            <node concept="3GX2aA" id="1kcpyXxGoUZ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxGtmJ" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxF2zg" role="3cqZAp">
          <node concept="l9S2W" id="1kcpyXxF2zh" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="1kcpyXxF2zi" role="lbANJ">
              <node concept="2OqwBi" id="1kcpyXxF2zj" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxF2zk" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxF2Nh" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7GDY" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxF30a" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7EBu" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1kcpyXxGt7T" role="lcghm">
            <property role="lacIc" value="." />
          </node>
          <node concept="l8MVK" id="1kcpyXxGtaP" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1kcpyXxEzKW">
    <property role="3GE5qa" value="handler.rules" />
    <ref role="WuzLi" to="vgt0:pmDhvH6Bve" resolve="SimpagationRule" />
    <node concept="11bSqf" id="1kcpyXxEzKX" role="11c4hB">
      <node concept="3clFbS" id="1kcpyXxEzKY" role="2VODD2">
        <node concept="1bpajm" id="1kcpyXxF3nj" role="3cqZAp" />
        <node concept="3clFbH" id="1kcpyXxF3nk" role="3cqZAp" />
        <node concept="3clFbJ" id="6lpwCiZlQnq" role="3cqZAp">
          <node concept="3clFbS" id="6lpwCiZlQnr" role="3clFbx">
            <node concept="lc7rE" id="6lpwCiZlQns" role="3cqZAp">
              <node concept="l9hG8" id="6lpwCiZlQnt" role="lcghm">
                <node concept="2OqwBi" id="6lpwCiZlQnu" role="lb14g">
                  <node concept="117lpO" id="6lpwCiZlQnv" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6lpwCiZlQnw" role="2OqNvi">
                    <ref role="3TsBF5" to="vgt0:pmDhvH6BuW" resolve="tag" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="6lpwCiZlQnx" role="lcghm">
                <property role="lacIc" value=" @ " />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6lpwCiZlQny" role="3clFbw">
            <node concept="10Nm6u" id="6lpwCiZlQnz" role="3uHU7w" />
            <node concept="2OqwBi" id="6lpwCiZlQn$" role="3uHU7B">
              <node concept="117lpO" id="6lpwCiZlQn_" role="2Oq$k0" />
              <node concept="3TrcHB" id="6lpwCiZlQnA" role="2OqNvi">
                <ref role="3TsBF5" to="vgt0:pmDhvH6BuW" resolve="tag" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6lpwCiZlQkC" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxF3nl" role="3cqZAp">
          <node concept="l9S2W" id="1kcpyXxF3nm" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="1kcpyXxF3nn" role="lbANJ">
              <node concept="2OqwBi" id="1kcpyXxF3no" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxF3np" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxF3SQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7GFm" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxF3nr" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7E_n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxGpj9" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxGpog" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxGpoh" role="lcghm">
            <property role="lacIc" value=" \\ " />
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxGprx" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxGpvg" role="3cqZAp">
          <node concept="l9S2W" id="1kcpyXxGpxY" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="1kcpyXxGpTD" role="lbANJ">
              <node concept="2OqwBi" id="1kcpyXxGpzT" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxGpyk" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxGpIc" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7GFo" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxGq1k" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7E_n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxGplC" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxF3nt" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxF3nu" role="lcghm">
            <property role="lacIc" value=" &lt;=&gt; " />
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxF3nv" role="3cqZAp" />
        <node concept="3clFbJ" id="1kcpyXxGp8D" role="3cqZAp">
          <node concept="3clFbS" id="1kcpyXxGp8E" role="3clFbx">
            <node concept="lc7rE" id="1kcpyXxGp8F" role="3cqZAp">
              <node concept="l9S2W" id="1kcpyXxGp8G" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="," />
                <node concept="2OqwBi" id="1kcpyXxGp8H" role="lbANJ">
                  <node concept="2OqwBi" id="1kcpyXxGp8I" role="2Oq$k0">
                    <node concept="117lpO" id="1kcpyXxGp8J" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1kcpyXxGp8K" role="2OqNvi">
                      <ref role="3Tt5mk" to="vgt0:pmDhvH7GDW" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1kcpyXxGp8L" role="2OqNvi">
                    <ref role="3TtcxE" to="vgt0:pmDhvH7GBk" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="1kcpyXxGtB_" role="lcghm">
                <property role="lacIc" value=" | " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1kcpyXxGp8P" role="3clFbw">
            <node concept="2OqwBi" id="1kcpyXxGp8Q" role="2Oq$k0">
              <node concept="2OqwBi" id="1kcpyXxGp8R" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxGp8S" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxGp8T" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7GDW" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxGp8U" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7GBk" />
              </node>
            </node>
            <node concept="3GX2aA" id="1kcpyXxGp8V" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxGp79" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxF3nw" role="3cqZAp">
          <node concept="l9S2W" id="1kcpyXxF3nx" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="1kcpyXxF3ny" role="lbANJ">
              <node concept="2OqwBi" id="1kcpyXxF3nz" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxF3n$" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxF3n_" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7GDY" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxF3nA" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7EBu" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1kcpyXxGtFd" role="lcghm">
            <property role="lacIc" value="." />
          </node>
          <node concept="l8MVK" id="1kcpyXxGtIh" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1kcpyXxE_aQ">
    <property role="3GE5qa" value="handler.rules" />
    <ref role="WuzLi" to="vgt0:pmDhvH6Bv5" resolve="SimplificationRule" />
    <node concept="11bSqf" id="1kcpyXxE_aR" role="11c4hB">
      <node concept="3clFbS" id="1kcpyXxE_aS" role="2VODD2">
        <node concept="1bpajm" id="1kcpyXxF4ch" role="3cqZAp" />
        <node concept="3clFbH" id="1kcpyXxF4ci" role="3cqZAp" />
        <node concept="3clFbJ" id="6lpwCiZlQJS" role="3cqZAp">
          <node concept="3clFbS" id="6lpwCiZlQJT" role="3clFbx">
            <node concept="lc7rE" id="6lpwCiZlQJU" role="3cqZAp">
              <node concept="l9hG8" id="6lpwCiZlQJV" role="lcghm">
                <node concept="2OqwBi" id="6lpwCiZlQJW" role="lb14g">
                  <node concept="117lpO" id="6lpwCiZlQJX" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6lpwCiZlQJY" role="2OqNvi">
                    <ref role="3TsBF5" to="vgt0:pmDhvH6BuW" resolve="tag" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="6lpwCiZlQJZ" role="lcghm">
                <property role="lacIc" value=" @ " />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6lpwCiZlQK0" role="3clFbw">
            <node concept="10Nm6u" id="6lpwCiZlQK1" role="3uHU7w" />
            <node concept="2OqwBi" id="6lpwCiZlQK2" role="3uHU7B">
              <node concept="117lpO" id="6lpwCiZlQK3" role="2Oq$k0" />
              <node concept="3TrcHB" id="6lpwCiZlQK4" role="2OqNvi">
                <ref role="3TsBF5" to="vgt0:pmDhvH6BuW" resolve="tag" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6lpwCiZlQId" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxF4cj" role="3cqZAp">
          <node concept="l9S2W" id="1kcpyXxF4ck" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="1kcpyXxF4cl" role="lbANJ">
              <node concept="2OqwBi" id="1kcpyXxF4cm" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxF4cn" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxF4z3" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7GEp" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxF4cp" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7E_n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxF4cq" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxF4cr" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxF4cs" role="lcghm">
            <property role="lacIc" value=" &lt;=&gt; " />
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxF4ct" role="3cqZAp" />
        <node concept="3clFbJ" id="1kcpyXxGkjH" role="3cqZAp">
          <node concept="3clFbS" id="1kcpyXxGkjK" role="3clFbx">
            <node concept="lc7rE" id="1kcpyXxGmFX" role="3cqZAp">
              <node concept="l9S2W" id="1kcpyXxGo1b" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="," />
                <node concept="2OqwBi" id="1kcpyXxGonP" role="lbANJ">
                  <node concept="2OqwBi" id="1kcpyXxGo36" role="2Oq$k0">
                    <node concept="117lpO" id="1kcpyXxGo1x" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1kcpyXxGoco" role="2OqNvi">
                      <ref role="3Tt5mk" to="vgt0:pmDhvH7GDW" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1kcpyXxGoBr" role="2OqNvi">
                    <ref role="3TtcxE" to="vgt0:pmDhvH7GBk" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="1kcpyXxGtY1" role="lcghm">
                <property role="lacIc" value=" | " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1kcpyXxGlMa" role="3clFbw">
            <node concept="2OqwBi" id="1kcpyXxGkHs" role="2Oq$k0">
              <node concept="2OqwBi" id="1kcpyXxGknR" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxGklU" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxGkxj" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7GDW" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxGkX4" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7GBk" />
              </node>
            </node>
            <node concept="3GX2aA" id="1kcpyXxGmDS" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxGkhN" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxF4cu" role="3cqZAp">
          <node concept="l9S2W" id="1kcpyXxF4cv" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="1kcpyXxF4cw" role="lbANJ">
              <node concept="2OqwBi" id="1kcpyXxF4cx" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxF4cy" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxF4cz" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH7GDY" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1kcpyXxF4c$" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH7EBu" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1kcpyXxGu2J" role="lcghm">
            <property role="lacIc" value="." />
          </node>
          <node concept="l8MVK" id="1kcpyXxGu5F" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1kcpyXxESyp">
    <property role="3GE5qa" value="handler.constraints" />
    <ref role="WuzLi" to="vgt0:pmDhvH6uQ2" resolve="UserConstraint" />
    <node concept="11bSqf" id="1kcpyXxESyq" role="11c4hB">
      <node concept="3clFbS" id="1kcpyXxESyr" role="2VODD2">
        <node concept="lc7rE" id="1kcpyXxES$1" role="3cqZAp">
          <node concept="l9hG8" id="1kcpyXxES$l" role="lcghm">
            <node concept="2OqwBi" id="1kcpyXxET6s" role="lb14g">
              <node concept="2OqwBi" id="1kcpyXxESBB" role="2Oq$k0">
                <node concept="117lpO" id="1kcpyXxES_F" role="2Oq$k0" />
                <node concept="3TrEf2" id="1kcpyXxESUT" role="2OqNvi">
                  <ref role="3Tt5mk" to="vgt0:pmDhvH6MRb" />
                </node>
              </node>
              <node concept="3TrcHB" id="1kcpyXxETgR" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxETk5" role="3cqZAp" />
        <node concept="3clFbJ" id="1kcpyXxETnB" role="3cqZAp">
          <node concept="3clFbS" id="1kcpyXxETnE" role="3clFbx">
            <node concept="lc7rE" id="1kcpyXxEVj$" role="3cqZAp">
              <node concept="la8eA" id="1kcpyXxEVkW" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
            </node>
            <node concept="lc7rE" id="1kcpyXxF53d" role="3cqZAp">
              <node concept="l9S2W" id="1kcpyXxF55w" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="," />
                <node concept="2OqwBi" id="1kcpyXxF57r" role="lbANJ">
                  <node concept="117lpO" id="1kcpyXxF55Q" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1kcpyXxF5gH" role="2OqNvi">
                    <ref role="3TtcxE" to="vgt0:pmDhvH6MRr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1kcpyXxF4Wv" role="3cqZAp">
              <node concept="la8eA" id="1kcpyXxF4Ww" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1kcpyXxEUtn" role="3clFbw">
            <node concept="2OqwBi" id="1kcpyXxETsO" role="2Oq$k0">
              <node concept="117lpO" id="1kcpyXxETqR" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1kcpyXxETA8" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH6MRr" />
              </node>
            </node>
            <node concept="3GX2aA" id="1kcpyXxEViF" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1kcpyXxFgxm">
    <property role="3GE5qa" value="handler.rules" />
    <ref role="WuzLi" to="vgt0:pmDhvH6BD8" resolve="LogicVariable" />
    <node concept="11bSqf" id="1kcpyXxFgxn" role="11c4hB">
      <node concept="3clFbS" id="1kcpyXxFgxo" role="2VODD2">
        <node concept="lc7rE" id="1kcpyXxFgyu" role="3cqZAp">
          <node concept="l9hG8" id="1kcpyXxFgyM" role="lcghm">
            <node concept="2OqwBi" id="1kcpyXxFgB0" role="lb14g">
              <node concept="117lpO" id="1kcpyXxFg$8" role="2Oq$k0" />
              <node concept="3TrcHB" id="1kcpyXxFgP1" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1kcpyXxG9w5">
    <property role="3GE5qa" value="handler" />
    <ref role="WuzLi" to="vgt0:pmDhvH6MQk" resolve="ConstraintDeclaration" />
    <node concept="11bSqf" id="1kcpyXxG9w6" role="11c4hB">
      <node concept="3clFbS" id="1kcpyXxG9w7" role="2VODD2">
        <node concept="1bpajm" id="1kcpyXxG9wq" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxG9wT" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxG9xg" role="lcghm">
            <property role="lacIc" value="public constraint " />
          </node>
          <node concept="l9hG8" id="1kcpyXxG9za" role="lcghm">
            <node concept="2OqwBi" id="1kcpyXxG9A_" role="lb14g">
              <node concept="117lpO" id="1kcpyXxG9$x" role="2Oq$k0" />
              <node concept="3TrcHB" id="1kcpyXxG9KZ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxG9QR" role="3cqZAp" />
        <node concept="3clFbJ" id="1kcpyXxG9Th" role="3cqZAp">
          <node concept="3clFbS" id="1kcpyXxG9Tk" role="3clFbx">
            <node concept="lc7rE" id="1kcpyXxGcko" role="3cqZAp">
              <node concept="la8eA" id="1kcpyXxGclQ" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
            </node>
            <node concept="lc7rE" id="1kcpyXxGcnf" role="3cqZAp">
              <node concept="l9S2W" id="1kcpyXxGcnB" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="," />
                <node concept="2OqwBi" id="1kcpyXxGcpy" role="lbANJ">
                  <node concept="117lpO" id="1kcpyXxGcnX" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1kcpyXxGcFG" role="2OqNvi">
                    <ref role="3TtcxE" to="vgt0:pmDhvH6MQJ" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1kcpyXxGcLX" role="3cqZAp">
              <node concept="la8eA" id="1kcpyXxGcNE" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1kcpyXxGbcP" role="3clFbw">
            <node concept="2OqwBi" id="1kcpyXxG9Xo" role="2Oq$k0">
              <node concept="117lpO" id="1kcpyXxG9Vr" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1kcpyXxGa6G" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:pmDhvH6MQJ" />
              </node>
            </node>
            <node concept="3GX2aA" id="1kcpyXxGcjj" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1kcpyXxGcSv" role="3cqZAp" />
        <node concept="lc7rE" id="1kcpyXxGd0e" role="3cqZAp">
          <node concept="la8eA" id="1kcpyXxGd33" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="1kcpyXxGd3R" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6SkxsMzPbHG">
    <property role="3GE5qa" value="handler.constraints" />
    <ref role="WuzLi" to="vgt0:6SkxsMzMUMd" resolve="BuiltinConstraint" />
    <node concept="11bSqf" id="6SkxsMzPbHH" role="11c4hB">
      <node concept="3clFbS" id="6SkxsMzPbHI" role="2VODD2">
        <node concept="3cpWs8" id="6SkxsMzPhcv" role="3cqZAp">
          <node concept="3cpWsn" id="6SkxsMzPhcw" role="3cpWs9">
            <property role="TrG5h" value="constraint" />
            <node concept="2pR195" id="6SkxsMzPhck" role="1tU5fm">
              <ref role="3uigEE" to="1f2y:6SkxsMzHtsp" resolve="JCHR_Constraint" />
            </node>
            <node concept="1y4W85" id="6SkxsMzPhcx" role="33vP2m">
              <node concept="2OqwBi" id="6SkxsMzPhcy" role="1y58nS">
                <node concept="117lpO" id="6SkxsMzPhcz" role="2Oq$k0" />
                <node concept="3TrcHB" id="6SkxsMzPhc$" role="2OqNvi">
                  <ref role="3TsBF5" to="vgt0:6SkxsMzN4ze" resolve="index" />
                </node>
              </node>
              <node concept="2OqwBi" id="6SkxsMzPhc_" role="1y566C">
                <node concept="2OqwBi" id="6SkxsMzPhcA" role="2Oq$k0">
                  <node concept="2OqwBi" id="6SkxsMzPhcB" role="2Oq$k0">
                    <node concept="117lpO" id="6SkxsMzPhcC" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6SkxsMzPhcD" role="2OqNvi">
                      <ref role="3Tt5mk" to="vgt0:6SkxsMzMXz4" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="6SkxsMzPhcE" role="2OqNvi">
                    <ref role="37wK5l" to="1f2y:6SkxsMzHz7_" resolve="constraints" />
                  </node>
                </node>
                <node concept="ANE8D" id="6SkxsMzPhcF" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6SkxsMzPbON" role="3cqZAp">
          <node concept="l9hG8" id="6SkxsMzPbOO" role="lcghm">
            <node concept="2OqwBi" id="6SkxsMzPhJc" role="lb14g">
              <node concept="37vLTw" id="6SkxsMzPhwX" role="2Oq$k0">
                <ref role="3cqZAo" node="6SkxsMzPhcw" resolve="constraint" />
              </node>
              <node concept="2sxana" id="6SkxsMzPitc" role="2OqNvi">
                <ref role="2sxfKC" to="1f2y:6SkxsMzHtGm" resolve="ident" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzPbOU" role="3cqZAp" />
        <node concept="3clFbJ" id="6SkxsMzPbOV" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzPbOW" role="3clFbx">
            <node concept="lc7rE" id="6SkxsMzPbOX" role="3cqZAp">
              <node concept="la8eA" id="6SkxsMzPbOY" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
            </node>
            <node concept="lc7rE" id="6SkxsMzPbOZ" role="3cqZAp">
              <node concept="l9S2W" id="6SkxsMzPbP0" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="," />
                <node concept="2OqwBi" id="6SkxsMzPbP1" role="lbANJ">
                  <node concept="117lpO" id="6SkxsMzPbP2" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6SkxsMzPj2m" role="2OqNvi">
                    <ref role="3TtcxE" to="vgt0:6SkxsMzMXFf" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="6SkxsMzPbP4" role="3cqZAp">
              <node concept="la8eA" id="6SkxsMzPbP5" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6SkxsMzPbP6" role="3clFbw">
            <node concept="2OqwBi" id="6SkxsMzPbP7" role="2Oq$k0">
              <node concept="117lpO" id="6SkxsMzPbP8" role="2Oq$k0" />
              <node concept="3Tsc0h" id="6SkxsMzPiOg" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:6SkxsMzMXFf" />
              </node>
            </node>
            <node concept="3GX2aA" id="6SkxsMzPbPa" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6SkxsMzSSUJ">
    <property role="3GE5qa" value="handler" />
    <ref role="WuzLi" to="vgt0:6SkxsMzH1tK" resolve="SolverDeclaration" />
    <node concept="11bSqf" id="6SkxsMzSSUK" role="11c4hB">
      <node concept="3clFbS" id="6SkxsMzSSUL" role="2VODD2">
        <node concept="1bpajm" id="6SkxsMzSUQc" role="3cqZAp" />
        <node concept="lc7rE" id="6SkxsMzSUQd" role="3cqZAp">
          <node concept="la8eA" id="6SkxsMzSUQe" role="lcghm">
            <property role="lacIc" value="solver " />
          </node>
          <node concept="l9hG8" id="6SkxsMzSUQf" role="lcghm">
            <node concept="2YIFZM" id="6SkxsMzT7vU" role="lb14g">
              <ref role="37wK5l" to="18ew:~NameUtil.nodeFQName(org.jetbrains.mps.openapi.model.SNode):java.lang.String" resolve="nodeFQName" />
              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
              <node concept="2OqwBi" id="6SkxsMzSVlH" role="37wK5m">
                <node concept="2OqwBi" id="6SkxsMzSUQg" role="2Oq$k0">
                  <node concept="117lpO" id="6SkxsMzSUQh" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6SkxsMzSV91" role="2OqNvi">
                    <ref role="3Tt5mk" to="vgt0:6SkxsMzH1PB" />
                  </node>
                </node>
                <node concept="3TrEf2" id="6SkxsMzSVCu" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:g7uigIF" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzSUQ$" role="3cqZAp" />
        <node concept="lc7rE" id="6SkxsMzSUQ_" role="3cqZAp">
          <node concept="la8eA" id="6SkxsMzSUQA" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="6SkxsMzSUQB" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6SkxsM$4Yso">
    <property role="3GE5qa" value="handler.rules" />
    <ref role="WuzLi" to="vgt0:6SkxsM$4Idg" resolve="LocalDeclaration" />
    <node concept="11bSqf" id="6SkxsM$4Ysp" role="11c4hB">
      <node concept="3clFbS" id="6SkxsM$4Ysq" role="2VODD2">
        <node concept="1bpajm" id="6SkxsM$4YIU" role="3cqZAp" />
        <node concept="lc7rE" id="6SkxsM$4YIV" role="3cqZAp">
          <node concept="la8eA" id="6SkxsM$4YIW" role="lcghm">
            <property role="lacIc" value="local " />
          </node>
          <node concept="l9hG8" id="6SkxsM$4YXv" role="lcghm">
            <node concept="2OqwBi" id="6SkxsM$4Z2j" role="lb14g">
              <node concept="117lpO" id="6SkxsM$4Z0I" role="2Oq$k0" />
              <node concept="3TrEf2" id="6SkxsM$4Zjd" role="2OqNvi">
                <ref role="3Tt5mk" to="vgt0:6SkxsM$4Kd4" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6SkxsM$599x" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9S2W" id="6SkxsM$4YJ7" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="6SkxsM$4YJ8" role="lbANJ">
              <node concept="117lpO" id="6SkxsM$4YJ9" role="2Oq$k0" />
              <node concept="3Tsc0h" id="6SkxsM$4ZEb" role="2OqNvi">
                <ref role="3TtcxE" to="vgt0:6SkxsM$4JZE" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6SkxsM$4YJk" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="6SkxsM$4YJl" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="35Lj3Tj7lum">
    <property role="3GE5qa" value="handler.constraints" />
    <ref role="WuzLi" to="vgt0:35Lj3Tj7dO2" resolve="InfixBuitinConstraint" />
    <node concept="11bSqf" id="35Lj3Tj7lun" role="11c4hB">
      <node concept="3clFbS" id="35Lj3Tj7luo" role="2VODD2">
        <node concept="3cpWs8" id="35Lj3Tj7lIc" role="3cqZAp">
          <node concept="3cpWsn" id="35Lj3Tj7lId" role="3cpWs9">
            <property role="TrG5h" value="constraint" />
            <node concept="2pR195" id="35Lj3Tj7lIe" role="1tU5fm">
              <ref role="3uigEE" to="1f2y:6SkxsMzHtsp" resolve="JCHR_Constraint" />
            </node>
            <node concept="1y4W85" id="35Lj3Tj7lIf" role="33vP2m">
              <node concept="2OqwBi" id="35Lj3Tj7lIg" role="1y58nS">
                <node concept="117lpO" id="35Lj3Tj7lIh" role="2Oq$k0" />
                <node concept="3TrcHB" id="35Lj3Tj8Mu4" role="2OqNvi">
                  <ref role="3TsBF5" to="vgt0:35Lj3Tj7nqC" resolve="index" />
                </node>
              </node>
              <node concept="2OqwBi" id="35Lj3Tj7lIj" role="1y566C">
                <node concept="2OqwBi" id="35Lj3Tj7lIk" role="2Oq$k0">
                  <node concept="2OqwBi" id="35Lj3Tj7lIl" role="2Oq$k0">
                    <node concept="117lpO" id="35Lj3Tj7lIm" role="2Oq$k0" />
                    <node concept="3TrEf2" id="35Lj3Tj7mfV" role="2OqNvi">
                      <ref role="3Tt5mk" to="vgt0:35Lj3Tj7ed0" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="35Lj3Tj7lIo" role="2OqNvi">
                    <ref role="37wK5l" to="1f2y:6SkxsMzHz7_" resolve="constraints" />
                  </node>
                </node>
                <node concept="ANE8D" id="35Lj3Tj7lIp" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="35Lj3Tj7qtR" role="3cqZAp">
          <node concept="l9hG8" id="35Lj3Tj7qKm" role="lcghm">
            <node concept="2OqwBi" id="35Lj3Tj7rFo" role="lb14g">
              <node concept="117lpO" id="35Lj3Tj7qRY" role="2Oq$k0" />
              <node concept="3TrEf2" id="35Lj3Tj7rSn" role="2OqNvi">
                <ref role="3Tt5mk" to="vgt0:35Lj3Tj7e3F" />
              </node>
            </node>
          </node>
          <node concept="l9hG8" id="35Lj3Tj7swL" role="lcghm">
            <node concept="2OqwBi" id="35Lj3Tj7swM" role="lb14g">
              <node concept="37vLTw" id="35Lj3Tj7swN" role="2Oq$k0">
                <ref role="3cqZAo" node="35Lj3Tj7lId" resolve="constraint" />
              </node>
              <node concept="2sxana" id="35Lj3Tj7th7" role="2OqNvi">
                <ref role="2sxfKC" to="1f2y:35Lj3Tj34kP" resolve="infix" />
              </node>
            </node>
          </node>
          <node concept="l9hG8" id="35Lj3Tj7ttH" role="lcghm">
            <node concept="2OqwBi" id="35Lj3Tj7tDd" role="lb14g">
              <node concept="117lpO" id="35Lj3Tj7tAQ" role="2Oq$k0" />
              <node concept="3TrEf2" id="35Lj3Tj7tQc" role="2OqNvi">
                <ref role="3Tt5mk" to="vgt0:35Lj3Tj7e7Z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

