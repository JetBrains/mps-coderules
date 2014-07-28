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
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <import index="tp68" modelUID="r:00000000-0000-4000-0000-011c895903ac(jetbrains.mps.baseLanguageInternal.structure)" version="2" implicit="yes" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" implicit="yes" />
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
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7932111957678092497" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TypeOf" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="7932111957678092805" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="7932111957678092815" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7932111957678092816" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="7932111957678092817" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="7932111957678092818" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7932111957678092819" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7932111957678092820" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7932111957678092821" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7932111957678114194" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7932111957678115734" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7932111957678115735" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="solver" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957678115736" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.7337323408787456023" resolveInfo="UnificationSolver" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7932111957678116396" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7932111957678120983" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="oy3s.5667087533488904329" resolveInfo="UnificationSolverImpl" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7932111957678114255" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7932111957677375506" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7932111957677375509" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="handler" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp68.InternalClassifierType" typeId="tp68.1174914042989" id="7932111957677375504" nodeInfo="in">
              <property name="fqClassName" nameId="tp68.1174914081067" value="jetbrains.mps.unification.sandbox.TypeOfHandler" />
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tp68.InternalNewExpression" typeId="tp68.1173996401517" id="7932111957677401303" nodeInfo="nn">
              <property name="fqClassName" nameId="tp68.1173996588177" value="jetbrains.mps.unification.sandbox.TypeOfHandler" />
              <node role="actualArgument" roleId="tp68.319021450862590135" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7932111957678121342" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7932111957678115735" resolveInfo="solver" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7932111957678096425" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="6214965505176426058" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="6214965505176440468" nodeInfo="nn">
            <property name="text" nameId="tpee.6329021646629104958" value="class Foo { &lt;T&gt; Foo&lt;T&gt; bar(T p1, Bar&lt;T&gt; p2) {} }" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="6214965505176443952" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="6214965505176444540" nodeInfo="nn">
            <property name="text" nameId="tpee.6329021646629104958" value="foo.bar(a, b)" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7932111957677442582" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tp68.InternalPartialInstanceMethodCall" typeId="tp68.1174294166120" id="7932111957677442578" nodeInfo="nn">
            <property name="methodName" nameId="tp68.1174294288199" value="tellTypeOf" />
            <node role="actualArgument" roleId="tp68.1174318197094" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7932111957678100168" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value="a" />
            </node>
            <node role="actualArgument" roleId="tp68.1174318197094" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7932111957678376625" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="oy3s.7932111957678327042" resolveInfo="var" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6214965505176469452" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zcv.6214965505176452734" resolveInfo="t_string" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zcv.7932111957675691621" resolveInfo="Forest" />
              </node>
            </node>
            <node role="returnType" roleId="tp68.1174313653259" type="tpee.VoidType" typeId="tpee.1068581517677" id="7932111957677448571" nodeInfo="in" />
            <node role="instance" roleId="tp68.1174317636233" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7932111957677451097" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7932111957677375509" resolveInfo="handler" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6214965505176469654" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tp68.InternalPartialInstanceMethodCall" typeId="tp68.1174294166120" id="6214965505176469655" nodeInfo="nn">
            <property name="methodName" nameId="tp68.1174294288199" value="tellTypeOf" />
            <node role="actualArgument" roleId="tp68.1174318197094" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6214965505176469656" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value="b" />
            </node>
            <node role="actualArgument" roleId="tp68.1174318197094" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6214965505176469657" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="oy3s.7932111957678327042" resolveInfo="var" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6214965505176597781" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zcv.6214965505176592906" resolveInfo="t_Bar_of_integer" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zcv.7932111957675691621" resolveInfo="Forest" />
              </node>
            </node>
            <node role="returnType" roleId="tp68.1174313653259" type="tpee.VoidType" typeId="tpee.1068581517677" id="6214965505176469659" nodeInfo="in" />
            <node role="instance" roleId="tp68.1174317636233" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6214965505176469660" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7932111957677375509" resolveInfo="handler" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7932111957678100575" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7932111957677514706" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7932111957677514707" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="cnsts" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957677514704" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="k7g3.~Collection" resolveInfo="Collection" />
              <node role="parameter" roleId="tpee.1109201940907" type="tp68.InternalClassifierType" typeId="tp68.1174914042989" id="7932111957677519445" nodeInfo="in">
                <property name="fqClassName" nameId="tp68.1174914081067" value="jetbrains.mps.unification.sandbox.TypeOfHandler.TypeOfConstraint" />
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
              </node>
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tp68.InternalPartialInstanceMethodCall" typeId="tp68.1174294166120" id="7932111957677526275" nodeInfo="nn">
              <property name="methodName" nameId="tp68.1174294288199" value="getTypeOfConstraints" />
              <node role="returnType" roleId="tp68.1174313653259" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957677528392" nodeInfo="in">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="k7g3.~Collection" resolveInfo="Collection" />
                <node role="parameter" roleId="tpee.1109201940907" type="tp68.InternalClassifierType" typeId="tp68.1174914042989" id="7932111957677531737" nodeInfo="in">
                  <property name="fqClassName" nameId="tp68.1174914081067" value="jetbrains.mps.unification.sandbox.TypeOfHandler.TypeOfConstraint" />
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
                </node>
              </node>
              <node role="instance" roleId="tp68.1174317636233" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7932111957677534565" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7932111957677375509" resolveInfo="handler" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7932111957678099660" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7932111957678104640" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7932111957678104636" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7932111957678104637" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7932111957678104638" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7932111957678106172" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7932111957678107447" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7932111957677514707" resolveInfo="cnsts" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7932111957678104639" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7932111957678092498" nodeInfo="nn" />
  </root>
</model>

