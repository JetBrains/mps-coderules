<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:ecf59ef9-2b17-40ee-91aa-e7999d4518f0(jetbrains.mps.unification.sandbox)">
  <persistence version="8" />
  <language namespace="894463aa-8754-49c0-bf4b-6a32af66b376(jetbrains.mps.jchr)" />
  <language namespace="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="oy3s" modelUID="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.jchr.unification)" version="-1" />
  <import index="ie8e" modelUID="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="w2rx" modelUID="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" version="-1" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="vgt0" modelUID="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="5j4j" modelUID="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" version="-1" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <root type="vgt0.Handler" typeId="vgt0.456733934405394951" id="7932111957672575234" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="typeOf" />
    <node role="rule" roleId="vgt0.456733934405773365" type="vgt0.PropagationRule" typeId="vgt0.456733934405449659" id="1503029981603348" nodeInfo="ng">
      <node role="head" roleId="vgt0.456733934405724614" type="vgt0.Head" typeId="vgt0.456733934405724502" id="1503029981603320" nodeInfo="ng">
        <node role="constraint" roleId="vgt0.456733934405724503" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="1503029981603321" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="7932111957672579607" resolveInfo="typeOf" />
          <node role="argument" roleId="vgt0.456733934405496283" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1503029981846993" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="1" />
          </node>
          <node role="argument" roleId="vgt0.456733934405496283" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="1503029981603323" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="X" />
          </node>
        </node>
        <node role="constraint" roleId="vgt0.456733934405724503" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="1503029981603324" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="7932111957672579607" resolveInfo="typeOf" />
          <node role="argument" roleId="vgt0.456733934405496283" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1503029981847092" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="2" />
          </node>
          <node role="argument" roleId="vgt0.456733934405496283" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="1503029981603326" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="Y" />
          </node>
        </node>
      </node>
      <node role="guard" roleId="vgt0.456733934405732988" type="vgt0.Guard" typeId="vgt0.456733934405724682" id="1503029981603327" nodeInfo="ng" />
      <node role="body" roleId="vgt0.456733934405732990" type="vgt0.Body" typeId="vgt0.456733934405724637" id="1503029981603328" nodeInfo="ng">
        <node role="constraint" roleId="vgt0.456733934405724638" type="vgt0.InfixBuitinConstraint" typeId="vgt0.3562712610792856834" id="1503029981603329" nodeInfo="ng">
          <property name="index" nameId="vgt0.3562712610792896168" value="0" />
          <link role="solver" roleId="vgt0.3562712610792858432" targetNodeId="7932111957672681908" />
          <node role="left" roleId="vgt0.3562712610792857835" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="1503029981603330" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="X" />
          </node>
          <node role="right" roleId="vgt0.3562712610792858111" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1503029987400584" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029987400905" nodeInfo="ng">
              <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
              <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029987400910" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029987400906" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029987400907" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989791088" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029987400908" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="classifier" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029987400909" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Foo" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989791087" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1503029987401857" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="parameter" />
                <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.ExpressionVariable" typeId="5j4j.7932111957678624766" id="1503029987403230" nodeInfo="ng">
                  <node role="expression" roleId="5j4j.7932111957678625620" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="1503029987403321" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="T" />
                  </node>
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029987403232" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="constraint" roleId="vgt0.456733934405724638" type="vgt0.InfixBuitinConstraint" typeId="vgt0.3562712610792856834" id="1503029981603332" nodeInfo="ng">
          <property name="index" nameId="vgt0.3562712610792896168" value="0" />
          <link role="solver" roleId="vgt0.3562712610792858432" targetNodeId="7932111957672681908" />
          <node role="left" roleId="vgt0.3562712610792857835" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="1503029981603333" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="Y" />
          </node>
          <node role="right" roleId="vgt0.3562712610792858111" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="1503029981603334" nodeInfo="ng">
            <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="1503029981603335" nodeInfo="ng">
              <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
              <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029981603336" nodeInfo="ng" />
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029981603337" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="concept" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029981603338" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989791089" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="1503029981603339" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="classifier" />
                <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="1503029981603340" nodeInfo="ng">
                  <property name="value" nameId="5j4j.7571593955706137638" value="Bar" />
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029989791086" nodeInfo="ng" />
                </node>
              </node>
              <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="1503029981603341" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="parameter" />
                <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.ExpressionVariable" typeId="5j4j.7932111957678624766" id="1503029981603342" nodeInfo="ng">
                  <node role="expression" roleId="5j4j.7932111957678625620" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="1503029981603343" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="T" />
                  </node>
                  <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="1503029981603344" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="constraint" roleId="vgt0.456733934405724638" type="vgt0.Constraint" typeId="vgt0.456733934405414274" id="1503029981603345" nodeInfo="ng">
          <link role="declaration" roleId="vgt0.456733934405496267" targetNodeId="7932111957672579607" resolveInfo="typeOf" />
          <node role="argument" roleId="vgt0.456733934405496283" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1503029981847311" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="3" />
          </node>
          <node role="argument" roleId="vgt0.456733934405496283" type="vgt0.LogicVariable" typeId="vgt0.456733934405450312" id="1503029981603347" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="T" />
          </node>
        </node>
      </node>
    </node>
    <node role="declaration" roleId="vgt0.456733934405771625" type="vgt0.ConstraintDeclaration" typeId="vgt0.456733934405496212" id="7932111957672579607" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="typeOf" />
      <node role="argumentType" roleId="vgt0.456733934405496239" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029981597239" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="w2rx.~Logical" resolveInfo="Logical" />
        <node role="parameter" roleId="tpee.1109201940907" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1503029981846741" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
        </node>
      </node>
      <node role="argumentType" roleId="vgt0.456733934405496239" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7932111957678298933" nodeInfo="in">
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

