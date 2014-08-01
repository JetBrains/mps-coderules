<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:ecf59ef9-2b17-40ee-91aa-e7999d4518f0(jetbrains.mps.unification.sandbox)">
  <persistence version="8" />
  <language namespace="894463aa-8754-49c0-bf4b-6a32af66b376(jetbrains.mps.jchr)" />
  <language namespace="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" />
  <language namespace="df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="oy3s" modelUID="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.jchr.unification)" version="-1" />
  <import index="ie8e" modelUID="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" version="-1" />
  <import index="zcv" modelUID="r:cbad57c9-c211-4e64-ac84-bbfd0fa39faf(jetbrains.mps.unification.util)" version="-1" />
  <import index="iqfc" modelUID="r:5e9b336d-b733-4396-b8ed-a74e3ea504fd(jetbrains.mps.jchr.sandbox)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="vgt0" modelUID="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" version="-1" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="vgt0.Handler" typeId="vgt0.456733934405394951" id="7932111957672575234" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="typeOf" />
    <node role="rule" roleId="vgt0.456733934405773365" type="vgt0.SimplificationRule" typeId="vgt0.456733934405449669" id="7932111957672584569" nodeInfo="ng">
      <node role="head" roleId="vgt0.456733934405733017" type="vgt0.Head" typeId="vgt0.456733934405724502" id="7932111957672584572" nodeInfo="ng">
        <node role="constraint" roleId="vgt0.456733934405724503" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="7932111957672584696" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="7932111957672579607" resolveInfo="typeOf" />
          <node role="argument" roleId="vgt0.456733934405496283" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7932111957672584871" nodeInfo="nn">
            <property name="value" nameId="tpee.1070475926801" value="a" />
          </node>
          <node role="argument" roleId="vgt0.456733934405496283" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="7932111957678294813" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="X" />
          </node>
        </node>
        <node role="constraint" roleId="vgt0.456733934405724503" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="6214965505176414366" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="7932111957672579607" resolveInfo="typeOf" />
          <node role="argument" roleId="vgt0.456733934405496283" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6214965505176414367" nodeInfo="nn">
            <property name="value" nameId="tpee.1070475926801" value="b" />
          </node>
          <node role="argument" roleId="vgt0.456733934405496283" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="6214965505176414368" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="Y" />
          </node>
        </node>
      </node>
      <node role="body" roleId="vgt0.456733934405732990" type="vgt0.Body" typeId="vgt0.456733934405724637" id="7932111957672584575" nodeInfo="ng">
        <node role="constraint" roleId="vgt0.456733934405724638" type="vgt0.BuiltinConstraint" typeId="vgt0.7932111957674142861" id="6214965505176477557" nodeInfo="ng">
          <property name="index" nameId="vgt0.7932111957674182862" value="0" />
          <link role="solver" roleId="vgt0.7932111957674154180" targetNodeId="7932111957672681908" />
          <node role="argument" roleId="vgt0.7932111957674154703" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="6214965505176477840" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="X" />
          </node>
          <node role="argument" roleId="vgt0.7932111957674154703" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="6214965505176478633" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="T" />
          </node>
        </node>
        <node role="constraint" roleId="vgt0.456733934405724638" type="vgt0.BuiltinConstraint" typeId="vgt0.7932111957674142861" id="7932111957674695154" nodeInfo="ng">
          <property name="index" nameId="vgt0.7932111957674182862" value="0" />
          <link role="solver" roleId="vgt0.7932111957674154180" targetNodeId="7932111957672681908" />
          <node role="argument" roleId="vgt0.7932111957674154703" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="6214965505176483045" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="Y" />
          </node>
          <node role="argument" roleId="vgt0.7932111957674154703" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6214965505176483543" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zcv.6214965505176479767" resolveInfo="t_Bar_of_T" />
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zcv.7932111957675691621" resolveInfo="Forest" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="6214965505176483544" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="T" />
            </node>
          </node>
        </node>
        <node role="constraint" roleId="vgt0.456733934405724638" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="7932111957674083608" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="7932111957672579607" resolveInfo="typeOf" />
          <node role="argument" roleId="vgt0.456733934405496283" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7932111957674714709" nodeInfo="nn">
            <property name="value" nameId="tpee.1070475926801" value="foo" />
          </node>
          <node role="argument" roleId="vgt0.456733934405496283" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="7932111957678295276" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="T" />
          </node>
        </node>
      </node>
      <node role="guard" roleId="vgt0.456733934405732988" type="vgt0.Guard" typeId="vgt0.456733934405724682" id="7932111957674694942" nodeInfo="ng" />
    </node>
    <node role="declaration" roleId="vgt0.456733934405771625" type="vgt0.ConstraintDeclaration" typeId="vgt0.456733934405496212" id="7932111957672579607" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="typeOf" />
      <node role="argumentType" roleId="vgt0.456733934405496239" type="tpee.StringType" typeId="tpee.1225271177708" id="6214965505174431010" nodeInfo="in" />
      <node role="argumentType" roleId="vgt0.456733934405496239" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957678298933" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
      </node>
    </node>
    <node role="declaration" roleId="vgt0.456733934405771625" type="vgt0.ConstraintDeclaration" typeId="vgt0.456733934405496212" id="6214965505175257486" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="var" />
      <node role="argumentType" roleId="vgt0.456733934405496239" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6214965505175257931" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7932111957672575235" nodeInfo="nn" />
    <node role="solver" roleId="vgt0.7932111957672637404" type="vgt0.SolverDeclaration" typeId="vgt0.7932111957672597360" id="7932111957672681908" nodeInfo="ng">
      <node role="type" roleId="vgt0.7932111957672598887" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957672682081" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.7337323408787456023" resolveInfo="UnificationSolver" />
      </node>
    </node>
    <node role="local" roleId="vgt0.7932111957678810892" type="vgt0.LocalDeclaration" typeId="vgt0.7932111957678809936" id="6214965505175329707" nodeInfo="ng">
      <node role="type" roleId="vgt0.7932111957678818116" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6214965505175329989" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
      </node>
      <node role="variable" roleId="vgt0.7932111957678817258" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="6214965505175330105" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="T" />
      </node>
    </node>
  </root>
</model>

