<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5e9b336d-b733-4396-b8ed-a74e3ea504fd(jetbrains.mps.jchr.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="894463aa-8754-49c0-bf4b-6a32af66b376" name="jetbrains.mps.jchr" version="0" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="562q" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:util(jetbrains.mps.jchr.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="894463aa-8754-49c0-bf4b-6a32af66b376" name="jetbrains.mps.jchr">
      <concept id="456733934405724502" name="jetbrains.mps.jchr.structure.Head" flags="ng" index="3Fi0L1">
        <child id="456733934405724503" name="constraint" index="3Fi0L0" />
      </concept>
      <concept id="456733934405724637" name="jetbrains.mps.jchr.structure.Body" flags="ng" index="3Fi0Na">
        <child id="456733934405724638" name="constraint" index="3Fi0N9" />
      </concept>
      <concept id="456733934405724682" name="jetbrains.mps.jchr.structure.Guard" flags="ng" index="3Fi0Wt">
        <child id="456733934405732820" name="condition" index="3Fi6N3" />
      </concept>
      <concept id="456733934405447580" name="jetbrains.mps.jchr.structure.Rule" flags="ng" index="3FjcEb">
        <child id="456733934405732990" name="body" index="3Fi6XD" />
        <child id="456733934405732988" name="guard" index="3Fi6XF" />
      </concept>
      <concept id="456733934405449669" name="jetbrains.mps.jchr.structure.SimplificationRule" flags="ng" index="3Fjdbi">
        <child id="456733934405733017" name="keptHead" index="3Fi6Ye" />
      </concept>
      <concept id="456733934405449678" name="jetbrains.mps.jchr.structure.SimpagationRule" flags="ng" index="3Fjdbp">
        <child id="456733934405733078" name="keptHead" index="3Fi6Z1" />
        <child id="456733934405733080" name="replacedHead" index="3Fi6Zf" />
      </concept>
      <concept id="456733934405450312" name="jetbrains.mps.jchr.structure.LogicVariable" flags="ng" index="3FjdXv" />
      <concept id="456733934405496212" name="jetbrains.mps.jchr.structure.ConstraintDeclaration" flags="ng" index="3Fjoy3">
        <child id="456733934405496239" name="argumentType" index="3FjoyS" />
      </concept>
      <concept id="456733934405394951" name="jetbrains.mps.jchr.structure.Handler" flags="ig" index="3FjKsg">
        <child id="456733934405771625" name="declaration" index="3FishY" />
        <child id="456733934405773365" name="rule" index="3FisOy" />
      </concept>
      <concept id="456733934405414274" name="jetbrains.mps.jchr.structure.UserConstraint" flags="ng" index="3FjOyl">
        <reference id="456733934405496267" name="declaration" index="3Fjozs" />
        <child id="456733934405496283" name="argument" index="3Fjozc" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3FjKsg" id="$WpHqxVsj">
    <property role="TrG5h" value="gcd" />
    <node concept="3Fjoy3" id="$WpHqxVt7" role="3FishY">
      <property role="TrG5h" value="gcd" />
      <node concept="3cpWsb" id="$WpHqxVtb" role="3FjoyS" />
    </node>
    <node concept="3Fjdbi" id="$WpHqxVth" role="3FisOy">
      <node concept="3Fi0L1" id="$WpHqxVti" role="3Fi6Ye">
        <node concept="3FjOyl" id="$WpHqyztq" role="3Fi0L0">
          <ref role="3Fjozs" node="$WpHqxVt7" resolve="gcd" />
          <node concept="3cmrfG" id="$WpHqyF3G" role="3Fjozc">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="3Fi0Na" id="6XrX4sU9mgK" role="3Fi6XD">
        <node concept="3clFbT" id="6XrX4sU9oZe" role="3Fi0N9">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
    <node concept="3Fjdbp" id="$WpHqyPC3" role="3FisOy">
      <node concept="3Fi0L1" id="$WpHqyPC6" role="3Fi6Z1">
        <node concept="3FjOyl" id="$WpHqyPCA" role="3Fi0L0">
          <ref role="3Fjozs" node="$WpHqxVt7" resolve="gcd" />
          <node concept="3FjdXv" id="$WpHq$8M4" role="3Fjozc">
            <property role="TrG5h" value="N" />
          </node>
        </node>
      </node>
      <node concept="3Fi0L1" id="$WpHqyPC9" role="3Fi6Zf">
        <node concept="3FjOyl" id="$WpHq$8M7" role="3Fi0L0">
          <ref role="3Fjozs" node="$WpHqxVt7" resolve="gcd" />
          <node concept="3FjdXv" id="$WpHq$8Md" role="3Fjozc">
            <property role="TrG5h" value="M" />
          </node>
        </node>
      </node>
      <node concept="3Fi0Na" id="$WpHqyPCc" role="3Fi6XD">
        <node concept="3FjOyl" id="$WpHqBrfb" role="3Fi0N9">
          <ref role="3Fjozs" node="$WpHqxVt7" resolve="gcd" />
          <node concept="2YIFZM" id="2d$asJMxnXx" role="3Fjozc">
            <ref role="1Pybhc" to="562q:~ArithmeticsUtils" resolve="ArithmeticsUtils" />
            <ref role="37wK5l" to="562q:~ArithmeticsUtils.sub(long,long):long" resolve="sub" />
            <node concept="3FjdXv" id="2d$asJMxnXL" role="37wK5m">
              <property role="TrG5h" value="M" />
            </node>
            <node concept="3FjdXv" id="2d$asJMxnYX" role="37wK5m">
              <property role="TrG5h" value="N" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Fi0Wt" id="$WpHq__bp" role="3Fi6XF">
        <node concept="2d3UOw" id="$WpHqBqPx" role="3Fi6N3">
          <node concept="3FjdXv" id="$WpHqBqP$" role="3uHU7B">
            <property role="TrG5h" value="M" />
          </node>
          <node concept="3FjdXv" id="$WpHqBqPz" role="3uHU7w">
            <property role="TrG5h" value="N" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

