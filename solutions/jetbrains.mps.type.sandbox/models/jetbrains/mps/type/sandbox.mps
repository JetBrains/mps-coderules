<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:12056882-be6e-41ea-97f1-d0d00393a672(jetbrains.mps.type.sandbox)">
  <persistence version="8" />
  <language namespace="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" />
  <language namespace="894463aa-8754-49c0-bf4b-6a32af66b376(jetbrains.mps.jchr)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="ie8e" modelUID="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" version="-1" />
  <import index="zt4h" modelUID="r:e67bd817-e7ca-40c9-9f79-95fad12bb615(jetbrains.mps.type.solver.baseLanguage)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="oy3s" modelUID="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.jchr.unification)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="5j4j" modelUID="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" version="-1" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <import index="vgt0" modelUID="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" version="0" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="4310122986197711527" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SubtypingTest" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="4310122986197748430" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="4310122986197711528" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4310122986197711529" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="4310122986197711530" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="4310122986197711531" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4310122986197711532" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4310122986197711533" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4310122986197711534" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986197711535" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986197711536" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="list" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986197711537" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4310122986197711538" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711539" nodeInfo="ng">
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711540" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711541" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711542" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711543" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711544" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="classifier" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711545" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="List" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711546" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986197711547" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameter" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711548" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711549" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711550" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711551" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711552" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711553" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711554" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711555" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986197722767" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986197723199" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986197723195" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986197723196" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986197723197" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986197726311" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4310122986197729459" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zt4h.4310122986197721286" resolveInfo="isClassifierType" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zt4h.239893333995962812" resolveInfo="ClassifierSubtypingSolver" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986197729957" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986197711536" resolveInfo="list" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986197723198" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="list&gt; CT: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986197730702" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986197730703" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986197730704" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986197730705" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986197730706" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4310122986197732539" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zt4h.4310122986197721946" resolveInfo="classifier" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zt4h.239893333995962812" resolveInfo="ClassifierSubtypingSolver" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986197732540" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986197711536" resolveInfo="list" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986197730709" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="list&gt; classifier: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986197711556" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986197711557" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986197711558" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="itr" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986197711559" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4310122986197711560" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711561" nodeInfo="ng">
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711562" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711563" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711564" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711565" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711566" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="classifier" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711567" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="Iterable" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711568" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986197711569" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameter" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711570" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711571" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711572" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711573" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711574" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711575" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711576" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711577" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986197711578" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986197711579" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986197711580" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="run" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986197711581" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4310122986197711582" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711583" nodeInfo="ng">
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711584" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711585" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711586" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711587" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711588" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="classifier" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711589" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="Runnable" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711590" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986197711591" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameter" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711592" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711593" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711594" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711595" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711596" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711597" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711598" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711599" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986197711600" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986197711601" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986197711602" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986197711603" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="comp" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986197711604" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4310122986197711605" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711606" nodeInfo="ng">
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711607" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711608" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711609" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711610" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711611" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="classifier" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711612" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="Computable" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711613" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986197711614" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameter" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711615" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711616" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711617" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711618" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711619" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711620" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711621" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711622" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711623" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711624" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711625" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711626" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711627" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711628" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711629" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711630" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986197711631" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986197711632" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986197711633" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="fun" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986197711634" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4310122986197711635" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711636" nodeInfo="ng">
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711637" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711638" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711639" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="FunctionType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711640" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986197711641" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="returnType" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711642" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711643" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711644" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711645" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711646" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711647" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711648" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711649" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986197711650" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameterType" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711651" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711652" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711653" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711654" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711655" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711656" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711657" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711658" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986197711659" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986197711660" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986197711661" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="fun2" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986197711662" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4310122986197711663" nodeInfo="ng">
              <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711664" nodeInfo="ng">
                <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711665" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="node1" />
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711666" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="concept" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711667" nodeInfo="ng">
                    <property name="value" nameId="5j4j.7571593955706137638" value="FunctionType" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711668" nodeInfo="ng" />
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986197711669" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="returnType" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="single" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711670" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711671" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711672" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711673" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711674" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711675" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711676" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711677" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
                <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986197711678" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="parameterType" />
                  <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711679" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711680" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711681" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711682" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711683" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711684" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711685" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711686" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                  <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986197711687" nodeInfo="ng">
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711688" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711689" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711690" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986197711691" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986197711692" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="Long" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711693" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986197711694" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="node3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986198963288" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986198894737" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986198894789" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986198894790" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="listOfStrings" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986198894791" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4310122986198894792" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zt4h.4310122986197754207" resolveInfo="SubclassingTable" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zt4h.4310122986197755280" resolveInfo="supertypeOf" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4310122986198927095" nodeInfo="ng">
                <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986198927096" nodeInfo="ng">
                  <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198927097" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198927098" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198927099" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198927100" nodeInfo="ng" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198927101" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198927102" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="List" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198927103" nodeInfo="ng" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986198927104" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="parameter" />
                    <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                    <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986198927105" nodeInfo="ng">
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198927106" nodeInfo="ng" />
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198927107" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="concept" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198927108" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                          <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198927109" nodeInfo="ng" />
                        </node>
                      </node>
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198927110" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="classifier" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198927111" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                          <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198927112" nodeInfo="ng" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986198894794" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986198894795" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986198894796" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986198894797" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986198894798" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986198894799" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986198894790" resolveInfo="listOfStrings" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986198894800" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="super&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986198894801" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986198936338" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986198936339" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="listOfInteger" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986198936340" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4310122986198936341" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zt4h.4310122986197754207" resolveInfo="SubclassingTable" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zt4h.4310122986197755280" resolveInfo="supertypeOf" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4310122986198936342" nodeInfo="ng">
                <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986198936343" nodeInfo="ng">
                  <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198936344" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198936345" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198936346" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198936347" nodeInfo="ng" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198936348" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198936349" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="List" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198936350" nodeInfo="ng" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986198936351" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="parameter" />
                    <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                    <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986198936352" nodeInfo="ng">
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198936353" nodeInfo="ng" />
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198936354" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="concept" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198936355" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                          <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198936356" nodeInfo="ng" />
                        </node>
                      </node>
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198936357" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="classifier" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198936358" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                          <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198936359" nodeInfo="ng" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986198936331" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986198936332" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986198936333" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986198936334" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986198936335" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986198938121" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986198936339" resolveInfo="listOfInteger" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986198936337" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="super&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986198936330" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4310122986198944706" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4310122986198944707" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="listOfListOfInt" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986198944708" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4310122986198944709" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="zt4h.4310122986197754207" resolveInfo="SubclassingTable" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="zt4h.4310122986197755280" resolveInfo="supertypeOf" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="4310122986198944710" nodeInfo="ng">
                <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986198944711" nodeInfo="ng">
                  <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198944712" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198944713" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198944714" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198944715" nodeInfo="ng" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198944716" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198944717" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="List" />
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198944718" nodeInfo="ng" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986198944719" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="parameter" />
                    <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                    <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986198947862" nodeInfo="ng">
                      <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198947863" nodeInfo="ng" />
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198947864" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="concept" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198947865" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                          <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198947866" nodeInfo="ng" />
                        </node>
                      </node>
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198947867" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="classifier" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198947868" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="List" />
                          <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198947869" nodeInfo="ng" />
                        </node>
                      </node>
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="4310122986198947870" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="parameter" />
                        <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                        <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="4310122986198944720" nodeInfo="ng">
                          <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198944721" nodeInfo="ng" />
                          <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198944722" nodeInfo="ng">
                            <property name="name" nameId="tpck.1169194664001" value="concept" />
                            <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198944723" nodeInfo="ng">
                              <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                              <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198944724" nodeInfo="ng" />
                            </node>
                          </node>
                          <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="4310122986198944725" nodeInfo="ng">
                            <property name="name" nameId="tpck.1169194664001" value="classifier" />
                            <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="4310122986198944726" nodeInfo="ng">
                              <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                              <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="4310122986198944727" nodeInfo="ng" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4310122986198944699" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4310122986198944700" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4310122986198944701" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4310122986198944702" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4310122986198944703" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4310122986198946937" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4310122986198944707" resolveInfo="listOfListOfInt" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4310122986198944705" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="super&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986198963468" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4310122986197711695" nodeInfo="nn" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="4310122986197748903" nodeInfo="ngu" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4310122986197711696" nodeInfo="nn" />
  </root>
  <root type="vgt0.Handler" typeId="vgt0.456733934405394951" id="4310122986199148304" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="typecheck" />
    <node role="declaration" roleId="vgt0.456733934405771625" type="vgt0.ConstraintDeclaration" typeId="vgt0.456733934405496212" id="4310122986199157639" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="typecheck" />
    </node>
    <node role="solver" roleId="vgt0.7932111957672637404" type="vgt0.SolverDeclaration" typeId="vgt0.7932111957672597360" id="4310122986199151967" nodeInfo="ng">
      <node role="type" roleId="vgt0.7932111957672598887" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4310122986199152361" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.7337323408787456023" resolveInfo="UnificationSolver" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4310122986199148305" nodeInfo="nn" />
  </root>
</model>

