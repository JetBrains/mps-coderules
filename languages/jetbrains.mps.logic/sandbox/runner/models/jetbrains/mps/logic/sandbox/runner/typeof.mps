<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e04efeb8-0601-491d-95ef-ff741f4cdd87(jetbrains.mps.logic.sandbox.runner.typeof)">
  <persistence version="8" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)" />
  <language namespace="894463aa-8754-49c0-bf4b-6a32af66b376(jetbrains.mps.jchr)" />
  <language namespace="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" />
  <import index="oy3s" modelUID="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.jchr.unification)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" />
  <import index="zcv" modelUID="r:cbad57c9-c211-4e64-ac84-bbfd0fa39faf(jetbrains.mps.unification.util)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="w2rx" modelUID="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" version="-1" />
  <import index="3ypq" modelUID="r:ecf59ef9-2b17-40ee-91aa-e7999d4518f0(jetbrains.mps.unification.sandbox)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="vgt0" modelUID="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" version="0" implicit="yes" />
  <import index="5j4j" modelUID="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" version="-1" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="1503029986085417" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TestTypeOf" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="1503029986085418" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1503029986085419" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1503029986085420" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="1503029986085421" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="1503029986085422" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1503029986085423" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029986085424" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1503029986085425" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1503029986085426" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1503029986085427" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="handler" />
            <node role="type" roleId="tpee.5680397130376446158" type="vgt0.HandlerType" typeId="vgt0.1503029981964506" id="1503029986085428" nodeInfo="ig">
              <link role="handler" roleId="vgt0.1503029982163244" targetNodeId="3ypq.7932111957672575234" resolveInfo="typeOf" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1503029986085429" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="vgt0.HandlerCreator" typeId="vgt0.1503029982035201" id="1503029986085430" nodeInfo="ng">
                <link role="handler" roleId="vgt0.1503029982159404" targetNodeId="3ypq.7932111957672575234" resolveInfo="typeOf" />
                <node role="solver" roleId="vgt0.1503029984919269" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1503029986085431" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1503029986085432" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="oy3s.5667087533488904329" resolveInfo="UnificationSolverImpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029986308160" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986085434" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029986085435" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029986085436" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029986085427" resolveInfo="handler" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="vgt0.TellConstraintOperation" typeId="vgt0.1503029982882979" id="1503029986085437" nodeInfo="ng">
              <link role="constraint" roleId="vgt0.1503029983918490" targetNodeId="3ypq.7932111957672579607" resolveInfo="typeOf" />
              <node role="parameter" roleId="vgt0.1503029982813032" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1503029986770516" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="1" />
              </node>
              <node role="parameter" roleId="vgt0.1503029982813032" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="6214965505176452737" nodeInfo="ng">
                <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="3562712610780289477" nodeInfo="ng">
                  <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="3562712610780289482" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="3562712610780289478" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3562712610780289479" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="3562712610780289480" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3562712610780289481" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986125914" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029986125915" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029986125916" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029986085427" resolveInfo="handler" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="vgt0.TellConstraintOperation" typeId="vgt0.1503029982882979" id="1503029986125917" nodeInfo="ng">
              <link role="constraint" roleId="vgt0.1503029983918490" targetNodeId="3ypq.7932111957672579607" resolveInfo="typeOf" />
              <node role="parameter" roleId="vgt0.1503029982813032" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1503029986771251" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="2" />
              </node>
              <node role="parameter" roleId="vgt0.1503029982813032" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="6214965505176464277" nodeInfo="ng">
                <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="6214965505176464278" nodeInfo="ng">
                  <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="3608339284319961277" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="parameter" />
                    <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                    <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="3936021239966049826" nodeInfo="ng">
                      <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="3936021239966049832" nodeInfo="ng" />
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="3936021239966049827" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="concept" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3936021239966049828" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        </node>
                      </node>
                      <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="3936021239966049829" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="classifier" />
                        <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3936021239966049830" nodeInfo="ng">
                          <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="6214965505176464280" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="6214965505176464281" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7825160518170266129" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3608339284319392912" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                    </node>
                  </node>
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505176464279" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029986085440" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1503029986135417" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1503029986135418" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="allTypeOf" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029986135411" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="k7g3.~Collection" resolveInfo="Collection" />
              <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="1503029986135414" nodeInfo="in" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029986135419" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029986135420" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029986085427" resolveInfo="handler" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="vgt0.AllConstraintsOperation" typeId="vgt0.1503029983867083" id="1503029986135421" nodeInfo="ng">
                <link role="constraint" roleId="vgt0.1503029983918490" targetNodeId="3ypq.7932111957672579607" resolveInfo="typeOf" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1503029986131543" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1503029986133320" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1503029986133316" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1503029986133317" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1503029986133318" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1503029986139919" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1503029986140138" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1503029986135418" resolveInfo="allTypeOf" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1503029986133319" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="1503029986085445" nodeInfo="ngu" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1503029986085446" nodeInfo="nn" />
  </root>
</model>

