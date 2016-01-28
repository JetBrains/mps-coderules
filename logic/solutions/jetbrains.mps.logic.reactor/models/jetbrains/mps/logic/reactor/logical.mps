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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
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
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
  <node concept="3HP615" id="7HUwyZauJhz">
    <property role="TrG5h" value="MetaLogical" />
    <node concept="2tJIrI" id="7HUwyZauJhH" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZauJkq" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="7HUwyZauJkr" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZauJks" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZauJkt" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7HUwyZauJku" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZauJox" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isWildcard" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="7HUwyZauJoy" role="3clF47" />
      <node concept="3Tm1VV" id="7HUwyZauJoz" role="1B3o_S" />
      <node concept="10P_77" id="7HUwyZauJo$" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaC53m" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaC3Q7" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="type" />
      <node concept="3uibUv" id="7HUwyZaC3XA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="16syzq" id="49L2l3F7I8L" role="11_B2D">
          <ref role="16sUi3" node="49L2l3F7I8l" resolve="V" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZaC3Qa" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZaC3Qb" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaC3Pw" role="jymVt" />
    <node concept="3Tm1VV" id="7HUwyZauJh$" role="1B3o_S" />
    <node concept="16euLQ" id="49L2l3F7I8l" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
  </node>
  <node concept="3HP615" id="7HUwyZaNIC5">
    <property role="TrG5h" value="MultiMetaLogical" />
    <node concept="2tJIrI" id="7HUwyZaNICj" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaC4ZZ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="cardinality" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="7HUwyZaC500" role="3clF47" />
      <node concept="3Tm1VV" id="7HUwyZaC501" role="1B3o_S" />
      <node concept="10Oyi0" id="7HUwyZaC5T7" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaNHWd" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaNHY_" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="logicalAt" />
      <node concept="37vLTG" id="7HUwyZaNIPJ" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="7HUwyZaNIQ1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7HUwyZaNHYC" role="3clF47" />
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
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="toArray" />
      <node concept="3clFbS" id="7HUwyZbfyWn" role="3clF47" />
      <node concept="3Tm1VV" id="7HUwyZbfyWo" role="1B3o_S" />
      <node concept="10Q1$e" id="7HUwyZbfyVX" role="3clF45">
        <node concept="3uibUv" id="7HUwyZbfyV8" role="10Q1$1">
          <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZauJoi" role="jymVt" />
    <node concept="3Tm1VV" id="7HUwyZaNIC6" role="1B3o_S" />
    <node concept="3uibUv" id="7HUwyZaNICL" role="3HQHJm">
      <ref role="3uigEE" node="7HUwyZauJhz" resolve="MetaLogical" />
      <node concept="16syzq" id="49L2l3F82Xp" role="11_B2D">
        <ref role="16sUi3" node="49L2l3F82WZ" resolve="V" />
      </node>
    </node>
    <node concept="16euLQ" id="49L2l3F82WZ" role="16eVyc">
      <property role="TrG5h" value="V" />
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
</model>

