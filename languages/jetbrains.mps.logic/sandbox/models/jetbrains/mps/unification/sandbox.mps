<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ecf59ef9-2b17-40ee-91aa-e7999d4518f0(jetbrains.mps.unification.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="894463aa-8754-49c0-bf4b-6a32af66b376" name="jetbrains.mps.jchr" version="-1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="894463aa-8754-49c0-bf4b-6a32af66b376" name="jetbrains.mps.jchr">
      <concept id="7932111957678809936" name="jetbrains.mps.jchr.structure.LocalDeclaration" flags="ng" index="3a1Aqs">
        <child id="7932111957678817258" name="variable" index="3a1BCA" />
        <child id="7932111957678818116" name="type" index="3a1Sq8" />
      </concept>
      <concept id="7932111957672597360" name="jetbrains.mps.jchr.structure.SolverDeclaration" flags="ng" index="3dC9aW">
        <child id="7932111957672598887" name="type" index="3dC9yF" />
      </concept>
      <concept id="3562712610792856834" name="jetbrains.mps.jchr.structure.InfixBuitinConstraint" flags="ng" index="1yrp4W">
        <property id="3562712610792896168" name="index" index="1yr3Em" />
        <reference id="3562712610792858432" name="solver" index="1yrqXY" />
        <child id="3562712610792857835" name="left" index="1yrqNl" />
        <child id="3562712610792858111" name="right" index="1yrqR1" />
      </concept>
      <concept id="456733934405724502" name="jetbrains.mps.jchr.structure.Head" flags="ng" index="3Fi0L1">
        <child id="456733934405724503" name="constraint" index="3Fi0L0" />
      </concept>
      <concept id="456733934405724637" name="jetbrains.mps.jchr.structure.Body" flags="ng" index="3Fi0Na">
        <child id="456733934405724638" name="constraint" index="3Fi0N9" />
      </concept>
      <concept id="456733934405724682" name="jetbrains.mps.jchr.structure.Guard" flags="ng" index="3Fi0Wt" />
      <concept id="456733934405447580" name="jetbrains.mps.jchr.structure.Rule" flags="ng" index="3FjcEb">
        <child id="456733934405732990" name="body" index="3Fi6XD" />
        <child id="456733934405732988" name="guard" index="3Fi6XF" />
      </concept>
      <concept id="456733934405449659" name="jetbrains.mps.jchr.structure.PropagationRule" flags="ng" index="3FjdaG">
        <child id="456733934405724614" name="keptHead" index="3Fi0Nh" />
      </concept>
      <concept id="456733934405450312" name="jetbrains.mps.jchr.structure.LogicVariable" flags="ng" index="3FjdXv" />
      <concept id="456733934405496212" name="jetbrains.mps.jchr.structure.ConstraintDeclaration" flags="ng" index="3Fjoy3">
        <child id="456733934405496239" name="argumentType" index="3FjoyS" />
      </concept>
      <concept id="456733934405394951" name="jetbrains.mps.jchr.structure.Handler" flags="ig" index="3FjKsg">
        <child id="7932111957678810892" name="local" index="3a1Ab0" />
        <child id="7932111957672637404" name="solver" index="3dC3og" />
        <child id="456733934405771625" name="declaration" index="3FishY" />
        <child id="456733934405773365" name="rule" index="3FisOy" />
      </concept>
      <concept id="456733934405414274" name="jetbrains.mps.jchr.structure.UserConstraint" flags="ng" index="3FjOyl">
        <reference id="456733934405496267" name="declaration" index="3Fjozs" />
        <child id="456733934405496283" name="argument" index="3Fjozc" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="238586457668550951" name="jetbrains.mps.logic.structure.LogicalSubstitution" flags="ng" index="22Ky0T">
        <child id="238586457668550958" name="expression" index="22Ky0K" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.Ast" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137263" name="jetbrains.mps.logic.structure.ChildRole" flags="ng" index="1oi5ST">
        <child id="7571593955706137319" name="contents" index="1oi5TL" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.Node" flags="ng" index="1oi5UN">
        <property id="7166797808989209772" name="kind" index="2IF10e" />
        <child id="7571593955706284441" name="role" index="1ojpOf" />
      </concept>
      <concept id="7571593955706137189" name="jetbrains.mps.logic.structure.Role" flags="ng" index="1oi5VN">
        <property id="7571593955706137428" name="cardinality" index="1oi5Z2" />
      </concept>
      <concept id="7571593955706137472" name="jetbrains.mps.logic.structure.ValueRole" flags="ng" index="1oi5Wm">
        <child id="7571593955706137672" name="contents" index="1oi5zu" />
      </concept>
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.ValueHolder" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
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
  <node concept="3FjKsg" id="6SkxsMzGW42">
    <property role="TrG5h" value="typeOf" />
    <node concept="3FjdaG" id="5lJXK8Yok" role="3FisOy">
      <node concept="3Fi0L1" id="5lJXK8YnS" role="3Fi0Nh">
        <node concept="3FjOyl" id="5lJXK8YnT" role="3Fi0L0">
          <ref role="3Fjozs" node="6SkxsMzGX8n" resolve="typeOf" />
          <node concept="3cmrfG" id="5lJXK9TRh" role="3Fjozc">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="3FjdXv" id="5lJXK8YnV" role="3Fjozc">
            <property role="TrG5h" value="X" />
          </node>
        </node>
        <node concept="3FjOyl" id="5lJXK8YnW" role="3Fi0L0">
          <ref role="3Fjozs" node="6SkxsMzGX8n" resolve="typeOf" />
          <node concept="3cmrfG" id="5lJXK9TSO" role="3Fjozc">
            <property role="3cmrfH" value="2" />
          </node>
          <node concept="3FjdXv" id="5lJXK8YnY" role="3Fjozc">
            <property role="TrG5h" value="Y" />
          </node>
        </node>
      </node>
      <node concept="3Fi0Wt" id="5lJXK8YnZ" role="3Fi6XF" />
      <node concept="3Fi0Na" id="5lJXK8Yo0" role="3Fi6XD">
        <node concept="1yrp4W" id="5lJXK8Yo1" role="3Fi0N9">
          <property role="1yr3Em" value="0" />
          <ref role="1yrqXY" node="6SkxsMzHm6O" />
          <node concept="3FjdXv" id="5lJXK8Yo2" role="1yrqNl">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="1oi1Uc" id="5lJXKv5I8" role="1yrqR1">
            <node concept="1oi5UN" id="5lJXKv5N9" role="1oi0x0">
              <property role="2IF10e" value="CLASSIFIER_TYPE" />
              <node concept="1oi5Wm" id="5lJXKv5Na" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXKv5Nb" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKv5Nc" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXKv5Nd" role="1oi5zu">
                  <property role="1oi5yK" value="Foo" />
                </node>
              </node>
              <node concept="1oi5ST" id="5lJXKv621" role="1ojpOf">
                <property role="TrG5h" value="parameter" />
                <property role="1oi5Z2" value="multiple" />
                <node concept="1oi5UN" id="677NV56vfMA" role="1oi5TL">
                  <node concept="22Ky0T" id="677NV56vfMB" role="lGtFl">
                    <node concept="3FjdXv" id="cnjBgYE1yw" role="22Ky0K">
                      <property role="TrG5h" value="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yrp4W" id="5lJXK8Yo4" role="3Fi0N9">
          <property role="1yr3Em" value="0" />
          <ref role="1yrqXY" node="6SkxsMzHm6O" />
          <node concept="3FjdXv" id="5lJXK8Yo5" role="1yrqNl">
            <property role="TrG5h" value="Y" />
          </node>
          <node concept="1oi1Uc" id="5lJXK8Yo6" role="1yrqR1">
            <node concept="1oi5UN" id="5lJXK8Yo7" role="1oi0x0">
              <property role="2IF10e" value="CLASSIFIER_TYPE" />
              <node concept="1oi5Wm" id="5lJXK8Yo9" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXK8Yoa" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXK8Yob" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXK8Yoc" role="1oi5zu">
                  <property role="1oi5yK" value="Bar" />
                </node>
              </node>
              <node concept="1oi5ST" id="5lJXK8Yod" role="1ojpOf">
                <property role="TrG5h" value="parameter" />
                <property role="1oi5Z2" value="multiple" />
                <node concept="1oi5UN" id="677NV56vfNo" role="1oi5TL">
                  <node concept="22Ky0T" id="677NV56vfNp" role="lGtFl">
                    <node concept="3FjdXv" id="cnjBgYE1CB" role="22Ky0K">
                      <property role="TrG5h" value="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3FjOyl" id="5lJXK8Yoh" role="3Fi0N9">
          <ref role="3Fjozs" node="6SkxsMzGX8n" resolve="typeOf" />
          <node concept="3cmrfG" id="5lJXK9TWf" role="3Fjozc">
            <property role="3cmrfH" value="3" />
          </node>
          <node concept="3FjdXv" id="5lJXK8Yoj" role="3Fjozc">
            <property role="TrG5h" value="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Fjoy3" id="6SkxsMzGX8n" role="3FishY">
      <property role="TrG5h" value="typeOf" />
      <node concept="3uibUv" id="5lJXK8WSR" role="3FjoyS">
        <ref role="3uigEE" to="eifs:~Logical" resolve="Logical" />
        <node concept="3uibUv" id="5lJXK9TNl" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="3uibUv" id="6SkxsM$2LsP" role="3FjoyS">
        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6SkxsMzGW43" role="1B3o_S" />
    <node concept="3dC9aW" id="6SkxsMzHm6O" role="3dC3og">
      <node concept="3uibUv" id="6SkxsMzHm9x" role="3dC9yF">
        <ref role="3uigEE" to="oy3s:6njqcfQVO0n" resolve="UnificationSolver" />
      </node>
    </node>
    <node concept="3a1Aqs" id="5oZZzbri1IF" role="3a1Ab0">
      <node concept="3uibUv" id="5oZZzbri1N5" role="3a1Sq8">
        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
      </node>
      <node concept="3FjdXv" id="5oZZzbri1OT" role="3a1BCA">
        <property role="TrG5h" value="T" />
      </node>
    </node>
  </node>
</model>

