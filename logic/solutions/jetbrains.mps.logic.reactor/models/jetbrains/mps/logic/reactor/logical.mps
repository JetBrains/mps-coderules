<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification(jetbrains.mps.logic.atom/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2546654756694997551" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTag" flags="ng" index="92FcH">
        <child id="2546654756694997556" name="reference" index="92FcQ" />
        <child id="3106559687488913694" name="line" index="2XjZqd" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="2217234381367049075" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTag" flags="ng" index="VVOAv">
        <child id="3106559687488741665" name="line" index="2Xj1qM" />
      </concept>
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
      </concept>
      <concept id="2217234381367530195" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocReference" flags="ng" index="VXe0Z">
        <reference id="2217234381367530196" name="methodDeclaration" index="VXe0S" />
      </concept>
      <concept id="8970989240999019145" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentLinePart" flags="ng" index="1dT_AA">
        <child id="6962838954693749192" name="tag" index="qph3F" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="1mP5b6jQP$C">
    <property role="TrG5h" value="Logical" />
    <node concept="2tJIrI" id="1mP5b6jQPCY" role="jymVt" />
    <node concept="3clFb_" id="677NV56hh2k" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="677NV56hhoN" role="3clF45" />
      <node concept="3Tm1VV" id="677NV56hh2n" role="1B3o_S" />
      <node concept="3clFbS" id="677NV56hh2o" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="677NV56hgHJ" role="jymVt" />
    <node concept="3clFb_" id="dfChU1eNVy" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="dfChU1eNWP" role="3clF45">
        <ref role="3uigEE" node="1mP5b6jQP$C" resolve="Logical" />
        <node concept="16syzq" id="dfChU1eNXI" role="11_B2D">
          <ref role="16sUi3" node="1mP5b6jQPCW" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="dfChU1eNV_" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1eNVA" role="3clF47" />
      <node concept="P$JXv" id="20WMLipvC0g" role="lGtFl">
        <node concept="TZ5HA" id="20WMLipvC0h" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipvC0i" role="1dT_Ay">
            <property role="1dT_AB" value="Returns the representative logical instance. " />
          </node>
        </node>
        <node concept="TZ5HA" id="20WMLipCwTD" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipCwTE" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="20WMLipCwSk" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipw525" role="1dT_Ay">
            <property role="1dT_AB" value="TODO: rename to 'find()'" />
          </node>
          <node concept="1dT_AC" id="20WMLipCwSl" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="dfChU1eNUX" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jQPMI" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="value" />
      <node concept="3clFbS" id="1mP5b6jQPML" role="3clF47" />
      <node concept="3Tm1VV" id="1mP5b6jQPMM" role="1B3o_S" />
      <node concept="16syzq" id="1mP5b6jQPMn" role="3clF45">
        <ref role="16sUi3" node="1mP5b6jQPCW" resolve="T" />
      </node>
      <node concept="P$JXv" id="20WMLipvrd$" role="lGtFl">
        <node concept="TZ5HA" id="20WMLipvrd_" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipvrdA" role="1dT_Ay">
            <property role="1dT_AB" value="Returns the value associated with this logical instance. " />
          </node>
        </node>
        <node concept="TZ5HA" id="20WMLipvtfz" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipvtf$" role="1dT_Ay">
            <property role="1dT_AB" value="Can be null. " />
          </node>
        </node>
        <node concept="TZ5HA" id="20WMLipvtfD" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipvtfE" role="1dT_Ay">
            <property role="1dT_AB" value="Only the logical instance that is a representative can have value that is not null." />
          </node>
        </node>
        <node concept="TZ5HA" id="20WMLipvRYX" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipvRYY" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="20WMLipvSos" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipvSot" role="1dT_Ay">
            <property role="1dT_AB" value="FIXME: must return the representative's value" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1mP5b6jQPM2" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jQPKP" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isBound" />
      <node concept="10P_77" id="1mP5b6jQPLl" role="3clF45" />
      <node concept="3Tm1VV" id="1mP5b6jQPKS" role="1B3o_S" />
      <node concept="3clFbS" id="1mP5b6jQPKT" role="3clF47" />
      <node concept="P$JXv" id="20WMLipv_O2" role="lGtFl">
        <node concept="TZ5HA" id="20WMLipv_O3" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipv_O4" role="1dT_Ay">
            <property role="1dT_AB" value="True iff the representative has a non-null value." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7jC45Kci9hZ" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOiHjb" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isWildcard" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="2DKqMqOiHjc" role="3clF47" />
      <node concept="3Tm1VV" id="2DKqMqOiHjd" role="1B3o_S" />
      <node concept="10P_77" id="2DKqMqOiHje" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7MlQDeOxBQC" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaOd5Y" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="metaLogical" />
      <node concept="3clFbS" id="7HUwyZaOd61" role="3clF47" />
      <node concept="3Tm1VV" id="7HUwyZaOd62" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaOd4F" role="3clF45">
        <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
        <node concept="16syzq" id="20WMLipvHQ$" role="11_B2D">
          <ref role="16sUi3" node="1mP5b6jQPCW" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaOcXk" role="jymVt" />
    <node concept="3Tm1VV" id="1mP5b6jQP$D" role="1B3o_S" />
    <node concept="16euLQ" id="1mP5b6jQPCW" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="7HUwyZauJhz">
    <property role="TrG5h" value="MetaLogical" />
    <node concept="2tJIrI" id="7nPD14NXLNF" role="jymVt" />
    <node concept="Wx3nA" id="7nPD14NON$z" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="WILDCARD" />
      <node concept="3Tm6S6" id="7nPD14NON$$" role="1B3o_S" />
      <node concept="17QB3L" id="7nPD14NON$_" role="1tU5fm" />
      <node concept="Xl_RD" id="7nPD14NON$A" role="33vP2m">
        <property role="Xl_RC" value="_" />
      </node>
    </node>
    <node concept="2tJIrI" id="7nPD14NXR2x" role="jymVt" />
    <node concept="3clFbW" id="7nPD14NON$C" role="jymVt">
      <node concept="37vLTG" id="7nPD14NON$D" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7nPD14NON$E" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7nPD14NON$F" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7nPD14NON$G" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="7nPD14NON$H" role="11_B2D">
            <ref role="16sUi3" node="49L2l3F7I8l" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7nPD14NON$I" role="3clF45" />
      <node concept="3Tm1VV" id="7nPD14NON$J" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14NON$K" role="3clF47">
        <node concept="3clFbF" id="7nPD14NON$L" role="3cqZAp">
          <node concept="37vLTI" id="7nPD14NON$M" role="3clFbG">
            <node concept="2OqwBi" id="7nPD14NON$N" role="37vLTJ">
              <node concept="Xjq3P" id="7nPD14NON$O" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nPD14NON$P" role="2OqNvi">
                <ref role="2Oxat5" node="7nPD14NONAl" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="7nPD14NON$Q" role="37vLTx">
              <ref role="3cqZAo" node="7nPD14NON$D" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nPD14NON$R" role="3cqZAp">
          <node concept="37vLTI" id="7nPD14NON$S" role="3clFbG">
            <node concept="2OqwBi" id="7nPD14NON$T" role="37vLTJ">
              <node concept="Xjq3P" id="7nPD14NON$U" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nPD14NON$V" role="2OqNvi">
                <ref role="2Oxat5" node="7nPD14NONAo" resolve="type" />
              </node>
            </node>
            <node concept="37vLTw" id="7nPD14NON$W" role="37vLTx">
              <ref role="3cqZAo" node="7nPD14NON$F" resolve="type" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nPD14NON$X" role="jymVt" />
    <node concept="3clFbW" id="7nPD14NON$Y" role="jymVt">
      <node concept="37vLTG" id="7nPD14NON$Z" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7nPD14NON_0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="7nPD14NON_1" role="11_B2D">
            <ref role="16sUi3" node="49L2l3F7I8l" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7nPD14NON_2" role="3clF45" />
      <node concept="3Tm1VV" id="7nPD14NON_3" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14NON_4" role="3clF47">
        <node concept="3clFbF" id="7nPD14NON_5" role="3cqZAp">
          <node concept="37vLTI" id="7nPD14NON_6" role="3clFbG">
            <node concept="2OqwBi" id="7nPD14NON_7" role="37vLTJ">
              <node concept="Xjq3P" id="7nPD14NON_8" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nPD14NON_9" role="2OqNvi">
                <ref role="2Oxat5" node="7nPD14NONAl" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="7nPD14NON_a" role="37vLTx">
              <node concept="2YIFZM" id="7nPD14NON_b" role="3uHU7w">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object):int" resolve="identityHashCode" />
                <node concept="Xjq3P" id="7nPD14NON_c" role="37wK5m" />
              </node>
              <node concept="10M0yZ" id="7nPD14NXQzg" role="3uHU7B">
                <ref role="1PxDUh" node="7HUwyZauJhz" resolve="MetaLogical" />
                <ref role="3cqZAo" node="7nPD14NON$z" resolve="WILDCARD" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nPD14NON_d" role="3cqZAp">
          <node concept="37vLTI" id="7nPD14NON_e" role="3clFbG">
            <node concept="2OqwBi" id="7nPD14NON_f" role="37vLTJ">
              <node concept="Xjq3P" id="7nPD14NON_g" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nPD14NON_h" role="2OqNvi">
                <ref role="2Oxat5" node="7nPD14NONAo" resolve="type" />
              </node>
            </node>
            <node concept="37vLTw" id="7nPD14NON_i" role="37vLTx">
              <ref role="3cqZAo" node="7nPD14NON$Z" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nPD14NON_j" role="3cqZAp">
          <node concept="37vLTI" id="7nPD14NON_k" role="3clFbG">
            <node concept="3clFbT" id="7nPD14NON_l" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="7nPD14NON_m" role="37vLTJ">
              <node concept="Xjq3P" id="7nPD14NON_n" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nPD14NON_o" role="2OqNvi">
                <ref role="2Oxat5" node="7nPD14NONAs" resolve="wildcard" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZauJhH" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZauJkq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="7HUwyZauJkr" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZauJks" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZauJkt" role="3clF47">
        <node concept="3clFbF" id="7nPD14NXMwa" role="3cqZAp">
          <node concept="37vLTw" id="7nPD14NXMw9" role="3clFbG">
            <ref role="3cqZAo" node="7nPD14NONAl" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZauJku" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZauJox" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isWildcard" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="7HUwyZauJoy" role="3clF47">
        <node concept="3clFbF" id="7nPD14NXM$I" role="3cqZAp">
          <node concept="37vLTw" id="7nPD14NXM$H" role="3clFbG">
            <ref role="3cqZAo" node="7nPD14NONAs" resolve="wildcard" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZauJoz" role="1B3o_S" />
      <node concept="10P_77" id="7HUwyZauJo$" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaC53m" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaC3Q7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="type" />
      <node concept="3uibUv" id="7HUwyZaC3XA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="16syzq" id="49L2l3F7I8L" role="11_B2D">
          <ref role="16sUi3" node="49L2l3F7I8l" resolve="V" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZaC3Qa" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZaC3Qb" role="3clF47">
        <node concept="3clFbF" id="7nPD14NXMDo" role="3cqZAp">
          <node concept="37vLTw" id="7nPD14NXMDn" role="3clFbG">
            <ref role="3cqZAo" node="7nPD14NONAo" resolve="type" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nPD14NXMHM" role="jymVt" />
    <node concept="3clFb_" id="6XBR7US9Exp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6XBR7US9Exq" role="1B3o_S" />
      <node concept="3uibUv" id="6XBR7US9Exs" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6XBR7US9Ext" role="3clF47">
        <node concept="3clFbF" id="6XBR7US9EUp" role="3cqZAp">
          <node concept="37vLTw" id="6XBR7US9EUo" role="3clFbG">
            <ref role="3cqZAo" node="7nPD14NONAl" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6XBR7US9Exu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6XBR7US9ELi" role="jymVt" />
    <node concept="312cEg" id="7nPD14NONAl" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="7nPD14NONAm" role="1B3o_S" />
      <node concept="17QB3L" id="7nPD14NONAn" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7nPD14NONAo" role="jymVt">
      <property role="TrG5h" value="type" />
      <node concept="3Tm6S6" id="7nPD14NONAp" role="1B3o_S" />
      <node concept="3uibUv" id="7nPD14NONAq" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="16syzq" id="7nPD14NONAr" role="11_B2D">
          <ref role="16sUi3" node="49L2l3F7I8l" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7nPD14NONAs" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="wildcard" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7nPD14NONAt" role="1B3o_S" />
      <node concept="10P_77" id="7nPD14NONAu" role="1tU5fm" />
      <node concept="3clFbT" id="7nPD14NONAv" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaC3Pw" role="jymVt" />
    <node concept="3Tm1VV" id="7HUwyZauJh$" role="1B3o_S" />
    <node concept="16euLQ" id="49L2l3F7I8l" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
  </node>
  <node concept="312cEu" id="7HUwyZaNIC5">
    <property role="TrG5h" value="MultiMetaLogical" />
    <node concept="2tJIrI" id="7HUwyZaNICj" role="jymVt" />
    <node concept="3clFbW" id="7nPD14NOOvW" role="jymVt">
      <node concept="3cqZAl" id="7nPD14NOOvX" role="3clF45" />
      <node concept="3Tm1VV" id="7nPD14NOOvY" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14NOOvZ" role="3clF47">
        <node concept="XkiVB" id="7nPD14NOOw0" role="3cqZAp">
          <ref role="37wK5l" node="7nPD14NON$C" resolve="MetaLogical" />
          <node concept="37vLTw" id="7nPD14NOOw1" role="37wK5m">
            <ref role="3cqZAo" node="7nPD14NOOwb" resolve="name" />
          </node>
          <node concept="37vLTw" id="7nPD14NOOw2" role="37wK5m">
            <ref role="3cqZAo" node="7nPD14NOOwd" resolve="type" />
          </node>
        </node>
        <node concept="3clFbF" id="7nPD14NOOw3" role="3cqZAp">
          <node concept="37vLTI" id="7nPD14NOOw4" role="3clFbG">
            <node concept="2OqwBi" id="7nPD14NOOw5" role="37vLTJ">
              <node concept="Xjq3P" id="7nPD14NOOw6" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nPD14NOOw7" role="2OqNvi">
                <ref role="2Oxat5" node="7nPD14NOOxv" resolve="cardinality" />
              </node>
            </node>
            <node concept="37vLTw" id="7nPD14NOOw8" role="37vLTx">
              <ref role="3cqZAo" node="7nPD14NOOwg" resolve="cardinality" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nPD14NOOw9" role="3cqZAp">
          <node concept="1rXfSq" id="7nPD14NOOwa" role="3clFbG">
            <ref role="37wK5l" node="7nPD14NOOwV" resolve="init" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7nPD14NOOwb" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7nPD14NOOwc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7nPD14NOOwd" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7nPD14NOOwe" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="7nPD14NOOwf" role="11_B2D">
            <ref role="16sUi3" node="49L2l3F82WZ" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7nPD14NOOwg" role="3clF46">
        <property role="TrG5h" value="cardinality" />
        <node concept="10Oyi0" id="7nPD14NOOwh" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7nPD14NXRGo" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaC4ZZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="cardinality" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="7HUwyZaC500" role="3clF47">
        <node concept="3clFbF" id="7nPD14NXS__" role="3cqZAp">
          <node concept="37vLTw" id="7nPD14NXS_$" role="3clFbG">
            <ref role="3cqZAo" node="7nPD14NOOxv" resolve="cardinality" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZaC501" role="1B3o_S" />
      <node concept="10Oyi0" id="7HUwyZaC5T7" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaNHWd" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaNHY_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="logicalAt" />
      <node concept="37vLTG" id="7HUwyZaNIPJ" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="7HUwyZaNIQ1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7HUwyZaNHYC" role="3clF47">
        <node concept="3clFbF" id="7nPD14NOOwx" role="3cqZAp">
          <node concept="2OqwBi" id="7nPD14NOOwy" role="3clFbG">
            <node concept="37vLTw" id="7nPD14NOOwz" role="2Oq$k0">
              <ref role="3cqZAo" node="7nPD14NOOxz" resolve="metaLogicals" />
            </node>
            <node concept="liA8E" id="7nPD14NOOw$" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
              <node concept="37vLTw" id="7nPD14NOOw_" role="37wK5m">
                <ref role="3cqZAo" node="7HUwyZaNIPJ" resolve="idx" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZaNHYD" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaNIPg" role="3clF45">
        <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
        <node concept="16syzq" id="49L2l3F82XS" role="11_B2D">
          <ref role="16sUi3" node="49L2l3F82WZ" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZbfyU2" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZbfyWk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="toArray" />
      <node concept="3clFbS" id="7HUwyZbfyWn" role="3clF47">
        <node concept="3cpWs8" id="7nPD14NOOwG" role="3cqZAp">
          <node concept="3cpWsn" id="7nPD14NOOwH" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="7nPD14NOOwI" role="1tU5fm">
              <node concept="3uibUv" id="7nPD14NOOwJ" role="10Q1$1">
                <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
              </node>
            </node>
            <node concept="2ShNRf" id="7nPD14NOOwK" role="33vP2m">
              <node concept="3$_iS1" id="7nPD14NOOwL" role="2ShVmc">
                <node concept="3$GHV9" id="7nPD14NOOwM" role="3$GQph">
                  <node concept="37vLTw" id="7nPD14NOOwN" role="3$I4v7">
                    <ref role="3cqZAo" node="7nPD14NOOxv" resolve="cardinality" />
                  </node>
                </node>
                <node concept="3uibUv" id="7nPD14NOOwO" role="3$_nBY">
                  <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nPD14NOOwP" role="3cqZAp">
          <node concept="2OqwBi" id="7nPD14NOOwQ" role="3clFbG">
            <node concept="37vLTw" id="7nPD14NOOwR" role="2Oq$k0">
              <ref role="3cqZAo" node="7nPD14NOOxz" resolve="metaLogicals" />
            </node>
            <node concept="liA8E" id="7nPD14NOOwS" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[]):java.lang.Object[]" resolve="toArray" />
              <node concept="37vLTw" id="7nPD14NOOwT" role="37wK5m">
                <ref role="3cqZAo" node="7nPD14NOOwH" resolve="array" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZbfyWo" role="1B3o_S" />
      <node concept="10Q1$e" id="7HUwyZbfyVX" role="3clF45">
        <node concept="3uibUv" id="7HUwyZbfyV8" role="10Q1$1">
          <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6XBR7US9FHD" role="jymVt" />
    <node concept="3clFb_" id="7nPD14NOOwV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7nPD14NOOwW" role="3clF47">
        <node concept="1Dw8fO" id="7nPD14NOOwX" role="3cqZAp">
          <node concept="3uNrnE" id="7nPD14NOOwY" role="1Dwrff">
            <node concept="37vLTw" id="7nPD14NOOwZ" role="2$L3a6">
              <ref role="3cqZAo" node="7nPD14NOOx0" resolve="i" />
            </node>
          </node>
          <node concept="3cpWsn" id="7nPD14NOOx0" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7nPD14NOOx1" role="1tU5fm" />
            <node concept="3cmrfG" id="7nPD14NOOx2" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="7nPD14NOOx3" role="2LFqv$">
            <node concept="3clFbF" id="7nPD14NOOx4" role="3cqZAp">
              <node concept="2OqwBi" id="7nPD14NOOx5" role="3clFbG">
                <node concept="37vLTw" id="7nPD14NOOx6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7nPD14NOOxz" resolve="metaLogicals" />
                </node>
                <node concept="liA8E" id="7nPD14NOOx7" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="2ShNRf" id="7nPD14NOOx8" role="37wK5m">
                    <node concept="1pGfFk" id="7nPD14NOOx9" role="2ShVmc">
                      <ref role="37wK5l" node="7nPD14NON$C" resolve="MetaLogical" />
                      <node concept="3cpWs3" id="7nPD14NOOxa" role="37wK5m">
                        <node concept="3cpWs3" id="7nPD14NOOxb" role="3uHU7B">
                          <node concept="1rXfSq" id="7nPD14NOOxc" role="3uHU7B">
                            <ref role="37wK5l" node="7HUwyZauJkq" resolve="name" />
                          </node>
                          <node concept="Xl_RD" id="7nPD14NOOxd" role="3uHU7w">
                            <property role="Xl_RC" value="_" />
                          </node>
                        </node>
                        <node concept="1eOMI4" id="7nPD14NOOxe" role="3uHU7w">
                          <node concept="3cpWs3" id="7nPD14NOOxf" role="1eOMHV">
                            <node concept="37vLTw" id="7nPD14NOOxg" role="3uHU7B">
                              <ref role="3cqZAo" node="7nPD14NOOx0" resolve="i" />
                            </node>
                            <node concept="3cmrfG" id="7nPD14NOOxh" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="7nPD14NOOxi" role="37wK5m">
                        <ref role="37wK5l" node="7HUwyZaC3Q7" resolve="type" />
                      </node>
                      <node concept="16syzq" id="7nPD14NOOxj" role="1pMfVU">
                        <ref role="16sUi3" node="49L2l3F82WZ" resolve="V" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="7nPD14NOOxk" role="1Dwp0S">
            <node concept="37vLTw" id="7nPD14NOOxl" role="3uHU7w">
              <ref role="3cqZAo" node="7nPD14NOOxv" resolve="cardinality" />
            </node>
            <node concept="37vLTw" id="7nPD14NOOxm" role="3uHU7B">
              <ref role="3cqZAo" node="7nPD14NOOx0" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7nPD14NOOxn" role="1B3o_S" />
      <node concept="3cqZAl" id="7nPD14NOOxo" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7nPD14NOOxp" role="jymVt" />
    <node concept="312cEg" id="7nPD14NOOxv" role="jymVt">
      <property role="TrG5h" value="cardinality" />
      <node concept="3Tm6S6" id="7nPD14NOOxw" role="1B3o_S" />
      <node concept="10Oyi0" id="7nPD14NOOxx" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7nPD14NOOxz" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="metaLogicals" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7nPD14NOOx$" role="1B3o_S" />
      <node concept="3uibUv" id="7nPD14NOOx_" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7nPD14NOOxA" role="11_B2D">
          <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
          <node concept="16syzq" id="7nPD14NOOxB" role="11_B2D">
            <ref role="16sUi3" node="49L2l3F82WZ" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7nPD14NOOxC" role="33vP2m">
        <node concept="1pGfFk" id="7nPD14NOOxD" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="7nPD14NOOxE" role="1pMfVU">
            <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
            <node concept="16syzq" id="7nPD14NOOxF" role="11_B2D">
              <ref role="16sUi3" node="49L2l3F82WZ" resolve="V" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7HUwyZaNIC6" role="1B3o_S" />
    <node concept="16euLQ" id="49L2l3F82WZ" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
    <node concept="3uibUv" id="7nPD14NXUx0" role="1zkMxy">
      <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
      <node concept="16syzq" id="7nPD14NXVnh" role="11_B2D">
        <ref role="16sUi3" node="49L2l3F82WZ" resolve="V" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="7IvepusY4Ez">
    <property role="TrG5h" value="LogicalContext" />
    <node concept="2tJIrI" id="7IvepusY4EL" role="jymVt" />
    <node concept="3clFb_" id="7IvepusY4EY" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="variable" />
      <node concept="37vLTG" id="7IvepusY4FP" role="3clF46">
        <property role="TrG5h" value="metaLogical" />
        <node concept="3uibUv" id="7IvepusY4G3" role="1tU5fm">
          <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
          <node concept="16syzq" id="49L2l3Fdntd" role="11_B2D">
            <ref role="16sUi3" node="49L2l3Fdns_" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4TCblo5LRy4" role="3clF45">
        <ref role="3uigEE" node="1mP5b6jQP$C" resolve="Logical" />
        <node concept="16syzq" id="4TCblo5LRyo" role="11_B2D">
          <ref role="16sUi3" node="49L2l3Fdns_" resolve="V" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7IvepusY4F1" role="1B3o_S" />
      <node concept="3clFbS" id="7IvepusY4F2" role="3clF47" />
      <node concept="16euLQ" id="49L2l3Fdns_" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="7IvepusY4EQ" role="jymVt" />
    <node concept="3Tm1VV" id="7IvepusY4E$" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="6MYr6JwxYwB">
    <property role="TrG5h" value="SolverLogical" />
    <node concept="2tJIrI" id="6MYr6JwxYRu" role="jymVt" />
    <node concept="3clFb_" id="429xoyqB1jp" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="429xoyqB1jq" role="3clF45">
        <ref role="3uigEE" node="6MYr6JwxYwB" resolve="SolverLogical" />
        <node concept="16syzq" id="429xoyqB1jr" role="11_B2D">
          <ref role="16sUi3" node="6MYr6JwxYR6" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="429xoyqB1js" role="1B3o_S" />
      <node concept="3clFbS" id="429xoyqB1jt" role="3clF47" />
      <node concept="P$JXv" id="20WMLipvdb2" role="lGtFl">
        <node concept="TZ5HA" id="20WMLipvdb3" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipvdb4" role="1dT_Ay">
            <property role="1dT_AB" value="Covariant override." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="20WMLipvO7K" role="jymVt" />
    <node concept="3clFb_" id="20WMLipvYTD" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="union" />
      <node concept="3clFbS" id="20WMLipvYTG" role="3clF47" />
      <node concept="3Tm1VV" id="20WMLipvYTH" role="1B3o_S" />
      <node concept="3cqZAl" id="20WMLipvXXM" role="3clF45" />
      <node concept="37vLTG" id="20WMLipvZYi" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="20WMLipvZYh" role="1tU5fm">
          <ref role="3uigEE" node="6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="16syzq" id="20WMLipw0I7" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwxYR6" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="20WMLipwvci" role="3clF46">
        <property role="TrG5h" value="reconciler" />
        <node concept="3uibUv" id="20WMLipwvPf" role="1tU5fm">
          <ref role="3uigEE" node="20WMLipwnLy" resolve="SolverLogical.ValueReconciler" />
          <node concept="16syzq" id="20WMLipwwCe" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwxYR6" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="20WMLipw3de" role="lGtFl">
        <node concept="TZ5HA" id="20WMLipw3dn" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipw3do" role="1dT_Ay">
            <property role="1dT_AB" value="Unions two equivalence classes of logicals. " />
          </node>
        </node>
        <node concept="TZ5HA" id="20WMLipw4Ad" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipw4Ae" role="1dT_Ay">
            <property role="1dT_AB" value="Both the receiver and the " />
          </node>
          <node concept="1dT_AA" id="20WMLipw4AO" role="1dT_Ay">
            <node concept="VVOAv" id="20WMLipw4Bc" role="qph3F">
              <node concept="TZ5HA" id="20WMLipw4Be" role="2Xj1qM">
                <node concept="1dT_AC" id="20WMLipw4B_" role="1dT_Ay">
                  <property role="1dT_AB" value="other" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="20WMLipw4AN" role="1dT_Ay">
            <property role="1dT_AB" value=" parameter are expected to be representatives." />
          </node>
        </node>
        <node concept="TZ5HA" id="20WMLipw4$T" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipw4$U" role="1dT_Ay">
            <property role="1dT_AB" value="The one with the highest rank becomes the representative for the new class." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="20WMLipwu8B" role="jymVt" />
    <node concept="3clFb_" id="20WMLipwsV4" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="union" />
      <node concept="3clFbS" id="20WMLipwsV5" role="3clF47" />
      <node concept="3Tm1VV" id="20WMLipwsV6" role="1B3o_S" />
      <node concept="3cqZAl" id="20WMLipwsV7" role="3clF45" />
      <node concept="37vLTG" id="20WMLipwsV8" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="20WMLipwsV9" role="1tU5fm">
          <ref role="3uigEE" node="6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="16syzq" id="20WMLipwsVa" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwxYR6" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="20WMLipwsVb" role="lGtFl">
        <node concept="TZ5HA" id="20WMLipwsVc" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipwsVd" role="1dT_Ay">
            <property role="1dT_AB" value="Calls " />
          </node>
          <node concept="1dT_AA" id="20WMLipwz1f" role="1dT_Ay">
            <node concept="92FcH" id="20WMLipwzsF" role="qph3F">
              <node concept="TZ5HA" id="20WMLipwzsH" role="2XjZqd" />
              <node concept="VXe0Z" id="20WMLipwAdm" role="92FcQ">
                <ref role="VXe0S" node="20WMLipvYTD" resolve="union" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="20WMLipwz1e" role="1dT_Ay">
            <property role="1dT_AB" value=" with the default value reconciler." />
          </node>
        </node>
        <node concept="TZ5HA" id="20WMLipwFsv" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipwFsw" role="1dT_Ay">
            <property role="1dT_AB" value="The default reconciler throws " />
          </node>
          <node concept="1dT_AA" id="20WMLipwFsF" role="1dT_Ay">
            <node concept="92FcH" id="20WMLipwFsL" role="qph3F">
              <node concept="TZ5HA" id="20WMLipwFsN" role="2XjZqd" />
              <node concept="VXe08" id="20WMLipwHMk" role="92FcQ">
                <ref role="VXe09" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="20WMLipwFsE" role="1dT_Ay">
            <property role="1dT_AB" value=" if the two values are not equal." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="20WMLipvX1X" role="jymVt" />
    <node concept="3clFb_" id="6MYr6Jwy05T" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="setValue" />
      <node concept="3clFbS" id="6MYr6Jwy05W" role="3clF47" />
      <node concept="3Tm1VV" id="6MYr6Jwy05X" role="1B3o_S" />
      <node concept="3cqZAl" id="6MYr6Jwy05f" role="3clF45" />
      <node concept="37vLTG" id="6MYr6Jwy09e" role="3clF46">
        <property role="TrG5h" value="newValue" />
        <node concept="16syzq" id="6MYr6Jwy09d" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwxYR6" resolve="T" />
        </node>
      </node>
      <node concept="P$JXv" id="20WMLipviCp" role="lGtFl">
        <node concept="TZ5HA" id="20WMLipviCq" role="TZ5H$">
          <node concept="1dT_AC" id="20WMLipviCr" role="1dT_Ay">
            <property role="1dT_AB" value="Should only be called on a representative. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jwy0hW" role="jymVt" />
    <node concept="3HP615" id="20WMLipwnLy" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ValueReconciler" />
      <node concept="2tJIrI" id="20WMLipwpsa" role="jymVt" />
      <node concept="3clFb_" id="20WMLipwqq1" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="reconcile" />
        <node concept="37vLTG" id="20WMLipwrvJ" role="3clF46">
          <property role="TrG5h" value="valueA" />
          <node concept="16syzq" id="20WMLipwssf" role="1tU5fm">
            <ref role="16sUi3" node="20WMLipwrDF" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="20WMLipwsA8" role="3clF46">
          <property role="TrG5h" value="valueB" />
          <node concept="16syzq" id="20WMLipwsKa" role="1tU5fm">
            <ref role="16sUi3" node="20WMLipwrDF" resolve="T" />
          </node>
        </node>
        <node concept="3cqZAl" id="20WMLipwqq3" role="3clF45" />
        <node concept="3Tm1VV" id="20WMLipwqq4" role="1B3o_S" />
        <node concept="3clFbS" id="20WMLipwqq5" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="20WMLipwpV3" role="jymVt" />
      <node concept="3Tm1VV" id="20WMLipwnLz" role="1B3o_S" />
      <node concept="16euLQ" id="20WMLipwrDF" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="20WMLipwmJv" role="jymVt" />
    <node concept="3uibUv" id="6MYr6JwxYAu" role="3HQHJm">
      <ref role="3uigEE" node="1mP5b6jQP$C" resolve="Logical" />
      <node concept="16syzq" id="6MYr6JwxYRr" role="11_B2D">
        <ref role="16sUi3" node="6MYr6JwxYR6" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="6MYr6JwxYR6" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3Tm1VV" id="6MYr6JwxYVS" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="6MYr6JwANOa">
    <property role="TrG5h" value="LogicalUnification" />
    <node concept="2tJIrI" id="6MYr6JwANU0" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwAODW" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="asRoot" />
      <node concept="37vLTG" id="6MYr6JwAPmj" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="16syzq" id="6MYr6JwBkII" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwB0_J" resolve="TERM" />
        </node>
      </node>
      <node concept="16syzq" id="6MYr6JwB166" role="3clF45">
        <ref role="16sUi3" node="6MYr6JwB0_J" resolve="TERM" />
      </node>
      <node concept="3Tm1VV" id="6MYr6JwAODZ" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6JwAOE0" role="3clF47" />
      <node concept="16euLQ" id="6MYr6JwB0_J" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6JwB0G$" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwANU5" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwAPxG" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="logical" />
      <node concept="37vLTG" id="6MYr6JwARmP" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="16syzq" id="6MYr6JwBl0o" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwAQYt" resolve="TERM" />
        </node>
      </node>
      <node concept="3uibUv" id="6MYr6JwAPBA" role="3clF45">
        <ref role="3uigEE" node="6MYr6JwxYwB" resolve="SolverLogical" />
        <node concept="16syzq" id="6MYr6JwARmw" role="11_B2D">
          <ref role="16sUi3" node="6MYr6JwAQYt" resolve="TERM" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6MYr6JwAPxJ" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6JwAPxK" role="3clF47" />
      <node concept="16euLQ" id="6MYr6JwAQYt" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6JwAQYZ" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwSFky" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwRKzQ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isLogical" />
      <node concept="37vLTG" id="6MYr6JwRKNo" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3uibUv" id="6MYr6JwRKRJ" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwRKDe" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwRKzT" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6JwRKzU" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6MYr6JwSESa" role="jymVt" />
    <node concept="3Tm1VV" id="6MYr6JwANOb" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="46l0wJhtOD_">
    <property role="TrG5h" value="LogicalOwner" />
    <node concept="2tJIrI" id="7HUwyZaOczR" role="jymVt" />
    <node concept="3clFb_" id="46l0wJhtXlr" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="logical" />
      <node concept="3uibUv" id="46l0wJhtXpb" role="3clF45">
        <ref role="3uigEE" node="1mP5b6jQP$C" resolve="Logical" />
        <node concept="3qTvmN" id="46l0wJhtXxO" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="46l0wJhtXlu" role="1B3o_S" />
      <node concept="3clFbS" id="46l0wJhtXlv" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="46l0wJhtOHe" role="jymVt" />
    <node concept="3Tm1VV" id="46l0wJhtODA" role="1B3o_S" />
  </node>
</model>

