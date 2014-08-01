<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:5e9b336d-b733-4396-b8ed-a74e3ea504fd(jetbrains.mps.jchr.sandbox)">
  <persistence version="8" />
  <language namespace="894463aa-8754-49c0-bf4b-6a32af66b376(jetbrains.mps.jchr)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)" />
  <import index="h23x" modelUID="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#util(jetbrains.mps.jchr.runtime/util@java_stub)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" />
  <import index="iqfc" modelUID="r:5e9b336d-b733-4396-b8ed-a74e3ea504fd(jetbrains.mps.jchr.sandbox)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="vgt0" modelUID="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" version="-1" implicit="yes" />
  <root type="vgt0.Handler" typeId="vgt0.456733934405394951" id="10398748702652179" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="gcd" />
    <node role="declaration" roleId="vgt0.456733934405771625" type="vgt0.ConstraintDeclaration" typeId="vgt0.456733934405496212" id="10398748702652231" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="gcd" />
      <node role="argumentType" roleId="vgt0.456733934405496239" type="tpee.LongType" typeId="tpee.1068581242867" id="10398748702652235" nodeInfo="in" />
    </node>
    <node role="rule" roleId="vgt0.456733934405773365" type="vgt0.SimplificationRule" typeId="vgt0.456733934405449669" id="10398748702652241" nodeInfo="ng">
      <node role="head" roleId="vgt0.456733934405733017" type="vgt0.Head" typeId="vgt0.456733934405724502" id="10398748702652242" nodeInfo="ng">
        <node role="constraint" roleId="vgt0.456733934405724503" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="10398748702816090" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="10398748702652231" resolveInfo="gcd" />
          <node role="argument" roleId="vgt0.456733934405496283" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="10398748702847212" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="0" />
          </node>
        </node>
      </node>
      <node role="body" roleId="vgt0.456733934405732990" type="vgt0.Body" typeId="vgt0.456733934405724637" id="8024275747846054960" nodeInfo="ng">
        <node role="constraint" roleId="vgt0.456733934405724638" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="8024275747846066126" nodeInfo="nn">
          <property name="value" nameId="tpee.1068580123138" value="true" />
        </node>
      </node>
    </node>
    <node role="rule" roleId="vgt0.456733934405773365" type="vgt0.SimpagationRule" typeId="vgt0.456733934405449678" id="10398748702890499" nodeInfo="ng">
      <node role="keptHead" roleId="vgt0.456733934405733078" type="vgt0.Head" typeId="vgt0.456733934405724502" id="10398748702890502" nodeInfo="ng">
        <node role="constraint" roleId="vgt0.456733934405724503" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="10398748702890534" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="10398748702652231" resolveInfo="gcd" />
          <node role="argument" roleId="vgt0.456733934405496283" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="10398748703231108" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="N" />
          </node>
        </node>
      </node>
      <node role="removedHead" roleId="vgt0.456733934405733080" type="vgt0.Head" typeId="vgt0.456733934405724502" id="10398748702890505" nodeInfo="ng">
        <node role="constraint" roleId="vgt0.456733934405724503" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="10398748703231111" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="10398748702652231" resolveInfo="gcd" />
          <node role="argument" roleId="vgt0.456733934405496283" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="10398748703231117" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="M" />
          </node>
        </node>
      </node>
      <node role="body" roleId="vgt0.456733934405732990" type="vgt0.Body" typeId="vgt0.456733934405724637" id="10398748702890508" nodeInfo="ng">
        <node role="constraint" roleId="vgt0.456733934405724638" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="10398748704093131" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="10398748702652231" resolveInfo="gcd" />
          <node role="argument" roleId="vgt0.456733934405496283" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2550209244922478433" nodeInfo="nn">
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="h23x.~ArithmeticsUtils" resolveInfo="ArithmeticsUtils" />
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h23x.~ArithmeticsUtils%dsub(long,long)%clong" resolveInfo="sub" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="2550209244922478449" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="M" />
            </node>
            <node role="actualArgument" roleId="tpee.1068499141038" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="2550209244922478525" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="N" />
            </node>
          </node>
        </node>
      </node>
      <node role="guard" roleId="vgt0.456733934405732988" type="vgt0.Guard" typeId="vgt0.456733934405724682" id="10398748703609561" nodeInfo="ng">
        <node role="condition" roleId="vgt0.456733934405732820" type="tpee.GreaterThanOrEqualsExpression" typeId="tpee.1153417849900" id="10398748704091489" nodeInfo="nn">
          <node role="leftExpression" roleId="tpee.1081773367580" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="10398748704091492" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="M" />
          </node>
          <node role="rightExpression" roleId="tpee.1081773367579" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="10398748704091491" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="N" />
          </node>
        </node>
      </node>
    </node>
  </root>
</model>

