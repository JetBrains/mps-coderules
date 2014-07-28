<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:cbad57c9-c211-4e64-ac84-bbfd0fa39faf(jetbrains.mps.unification.util)">
  <persistence version="8" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" />
  <import index="ie8e" modelUID="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" version="-1" />
  <import index="oy3s" modelUID="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.jchr.unification)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="5j4j" modelUID="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" version="-1" implicit="yes" />
  <import index="w2rx" modelUID="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" version="-1" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7932111957675691621" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Forest" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="7932111957678223141" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="7932111957678223222" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="7932111957675691622" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="tree1" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7932111957678775080" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="X" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957678775229" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7932111957675691623" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7932111957675691624" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="7932111957675691625" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="7932111957675691626" nodeInfo="ng">
              <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7932111957675691627" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7932111957675691628" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="7932111957675691629" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Foo" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="7932111957675691630" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="bar" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.NodeVariableExpression" typeId="5j4j.7932111957678624766" id="7932111957678774999" nodeInfo="ng">
                  <node role="expression" roleId="5j4j.7932111957678625620" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7932111957678775832" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7932111957678775491" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7932111957678775080" resolveInfo="X" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7932111957678775991" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="w2rx.~Logical%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                    </node>
                  </node>
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7932111957678775009" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="7932111957678774372" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="bazz" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="7932111957678774373" nodeInfo="ng">
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7932111957678774374" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7932111957678774375" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="7932111957678774376" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="Bazz" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957675691635" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7932111957675691636" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="7932111957675691637" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="tree2" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7932111957678527933" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="Y" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957678530219" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="6214965505175705574" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="Z" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6214965505175705906" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7932111957675691638" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7932111957675691639" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="7932111957675691640" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="7932111957675691641" nodeInfo="ng">
              <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7932111957675691642" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7932111957675691643" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="7932111957675691644" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Foo" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="7932111957675691645" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="bar" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="7932111957678781699" nodeInfo="ng">
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7932111957678781700" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7932111957678781761" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="7932111957678781933" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7932111957680762731" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="value" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="7932111957680762905" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="QUX" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="6214965505175704992" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="ch" />
                    <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.NodeVariableExpression" typeId="5j4j.7932111957678624766" id="6214965505175705397" nodeInfo="ng">
                      <node role="expression" roleId="5j4j.7932111957678625620" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6214965505175706512" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6214965505175706407" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6214965505175705574" resolveInfo="Z" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6214965505175706837" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="w2rx.~Logical%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                        </node>
                      </node>
                      <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505175705399" nodeInfo="ng" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="7932111957678782673" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="bazz" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.NodeVariableExpression" typeId="5j4j.7932111957678624766" id="7932111957678782972" nodeInfo="ng">
                  <node role="expression" roleId="5j4j.7932111957678625620" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7932111957678783146" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7932111957678783041" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7932111957678527933" resolveInfo="Y" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7932111957678783359" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="w2rx.~Logical%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                    </node>
                  </node>
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7932111957678782974" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957675691648" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7932111957675691649" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="7932111957678305462" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="tree3" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7932111957678305463" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7932111957678305464" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="7932111957678306792" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="7932111957678306794" nodeInfo="ng">
              <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7932111957678306796" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7932111957678307058" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="7932111957678307350" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7932111957680793501" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="value" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="7932111957680796034" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="QUX" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="6214965505175697521" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="ch" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="6214965505175697698" nodeInfo="ng">
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505175697699" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="6214965505175697760" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="6214965505175697944" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="Quuux" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957678305473" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7932111957678305474" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="6214965505176464274" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="t_Bar_of_string" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6214965505176464275" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6214965505176464276" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="6214965505176464277" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="6214965505176464278" nodeInfo="ng">
              <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505176464279" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="6214965505176464280" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="6214965505176464281" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="6214965505176464284" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="param" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="6214965505176464285" nodeInfo="ng">
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505176464286" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="6214965505176464287" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="6214965505176464288" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6214965505176464289" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6214965505176464290" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="6214965505176592906" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="t_Bar_of_integer" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6214965505176592907" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6214965505176592908" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="6214965505176592909" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="6214965505176592910" nodeInfo="ng">
              <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505176592911" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="6214965505176592912" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="6214965505176592913" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="6214965505176592914" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="param" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="6214965505176592915" nodeInfo="ng">
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505176592916" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="6214965505176592917" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="6214965505176592918" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6214965505176592919" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6214965505176592920" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="6214965505176479767" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="t_Bar_of_T" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="6214965505176480608" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="T" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6214965505176481638" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="oy3s.5667087533488031231" resolveInfo="TreeLogical" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6214965505176479768" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6214965505176479769" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="6214965505176479770" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="6214965505176479771" nodeInfo="ng">
              <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505176479772" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="6214965505176479773" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="6214965505176479774" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="6214965505176479775" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="param" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.NodeVariableExpression" typeId="5j4j.7932111957678624766" id="6214965505176480970" nodeInfo="ng">
                  <node role="expression" roleId="5j4j.7932111957678625620" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6214965505176481068" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6214965505176481051" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6214965505176480608" resolveInfo="T" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6214965505176482018" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="w2rx.~Logical%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                    </node>
                  </node>
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505176480980" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6214965505176479780" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6214965505176479781" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="6214965505176452734" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="t_string" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6214965505176452735" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6214965505176452736" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="6214965505176452737" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="6214965505176452738" nodeInfo="ng">
              <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="6214965505176452739" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="6214965505176452740" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="6214965505176452741" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6214965505176452749" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6214965505176452750" nodeInfo="nn" />
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7932111957675691650" nodeInfo="nn" />
  </root>
</model>

