<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:6f96e7a1-f1bc-4a86-b567-30d6df597894(jetbrains.mps.logic.sandbox.runner)">
  <persistence version="8" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="894463aa-8754-49c0-bf4b-6a32af66b376(jetbrains.mps.jchr)" />
  <language namespace="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" />
  <import index="3ypq" modelUID="r:ecf59ef9-2b17-40ee-91aa-e7999d4518f0(jetbrains.mps.unification.sandbox)" version="-1" />
  <import index="oy3s" modelUID="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.jchr.unification)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="5j4j" modelUID="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" version="-1" implicit="yes" />
  <import index="vgt0" modelUID="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" version="0" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="1503029986874688" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TestTypeOf" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="1503029986874689" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1503029986874690" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1503029986874691" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="1503029986874692" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="1503029986874693" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1503029986874694" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029986874695" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1503029986874696" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1503029986874697" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1503029986874698" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="handler" />
            <node role="type" roleId="tpee.5680397130376446158" type="vgt0.HandlerType" typeId="vgt0.1503029981964506" id="1503029986874699" nodeInfo="ig">
              <link role="handler" roleId="vgt0.1503029982163244" targetNodeId="3ypq.7932111957672575234" resolveInfo="typeOf" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1503029986874700" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="vgt0.HandlerCreator" typeId="vgt0.1503029982035201" id="1503029986874701" nodeInfo="ng">
                <link role="handler" roleId="vgt0.1503029982159404" targetNodeId="3ypq.7932111957672575234" resolveInfo="typeOf" />
                <node role="solver" roleId="vgt0.1503029984919269" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1503029986874702" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1503029986874703" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="oy3s.5667087533488904329" resolveInfo="UnificationSolverImpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029986874704" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986874705" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029986874706" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029986874707" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029986874698" resolveInfo="handler" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="vgt0.TellConstraintOperation" typeId="vgt0.1503029982882979" id="1503029986874708" nodeInfo="ng">
              <link role="constraint" roleId="vgt0.1503029983918490" targetNodeId="3ypq.7932111957672579607" resolveInfo="typeOf" />
              <node role="parameter" roleId="vgt0.1503029982813032" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1503029986874709" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="1" />
              </node>
              <node role="parameter" roleId="vgt0.1503029982813032" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1503029986874710" nodeInfo="ng">
                <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986874711" nodeInfo="ng">
                  <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986874712" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986874713" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986874714" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986874715" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986874716" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986874717" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029986874718" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029986874719" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029986874698" resolveInfo="handler" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="vgt0.TellConstraintOperation" typeId="vgt0.1503029982882979" id="1503029986874720" nodeInfo="ng">
              <link role="constraint" roleId="vgt0.1503029983918490" targetNodeId="3ypq.7932111957672579607" resolveInfo="typeOf" />
              <node role="parameter" roleId="vgt0.1503029982813032" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1503029986874721" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="2" />
              </node>
              <node role="parameter" roleId="vgt0.1503029982813032" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1503029986874722" nodeInfo="ng">
                <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986874723" nodeInfo="ng">
                  <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1503029986874724" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="parameter" />
                    <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                    <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029986874725" nodeInfo="ng">
                      <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986874726" nodeInfo="ng" />
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986874727" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="concept" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986874728" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        </node>
                      </node>
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986874729" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="classifier" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986874730" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986874731" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986874732" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029986874733" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029986874734" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                    </node>
                  </node>
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029986874735" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029986874736" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1503029986874737" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1503029986874738" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="allTypeOf" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029986874739" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="k7g3.~Collection" resolveInfo="Collection" />
              <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="1503029986874740" nodeInfo="in" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029986874741" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029986874742" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029986874698" resolveInfo="handler" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="vgt0.AllConstraintsOperation" typeId="vgt0.1503029983867083" id="1503029986874743" nodeInfo="ng">
                <link role="constraint" roleId="vgt0.1503029983918490" targetNodeId="3ypq.7932111957672579607" resolveInfo="typeOf" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029986874744" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986874745" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029986874746" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1503029986874747" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029986874748" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1503029986874749" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029986874750" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029986874738" resolveInfo="allTypeOf" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1503029986874751" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="1503029986874752" nodeInfo="ngu" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029986874753" nodeInfo="nn" />
  </root>
</model>

