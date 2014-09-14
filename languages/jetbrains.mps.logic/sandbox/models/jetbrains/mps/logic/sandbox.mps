<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:7175cf50-f44a-499d-9f38-ec0eb0ee874d(jetbrains.mps.logic.sandbox)">
  <persistence version="8" />
  <language namespace="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <import index="ie8e" modelUID="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" />
  <import index="jfki" modelUID="f:java_stub#7526e0cf-1ce7-46f8-a555-9eca1e06c23b#jetbrains.mps.unification(jetbrains.mps.unification@java_stub)" version="-1" />
  <import index="tqye" modelUID="r:a96ed64c-59f1-465b-8d59-dbd0e8856971(jetbrains.mps.unification.ast)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="oy3s" modelUID="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.jchr.unification)" version="-1" />
  <import index="w2rx" modelUID="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="5j4j" modelUID="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" version="-1" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="6626732309150418650" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TreeBuilder" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="6626732309150418718" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="6626732309150447480" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="6626732309151588805" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6626732309150448638" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="6626732309150991689" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6626732309151581941" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6626732309151581942" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tree" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6626732309151581940" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6626732309151581943" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150638723" resolveInfo="tree" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6626732309151581944" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6626732309151581945" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="node1" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6626732309151581946" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6626732309151581947" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="prop1" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6626732309151581948" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="value" />
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6626732309151581949" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6626732309151581950" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="child1" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6626732309151581951" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6626732309151581952" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="node2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="6626732309151586398" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6626732309151600268" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6626732309151600264" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="6626732309151600265" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6626732309151600266" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="6626732309151604149" nodeInfo="nn">
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6626732309151600267" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6626732309151603075" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6626732309151603076" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6626732309151581942" resolveInfo="tree" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6626732309151603077" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309151611128" resolveInfo="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="554885619700835232" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="554885619701001287" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="554885619701001288" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tree2" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="554885619701001274" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701001289" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150638723" resolveInfo="tree" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701001290" nodeInfo="nn">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001291" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="node1" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701001292" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001293" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="concept" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001294" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="ClassifierType" />
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701001295" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001296" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="classifier" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001297" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="List" />
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701001298" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001299" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="parameter" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701001300" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001301" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="node2" />
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701001302" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001303" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="concept" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001304" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="ClassifierType" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701001305" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001306" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="classifier" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701001307" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="554885619701026023" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="554885619701032136" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="554885619701032132" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="554885619701032133" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="554885619701032134" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="554885619701039164" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="554885619701039789" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="554885619701001288" resolveInfo="tree2" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701032135" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="6626732309150651474" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="554885619701334194" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="554885619701624788" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="554885619701624789" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tree3" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="554885619701624752" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624790" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150638723" resolveInfo="tree" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624791" nodeInfo="nn">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624792" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="node1" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624793" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624794" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="concept" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624795" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="FunctionType" />
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624796" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624797" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="parameterType" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624798" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624799" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="node2" />
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624800" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624801" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="concept" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624802" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="ClassifierType" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624803" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624804" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="classifier" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624805" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="Integer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624806" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624807" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="returnType" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624808" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624809" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="node3" />
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624810" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624811" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="concept" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624812" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="ClassifierType" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="554885619701624813" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624814" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="classifier" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701624815" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="554885619701610720" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="554885619701652988" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="554885619701652984" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="554885619701652985" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="554885619701652986" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="554885619701666043" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="554885619701666647" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="554885619701624789" resolveInfo="tree3" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="554885619701652987" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2154023965590066705" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2154023965590089822" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2154023965590089823" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="a" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965590089824" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2154023965589875834" resolveInfo="Path" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590101404" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965589928561" resolveInfo="create" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.2154023965589875834" resolveInfo="Path" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590101478" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="a" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2154023965590124782" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2154023965590124783" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="b" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965590124784" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2154023965589875834" resolveInfo="Path" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590136462" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965589928561" resolveInfo="create" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.2154023965589875834" resolveInfo="Path" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590136538" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="b" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2154023965590451834" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2154023965590451835" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="c" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965590451836" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2154023965589875834" resolveInfo="Path" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590451837" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965589928561" resolveInfo="create" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.2154023965589875834" resolveInfo="Path" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590451838" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="c" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2154023965590136820" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965590160184" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965590165877" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965590160183" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965590124783" resolveInfo="b" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965590177436" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965589878284" resolveInfo="prepend" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965590177524" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965590089823" resolveInfo="a" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965590464041" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965590469867" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965590464040" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965590451835" resolveInfo="c" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965590481714" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965589878284" resolveInfo="prepend" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965590481809" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965590124783" resolveInfo="b" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2154023965590481900" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965590200859" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965590200855" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2154023965590200856" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965590200857" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="2154023965590214204" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965590214535" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965590232876" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965590089823" resolveInfo="a" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965590215259" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965589917316" resolveInfo="toString" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590200858" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965590220378" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965590220379" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2154023965590220380" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965590220381" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="2154023965590220382" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965590220383" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965590220384" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965590124783" resolveInfo="b" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965590220385" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965589917316" resolveInfo="toString" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590220386" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965590494108" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965590494109" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2154023965590494110" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965590494111" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="2154023965590494112" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965590494113" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965590506835" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965590451835" resolveInfo="c" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965590494115" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965589917316" resolveInfo="toString" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590494116" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="6626732309150448636" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6626732309150448637" nodeInfo="nn" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="6626732309151595372" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="6626732309151597720" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="7932111957670473534" nodeInfo="in" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="6626732309151184505" nodeInfo="ngu" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6626732309150418651" nodeInfo="nn" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6626732309151184465" nodeInfo="in">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
    </node>
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="554885619701682894" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="UnificationTest" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="554885619701682920" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="554885619701682951" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="554885619701682954" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2154023965589603409" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="554885619701985392" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="554885619701985393" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tree1" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="554885619701985384" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965588837588" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150638723" resolveInfo="tree" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590726947" nodeInfo="nn">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.2154023965590690192" resolveInfo="node" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590726949" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590726950" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="concept" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590726951" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="FunctionType" />
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705180584" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.7571593955702992294" resolveInfo="nodeList" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705202516" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="parameterType" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705223515" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.2154023965590690192" resolveInfo="node" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705223516" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705223517" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="concept" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705223518" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="ClassifierType" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705223519" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705223520" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="classifier" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705223521" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="Integer" />
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705422085" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.2154023965590690192" resolveInfo="node" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705422086" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705422087" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="concept" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705422088" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="ClassifierType" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705422089" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705422090" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="classifier" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705422091" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6214965505174310546" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.554885619701881360" resolveInfo="variable" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6214965505174310547" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="returnType" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6214965505174310548" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="RetType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2154023965589593740" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2154023965588755053" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2154023965588755054" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tree2" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965588755046" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965588843597" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150638723" resolveInfo="tree" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590746527" nodeInfo="nn">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.2154023965590690192" resolveInfo="node" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590746529" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590746530" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="concept" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590746531" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="FunctionType" />
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705480808" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.7571593955702992294" resolveInfo="nodeList" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705493822" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="parameterType" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705533278" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.554885619701733101" resolveInfo="create" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.554885619701687108" resolveInfo="Variable" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705539019" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="P1" />
                    </node>
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705633992" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.2154023965590690192" resolveInfo="node" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705633993" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705633994" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="concept" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705633995" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="ClassifierType" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955705633996" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705633997" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="classifier" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705633998" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590746542" nodeInfo="nn">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590746543" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="returnType" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590811666" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.2154023965590690192" resolveInfo="node" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590811668" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590811669" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="concept" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590811670" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="ClassifierType" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965590811671" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590811672" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="classifier" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965590811673" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2154023965588760481" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965589193664" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965589193660" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2154023965589193661" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965589193662" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="2154023965589205759" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965589206279" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="554885619701985393" resolveInfo="tree1" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965589193663" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965589219414" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965589219410" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2154023965589219411" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965589219412" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="2154023965589232117" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965589232748" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965588755054" resolveInfo="tree2" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965589219413" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2154023965589182477" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2154023965588769490" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2154023965588769491" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="unify" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965588769480" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Substitution" resolveInfo="Substitution" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965588769492" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Unification%dunify(Node,Node)" resolveInfo="unify" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="jfki.~Unification" resolveInfo="Unification" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965588769493" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965588769494" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="554885619701985393" resolveInfo="tree1" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965588769495" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965588769496" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965588769497" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965588755054" resolveInfo="tree2" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965588769498" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2154023965588771677" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965588775996" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2154023965588775992" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2154023965588775993" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2154023965588775994" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="2154023965588778733" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965588778868" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965588769491" resolveInfo="unify" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965588775995" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="554885619701682930" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="554885619701682945" nodeInfo="in" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="554885619701682966" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="554885619701683044" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="7932111957670473535" nodeInfo="in" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="554885619701683507" nodeInfo="ngu" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="554885619701682895" nodeInfo="nn" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965590948358" nodeInfo="in">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
    </node>
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7571593955704289778" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ListTest" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="7571593955704289804" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="7571593955704289962" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7571593955704289963" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="7571593955704289964" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="7571593955704289965" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7571593955704289966" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7571593955704289967" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7571593955704289968" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7571593955704290663" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7571593955704290664" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="childrenList" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7571593955704290659" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4410561908421477892" resolveInfo="ListBranch" />
              <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="7571593955704304642" nodeInfo="in" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955704290665" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.7571593955702992294" resolveInfo="nodeList" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955704700590" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="childrenList" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955704455980" nodeInfo="nn">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955704456831" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="child1" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955704511911" nodeInfo="nn">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955704514093" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="child2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7571593955704749112" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7571593955704749113" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="valuesList" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7571593955704749114" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4410561908421477892" resolveInfo="ListBranch" />
              <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="7571593955704749115" nodeInfo="in" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6270176708454008594" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6270176708454008542" resolveInfo="valueList" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705062045" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="valuesList" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705063254" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="val1" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705070233" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="val2" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7571593955705112865" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7571593955705112866" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="varList" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7571593955705112867" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4410561908421477892" resolveInfo="ListBranch" />
              <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="7571593955705112868" nodeInfo="in" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6270176708454008593" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6270176708454008542" resolveInfo="valueList" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705112870" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="varList" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705112871" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="var1" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705112872" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="var2" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7571593955704292686" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7571593955704293654" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7571593955704293650" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7571593955704293651" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7571593955704293652" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7571593955704294564" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7571593955704294705" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7571593955704290664" resolveInfo="childrenList" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955704293653" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7571593955705106330" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7571593955705106331" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7571593955705106332" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7571593955705106333" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7571593955705106334" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7571593955705108091" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7571593955704749113" resolveInfo="valuesList" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705106336" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7571593955705122581" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7571593955705122582" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7571593955705122583" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7571593955705122584" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7571593955705122585" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7571593955705124680" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7571593955705112866" resolveInfo="varList" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7571593955705122587" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="7571593955704290046" nodeInfo="ngu" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7571593955704289779" nodeInfo="nn" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7571593955704289795" nodeInfo="in">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
    </node>
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="1611448358170386379" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="DslTest" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="1611448358170386401" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1611448358170386411" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1611448358170386412" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="1611448358170386413" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="1611448358170386414" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1611448358170386415" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1611448358170386416" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1611448358170386417" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1611448358171453915" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1611448358168230122" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1611448358168230123" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tree1" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1611448358171072001" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1611448358168232103" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1611448358168232104" nodeInfo="ng">
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1611448358168232105" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358168232106" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1611448358168232107" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757862" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358168232108" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="cls" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1611448358168232109" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="Map" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757803" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1611448358168232110" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="param" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Variable" typeId="5j4j.1611448358170966948" id="1611448358171248774" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="FIRST" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1611448358171248777" nodeInfo="ng" />
                  </node>
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1611448358168674986" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358168674987" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1611448358168674988" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757878" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358168674989" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="cls" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1611448358168674990" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="Map" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757968" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1611448358168674991" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1357303818388504519" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="param" />
                      <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                      <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1357303818388505934" nodeInfo="ng">
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1357303818388505937" nodeInfo="ng" />
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1357303818388506675" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="concept" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1357303818388507542" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757852" nodeInfo="ng" />
                          </node>
                        </node>
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1357303818388515489" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="cls" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1357303818388515736" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757797" nodeInfo="ng" />
                          </node>
                        </node>
                      </node>
                      <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1357303818388514775" nodeInfo="ng">
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1357303818388514776" nodeInfo="ng" />
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1357303818388514777" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="concept" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1357303818388514778" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757874" nodeInfo="ng" />
                          </node>
                        </node>
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1357303818388516035" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="cls" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1357303818388516147" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757795" nodeInfo="ng" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Variable" typeId="5j4j.1611448358170966948" id="1611448358171930688" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="THIRD" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1611448358171930689" nodeInfo="ng" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1611448358171992612" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1611448358171028292" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1611448358171028293" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tree2" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1611448358171072672" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1611448358171028295" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1611448358171028296" nodeInfo="ng">
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1611448358171028297" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358171028298" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ExpressionVariable" typeId="5j4j.7932111957678624766" id="6097361656509260528" nodeInfo="ng">
                    <node role="expression" roleId="5j4j.7932111957678625620" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6097361656509260711" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="BAR" />
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6097361656509260536" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358171028300" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="cls" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.Variable" typeId="5j4j.1611448358170966948" id="6097361656509222119" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="FOO" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6097361656509222122" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1611448358171028302" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="param" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1611448358171028303" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358171028304" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1611448358171028305" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757836" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358171028306" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="cls" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1611448358171028307" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757799" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1611448358171028308" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node2" />
                    </node>
                  </node>
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Variable" typeId="5j4j.1611448358170966948" id="1611448358171028955" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="SECOND" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1611448358171028958" nodeInfo="ng" />
                  </node>
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1611448358171938337" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358171938338" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1611448358171938339" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757872" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1611448358171938340" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="cls" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1611448358171938341" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="Long" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757864" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1611448358171938342" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029990153645" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1611448358168419789" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1611448358168419785" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1611448358168419786" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1611448358168419787" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1611448358168424736" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1611448358168425125" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1611448358168230123" resolveInfo="tree1" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1611448358168419788" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1611448358171029423" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1611448358171029424" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1611448358171029425" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1611448358171029426" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1611448358171029427" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1611448358171030389" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1611448358171028293" resolveInfo="tree2" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1611448358171029429" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1611448358171068138" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1611448358171068341" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1611448358171068342" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="unify" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1611448358171068343" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Substitution" resolveInfo="Substitution" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1611448358171068344" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Unification%dunify(Node,Node)" resolveInfo="unify" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="jfki.~Unification" resolveInfo="Unification" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1611448358171068345" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1611448358171068346" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1611448358168230123" resolveInfo="tree1" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1611448358171068347" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1611448358171068348" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1611448358171068349" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1611448358171028293" resolveInfo="tree2" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1611448358171068350" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1611448358171068351" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1611448358171068352" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1611448358171068353" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1611448358171068354" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1611448358171068355" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1611448358171068356" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1611448358171068357" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1611448358171068342" resolveInfo="unify" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1611448358171068358" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1357303818382212803" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="1357303818382215737" nodeInfo="nn">
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1357303818382215738" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1357303818386760960" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1357303818386760961" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="term" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818386760958" nodeInfo="in">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Node" resolveInfo="Node" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1357303818386760962" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1357303818386760963" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1357303818382215741" resolveInfo="bnd" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1357303818386760964" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%dBinding%dnode()" resolveInfo="node" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1357303818386764416" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1357303818386764417" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="copy" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818386764403" nodeInfo="in">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1357303818382341941" resolveInfo="ITreePart" />
                  <node role="parameter" roleId="tpee.1109201940907" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818386764406" nodeInfo="in">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Node" resolveInfo="Node" />
                  </node>
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1357303818386764418" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParenthesizedExpression" typeId="tpee.1079359253375" id="1357303818386764419" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1079359253376" type="tpee.CastExpression" typeId="tpee.1070534934090" id="1357303818386764420" nodeInfo="nn">
                      <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818386764421" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1357303818382341941" resolveInfo="ITreePart" />
                        <node role="parameter" roleId="tpee.1109201940907" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818386764422" nodeInfo="in">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Node" resolveInfo="Node" />
                        </node>
                      </node>
                      <node role="expression" roleId="tpee.1070534934092" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1357303818386764423" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1357303818386760961" resolveInfo="term" />
                      </node>
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1357303818386764424" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.1357303818382343406" resolveInfo="copyRecursively" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1357303818382217199" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1357303818382217195" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1357303818382217196" nodeInfo="nn">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1357303818382217197" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1357303818382223359" nodeInfo="nn">
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1357303818386766255" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1357303818386764417" resolveInfo="copy" />
                    </node>
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1357303818382221572" nodeInfo="nn">
                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1357303818382219948" nodeInfo="nn">
                        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1357303818382217198" nodeInfo="nn">
                          <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                        </node>
                        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1357303818382220532" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1357303818382220120" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1357303818382215741" resolveInfo="bnd" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1357303818382220863" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%dBinding%dvar()" resolveInfo="var" />
                          </node>
                        </node>
                      </node>
                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1357303818382221581" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="=" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1357303818382215741" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="bnd" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818382215745" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Substitution%dBinding" resolveInfo="Substitution.Binding" />
            </node>
          </node>
          <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1357303818382215746" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1357303818382215747" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1611448358171068342" resolveInfo="unify" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1357303818382215748" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%dbindings()" resolveInfo="bindings" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1357303818386788093" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1357303818386798429" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1357303818386798430" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="copy1" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818386798420" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1357303818382341941" resolveInfo="ITreePart" />
              <node role="parameter" roleId="tpee.1109201940907" type="tpee.UpperBoundType" typeId="tpee.1171903916106" id="1357303818388494513" nodeInfo="in">
                <node role="bound" roleId="tpee.1171903916107" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818388495678" nodeInfo="in">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Node" resolveInfo="Node" />
                </node>
              </node>
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1357303818386798431" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1357303818386798436" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1357303818386798437" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1611448358168230123" resolveInfo="tree1" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1357303818386798438" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1357303818386798439" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.1357303818382343406" resolveInfo="copyRecursively" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1357303818386802809" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1357303818386805414" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1357303818386805410" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1357303818386805411" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1357303818386805412" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1357303818386808341" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1357303818386808381" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1357303818386798430" resolveInfo="copy1" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1357303818386805413" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1611448358171068212" nodeInfo="nn" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1611448358170386380" nodeInfo="nn" />
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="1503029986898849" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Forest" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="1503029986898850" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1503029986898851" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="t_Bar_of_string" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1503029986898852" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986898853" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1503029986898854" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986898855" nodeInfo="ng">
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1503029986898856" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="parameter" />
                <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986898857" nodeInfo="ng">
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986898858" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898859" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898860" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757856" nodeInfo="ng" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898861" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898862" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757844" nodeInfo="ng" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898863" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898864" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757801" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898865" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="classifier" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898866" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757846" nodeInfo="ng" />
                </node>
              </node>
              <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986898867" nodeInfo="ng" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029986898868" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029986898869" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1503029986898870" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="t_Bar_of_integer" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1503029986898871" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986898872" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1503029986898873" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986898874" nodeInfo="ng">
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1503029986898875" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="parameter" />
                <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986898876" nodeInfo="ng">
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1503029986898877" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="parameter" />
                    <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                    <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986898878" nodeInfo="ng">
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986898879" nodeInfo="ng" />
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898880" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="concept" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898881" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                          <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757832" nodeInfo="ng" />
                        </node>
                      </node>
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898882" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="classifier" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898883" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="Foo" />
                          <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757854" nodeInfo="ng" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986898884" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898885" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898886" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757838" nodeInfo="ng" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898887" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898888" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757876" nodeInfo="ng" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986898889" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898890" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898891" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757842" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898892" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="classifier" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898893" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757866" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029986898894" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029986898895" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1503029986898896" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="t_Bar_of_T" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1503029986898897" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="T" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029986898898" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1503029986898899" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986898900" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1503029986898901" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986898902" nodeInfo="ng">
              <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986898903" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898904" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898905" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757860" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898906" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="classifier" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898907" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757870" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1503029986898908" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="parameter" />
                <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.ExpressionVariable" typeId="5j4j.7932111957678624766" id="1503029986898909" nodeInfo="ng">
                  <node role="expression" roleId="5j4j.7932111957678625620" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029986898910" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029986898911" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029986898897" resolveInfo="T" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029986898912" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="w2rx.~Logical%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                    </node>
                  </node>
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986898913" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029986898914" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029986898915" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1503029986898916" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="t_string" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1503029986898917" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986898918" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1503029986898919" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986898920" nodeInfo="ng">
              <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
              <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986898921" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898922" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898923" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757868" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986898924" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="classifier" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986898925" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989757858" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029986898926" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029986898927" nodeInfo="nn" />
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029986898928" nodeInfo="nn" />
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="1503029988365510" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SubstitutionTest" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="1503029988366351" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1503029988366410" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1503029988366411" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="1503029988366412" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="1503029988366413" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1503029988366414" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029988366415" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1503029988366416" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029988377451" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029989313946" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1503029988389069" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1503029988389070" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="t1" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029988389064" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1503029988389071" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150638723" resolveInfo="tree" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1503029988389072" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.2154023965590690192" resolveInfo="node" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1503029988389073" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150452613" resolveInfo="value" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1503029988389074" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="val" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1503029988604899" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="TestValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029988397123" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1503029988626542" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1503029988626543" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="t2" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029988626540" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1503029988626544" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150638723" resolveInfo="tree" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1503029988626545" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tqye.2154023965590690192" resolveInfo="node" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tqye.2154023965590888595" resolveInfo="AstBuilder" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1503029989107510" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.554885619701881360" resolveInfo="variable" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1503029989107511" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="val" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1503029989107512" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029988838533" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1503029988652967" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1503029988652968" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="subs" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029988652941" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Substitution" resolveInfo="Substitution" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1503029988652969" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Unification%dunify(Node,Node)" resolveInfo="unify" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="jfki.~Unification" resolveInfo="Unification" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029988669065" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029988652970" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029988389070" resolveInfo="t1" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029988669278" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029988669787" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029988652971" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029988626543" resolveInfo="t2" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029988670184" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029988660586" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029988664356" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029988664352" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1503029988664353" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029988664354" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1503029988672535" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029988673219" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029988672661" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029988652968" resolveInfo="subs" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029988673433" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%disSuccessful()" resolveInfo="isSuccessful" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1503029988664355" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; success=" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029988697451" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="1503029988708609" nodeInfo="nn">
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1503029988708610" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029988713814" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029988713810" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1503029988713811" nodeInfo="nn">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029988713812" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1503029988718260" nodeInfo="nn">
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029988719644" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029988719411" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029988708613" resolveInfo="b" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029988720325" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%dBinding%dnode()" resolveInfo="node" />
                      </node>
                    </node>
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1503029988716175" nodeInfo="nn">
                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1503029988714615" nodeInfo="nn">
                        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1503029988713813" nodeInfo="nn">
                          <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                        </node>
                        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029988714997" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029988714794" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029988708613" resolveInfo="b" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029988715248" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%dBinding%dvar()" resolveInfo="var" />
                          </node>
                        </node>
                      </node>
                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1503029988717287" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value=" = " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1503029988708613" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="b" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029988708617" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Substitution%dBinding" resolveInfo="Substitution.Binding" />
            </node>
          </node>
          <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029988708618" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029988708619" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029988652968" resolveInfo="subs" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029988708620" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%dbindings()" resolveInfo="bindings" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029988387085" nodeInfo="nn" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029988365511" nodeInfo="nn" />
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="4744400670981192981" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TreeWalkerTest" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="4744400670981193376" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="4744400670981193532" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4744400670981193533" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="4744400670981193534" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="4744400670981193535" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4744400670981193536" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4744400670981193537" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4744400670981193538" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4744400670981211978" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4744400670981211979" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="list" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4744400670981211980" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4744400670981211981" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4744400670981211982" nodeInfo="ng">
                <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670981211983" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4744400670981211984" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4744400670981211985" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670981211986" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4744400670981211987" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="classifier" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4744400670981211988" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="List" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670981211989" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4744400670981211990" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameter" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4744400670981211991" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4744400670981211992" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4744400670981211993" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670981211994" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4744400670981211995" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4744400670981211996" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670981211997" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670981211998" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4744400670981212135" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4744400670983058524" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4744400670983058525" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="fun" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4744400670983058526" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4744400670983058527" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4744400670983058528" nodeInfo="ng">
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670983058529" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4744400670983058530" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4744400670983058531" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="FunctionType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670983058532" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4744400670983058533" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="returnType" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4744400670983058534" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4744400670983058535" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4744400670983058536" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670983058537" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4744400670983058538" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4744400670983058539" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670983058540" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670983058541" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4744400670983058542" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameterType" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4744400670983058543" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4744400670983058544" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4744400670983058545" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670983058546" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4744400670983058547" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4744400670983058548" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670983058549" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4744400670983058550" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4744400670983057977" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4744400670981314232" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4744400670981314233" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="walker" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908422161068" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4310122986193244369" resolveInfo="TreeWalk.Walker" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4744400670981314234" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="4744400670981314235" nodeInfo="nn">
                <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="4744400670981314236" nodeInfo="ig">
                  <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                  <link role="classifier" roleId="tpee.1170346070688" targetNodeId="ie8e.4310122986193244369" resolveInfo="TreeWalk.Walker" />
                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4744400670981314237" nodeInfo="nn" />
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4410561908420878157" nodeInfo="igu">
                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                    <property name="name" nameId="tpck.1169194664001" value="walkValue" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420878158" nodeInfo="in">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4310122986193244371" resolveInfo="TreeWalk.Action" />
                    </node>
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4410561908420878159" nodeInfo="nn" />
                    <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4410561908420878161" nodeInfo="ir">
                      <property name="name" nameId="tpck.1169194664001" value="valb" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420878162" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1557167973735897901" resolveInfo="ValuesBranch" />
                        <node role="parameter" roleId="tpee.1109201940907" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="4410561908420878163" nodeInfo="in">
                          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="4410561908420878167" resolveInfo="V" />
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4410561908420878164" nodeInfo="ir">
                      <property name="name" nameId="tpck.1169194664001" value="values" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="4410561908420878165" nodeInfo="in">
                        <node role="componentType" roleId="tpee.1070534760952" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="4410561908420878166" nodeInfo="in">
                          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="4410561908420878167" resolveInfo="V" />
                        </node>
                      </node>
                    </node>
                    <node role="typeVariableDeclaration" roleId="tpee.1109279881614" type="tpee.TypeVariableDeclaration" typeId="tpee.1109279763828" id="4410561908420878167" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="V" />
                    </node>
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4410561908420878170" nodeInfo="sn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4744400670981314247" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4744400670981314248" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4744400670981314249" nodeInfo="nn">
                            <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4744400670981314250" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4744400670981314251" nodeInfo="nn">
                              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4744400670983724605" nodeInfo="nn">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="k7g3.~Arrays%dasList(java%dlang%dObject%d%d%d)%cjava%dutil%dList" resolveInfo="asList" />
                                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="k7g3.~Arrays" resolveInfo="Arrays" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4410561908420887574" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4410561908420878164" resolveInfo="values" />
                                </node>
                              </node>
                              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4744400670981314253" nodeInfo="nn">
                                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4744400670981314254" nodeInfo="nn">
                                  <property name="value" nameId="tpee.1070475926801" value=": " />
                                </node>
                                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4744400670981314255" nodeInfo="nn">
                                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4744400670981314257" nodeInfo="nn">
                                    <property name="value" nameId="tpee.1070475926801" value="value&gt; " />
                                  </node>
                                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4410561908420885231" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4410561908420884513" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4410561908420878161" resolveInfo="valb" />
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4410561908420886082" nodeInfo="nn">
                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965590517293" resolveInfo="symbol" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4744400670981314258" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.EnumConstantReference" typeId="tpee.1083260308424" id="4744400670981314259" nodeInfo="nn">
                          <link role="enumClass" roleId="tpee.1144432896254" targetNodeId="ie8e.4310122986193244371" resolveInfo="TreeWalk.Action" />
                          <link role="enumConstantDeclaration" roleId="tpee.1083260308426" targetNodeId="ie8e.4310122986193244372" resolveInfo="WALK" />
                        </node>
                      </node>
                    </node>
                    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4410561908420938585" nodeInfo="nn">
                      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                    </node>
                  </node>
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4410561908420893766" nodeInfo="igu">
                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                    <property name="name" nameId="tpck.1169194664001" value="walkChild" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420893767" nodeInfo="in">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4310122986193244371" resolveInfo="TreeWalk.Action" />
                    </node>
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4410561908420893768" nodeInfo="nn" />
                    <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4410561908420893770" nodeInfo="ir">
                      <property name="name" nameId="tpck.1169194664001" value="cb" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420893771" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.6626732309150388081" resolveInfo="ChildrenBranch" />
                        <node role="parameter" roleId="tpee.1109201940907" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="4410561908420893772" nodeInfo="in">
                          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="4410561908420893777" resolveInfo="T" />
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4410561908420893773" nodeInfo="ir">
                      <property name="name" nameId="tpck.1169194664001" value="children" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="4410561908420893774" nodeInfo="in">
                        <node role="componentType" roleId="tpee.1070534760952" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420893775" nodeInfo="in">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1557167973736049220" resolveInfo="Branch" />
                          <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="4410561908420893776" nodeInfo="in" />
                        </node>
                      </node>
                    </node>
                    <node role="typeVariableDeclaration" roleId="tpee.1109279881614" type="tpee.TypeVariableDeclaration" typeId="tpee.1109279763828" id="4410561908420893777" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="T" />
                      <node role="bound" roleId="tpee.1214996921760" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420893778" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1357303818382341941" resolveInfo="ITreePart" />
                        <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="4410561908420893779" nodeInfo="in" />
                      </node>
                    </node>
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4410561908420893782" nodeInfo="sn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4744400670983195760" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4744400670983195761" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4744400670983195762" nodeInfo="nn">
                            <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4744400670983195763" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4744400670983195764" nodeInfo="nn">
                              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4744400670983733226" nodeInfo="nn">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="k7g3.~Arrays%dasList(java%dlang%dObject%d%d%d)%cjava%dutil%dList" resolveInfo="asList" />
                                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="k7g3.~Arrays" resolveInfo="Arrays" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4744400670983734187" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4410561908420893773" resolveInfo="children" />
                                </node>
                              </node>
                              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4744400670983195766" nodeInfo="nn">
                                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4744400670983195767" nodeInfo="nn">
                                  <property name="value" nameId="tpee.1070475926801" value=": " />
                                </node>
                                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4744400670983195768" nodeInfo="nn">
                                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4410561908420900082" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4410561908420899628" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4410561908420893770" resolveInfo="cb" />
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4410561908420900696" nodeInfo="nn">
                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965590517293" resolveInfo="symbol" />
                                    </node>
                                  </node>
                                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4744400670983195770" nodeInfo="nn">
                                    <property name="value" nameId="tpee.1070475926801" value="child&gt; " />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4744400670983195254" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.EnumConstantReference" typeId="tpee.1083260308424" id="4744400670983195309" nodeInfo="nn">
                          <link role="enumClass" roleId="tpee.1144432896254" targetNodeId="ie8e.4310122986193244371" resolveInfo="TreeWalk.Action" />
                          <link role="enumConstantDeclaration" roleId="tpee.1083260308426" targetNodeId="ie8e.4310122986193244372" resolveInfo="WALK" />
                        </node>
                      </node>
                    </node>
                    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4410561908420941148" nodeInfo="nn">
                      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                    </node>
                  </node>
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4410561908420912386" nodeInfo="igu">
                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                    <property name="name" nameId="tpck.1169194664001" value="walkVariable" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420912387" nodeInfo="in">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4310122986193244371" resolveInfo="TreeWalk.Action" />
                    </node>
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4410561908420912388" nodeInfo="nn" />
                    <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4410561908420912390" nodeInfo="ir">
                      <property name="name" nameId="tpck.1169194664001" value="varb" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420912391" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.554885619701747078" resolveInfo="VariableBranch" />
                      </node>
                    </node>
                    <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4410561908420912392" nodeInfo="ir">
                      <property name="name" nameId="tpck.1169194664001" value="variables" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="4410561908420912393" nodeInfo="in">
                        <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="4410561908420912394" nodeInfo="in" />
                      </node>
                    </node>
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4410561908420912397" nodeInfo="sn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986193200819" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.EnumConstantReference" typeId="tpee.1083260308424" id="4310122986193200921" nodeInfo="nn">
                          <link role="enumClass" roleId="tpee.1144432896254" targetNodeId="ie8e.4310122986193244371" resolveInfo="TreeWalk.Action" />
                          <link role="enumConstantDeclaration" roleId="tpee.1083260308426" targetNodeId="ie8e.4310122986193244372" resolveInfo="WALK" />
                        </node>
                      </node>
                    </node>
                    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4410561908420943806" nodeInfo="nn">
                      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                    </node>
                  </node>
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4410561908420920298" nodeInfo="igu">
                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                    <property name="name" nameId="tpck.1169194664001" value="walkList" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420920299" nodeInfo="in">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4310122986193244371" resolveInfo="TreeWalk.Action" />
                    </node>
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4410561908420920300" nodeInfo="nn" />
                    <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4410561908420920302" nodeInfo="ir">
                      <property name="name" nameId="tpck.1169194664001" value="listb" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420920303" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4410561908421477892" resolveInfo="ListBranch" />
                        <node role="parameter" roleId="tpee.1109201940907" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="4410561908420920304" nodeInfo="in">
                          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="4410561908420920310" resolveInfo="T" />
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4410561908420920305" nodeInfo="ir">
                      <property name="name" nameId="tpck.1169194664001" value="children" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420920306" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="k7g3.~List" resolveInfo="List" />
                        <node role="parameter" roleId="tpee.1109201940907" type="tpee.UpperBoundType" typeId="tpee.1171903916106" id="4410561908420920307" nodeInfo="in">
                          <node role="bound" roleId="tpee.1171903916107" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420920308" nodeInfo="in">
                            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1357303818382341941" resolveInfo="ITreePart" />
                            <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="4410561908420920309" nodeInfo="in" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="typeVariableDeclaration" roleId="tpee.1109279881614" type="tpee.TypeVariableDeclaration" typeId="tpee.1109279763828" id="4410561908420920310" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="T" />
                      <node role="bound" roleId="tpee.1214996921760" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908420920311" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1357303818382341941" resolveInfo="ITreePart" />
                        <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="4410561908420920312" nodeInfo="in" />
                      </node>
                    </node>
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4410561908420920314" nodeInfo="sn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986194291599" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986194291600" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986194291601" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                            <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986194291602" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986194291603" nodeInfo="nn">
                              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4410561908420929462" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4410561908420920305" resolveInfo="children" />
                              </node>
                              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986194291606" nodeInfo="nn">
                                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986194291607" nodeInfo="nn">
                                  <property name="value" nameId="tpee.1070475926801" value=": " />
                                </node>
                                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986194291608" nodeInfo="nn">
                                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4410561908420927427" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4410561908420925907" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4410561908420920302" resolveInfo="listb" />
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4410561908420928546" nodeInfo="nn">
                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2154023965590517293" resolveInfo="symbol" />
                                    </node>
                                  </node>
                                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986194291610" nodeInfo="nn">
                                    <property name="value" nameId="tpee.1070475926801" value="list&gt; " />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986194298177" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.EnumConstantReference" typeId="tpee.1083260308424" id="4310122986194300427" nodeInfo="nn">
                          <link role="enumConstantDeclaration" roleId="tpee.1083260308426" targetNodeId="ie8e.4310122986193244372" resolveInfo="WALK" />
                          <link role="enumClass" roleId="tpee.1144432896254" targetNodeId="ie8e.4310122986193244371" resolveInfo="TreeWalk.Action" />
                        </node>
                      </node>
                    </node>
                    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4410561908420945479" nodeInfo="nn">
                      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                    </node>
                  </node>
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="6270176708466258022" nodeInfo="igu">
                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                    <property name="name" nameId="tpck.1169194664001" value="endWalk" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="6270176708466258023" nodeInfo="in" />
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6270176708466258024" nodeInfo="nn" />
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6270176708466258027" nodeInfo="sn" />
                    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="6270176708466259787" nodeInfo="nn">
                      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4744400670981213780" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4744400670981212775" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4744400670981316584" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4744400670981212771" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="4744400670981213654" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4744400670979469750" resolveInfo="TreeWalk" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4744400670981316436" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4744400670981314233" resolveInfo="walker" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4744400670981316924" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.1473955095319699696" resolveInfo="walk" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4744400670981317242" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4744400670981317071" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4744400670981211979" resolveInfo="list" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4744400670981317510" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4744400670983060389" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4744400670983059354" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4744400670983059355" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4744400670983059356" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="4744400670983059357" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4744400670979469750" resolveInfo="TreeWalk" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4744400670983059358" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4744400670981314233" resolveInfo="walker" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4744400670983059359" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.1473955095319699696" resolveInfo="walk" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4744400670983059360" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4744400670983061468" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4744400670983058525" resolveInfo="fun" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4744400670983059362" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986191028626" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986191036821" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986191036822" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="find" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986193812215" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4310122986193792061" resolveInfo="Finders.IValueFinder" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4310122986191036823" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.4310122986191731719" resolveInfo="Finders" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4310122986191751114" resolveInfo="findValue" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531088001784" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986191064357" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4744400670981211979" resolveInfo="list" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531088002464" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191036825" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="node" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191036826" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="concept" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986191040697" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986191040693" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986191040694" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986191040695" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986191060889" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191060898" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="'" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986191046347" nodeInfo="nn">
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986191044447" nodeInfo="nn">
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986191043047" nodeInfo="nn">
                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191040696" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="find&gt; " />
                      </node>
                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986191043389" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986191043172" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986191036822" resolveInfo="find" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986191043609" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4310122986193792062" resolveInfo="found" />
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191044456" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value=": '" />
                    </node>
                  </node>
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986191047842" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986191047584" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986191036822" resolveInfo="find" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986191048380" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4310122986193792066" resolveInfo="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986196879122" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986191065227" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986191065228" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="find2" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986193813417" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4310122986193792061" resolveInfo="Finders.IValueFinder" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4310122986191065230" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.4310122986191731719" resolveInfo="Finders" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4310122986191751114" resolveInfo="findValue" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531088004131" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986191111593" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4744400670983058525" resolveInfo="fun" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531088004885" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191065232" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="node" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191065233" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="returnType" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191122319" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="node" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191070181" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="classifier" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986191065210" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986191065211" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986191065212" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986191065213" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986191065214" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191065215" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="'" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986191065216" nodeInfo="nn">
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986191065217" nodeInfo="nn">
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986191065218" nodeInfo="nn">
                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191065219" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="find&gt; " />
                      </node>
                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986191065220" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986191101718" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986191065228" resolveInfo="find2" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986191065222" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4310122986193792062" resolveInfo="found" />
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986191065223" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value=": '" />
                    </node>
                  </node>
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986191065224" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986191102197" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986191065228" resolveInfo="find2" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986191065226" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4310122986193792066" resolveInfo="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986192164394" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986196898063" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986196898064" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="find3" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986196898058" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4410561908422209301" resolveInfo="Finders.IListFinder" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4410561908422725723" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4410561908422725697" resolveInfo="findList" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.4310122986191731719" resolveInfo="Finders" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087987148" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986196898066" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4744400670981211979" resolveInfo="list" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087987950" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986196898067" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="node" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986196898068" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="parameter" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986196909848" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986196909844" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986196909845" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986196909846" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986196929190" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986196933350" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986196931616" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986196898064" resolveInfo="find3" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986196945254" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4410561908422209302" resolveInfo="result" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986196924644" nodeInfo="nn">
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986196917552" nodeInfo="nn">
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986196909847" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="find&gt; " />
                    </node>
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986196920909" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986196919237" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986196898064" resolveInfo="find3" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986196922618" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4310122986193792062" resolveInfo="found" />
                      </node>
                    </node>
                  </node>
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986196926957" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value=": " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986196882785" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986197227854" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986197227855" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="find4" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986197227856" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4410561908422209301" resolveInfo="Finders.IListFinder" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4410561908422725722" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4410561908422725697" resolveInfo="findList" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.4310122986191731719" resolveInfo="Finders" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087984522" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986197233015" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4744400670983058525" resolveInfo="fun" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087985363" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986197227859" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="node" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986197227860" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="parameterType" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986197227839" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986197227840" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986197227841" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986197227842" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986197227843" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986197227844" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986197235276" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986197227855" resolveInfo="find4" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986197227846" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4410561908422209302" resolveInfo="result" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986197227847" nodeInfo="nn">
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986197227848" nodeInfo="nn">
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986197227849" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="find&gt; " />
                    </node>
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986197227850" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986197234740" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986197227855" resolveInfo="find4" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986197227852" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4310122986193792062" resolveInfo="found" />
                      </node>
                    </node>
                  </node>
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986197227853" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value=": " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986197227838" nodeInfo="nn" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="4744400670981193672" nodeInfo="ngu" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4744400670981192982" nodeInfo="nn" />
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="4155268531087333125" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="UnifyDuplicates" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="4155268531087334738" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4155268531087334739" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="4155268531087334740" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="4155268531087334741" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4155268531087334742" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4155268531087334743" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4155268531087334744" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4155268531087353740" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4155268531087353741" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tree1" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4155268531087353739" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4155268531087353742" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087353743" nodeInfo="ng">
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4155268531087353744" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameter" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087353745" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4155268531087353746" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="parameter" />
                      <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                      <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087353747" nodeInfo="ng">
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353748" nodeInfo="ng" />
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353749" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="concept" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353750" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353751" nodeInfo="ng" />
                          </node>
                        </node>
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353752" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="classifier" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353753" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353754" nodeInfo="ng" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353755" nodeInfo="ng" />
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353756" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353757" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353758" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353759" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353760" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="List" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353761" nodeInfo="ng" />
                      </node>
                    </node>
                  </node>
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087353762" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4155268531087353763" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="parameter" />
                      <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                      <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087353764" nodeInfo="ng">
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353765" nodeInfo="ng" />
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353766" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="concept" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353767" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353768" nodeInfo="ng" />
                          </node>
                        </node>
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353769" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="classifier" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353770" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353771" nodeInfo="ng" />
                          </node>
                        </node>
                      </node>
                      <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087353772" nodeInfo="ng">
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4155268531087353773" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="parameter" />
                          <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                          <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087353774" nodeInfo="ng">
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353775" nodeInfo="ng" />
                            <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353776" nodeInfo="ng">
                              <property name="name" nameId="tpck.1169194664001" value="concept" />
                              <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353777" nodeInfo="ng">
                                <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353778" nodeInfo="ng" />
                              </node>
                            </node>
                            <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353779" nodeInfo="ng">
                              <property name="name" nameId="tpck.1169194664001" value="classifier" />
                              <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353780" nodeInfo="ng">
                                <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353781" nodeInfo="ng" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353782" nodeInfo="ng" />
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353783" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="concept" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353784" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353785" nodeInfo="ng" />
                          </node>
                        </node>
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353786" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="classifier" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353787" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="List" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353788" nodeInfo="ng" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353789" nodeInfo="ng" />
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353790" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353791" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353792" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353793" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353794" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="Map" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353795" nodeInfo="ng" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353796" nodeInfo="ng" />
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353797" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353798" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353799" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087353800" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="classifier" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087353801" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="Pair" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087353802" nodeInfo="ng" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4155268531087354661" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4155268531087354360" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4155268531087354361" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tree2" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4155268531087354362" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4155268531087354363" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087354364" nodeInfo="ng">
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4155268531087354365" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameter" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Variable" typeId="5j4j.1611448358170966948" id="4155268531087357131" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="X" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087357149" nodeInfo="ng" />
                  </node>
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087354383" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4155268531087354384" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="parameter" />
                      <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                      <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4155268531087354385" nodeInfo="ng">
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087354386" nodeInfo="ng" />
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087354387" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="concept" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087354388" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087354389" nodeInfo="ng" />
                          </node>
                        </node>
                        <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087354390" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="classifier" />
                          <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087354391" nodeInfo="ng">
                            <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                            <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087354392" nodeInfo="ng" />
                          </node>
                        </node>
                      </node>
                      <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Variable" typeId="5j4j.1611448358170966948" id="4155268531087357635" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="X" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087357653" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087354410" nodeInfo="ng" />
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087354411" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087354412" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087354413" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087354414" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087354415" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="Map" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087354416" nodeInfo="ng" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087354417" nodeInfo="ng" />
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087354418" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087354419" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087354420" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4155268531087354421" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="classifier" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4155268531087354422" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="Pair" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4155268531087354423" nodeInfo="ng" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4155268531087357843" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6270176708469284019" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6270176708469304030" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="6270176708469304031" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6270176708469304032" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="6270176708469311752" nodeInfo="nn">
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6270176708469304033" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="tree1&gt;" />
                </node>
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6270176708469285739" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6270176708464672871" resolveInfo="prettyPrint" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6270176708464609671" resolveInfo="PrettyPrinter" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.CastExpression" typeId="tpee.1070534934090" id="6270176708469290233" nodeInfo="nn">
                    <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6270176708469290228" nodeInfo="in">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4744400670979394422" resolveInfo="ITreeBranch" />
                      <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="6270176708469290229" nodeInfo="in" />
                    </node>
                    <node role="expression" roleId="tpee.1070534934092" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6270176708469290230" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6270176708469290231" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4155268531087353741" resolveInfo="tree1" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6270176708469290232" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="6270176708469291072" nodeInfo="nn">
                    <property name="value" nameId="tpee.1068580320021" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6270176708469324084" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6270176708469324085" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="6270176708469324086" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6270176708469324087" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="6270176708469324088" nodeInfo="nn">
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6270176708469324089" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="tree2&gt;" />
                </node>
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6270176708469324090" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6270176708464672871" resolveInfo="prettyPrint" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6270176708464609671" resolveInfo="PrettyPrinter" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.CastExpression" typeId="tpee.1070534934090" id="6270176708469324091" nodeInfo="nn">
                    <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6270176708469324092" nodeInfo="in">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4744400670979394422" resolveInfo="ITreeBranch" />
                      <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="6270176708469324093" nodeInfo="in" />
                    </node>
                    <node role="expression" roleId="tpee.1070534934092" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6270176708469324094" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6270176708469327540" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4155268531087354361" resolveInfo="tree2" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6270176708469324096" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="6270176708469324097" nodeInfo="nn">
                    <property name="value" nameId="tpee.1068580320021" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="6270176708469282300" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4155268531087360754" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4155268531087360755" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="subs" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4155268531087360749" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Substitution" resolveInfo="Substitution" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4155268531087360756" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Unification%dunify(Node,Node)" resolveInfo="unify" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="jfki.~Unification" resolveInfo="Unification" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087361421" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4155268531087360757" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4155268531087353741" resolveInfo="tree1" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087361694" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087362316" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4155268531087360758" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4155268531087354361" resolveInfo="tree2" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087362934" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.2915549616871243272" resolveInfo="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4155268531087364559" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4155268531087365461" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087365457" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4155268531087365458" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087365459" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4155268531087367752" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087368498" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4155268531087367939" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4155268531087360755" resolveInfo="subs" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087368711" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%disSuccessful()" resolveInfo="isSuccessful" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4155268531087365460" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; success=" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="4155268531087373688" nodeInfo="nn">
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="4155268531087373689" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4155268531087375561" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087375557" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4155268531087375558" nodeInfo="nn">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087375559" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4155268531087380500" nodeInfo="nn">
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087383068" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4155268531087381604" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4155268531087373692" resolveInfo="bnd" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087383696" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%dBinding%dnode()" resolveInfo="node" />
                      </node>
                    </node>
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4155268531087378438" nodeInfo="nn">
                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4155268531087376620" nodeInfo="nn">
                        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4155268531087375560" nodeInfo="nn">
                          <property name="value" nameId="tpee.1070475926801" value="binding&gt; " />
                        </node>
                        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087377204" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4155268531087376791" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4155268531087373692" resolveInfo="bnd" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087377508" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%dBinding%dvar()" resolveInfo="var" />
                          </node>
                        </node>
                      </node>
                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4155268531087379543" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="=" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4155268531087373692" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="bnd" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4155268531087373696" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="jfki.~Substitution%dBinding" resolveInfo="Substitution.Binding" />
            </node>
          </node>
          <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4155268531087373697" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4155268531087373698" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4155268531087360755" resolveInfo="subs" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4155268531087373699" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="jfki.~Substitution%dbindings()" resolveInfo="bindings" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4155268531087333126" nodeInfo="nn" />
  </root>
</model>

