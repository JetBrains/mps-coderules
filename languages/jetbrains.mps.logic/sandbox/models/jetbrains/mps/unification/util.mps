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
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="7932111957678223222" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="6214965505176464274" nodeInfo="igu">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="t_Bar_of_string" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6214965505176464275" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6214965505176464276" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="6214965505176464277" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="6214965505176464278" nodeInfo="ng">
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
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="3562712610780287748" nodeInfo="ng">
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="3562712610780287788" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="parameter" />
                <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="3562712610780287798" nodeInfo="ng">
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="3562712610780287803" nodeInfo="ng" />
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="3562712610780287799" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="concept" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3562712610780287800" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                    </node>
                  </node>
                  <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="3562712610780287801" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="classifier" />
                    <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3562712610780287802" nodeInfo="ng">
                      <property name="value" nameId="5j4j.7571593955706137638" value="Integer" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="3562712610780287753" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="3562712610780287749" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3562712610780287750" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="3562712610780287751" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="classifier" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3562712610780287752" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
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
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="3562712610780287976" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="3562712610780287977" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="6214965505176479773" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="classifier" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="6214965505176479774" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="3562712610780288104" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="parameter" />
                <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.NodeVariableExpression" typeId="5j4j.7932111957678624766" id="3562712610780288298" nodeInfo="ng">
                  <node role="expression" roleId="5j4j.7932111957678625620" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3562712610780288299" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3562712610780288300" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6214965505176480608" resolveInfo="T" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3562712610780288301" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="w2rx.~Logical%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                    </node>
                  </node>
                  <node role="symbol" roleId="5j4j.7571593955706284553" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="3562712610780288302" nodeInfo="ng" />
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
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6214965505176452749" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.2915549616871035972" resolveInfo="Tree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6214965505176452750" nodeInfo="nn" />
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7932111957675691650" nodeInfo="nn" />
  </root>
</model>

