<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:a96ed64c-59f1-465b-8d59-dbd0e8856971(jetbrains.mps.unification.ast)">
  <persistence version="8" />
  <language namespace="f2801650-65d5-424e-bb1b-463a8781b786(jetbrains.mps.baseLanguage.javadoc)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="ie8e" modelUID="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" version="-1" />
  <import index="jfki" modelUID="f:java_stub#7526e0cf-1ce7-46f8-a555-9eca1e06c23b#jetbrains.mps.unification(jetbrains.mps.unification@java_stub)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="m373" modelUID="r:4095af4f-a097-4799-aaa9-03df087ddfa6(jetbrains.mps.baseLanguage.javadoc.structure)" version="5" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="2154023965590888595" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="AstBuilder" />
    <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="2154023965590896610" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="2154023965590690192" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="node" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2154023965590690195" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="children" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.VariableArityType" typeId="tpee.1219920932475" id="2154023965590690196" nodeInfo="in">
          <node role="componentType" roleId="tpee.1219921048460" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965590690197" nodeInfo="in">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1557167973736049220" resolveInfo="Branch" />
            <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="7571593955704220992" nodeInfo="in" />
          </node>
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2154023965590690199" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965591019695" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965591019737" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.6626732309150501079" resolveInfo="child" />
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965591019880" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value="node" />
            </node>
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965591020382" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2154023965590690195" resolveInfo="children" />
            </node>
            <node role="typeArgument" roleId="tpee.4972241301747169160" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="2154023965591021095" nodeInfo="in">
              <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="2154023965590690208" resolveInfo="T" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2154023965590690205" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965590690206" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.6626732309150388081" resolveInfo="ChildrenBranch" />
        <node role="parameter" roleId="tpee.1109201940907" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="2154023965590690207" nodeInfo="in">
          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="2154023965590690208" resolveInfo="T" />
        </node>
      </node>
      <node role="typeVariableDeclaration" roleId="tpee.1109279881614" type="tpee.TypeVariableDeclaration" typeId="tpee.1109279763828" id="2154023965590690208" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="T" />
        <node role="bound" roleId="tpee.1214996921760" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4410561908419554750" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1357303818382341941" resolveInfo="ITreePart" />
          <node role="parameter" roleId="tpee.1109201940907" type="tpee.WildCardType" typeId="tpee.1171903607971" id="4410561908419555493" nodeInfo="in" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="2154023965591012238" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="2154023965591014050" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="nodeVariable" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="554885619701881708" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="varNames" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.VariableArityType" typeId="tpee.1219920932475" id="554885619701921459" nodeInfo="in">
          <node role="componentType" roleId="tpee.1219921048460" type="tpee.StringType" typeId="tpee.1225271177708" id="7932111957670473536" nodeInfo="in" />
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2154023965591013749" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965591013905" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.554885619701747078" resolveInfo="VariableBranch" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2154023965591021778" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2154023965591021776" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2154023965591021799" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.554885619701881360" resolveInfo="variable" />
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2154023965591021871" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value="node" />
            </node>
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2154023965591022026" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="554885619701881708" resolveInfo="varNames" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="2154023965590896612" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="7571593955702992294" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="nodeList" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7571593955704641090" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="symbol" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7571593955704643299" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7571593955702992295" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="children" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.VariableArityType" typeId="tpee.1219920932475" id="7571593955702992296" nodeInfo="in">
          <node role="componentType" roleId="tpee.1219921048460" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818383297761" nodeInfo="in">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1357303818382341941" resolveInfo="ITreePart" />
          </node>
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7571593955702992299" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7571593955704265320" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7571593955704265343" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ie8e.4410561908421477910" resolveInfo="create" />
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ie8e.4410561908421477892" resolveInfo="ListBranch" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7571593955704652018" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7571593955704641090" resolveInfo="symbol" />
            </node>
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7571593955704267236" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7571593955702992295" resolveInfo="children" />
            </node>
            <node role="typeArgument" roleId="tpee.4972241301747169160" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="7571593955705408249" nodeInfo="in">
              <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="7571593955702992308" resolveInfo="T" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7571593955702992305" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7571593955702992306" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.4410561908421477892" resolveInfo="ListBranch" />
        <node role="parameter" roleId="tpee.1109201940907" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="7571593955705407708" nodeInfo="in">
          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="7571593955702992308" resolveInfo="T" />
        </node>
      </node>
      <node role="typeVariableDeclaration" roleId="tpee.1109279881614" type="tpee.TypeVariableDeclaration" typeId="tpee.1109279763828" id="7571593955702992308" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="T" />
        <node role="bound" roleId="tpee.1214996921760" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1357303818383286125" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.1357303818382341941" resolveInfo="ITreePart" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="7571593955704832776" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="7571593955702980540" nodeInfo="ngu" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2154023965590888596" nodeInfo="nn" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2154023965590895390" nodeInfo="in">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ie8e.6626732309150452506" resolveInfo="Builder" />
    </node>
    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="6270176708454176792" nodeInfo="nn">
      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Deprecated" resolveInfo="Deprecated" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="m373.ClassifierDocComment" typeId="m373.2068944020170241612" id="6270176708454177945" nodeInfo="ng">
      <node role="body" roleId="m373.8465538089690331502" type="m373.CommentLine" typeId="m373.8465538089690331500" id="6270176708454177946" nodeInfo="ng">
        <node role="part" roleId="m373.8970989240999019149" type="m373.TextCommentLinePart" typeId="m373.8970989240999019143" id="6270176708454177947" nodeInfo="ng">
          <property name="text" nameId="m373.8970989240999019144" value="TODO: Let's not use this." />
        </node>
      </node>
    </node>
  </root>
</model>

