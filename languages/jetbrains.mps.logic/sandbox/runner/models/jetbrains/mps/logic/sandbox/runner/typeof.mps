<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e04efeb8-0601-491d-95ef-ff741f4cdd87(jetbrains.mps.logic.sandbox.runner.typeof)">
  <persistence version="8" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)" />
  <import index="oy3s" modelUID="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.jchr.unification)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" />
  <import index="zcv" modelUID="r:cbad57c9-c211-4e64-ac84-bbfd0fa39faf(jetbrains.mps.unification.util)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tp68" modelUID="r:00000000-0000-4000-0000-011c895903ac(jetbrains.mps.baseLanguageInternal.structure)" version="2" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3562712610788163113" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TypeOf" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="3562712610788163114" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3562712610788163115" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3562712610788163116" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="3562712610788163117" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="3562712610788163118" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3562712610788163119" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3562712610788163120" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3562712610788163121" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3562712610788163122" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3562712610788163123" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3562712610788163124" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="solver" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3562712610788163125" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.7337323408787456023" resolveInfo="UnificationSolver" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="3562712610788163126" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="3562712610788163127" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="oy3s.5667087533488904329" resolveInfo="UnificationSolverImpl" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3562712610788163128" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3562712610788163129" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3562712610788163130" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="handler" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp68.InternalClassifierType" typeId="tp68.1174914042989" id="3562712610788163131" nodeInfo="in">
              <property name="fqClassName" nameId="tp68.1174914081067" value="jetbrains.mps.unification.sandbox.TypeOfHandler" />
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tp68.InternalNewExpression" typeId="tp68.1173996401517" id="3562712610788163132" nodeInfo="nn">
              <property name="fqClassName" nameId="tp68.1173996588177" value="jetbrains.mps.unification.sandbox.TypeOfHandler" />
              <node role="actualArgument" roleId="tp68.319021450862590135" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3562712610788163133" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3562712610788163124" resolveInfo="solver" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3562712610788163134" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3562712610788163135" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3562712610788163136" nodeInfo="nn">
            <property name="text" nameId="tpee.6329021646629104958" value="class Foo { &lt;T&gt; Foo&lt;T&gt; bar(T p1, Bar&lt;T&gt; p2) {} }" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3562712610788163137" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3562712610788163138" nodeInfo="nn">
            <property name="text" nameId="tpee.6329021646629104958" value="foo.bar(a, b)" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3562712610788163139" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tp68.InternalPartialInstanceMethodCall" typeId="tp68.1174294166120" id="3562712610788163140" nodeInfo="nn">
            <property name="methodName" nameId="tp68.1174294288199" value="tellTypeOf" />
            <node role="actualArgument" roleId="tp68.1174318197094" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3562712610788163141" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value="a" />
            </node>
            <node role="actualArgument" roleId="tp68.1174318197094" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3562712610788163142" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="oy3s.7932111957678327042" resolveInfo="var" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3562712610788163143" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zcv.6214965505176452734" resolveInfo="t_string" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zcv.7932111957675691621" resolveInfo="Forest" />
              </node>
            </node>
            <node role="returnType" roleId="tp68.1174313653259" type="tpee.VoidType" typeId="tpee.1068581517677" id="3562712610788163144" nodeInfo="in" />
            <node role="instance" roleId="tp68.1174317636233" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3562712610788163145" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3562712610788163130" resolveInfo="handler" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3562712610788163146" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tp68.InternalPartialInstanceMethodCall" typeId="tp68.1174294166120" id="3562712610788163147" nodeInfo="nn">
            <property name="methodName" nameId="tp68.1174294288199" value="tellTypeOf" />
            <node role="actualArgument" roleId="tp68.1174318197094" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3562712610788163148" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value="b" />
            </node>
            <node role="actualArgument" roleId="tp68.1174318197094" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3562712610788163149" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="oy3s.7932111957678327042" resolveInfo="var" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3562712610788264771" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zcv.6214965505176464274" resolveInfo="t_Bar_of_string" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zcv.7932111957675691621" resolveInfo="Forest" />
              </node>
            </node>
            <node role="returnType" roleId="tp68.1174313653259" type="tpee.VoidType" typeId="tpee.1068581517677" id="3562712610788163151" nodeInfo="in" />
            <node role="instance" roleId="tp68.1174317636233" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3562712610788163152" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3562712610788163130" resolveInfo="handler" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3562712610788163153" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3562712610788163154" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3562712610788163155" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="cnsts" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3562712610788163156" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="k7g3.~Collection" resolveInfo="Collection" />
              <node role="parameter" roleId="tpee.1109201940907" type="tp68.InternalClassifierType" typeId="tp68.1174914042989" id="3562712610788163157" nodeInfo="in">
                <property name="fqClassName" nameId="tp68.1174914081067" value="jetbrains.mps.unification.sandbox.TypeOfHandler.TypeOfConstraint" />
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
              </node>
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tp68.InternalPartialInstanceMethodCall" typeId="tp68.1174294166120" id="3562712610788163158" nodeInfo="nn">
              <property name="methodName" nameId="tp68.1174294288199" value="getTypeOfConstraints" />
              <node role="returnType" roleId="tp68.1174313653259" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3562712610788163159" nodeInfo="in">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="k7g3.~Collection" resolveInfo="Collection" />
                <node role="parameter" roleId="tpee.1109201940907" type="tp68.InternalClassifierType" typeId="tp68.1174914042989" id="3562712610788163160" nodeInfo="in">
                  <property name="fqClassName" nameId="tp68.1174914081067" value="jetbrains.mps.unification.sandbox.TypeOfHandler.TypeOfConstraint" />
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
                </node>
              </node>
              <node role="instance" roleId="tp68.1174317636233" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3562712610788163161" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3562712610788163130" resolveInfo="handler" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3562712610788163162" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3562712610788163163" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3562712610788163164" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3562712610788163165" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3562712610788163166" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="3562712610788163167" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3562712610788163168" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3562712610788163155" resolveInfo="cnsts" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3562712610788163169" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3562712610788163170" nodeInfo="nn" />
  </root>
</model>

