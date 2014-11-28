<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:fce0252c-0765-4ee2-a00c-80dfd47d2d03(jetbrains.mps.lang.typesystem2.sandbox.template)" version="0">
  <persistence version="8" />
  <language namespace="c4803b19-6d89-4a3b-bf82-390769514add(jetbrains.mps.lang.typesystem2)" />
  <language namespace="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="qiww" modelUID="r:7e0616dc-e55e-4c35-beca-da14b0c8f8bd(jetbrains.mps.lang.typesystem2.runtime.template)" version="-1" />
  <import index="nc4n" modelUID="r:2a1eb048-898c-47a3-863b-36b04c4b9f7c(jetbrains.mps.lang.typesystem2.runtime.rule)" version="-1" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="qoa9" modelUID="r:dba3d2d4-97f1-42c8-b8ff-d7210906a24c(jetbrains.mps.lang.typesystem2.sandbox)" version="0" />
  <import index="tpek" modelUID="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" version="-1" />
  <import index="tpcu" modelUID="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="wq2x" modelUID="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" version="-1" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="5j4j" modelUID="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" version="-1" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="4992889260812803191" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SampleTemplate" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4992889260812803192" nodeInfo="nn" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4992889260812861421" nodeInfo="in">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="qiww.6135434422633732177" resolveInfo="AbstractRuleTemplate" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="4992889260812866878" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4992889260812863980" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="applicableConcept" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <node role="returnType" roleId="tpee.1068580123133" type="tp25.SConceptType" typeId="tp25.1172420572800" id="4992889260812863981" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4992889260812863982" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4992889260812863984" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4992889260812868281" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="4992889260812868280" nodeInfo="nn">
            <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1068498886292" resolveInfo="ParameterDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="4992889260812866645" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4992889260812863985" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="apply" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4992889260812863986" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="pd" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="4992889260812863987" nodeInfo="in">
          <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1068498886292" resolveInfo="ParameterDeclaration" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4992889260812863988" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="builder" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4992889260812872874" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="nc4n.8335224865064895129" resolveInfo="RuleBuilder" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4992889260812863990" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4992889260812863991" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4992889260812863993" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7340198212830880415" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7340198212830839542" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7340198212830840634" nodeInfo="nn">
            <property name="text" nameId="tpee.6329021646629104958" value="head kept" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3717122880448760403" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3717122880448760404" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tvrs1" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="3717122880448760399" nodeInfo="in">
              <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3717122880448760405" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3717122880448760406" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831762026" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4992889260812863986" resolveInfo="pd" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7340198212831776335" nodeInfo="nn">
                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.5680397130376446158" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetDescendantsOperation" typeId="tp25.1171305280644" id="3717122880448760409" nodeInfo="nn">
                <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Concept" typeId="tp25.1144101972840" id="3717122880448760410" nodeInfo="ng">
                  <node role="conceptArgument" roleId="tp25.1207343664468" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="3717122880448760411" nodeInfo="nn">
                    <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                  </node>
                </node>
                <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Inclusion" typeId="tp25.1144100932627" id="7840802663737793877" nodeInfo="ng" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7340198212830597708" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212830597709" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="$_T" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="7340198212830598369" nodeInfo="in">
              <node role="componentType" roleId="tpee.1070534760952" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7340198212830597710" nodeInfo="in">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="nc4n.6135434422633921345" resolveInfo="LogicVariable" />
              </node>
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7340198212830598750" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ArrayCreator" typeId="tpee.1184950988562" id="7340198212830598748" nodeInfo="nn">
                <node role="dimensionExpression" roleId="tpee.1184952969026" type="tpee.DimensionExpression" typeId="tpee.1184952934362" id="7340198212830598869" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1184953288404" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212830604065" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830599050" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3717122880448760404" resolveInfo="tvrs1" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7340198212830628301" nodeInfo="nn" />
                  </node>
                </node>
                <node role="componentType" roleId="tpee.1184951007469" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7340198212830598749" nodeInfo="in">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="nc4n.6135434422633921345" resolveInfo="LogicVariable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ForStatement" typeId="tpee.1144231330558" id="7340198212830628822" nodeInfo="nn">
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212830628825" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212830681942" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7340198212830682217" nodeInfo="nn">
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7340198212830682379" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7340198212830683165" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.6135434422634148232" resolveInfo="LogicVariable" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7340198212830684390" nodeInfo="nn">
                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830684768" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830628828" resolveInfo="$_i" />
                      </node>
                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7340198212830683337" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="T_" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="lValue" roleId="tpee.1068498886295" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="7340198212830681971" nodeInfo="nn">
                  <node role="index" roleId="tpee.1173175577737" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830682043" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830628828" resolveInfo="$_i" />
                  </node>
                  <node role="array" roleId="tpee.1173175590490" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830681941" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830597709" resolveInfo="$_T" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212830628828" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="$_i" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7340198212830629197" nodeInfo="in" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7340198212830629353" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="0" />
            </node>
          </node>
          <node role="condition" roleId="tpee.1144231399730" type="tpee.LessThanExpression" typeId="tpee.1081506773034" id="7340198212830634845" nodeInfo="nn">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212830653933" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830635913" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3717122880448760404" resolveInfo="tvrs1" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7340198212830678109" nodeInfo="nn" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830631825" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830628828" resolveInfo="$_i" />
            </node>
          </node>
          <node role="iteration" roleId="tpee.1144231408325" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7340198212830681399" nodeInfo="nn">
            <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830681401" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830628828" resolveInfo="$_i" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7340198212830588859" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7340198212830697764" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212830697767" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="i1" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7340198212830697762" nodeInfo="in" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7340198212830698375" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="1" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7340198212830704504" nodeInfo="nn">
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212830704505" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212830824667" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212830825236" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830824665" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4992889260812863988" resolveInfo="builder" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7340198212830826320" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.8335224865064895223" resolveInfo="appendHeadKept" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212831959213" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qiww.7340198212831140255" resolveInfo="typeAnchor" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qiww.7340198212831139254" resolveInfo="CustomConstraints" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="7340198212830826697" nodeInfo="nn">
                      <node role="index" roleId="tpee.1173175577737" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7340198212830826698" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830826699" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830697767" resolveInfo="i1" />
                        </node>
                      </node>
                      <node role="array" roleId="tpee.1173175590490" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830826700" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830597709" resolveInfo="$_T" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212830826701" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qiww.7340198212830761637" resolveInfo="asAnchor" />
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qiww.7340198212830756300" resolveInfo="AnchorUtil" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7340198212830826702" nodeInfo="nn">
                        <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212830826703" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qiww.7340198212830761637" resolveInfo="asAnchor" />
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qiww.7340198212830756300" resolveInfo="AnchorUtil" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212830826704" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830826705" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830704508" resolveInfo="tvr" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7340198212830826706" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1109283546497" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212830826695" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="nc4n.8335224865064895431" resolveInfo="UserConstraint" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.6135434422634372093" resolveInfo="nary" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7340198212830826696" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212830704508" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="tvr" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7340198212830711516" nodeInfo="in">
              <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
            </node>
          </node>
          <node role="iterable" roleId="tpee.1144226360166" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830704513" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3717122880448760404" resolveInfo="tvrs1" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7340198212830879090" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7340198212830841537" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7340198212830842576" nodeInfo="nn">
            <property name="text" nameId="tpee.6329021646629104958" value="head replaced" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4992889260812879141" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4992889260812879142" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="$_P" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4992889260812879139" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="nc4n.6135434422633921345" resolveInfo="LogicVariable" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4992889260812879143" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.6135434422633926887" resolveInfo="withName" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="nc4n.6135434422633921345" resolveInfo="LogicVariable" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4992889260812879144" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="P" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212830845573" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212830846658" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830845571" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4992889260812863988" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7340198212830848489" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.8335224865064895194" resolveInfo="appendHeadReplaced" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212830848705" nodeInfo="nn">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="nc4n.8335224865064895431" resolveInfo="UserConstraint" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.8335224865064895447" resolveInfo="binary" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7340198212830848706" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="typedecl" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830848707" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4992889260812879142" resolveInfo="$_P" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212830850780" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qiww.7340198212830761637" resolveInfo="asAnchor" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qiww.7340198212830756300" resolveInfo="AnchorUtil" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830851186" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4992889260812863986" resolveInfo="pd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7340198212830588432" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7340198212830874161" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7340198212830875429" nodeInfo="nn">
            <property name="text" nameId="tpee.6329021646629104958" value="guard" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7340198212831389714" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7340198212830877711" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7340198212830881913" nodeInfo="nn">
            <property name="text" nameId="tpee.6329021646629104958" value="body" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7340198212830883466" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212830883469" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="i3" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7340198212830883464" nodeInfo="in" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7340198212830884871" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="1" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7340198212830891716" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212830891719" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="typeWalker3" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="7340198212830891712" nodeInfo="in">
              <node role="parameterType" roleId="tp2c.1199542501692" type="wq2x.LogicVariableType" typeId="wq2x.7840802663736166753" id="7340198212830893200" nodeInfo="ig" />
              <node role="parameterType" roleId="tp2c.1199542501692" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7340198212830893364" nodeInfo="in" />
              <node role="resultType" roleId="tp2c.1199542457201" type="tpee.VoidType" typeId="tpee.1068581517677" id="7340198212830893450" nodeInfo="in" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212830901494" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7340198212830903211" nodeInfo="nn">
            <node role="rValue" roleId="tpee.1068498886297" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7340198212830904447" nodeInfo="nn">
              <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7340198212830905778" nodeInfo="ir">
                <property name="name" nameId="tpck.1169194664001" value="var3" />
                <node role="type" roleId="tpee.5680397130376446158" type="wq2x.LogicVariableType" typeId="wq2x.7840802663736166753" id="7340198212830906143" nodeInfo="ig" />
              </node>
              <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7340198212830907010" nodeInfo="ir">
                <property name="name" nameId="tpck.1169194664001" value="type3" />
                <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7340198212830907507" nodeInfo="in" />
              </node>
              <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212830904449" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7340198212830908660" nodeInfo="nn">
                  <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212830908661" nodeInfo="sn">
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212830911147" nodeInfo="nn">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212830911426" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830911146" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4992889260812863988" resolveInfo="builder" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7340198212830915889" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.8335224865064895136" resolveInfo="appendBody" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212830917606" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.8335224865064894929" resolveInfo="binary" />
                            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="nc4n.8335224865064894913" resolveInfo="BuiltinConstraint" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7340198212830918585" nodeInfo="nn">
                              <property name="value" nameId="tpee.1070475926801" value="=" />
                            </node>
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830926204" nodeInfo="nn">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830905778" resolveInfo="var3" />
                            </node>
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="7340198212830922486" nodeInfo="nn">
                              <node role="index" roleId="tpee.1173175577737" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7340198212830925112" nodeInfo="nn">
                                <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830925114" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830883469" resolveInfo="i3" />
                                </node>
                              </node>
                              <node role="array" roleId="tpee.1173175590490" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830921701" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830597709" resolveInfo="$_T" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212830909374" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830909093" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830907010" resolveInfo="type3" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="7340198212830909950" nodeInfo="nn">
                      <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7340198212830910425" nodeInfo="nn">
                        <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                      </node>
                    </node>
                  </node>
                  <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="7340198212830940559" nodeInfo="nn">
                    <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212830940560" nodeInfo="sn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7340198212830941596" nodeInfo="nn">
                        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212830941599" nodeInfo="nr">
                          <property name="name" nameId="tpck.1169194664001" value="j3" />
                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7340198212830941595" nodeInfo="in" />
                          <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7340198212830944320" nodeInfo="nn">
                            <property name="value" nameId="tpee.1068580320021" value="1" />
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7340198212830947254" nodeInfo="nn">
                        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212830947255" nodeInfo="nr">
                          <property name="name" nameId="tpck.1169194664001" value="$_SP" />
                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="7340198212830951692" nodeInfo="in">
                            <node role="componentType" roleId="tpee.1070534760952" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7340198212830947256" nodeInfo="in">
                              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="nc4n.6135434422633921345" resolveInfo="LogicVariable" />
                            </node>
                          </node>
                          <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7340198212831021496" nodeInfo="nn">
                            <node role="creator" roleId="tpee.1145553007750" type="tpee.ArrayCreator" typeId="tpee.1184950988562" id="7340198212831021386" nodeInfo="nn">
                              <node role="dimensionExpression" roleId="tpee.1184952969026" type="tpee.DimensionExpression" typeId="tpee.1184952934362" id="7340198212831022491" nodeInfo="nn">
                                <node role="expression" roleId="tpee.1184953288404" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831033681" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831024539" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831023727" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830907010" resolveInfo="type3" />
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7340198212831025701" nodeInfo="nn" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7340198212831045175" nodeInfo="nn" />
                                </node>
                              </node>
                              <node role="componentType" roleId="tpee.1184951007469" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7340198212831021387" nodeInfo="in">
                                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="nc4n.6135434422633921345" resolveInfo="LogicVariable" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ForStatement" typeId="tpee.1144231330558" id="7340198212831047996" nodeInfo="nn">
                        <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212831047997" nodeInfo="sn">
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212831047998" nodeInfo="nn">
                            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7340198212831047999" nodeInfo="nn">
                              <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7340198212831048000" nodeInfo="nn">
                                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7340198212831048001" nodeInfo="nn">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.6135434422634148232" resolveInfo="LogicVariable" />
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7340198212831048002" nodeInfo="nn">
                                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831048003" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212831048008" resolveInfo="$_i" />
                                    </node>
                                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7340198212831048004" nodeInfo="nn">
                                      <property name="value" nameId="tpee.1070475926801" value="SP_" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="lValue" roleId="tpee.1068498886295" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="7340198212831048005" nodeInfo="nn">
                                <node role="index" roleId="tpee.1173175577737" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831048006" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212831048008" resolveInfo="$_i" />
                                </node>
                                <node role="array" roleId="tpee.1173175590490" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831049776" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830947255" resolveInfo="$_SP" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212831048008" nodeInfo="nr">
                          <property name="name" nameId="tpck.1169194664001" value="$_i" />
                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7340198212831048009" nodeInfo="in" />
                          <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7340198212831048010" nodeInfo="nn">
                            <property name="value" nameId="tpee.1068580320021" value="0" />
                          </node>
                        </node>
                        <node role="condition" roleId="tpee.1144231399730" type="tpee.LessThanExpression" typeId="tpee.1081506773034" id="7340198212831048011" nodeInfo="nn">
                          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831048015" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212831048008" resolveInfo="$_i" />
                          </node>
                          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831051526" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831051527" nodeInfo="nn">
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831051528" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830907010" resolveInfo="type3" />
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7340198212831051529" nodeInfo="nn" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7340198212831051530" nodeInfo="nn" />
                          </node>
                        </node>
                        <node role="iteration" roleId="tpee.1144231408325" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7340198212831048016" nodeInfo="nn">
                          <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831048017" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212831048008" resolveInfo="$_i" />
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7340198212831064389" nodeInfo="nn">
                        <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212831064390" nodeInfo="sn">
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212831069343" nodeInfo="nn">
                            <node role="expression" roleId="tpee.1068580123156" type="tp2c.CompactInvokeFunctionExpression" typeId="tp2c.1235746970280" id="7340198212831071193" nodeInfo="nn">
                              <node role="function" roleId="tp2c.1235746996653" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831071194" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830891719" resolveInfo="typeWalker3" />
                              </node>
                              <node role="parameter" roleId="tp2c.1235747002942" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="7340198212831074520" nodeInfo="nn">
                                <node role="index" roleId="tpee.1173175577737" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7340198212831078516" nodeInfo="nn">
                                  <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831078518" nodeInfo="nn">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830941599" resolveInfo="j3" />
                                  </node>
                                </node>
                                <node role="array" roleId="tpee.1173175590490" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831072923" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830947255" resolveInfo="$_SP" />
                                </node>
                              </node>
                              <node role="parameter" roleId="tp2c.1235747002942" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831081878" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212831064393" resolveInfo="ch" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7340198212831064393" nodeInfo="nr">
                          <property name="name" nameId="tpck.1169194664001" value="ch" />
                          <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7340198212831064397" nodeInfo="in" />
                        </node>
                        <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831064398" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831064399" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830907010" resolveInfo="type3" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7340198212831064400" nodeInfo="nn" />
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7340198212831046367" nodeInfo="nn" />
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212831088162" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831089698" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831088160" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4992889260812863988" resolveInfo="builder" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7340198212831092545" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.8335224865064895136" resolveInfo="appendBody" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212831197409" nodeInfo="nn">
                              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qiww.7340198212831139254" resolveInfo="CustomConstraints" />
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qiww.5173293270662918929" resolveInfo="typeOf" />
                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212831107359" nodeInfo="nn">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qiww.7340198212830761637" resolveInfo="asAnchor" />
                                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qiww.7340198212830756300" resolveInfo="AnchorUtil" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831111141" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831109427" nodeInfo="nn">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830907010" resolveInfo="type3" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetConceptOperation" typeId="tp25.1172323065820" id="7340198212831113916" nodeInfo="nn" />
                                </node>
                              </node>
                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212831205606" nodeInfo="nn">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qiww.7340198212830761637" resolveInfo="asAnchor" />
                                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qiww.7340198212830756300" resolveInfo="AnchorUtil" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831270172" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831215639" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831210385" nodeInfo="nn">
                                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831208804" nodeInfo="nn">
                                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830907010" resolveInfo="type3" />
                                      </node>
                                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetReferencesOperation" typeId="tp25.8758390115028452779" id="7340198212831212854" nodeInfo="nn" />
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetFirstOperation" typeId="tp2q.1165525191778" id="7340198212831219332" nodeInfo="nn" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Reference_GetTargetOperation" typeId="tp25.4124388153790980106" id="7340198212831271724" nodeInfo="nn" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7340198212831273169" nodeInfo="nn" />
              </node>
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212830901492" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830891719" resolveInfo="typeWalker3" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7340198212830588459" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212831276231" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tp2c.CompactInvokeFunctionExpression" typeId="tp2c.1235746970280" id="7340198212831278027" nodeInfo="nn">
            <node role="function" roleId="tp2c.1235746996653" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831278028" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7340198212830891719" resolveInfo="typeWalker3" />
            </node>
            <node role="parameter" roleId="tp2c.1235747002942" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831279214" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4992889260812879142" resolveInfo="$_P" />
            </node>
            <node role="parameter" roleId="tp2c.1235747002942" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7340198212831282496" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7340198212831777022" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4992889260812863986" resolveInfo="pd" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7340198212831287862" nodeInfo="nn">
                <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.5680397130376446158" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="wq2x.Handler" typeId="wq2x.8335224865066015764" id="7191523264663183385" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Applications" />
    <node role="rule" roleId="wq2x.7368070394767441299" type="wq2x.Rule" typeId="wq2x.8335224865066016388" id="7191523264663183386" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="methodCall" />
      <property name="exactMatch" nameId="wq2x.1198745345565089530" value="false" />
      <link role="applicableConcept" roleId="wq2x.8335224865066016395" targetNodeId="tpee.1202948039474" resolveInfo="InstanceMethodCallOperation" />
      <node role="parameter" roleId="wq2x.7368070394769105389" type="wq2x.RuleParameterDeclaration" typeId="wq2x.7368070394769089081" id="7191523264663183387" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="imcop" />
      </node>
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663183388" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="true" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183389" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7191523264663183390" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183391" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183392" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="OP" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183393" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.TypeofConstraint" typeId="wq2x.3063948360252660075" id="7191523264663183394" nodeInfo="ng">
              <node role="anchor" roleId="wq2x.3063948360252666228" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183395" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183396" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183397" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183387" resolveInfo="imcop" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="7191523264663183398" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpek.1213877410070" resolveInfo="getOperand" />
                  </node>
                </node>
              </node>
              <node role="assignedType" roleId="wq2x.3063948360252667312" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183399" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183392" resolveInfo="OP" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7191523264663183400" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183401" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183402" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="args" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="7191523264663183403" nodeInfo="in">
                <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183404" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183405" nodeInfo="ng">
                  <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183387" resolveInfo="imcop" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7191523264663183406" nodeInfo="nn">
                  <link role="link" roleId="tp25.1138056546658" targetNodeId="tpee.1068499141038" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183407" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183408" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="A" />
              <node role="cardinality" roleId="wq2x.3063948360256267563" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183409" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183410" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183411" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183402" resolveInfo="args" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7191523264663183412" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183413" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183414" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="i" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7191523264663183415" nodeInfo="in" />
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7191523264663183416" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7191523264663183417" nodeInfo="nn">
            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183418" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183419" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.TypeofConstraint" typeId="wq2x.3063948360252660075" id="7191523264663183420" nodeInfo="ng">
                  <node role="anchor" roleId="wq2x.3063948360252666228" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183421" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183422" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183427" resolveInfo="arg" />
                    </node>
                  </node>
                  <node role="assignedType" roleId="wq2x.3063948360252667312" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183423" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183408" resolveInfo="A" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183424" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7191523264663183425" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183426" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183414" resolveInfo="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183427" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="arg" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183428" nodeInfo="in" />
            </node>
            <node role="iterable" roleId="tpee.1144226360166" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183429" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183402" resolveInfo="args" />
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="wq2x.7368070394767442907" type="wq2x.Body" typeId="wq2x.7368070394766966388" id="7191523264663183430" nodeInfo="ng">
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183431" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7191523264663183432" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183433" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183434" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="tvds" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="7191523264663183435" nodeInfo="in">
                <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1109279763828" resolveInfo="TypeVariableDeclaration" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183436" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183437" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183438" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183387" resolveInfo="imcop" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183439" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1202948736718" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7191523264663183440" nodeInfo="nn">
                  <link role="link" roleId="tp25.1138056546658" targetNodeId="tpee.1109279881614" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.LocalDeclarationStatement" typeId="wq2x.3063948360254202562" id="7191523264663183441" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183442" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="T" />
              <node role="cardinality" roleId="wq2x.3063948360256267563" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183443" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183444" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183445" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183434" resolveInfo="tvds" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7191523264663183446" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183447" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183448" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="i" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7191523264663183449" nodeInfo="in" />
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7191523264663183450" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7191523264663183451" nodeInfo="nn">
            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183452" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183453" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183454" nodeInfo="ng">
                  <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183455" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183442" resolveInfo="T" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183456" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7191523264663183457" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183458" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183448" resolveInfo="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183459" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7191523264663183460" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1109279763828" resolveInfo="TypeVariableDeclaration" />
                    </node>
                  </node>
                  <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183461" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183462" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183463" resolveInfo="tvd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183463" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="tvd" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183464" nodeInfo="in" />
            </node>
            <node role="iterable" roleId="tpee.1144226360166" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183465" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183434" resolveInfo="tvds" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7191523264663183466" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183467" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183468" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="cls" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183469" nodeInfo="in">
                <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1107461130800" resolveInfo="Classifier" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="7191523264663183470" nodeInfo="nn">
                <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1107461130800" resolveInfo="Classifier" />
                <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183471" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183472" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183473" nodeInfo="ng">
                      <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183387" resolveInfo="imcop" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183474" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1202948736718" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetParentOperation" typeId="tp25.1139613262185" id="7191523264663183475" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.LocalDeclarationStatement" typeId="wq2x.3063948360254202562" id="7191523264663183476" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183477" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="C" />
            </node>
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183478" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="CP" />
              <node role="cardinality" roleId="wq2x.3063948360256267563" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183479" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183480" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183481" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183482" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183468" resolveInfo="cls" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7191523264663183483" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056546658" targetNodeId="tpee.1109279881614" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7191523264663183484" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183485" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183486" nodeInfo="ng">
              <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183487" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183477" resolveInfo="C" />
              </node>
              <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183488" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183489" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183468" resolveInfo="cls" />
                </node>
              </node>
              <node role="argument" roleId="wq2x.7368070394768755905" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183490" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183478" resolveInfo="CP" />
              </node>
              <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183491" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183492" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183493" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183468" resolveInfo="cls" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetConceptOperation" typeId="tp25.1172323065820" id="7191523264663183494" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183495" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183496" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184034" resolveInfo="converts" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183497" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183392" resolveInfo="OP" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183498" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183477" resolveInfo="C" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7191523264663183499" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183500" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183501" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="parms" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="7191523264663183502" nodeInfo="in">
                <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1068498886292" resolveInfo="ParameterDeclaration" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183503" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183504" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183505" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183387" resolveInfo="imcop" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183506" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1202948736718" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7191523264663183507" nodeInfo="nn">
                  <link role="link" roleId="tp25.1138056546658" targetNodeId="tpee.1068580123134" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.LocalDeclarationStatement" typeId="wq2x.3063948360254202562" id="7191523264663183508" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183509" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="P" />
              <node role="cardinality" roleId="wq2x.3063948360256267563" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183510" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183511" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183512" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183501" resolveInfo="parms" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7191523264663183513" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183514" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183515" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="j" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7191523264663183516" nodeInfo="in" />
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7191523264663183517" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7191523264663183518" nodeInfo="nn">
            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183519" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183520" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183521" nodeInfo="ng">
                  <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184035" resolveInfo="typedecl" />
                  <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183522" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183509" resolveInfo="P" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183523" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183524" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183515" resolveInfo="j" />
                      </node>
                    </node>
                  </node>
                  <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183525" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183526" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183538" resolveInfo="par" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183527" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183528" nodeInfo="ng">
                  <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184034" resolveInfo="converts" />
                  <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183529" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183408" resolveInfo="A" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183530" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183531" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183515" resolveInfo="j" />
                      </node>
                    </node>
                  </node>
                  <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183532" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183509" resolveInfo="P" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183533" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183534" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183515" resolveInfo="j" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7191523264663183535" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7191523264663183536" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183537" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183515" resolveInfo="j" />
                  </node>
                </node>
              </node>
            </node>
            <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183538" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="par" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183539" nodeInfo="in" />
            </node>
            <node role="iterable" roleId="tpee.1144226360166" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183540" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183501" resolveInfo="parms" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7191523264663183541" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.LocalDeclarationStatement" typeId="wq2x.3063948360254202562" id="7191523264663183542" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183543" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="R" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183544" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183545" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184035" resolveInfo="typedecl" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183546" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183543" resolveInfo="R" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183547" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183548" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183549" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183387" resolveInfo="imcop" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183550" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1202948736718" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7191523264663183551" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183552" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.TypeofConstraint" typeId="wq2x.3063948360252660075" id="7191523264663183553" nodeInfo="ng">
              <node role="anchor" roleId="wq2x.3063948360252666228" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183554" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183555" nodeInfo="ng">
                  <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183387" resolveInfo="imcop" />
                </node>
              </node>
              <node role="assignedType" roleId="wq2x.3063948360252667312" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183556" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183543" resolveInfo="R" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="wq2x.Handler" typeId="wq2x.8335224865066015764" id="7191523264663183557" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Constructors" />
    <node role="rule" roleId="wq2x.7368070394767441299" type="wq2x.Rule" typeId="wq2x.8335224865066016388" id="7191523264663183558" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="typeVariable" />
      <property name="exactMatch" nameId="wq2x.1198745345565089530" value="false" />
      <link role="applicableConcept" roleId="wq2x.8335224865066016395" targetNodeId="tpee.1109279763828" resolveInfo="TypeVariableDeclaration" />
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663183559" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="true" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183560" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183561" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183562" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="T" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183563" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183564" nodeInfo="ng">
              <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183565" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183562" resolveInfo="T" />
              </node>
              <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183566" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183567" nodeInfo="ng">
                  <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183634" resolveInfo="tpd" />
                </node>
              </node>
              <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183568" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7191523264663183569" nodeInfo="nn">
                  <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="wq2x.7368070394767442907" type="wq2x.Body" typeId="wq2x.7368070394766966388" id="7191523264663183570" nodeInfo="ng">
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183571" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.LocalDeclarationStatement" typeId="wq2x.3063948360254202562" id="7191523264663183572" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183573" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="B" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183574" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183575" nodeInfo="ng">
              <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183576" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183573" resolveInfo="B" />
              </node>
              <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183577" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183578" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183579" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183580" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183581" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183582" nodeInfo="ng">
                          <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183634" resolveInfo="tpd" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183583" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1214996921760" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetReferencesOperation" typeId="tp25.8758390115028452779" id="7191523264663183584" nodeInfo="nn" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetFirstOperation" typeId="tp2q.1165525191778" id="7191523264663183585" nodeInfo="nn" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Reference_GetTargetOperation" typeId="tp25.4124388153790980106" id="7191523264663183586" nodeInfo="nn" />
                </node>
              </node>
              <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183587" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183588" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183589" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183590" nodeInfo="ng">
                      <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183634" resolveInfo="tpd" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183591" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1214996921760" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetConceptOperation" typeId="tp25.1172323065820" id="7191523264663183592" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183593" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183594" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184031" resolveInfo="ubound" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183595" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183562" resolveInfo="T" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183596" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183573" resolveInfo="B" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7191523264663183597" nodeInfo="nn">
            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183598" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.LocalDeclarationStatement" typeId="wq2x.3063948360254202562" id="7191523264663183599" nodeInfo="ng">
                <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183600" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="BX" />
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183601" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183602" nodeInfo="ng">
                  <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183603" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183600" resolveInfo="BX" />
                  </node>
                  <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183604" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183605" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183606" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183607" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183608" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183609" nodeInfo="ng">
                              <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183634" resolveInfo="tpd" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183610" nodeInfo="nn">
                              <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1214996921760" />
                            </node>
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetReferencesOperation" typeId="tp25.8758390115028452779" id="7191523264663183611" nodeInfo="nn" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetFirstOperation" typeId="tp2q.1165525191778" id="7191523264663183612" nodeInfo="nn" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Reference_GetTargetOperation" typeId="tp25.4124388153790980106" id="7191523264663183613" nodeInfo="nn" />
                    </node>
                  </node>
                  <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183614" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183615" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183616" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183622" resolveInfo="aux" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetConceptOperation" typeId="tp25.1172323065820" id="7191523264663183617" nodeInfo="nn" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183618" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183619" nodeInfo="ng">
                  <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184031" resolveInfo="ubound" />
                  <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183620" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183562" resolveInfo="T" />
                  </node>
                  <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183621" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183600" resolveInfo="BX" />
                  </node>
                </node>
              </node>
            </node>
            <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183622" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="aux" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183623" nodeInfo="in" />
            </node>
            <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183624" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183625" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183634" resolveInfo="tpd" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7191523264663183626" nodeInfo="nn">
                <link role="link" roleId="tp25.1138056546658" targetNodeId="tpee.1215091156086" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183627" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183628" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184033" resolveInfo="varname" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183629" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183562" resolveInfo="T" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183630" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183631" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183632" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183634" resolveInfo="tpd" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="7191523264663183633" nodeInfo="nn">
                    <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="wq2x.7368070394769105389" type="wq2x.RuleParameterDeclaration" typeId="wq2x.7368070394769089081" id="7191523264663183634" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="tpd" />
      </node>
    </node>
    <node role="rule" roleId="wq2x.7368070394767441299" type="wq2x.Rule" typeId="wq2x.8335224865066016388" id="7191523264663183636" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="wildcardType" />
      <link role="applicableConcept" roleId="wq2x.8335224865066016395" targetNodeId="tpee.1171903607971" resolveInfo="WildCardType" />
      <node role="parameter" roleId="wq2x.7368070394769105389" type="wq2x.RuleParameterDeclaration" typeId="wq2x.7368070394769089081" id="7191523264663183638" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="wt" />
      </node>
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663183639" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="true" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183640" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183641" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183642" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="T" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183643" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183644" nodeInfo="ng">
              <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183645" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183642" resolveInfo="T" />
              </node>
              <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183646" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7191523264663183647" nodeInfo="nn">
                  <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1171903607971" resolveInfo="WildCardType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="wq2x.7368070394767442907" type="wq2x.Body" typeId="wq2x.7368070394766966388" id="7191523264663183648" nodeInfo="ng">
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183649" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183650" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183651" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184033" resolveInfo="varname" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183652" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183642" resolveInfo="T" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183653" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183654" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183655" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183638" resolveInfo="wt" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="7191523264663183656" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.1213877396640" resolveInfo="getPresentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="wq2x.7368070394767441299" type="wq2x.Rule" typeId="wq2x.8335224865066016388" id="7191523264663183657" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="upperBoundType" />
      <link role="applicableConcept" roleId="wq2x.8335224865066016395" targetNodeId="tpee.1171903916106" resolveInfo="UpperBoundType" />
      <node role="parameter" roleId="wq2x.7368070394769105389" type="wq2x.RuleParameterDeclaration" typeId="wq2x.7368070394769089081" id="7191523264663183658" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="ubt" />
      </node>
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663183659" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="true" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183660" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183661" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183662" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="T" />
            </node>
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183663" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="B" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183664" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183665" nodeInfo="ng">
              <node role="argument" roleId="wq2x.7368070394768755905" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183666" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183663" resolveInfo="B" />
              </node>
              <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183667" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183662" resolveInfo="T" />
              </node>
              <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183668" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7191523264663183669" nodeInfo="nn">
                  <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1171903916106" resolveInfo="UpperBoundType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="wq2x.7368070394767442907" type="wq2x.Body" typeId="wq2x.7368070394766966388" id="7191523264663183670" nodeInfo="ng">
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183671" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183672" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183673" nodeInfo="ng">
              <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183674" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183663" resolveInfo="B" />
              </node>
              <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183675" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183676" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183677" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183678" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183679" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183680" nodeInfo="ng">
                          <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183658" resolveInfo="ubt" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183681" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1171903916107" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetReferencesOperation" typeId="tp25.8758390115028452779" id="7191523264663183682" nodeInfo="nn" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetFirstOperation" typeId="tp2q.1165525191778" id="7191523264663183683" nodeInfo="nn" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Reference_GetTargetOperation" typeId="tp25.4124388153790980106" id="7191523264663183684" nodeInfo="nn" />
                </node>
              </node>
              <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183685" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183686" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183687" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183688" nodeInfo="ng">
                      <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183658" resolveInfo="ubt" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183689" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1171903916107" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetConceptOperation" typeId="tp25.1172323065820" id="7191523264663183690" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183691" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183692" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184031" resolveInfo="ubound" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183693" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183662" resolveInfo="T" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183694" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183663" resolveInfo="B" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183695" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183696" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184033" resolveInfo="varname" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183697" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183662" resolveInfo="T" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183698" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183699" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183700" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183658" resolveInfo="ubt" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="7191523264663183701" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.1213877396640" resolveInfo="getPresentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="wq2x.7368070394767441299" type="wq2x.Rule" typeId="wq2x.8335224865066016388" id="7191523264663183702" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="lowerBoundType" />
      <link role="applicableConcept" roleId="wq2x.8335224865066016395" targetNodeId="tpee.1171903862077" resolveInfo="LowerBoundType" />
      <node role="parameter" roleId="wq2x.7368070394769105389" type="wq2x.RuleParameterDeclaration" typeId="wq2x.7368070394769089081" id="7191523264663183703" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="lbt" />
      </node>
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663183704" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="true" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183705" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183706" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183707" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="T" />
            </node>
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183708" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="B" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183709" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183710" nodeInfo="ng">
              <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183711" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183707" resolveInfo="T" />
              </node>
              <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183712" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7191523264663183713" nodeInfo="nn">
                  <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1171903862077" resolveInfo="LowerBoundType" />
                </node>
              </node>
              <node role="argument" roleId="wq2x.7368070394768755905" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183714" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183708" resolveInfo="B" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="wq2x.7368070394767442907" type="wq2x.Body" typeId="wq2x.7368070394766966388" id="7191523264663183715" nodeInfo="ng">
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183716" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183717" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183718" nodeInfo="ng">
              <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183719" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183708" resolveInfo="B" />
              </node>
              <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183720" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183721" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183722" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183723" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183724" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183725" nodeInfo="ng">
                          <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183703" resolveInfo="lbt" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183726" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1171903869531" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetReferencesOperation" typeId="tp25.8758390115028452779" id="7191523264663183727" nodeInfo="nn" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetFirstOperation" typeId="tp2q.1165525191778" id="7191523264663183728" nodeInfo="nn" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Reference_GetTargetOperation" typeId="tp25.4124388153790980106" id="7191523264663183729" nodeInfo="nn" />
                </node>
              </node>
              <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183730" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183731" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183732" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183733" nodeInfo="ng">
                      <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183703" resolveInfo="lbt" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183734" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1171903869531" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetConceptOperation" typeId="tp25.1172323065820" id="7191523264663183735" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183736" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183737" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184032" resolveInfo="lbound" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183738" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183707" resolveInfo="T" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183739" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183708" resolveInfo="B" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183740" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183741" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184033" resolveInfo="varname" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183742" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183707" resolveInfo="T" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183743" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183744" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183745" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183703" resolveInfo="lbt" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="7191523264663183746" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.1213877396640" resolveInfo="getPresentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="wq2x.7368070394767441299" type="wq2x.Rule" typeId="wq2x.8335224865066016388" id="7191523264663183747" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="classifier" />
      <link role="applicableConcept" roleId="wq2x.8335224865066016395" targetNodeId="tpee.1107461130800" resolveInfo="Classifier" />
      <node role="parameter" roleId="wq2x.7368070394769105389" type="wq2x.RuleParameterDeclaration" typeId="wq2x.7368070394769089081" id="7191523264663183748" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="cls" />
      </node>
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663183749" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="true" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183750" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183751" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183752" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="C" />
            </node>
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183753" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="CP" />
              <node role="cardinality" roleId="wq2x.3063948360256267563" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183754" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183755" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183756" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183757" nodeInfo="ng">
                      <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183748" resolveInfo="cls" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7191523264663183758" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056546658" targetNodeId="tpee.1109279881614" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7191523264663183759" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183760" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183761" nodeInfo="ng">
              <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183762" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183752" resolveInfo="C" />
              </node>
              <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183763" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183764" nodeInfo="ng">
                  <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183748" resolveInfo="cls" />
                </node>
              </node>
              <node role="argument" roleId="wq2x.7368070394768755905" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183765" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183753" resolveInfo="CP" />
              </node>
              <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183766" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7191523264663183767" nodeInfo="nn">
                  <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1107535904670" resolveInfo="ClassifierType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="wq2x.7368070394767442907" type="wq2x.Body" typeId="wq2x.7368070394766966388" id="7191523264663183768" nodeInfo="ng">
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183769" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.LocalDeclarationStatement" typeId="wq2x.3063948360254202562" id="7191523264663183770" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183771" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="T" />
              <node role="cardinality" roleId="wq2x.3063948360256267563" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183772" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183773" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183774" nodeInfo="nn">
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7191523264663183775" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056546658" targetNodeId="tpee.1109279881614" />
                    </node>
                    <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183776" nodeInfo="ng">
                      <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183748" resolveInfo="cls" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7191523264663183777" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183778" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183779" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="i" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7191523264663183780" nodeInfo="in" />
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7191523264663183781" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7191523264663183782" nodeInfo="nn">
            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183783" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183784" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183785" nodeInfo="ng">
                  <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183786" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183771" resolveInfo="T" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183787" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183788" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183779" resolveInfo="i" />
                      </node>
                    </node>
                  </node>
                  <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183789" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183790" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183804" resolveInfo="tvd" />
                    </node>
                  </node>
                  <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183791" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7191523264663183792" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183793" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183794" nodeInfo="ng">
                  <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184034" resolveInfo="converts" />
                  <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183795" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183753" resolveInfo="CP" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183796" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183797" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183779" resolveInfo="i" />
                      </node>
                    </node>
                  </node>
                  <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183798" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183771" resolveInfo="T" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183799" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183800" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183779" resolveInfo="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7191523264663183801" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7191523264663183802" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183803" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183779" resolveInfo="i" />
                  </node>
                </node>
              </node>
            </node>
            <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183804" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="tvd" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183805" nodeInfo="in">
                <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1109279763828" resolveInfo="TypeVariableDeclaration" />
              </node>
            </node>
            <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183806" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183807" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183748" resolveInfo="cls" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="7191523264663183808" nodeInfo="nn">
                <link role="link" roleId="tp25.1138056546658" targetNodeId="tpee.1109279881614" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183809" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.AssignConstraint" typeId="wq2x.7368070394770780974" id="7191523264663183810" nodeInfo="ng">
              <node role="assignee" roleId="wq2x.7368070394770793388" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183811" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183752" resolveInfo="C" />
              </node>
              <node role="value" roleId="wq2x.7368070394770793930" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183812" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="5j4j.Ast" typeId="5j4j.7571593955706120730" id="7191523264663183813" nodeInfo="ng">
                  <node role="root" roleId="5j4j.7571593955706125526" type="5j4j.Node" typeId="5j4j.7571593955706137125" id="7191523264663183814" nodeInfo="ng">
                    <property name="kind" nameId="5j4j.7166797808989209772" value="CLASSIFIER_TYPE" />
                    <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7191523264663183815" nodeInfo="ng" />
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7191523264663183816" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="concept" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ValueHolder" typeId="5j4j.7571593955706137573" id="7191523264663183817" nodeInfo="ng">
                        <property name="value" nameId="5j4j.7571593955706137638" value="ClassifierType" />
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7191523264663183818" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ValueRole" typeId="5j4j.7571593955706137472" id="7191523264663183819" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="classifier" />
                      <node role="contents" roleId="5j4j.7571593955706137672" type="5j4j.ExpressionNode" typeId="5j4j.4310122986197990603" id="7191523264663183820" nodeInfo="ng">
                        <node role="expression" roleId="5j4j.4310122986197991094" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183821" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183822" nodeInfo="ng">
                            <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183748" resolveInfo="cls" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="7191523264663183823" nodeInfo="nn">
                            <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                          </node>
                        </node>
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7191523264663183824" nodeInfo="ng" />
                      </node>
                    </node>
                    <node role="role" roleId="5j4j.7571593955706284441" type="5j4j.ChildRole" typeId="5j4j.7571593955706137263" id="7191523264663183825" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="parameter" />
                      <property name="cardinality" nameId="5j4j.7571593955706137428" value="multiple" />
                      <node role="contents" roleId="5j4j.7571593955706137319" type="5j4j.ExpressionNode" typeId="5j4j.4310122986197990603" id="7191523264663183826" nodeInfo="ng">
                        <node role="symbol" roleId="5j4j.1503029989483908" type="5j4j.Symbol" typeId="5j4j.7571593955706284481" id="7191523264663183827" nodeInfo="ng" />
                        <node role="expression" roleId="5j4j.4310122986197991094" type="wq2x.LogicExpressionWrapper" typeId="wq2x.7368070394771082804" id="7191523264663183828" nodeInfo="ng">
                          <node role="expression" roleId="wq2x.7368070394771104782" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183829" nodeInfo="ng">
                            <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183771" resolveInfo="T" />
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
    </node>
  </root>
  <root type="wq2x.Handler" typeId="wq2x.8335224865066015764" id="7191523264663183830" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Declarations" />
    <node role="rule" roleId="wq2x.7368070394767441299" type="wq2x.Rule" typeId="wq2x.8335224865066016388" id="7191523264663183831" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="parameterDeclaration" />
      <link role="applicableConcept" roleId="wq2x.8335224865066016395" targetNodeId="tpee.1068498886292" resolveInfo="ParameterDeclaration" />
      <node role="parameter" roleId="wq2x.7368070394769105389" type="wq2x.RuleParameterDeclaration" typeId="wq2x.7368070394769089081" id="7191523264663183832" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="pd" />
      </node>
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663183833" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="true" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183834" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183835" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183836" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="tvrs" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="7191523264663183837" nodeInfo="in">
                <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183838" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183839" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183840" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183832" resolveInfo="pd" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183841" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.5680397130376446158" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetDescendantsOperation" typeId="tp25.1171305280644" id="7191523264663183842" nodeInfo="nn">
                  <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Concept" typeId="tp25.1144101972840" id="7191523264663183843" nodeInfo="ng">
                    <node role="conceptArgument" roleId="tp25.1207343664468" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7191523264663183844" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                    </node>
                  </node>
                  <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Inclusion" typeId="tp25.1144100932627" id="7191523264663183845" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183846" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183847" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="T" />
              <node role="cardinality" roleId="wq2x.3063948360256267563" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183848" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183849" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183850" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183836" resolveInfo="tvrs" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7191523264663183851" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183852" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183853" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="i" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7191523264663183854" nodeInfo="in" />
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7191523264663183855" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7191523264663183856" nodeInfo="nn">
            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183857" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183858" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183859" nodeInfo="ng">
                  <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183860" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183847" resolveInfo="T" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183861" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7191523264663183862" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183863" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183853" resolveInfo="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183864" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183865" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183866" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183870" resolveInfo="tvr" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183867" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1109283546497" />
                      </node>
                    </node>
                  </node>
                  <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183868" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7191523264663183869" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183870" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="tvr" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183871" nodeInfo="in">
                <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
              </node>
            </node>
            <node role="iterable" roleId="tpee.1144226360166" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183872" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183836" resolveInfo="tvrs" />
            </node>
          </node>
        </node>
      </node>
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663183873" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="false" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183874" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183875" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183876" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="P" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183877" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663183878" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184035" resolveInfo="typedecl" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183879" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183876" resolveInfo="P" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183880" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183881" nodeInfo="ng">
                  <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183832" resolveInfo="pd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="wq2x.7368070394767442907" type="wq2x.Body" typeId="wq2x.7368070394766966388" id="7191523264663183882" nodeInfo="ng">
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183883" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183884" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183885" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="i" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7191523264663183886" nodeInfo="in" />
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7191523264663183887" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183888" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183889" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="typeWalker" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="7191523264663183890" nodeInfo="in">
                <node role="parameterType" roleId="tp2c.1199542501692" type="wq2x.LogicVariableType" typeId="wq2x.7840802663736166753" id="7191523264663183891" nodeInfo="ig" />
                <node role="parameterType" roleId="tp2c.1199542501692" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183892" nodeInfo="in" />
                <node role="resultType" roleId="tp2c.1199542457201" type="tpee.VoidType" typeId="tpee.1068581517677" id="7191523264663183893" nodeInfo="in" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7191523264663183894" nodeInfo="nn" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7191523264663183895" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7191523264663183896" nodeInfo="nn">
              <node role="rValue" roleId="tpee.1068498886297" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="7191523264663183897" nodeInfo="nn">
                <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7191523264663183898" nodeInfo="ir">
                  <property name="name" nameId="tpck.1169194664001" value="var" />
                  <node role="type" roleId="tpee.5680397130376446158" type="wq2x.LogicVariableType" typeId="wq2x.7840802663736166753" id="7191523264663183899" nodeInfo="ig" />
                </node>
                <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7191523264663183900" nodeInfo="ir">
                  <property name="name" nameId="tpck.1169194664001" value="type" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183901" nodeInfo="in" />
                </node>
                <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183902" nodeInfo="sn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7191523264663183903" nodeInfo="nn">
                    <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183904" nodeInfo="sn">
                      <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183905" nodeInfo="ng">
                        <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.AssignConstraint" typeId="wq2x.7368070394770780974" id="7191523264663183906" nodeInfo="ng">
                          <node role="assignee" roleId="wq2x.7368070394770793388" type="wq2x.ExpressionLogicVariable" typeId="wq2x.7840802663736478789" id="7191523264663183907" nodeInfo="ng">
                            <node role="expression" roleId="wq2x.7840802663736485378" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183908" nodeInfo="nn">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183898" resolveInfo="var" />
                            </node>
                          </node>
                          <node role="value" roleId="wq2x.7368070394770793930" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183909" nodeInfo="ng">
                            <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183847" resolveInfo="T" />
                            <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183910" nodeInfo="ng">
                              <node role="code" roleId="wq2x.7368070394768985507" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7191523264663183911" nodeInfo="nn">
                                <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183912" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183885" resolveInfo="i" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183913" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183914" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183900" resolveInfo="type" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="7191523264663183915" nodeInfo="nn">
                        <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7191523264663183916" nodeInfo="nn">
                          <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                        </node>
                      </node>
                    </node>
                    <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="7191523264663183917" nodeInfo="nn">
                      <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183918" nodeInfo="sn">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183919" nodeInfo="nn">
                          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183920" nodeInfo="nr">
                            <property name="name" nameId="tpck.1169194664001" value="j" />
                            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7191523264663183921" nodeInfo="in" />
                            <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7191523264663183922" nodeInfo="nn">
                              <property name="value" nameId="tpee.1068580320021" value="1" />
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="tpee.1068581517665" type="wq2x.LocalDeclarationStatement" typeId="wq2x.3063948360254202562" id="7191523264663183923" nodeInfo="ng">
                          <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183924" nodeInfo="ng">
                            <property name="name" nameId="tpck.1169194664001" value="SP" />
                            <node role="cardinality" roleId="wq2x.3063948360256267563" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183925" nodeInfo="ng">
                              <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183926" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183927" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183928" nodeInfo="nn">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183900" resolveInfo="type" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7191523264663183929" nodeInfo="nn" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7191523264663183930" nodeInfo="nn" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7191523264663183931" nodeInfo="nn">
                          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183932" nodeInfo="sn">
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7191523264663183933" nodeInfo="nn">
                              <node role="expression" roleId="tpee.1068580123156" type="tp2c.CompactInvokeFunctionExpression" typeId="tp2c.1235746970280" id="7191523264663183934" nodeInfo="nn">
                                <node role="function" roleId="tp2c.1235746996653" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183935" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183889" resolveInfo="typeWalker" />
                                </node>
                                <node role="parameter" roleId="tp2c.1235747002942" type="wq2x.LogicExpressionWrapper" typeId="wq2x.7368070394771082804" id="7191523264663183936" nodeInfo="ng">
                                  <node role="expression" roleId="wq2x.7368070394771104782" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183937" nodeInfo="ng">
                                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183924" resolveInfo="SP" />
                                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183938" nodeInfo="ng">
                                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7191523264663183939" nodeInfo="nn">
                                        <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183940" nodeInfo="nn">
                                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183920" resolveInfo="j" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="parameter" roleId="tp2c.1235747002942" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183941" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183942" resolveInfo="ch" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183942" nodeInfo="nr">
                            <property name="name" nameId="tpck.1169194664001" value="ch" />
                            <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663183943" nodeInfo="in" />
                          </node>
                          <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183944" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183945" nodeInfo="nn">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183900" resolveInfo="type" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetChildrenOperation" typeId="tp25.1171500988903" id="7191523264663183946" nodeInfo="nn" />
                          </node>
                        </node>
                        <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663183947" nodeInfo="ng">
                          <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663183948" nodeInfo="ng">
                            <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183949" nodeInfo="ng">
                              <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183950" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183951" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183952" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183953" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183900" resolveInfo="type" />
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetReferencesOperation" typeId="tp25.8758390115028452779" id="7191523264663183954" nodeInfo="nn" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetFirstOperation" typeId="tp2q.1165525191778" id="7191523264663183955" nodeInfo="nn" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tp25.Reference_GetTargetOperation" typeId="tp25.4124388153790980106" id="7191523264663183956" nodeInfo="nn" />
                              </node>
                            </node>
                            <node role="argument" roleId="wq2x.7368070394768755905" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183957" nodeInfo="ng">
                              <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183924" resolveInfo="SP" />
                            </node>
                            <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183958" nodeInfo="ng">
                              <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183959" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183960" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183900" resolveInfo="type" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetConceptOperation" typeId="tp25.1172323065820" id="7191523264663183961" nodeInfo="nn" />
                              </node>
                            </node>
                            <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.ExpressionLogicVariable" typeId="wq2x.7840802663736478789" id="7191523264663183962" nodeInfo="ng">
                              <node role="expression" roleId="wq2x.7840802663736485378" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183963" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183898" resolveInfo="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183964" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183889" resolveInfo="typeWalker" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7191523264663183965" nodeInfo="nn" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7191523264663183966" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tp2c.CompactInvokeFunctionExpression" typeId="tp2c.1235746970280" id="7191523264663183967" nodeInfo="nn">
              <node role="function" roleId="tp2c.1235746996653" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183968" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183889" resolveInfo="typeWalker" />
              </node>
              <node role="parameter" roleId="tp2c.1235747002942" type="wq2x.LogicExpressionWrapper" typeId="wq2x.7368070394771082804" id="7191523264663183969" nodeInfo="ng">
                <node role="expression" roleId="wq2x.7368070394771104782" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663183970" nodeInfo="ng">
                  <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183876" resolveInfo="P" />
                </node>
              </node>
              <node role="parameter" roleId="tp2c.1235747002942" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183971" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183972" nodeInfo="ng">
                  <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183832" resolveInfo="pd" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183973" nodeInfo="nn">
                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.5680397130376446158" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="wq2x.7368070394767441299" type="wq2x.Rule" typeId="wq2x.8335224865066016388" id="7191523264663183975" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="methodDeclaration" />
      <link role="applicableConcept" roleId="wq2x.8335224865066016395" targetNodeId="tpee.1068580123165" resolveInfo="InstanceMethodDeclaration" />
      <node role="parameter" roleId="wq2x.7368070394769105389" type="wq2x.RuleParameterDeclaration" typeId="wq2x.7368070394769089081" id="7191523264663183977" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="imd" />
      </node>
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663183978" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="true" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663183979" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183980" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183981" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="tvrs" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="7191523264663183982" nodeInfo="in">
                <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183983" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183984" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663183985" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183977" resolveInfo="imd" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663183986" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068580123133" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetDescendantsOperation" typeId="tp25.1171305280644" id="7191523264663183987" nodeInfo="nn">
                  <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Concept" typeId="tp25.1144101972840" id="7191523264663183988" nodeInfo="ng">
                    <node role="conceptArgument" roleId="tp25.1207343664468" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="7191523264663183989" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                    </node>
                  </node>
                  <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Inclusion" typeId="tp25.1144100932627" id="7191523264663183990" nodeInfo="ng" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663183991" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663183992" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="T" />
              <node role="cardinality" roleId="wq2x.3063948360256267563" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663183993" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663183994" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663183995" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183981" resolveInfo="tvrs" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7191523264663183996" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7191523264663183997" nodeInfo="nn">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663183998" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="i" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7191523264663183999" nodeInfo="in" />
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7191523264663184000" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="7191523264663184001" nodeInfo="nn">
            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663184002" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663184003" nodeInfo="ng">
                <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.NewTypeConstraint" typeId="wq2x.8335224865066016385" id="7191523264663184004" nodeInfo="ng">
                  <node role="typeVar" roleId="wq2x.7368070394768578348" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663184005" nodeInfo="ng">
                    <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663183992" resolveInfo="T" />
                    <node role="index" roleId="wq2x.7368070394770417637" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663184006" nodeInfo="ng">
                      <node role="code" roleId="wq2x.7368070394768985507" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7191523264663184007" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1239714902950" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663184008" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183998" resolveInfo="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="anchor" roleId="wq2x.7368070394768653124" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663184009" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7191523264663184010" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663184011" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663184015" resolveInfo="tvr" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="7191523264663184012" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1109283546497" />
                      </node>
                    </node>
                  </node>
                  <node role="typeConcept" roleId="wq2x.7840802663735270381" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663184013" nodeInfo="ng">
                    <node role="code" roleId="wq2x.7368070394768985507" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7191523264663184014" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7191523264663184015" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="tvr" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7191523264663184016" nodeInfo="in">
                <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1109283449304" resolveInfo="TypeVariableReference" />
              </node>
            </node>
            <node role="iterable" roleId="tpee.1144226360166" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7191523264663184017" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7191523264663183981" resolveInfo="tvrs" />
            </node>
          </node>
        </node>
      </node>
      <node role="head" roleId="wq2x.7368070394767442414" type="wq2x.Head" typeId="wq2x.7368070394766963750" id="7191523264663184018" nodeInfo="ng">
        <property name="keep" nameId="wq2x.7368070394767443940" value="false" />
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663184019" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.ParameterDeclarationStatement" typeId="wq2x.3063948360254047686" id="7191523264663184020" nodeInfo="ng">
            <node role="declaration" roleId="wq2x.3063948360254832884" type="wq2x.LogicVariableDeclaration" typeId="wq2x.3063948360253431861" id="7191523264663184021" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="P" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="wq2x.EmitConstraintStatement" typeId="wq2x.7368070394766978092" id="7191523264663184022" nodeInfo="ng">
            <node role="constraint" roleId="wq2x.7368070394767031348" type="wq2x.UserConstraint" typeId="wq2x.7368070394767045637" id="7191523264663184023" nodeInfo="ng">
              <link role="template" roleId="wq2x.7368070394767091750" targetNodeId="7191523264663184035" resolveInfo="typedecl" />
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicVariableReference" typeId="wq2x.7840802663736276860" id="7191523264663184024" nodeInfo="ng">
                <link role="declaration" roleId="wq2x.3063948360253976409" targetNodeId="7191523264663184021" resolveInfo="P" />
              </node>
              <node role="argument" roleId="wq2x.7368070394768117915" type="wq2x.LogicValue" typeId="wq2x.7368070394768985089" id="7191523264663184025" nodeInfo="ng">
                <node role="code" roleId="wq2x.7368070394768985507" type="wq2x.RuleParameterReference" typeId="wq2x.7368070394769139970" id="7191523264663184026" nodeInfo="ng">
                  <link role="declaration" roleId="wq2x.7368070394769213644" targetNodeId="7191523264663183977" resolveInfo="imd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="wq2x.7368070394767442907" type="wq2x.Body" typeId="wq2x.7368070394766966388" id="7191523264663184027" nodeInfo="ng">
        <node role="code" roleId="wq2x.7368070394766972297" type="tpee.StatementList" typeId="tpee.1068580123136" id="7191523264663184028" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7191523264663184029" nodeInfo="nn" />
        </node>
      </node>
    </node>
  </root>
  <root type="wq2x.Solver" typeId="wq2x.7368070394767065799" id="7191523264663184030" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Standard" />
    <node role="template" roleId="wq2x.7368070394767068701" type="wq2x.ConstraintTemplate" typeId="wq2x.7368070394767067636" id="7191523264663184031" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="ubound" />
      <property name="arity" nameId="wq2x.7368070394767096851" value="2" />
    </node>
    <node role="template" roleId="wq2x.7368070394767068701" type="wq2x.ConstraintTemplate" typeId="wq2x.7368070394767067636" id="7191523264663184032" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="lbound" />
      <property name="arity" nameId="wq2x.7368070394767096851" value="2" />
    </node>
    <node role="template" roleId="wq2x.7368070394767068701" type="wq2x.ConstraintTemplate" typeId="wq2x.7368070394767067636" id="7191523264663184033" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="varname" />
      <property name="arity" nameId="wq2x.7368070394767096851" value="2" />
    </node>
    <node role="template" roleId="wq2x.7368070394767068701" type="wq2x.ConstraintTemplate" typeId="wq2x.7368070394767067636" id="7191523264663184034" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="converts" />
      <property name="arity" nameId="wq2x.7368070394767096851" value="2" />
    </node>
    <node role="template" roleId="wq2x.7368070394767068701" type="wq2x.ConstraintTemplate" typeId="wq2x.7368070394767067636" id="7191523264663184035" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="typedecl" />
      <property name="arity" nameId="wq2x.7368070394767096851" value="2" />
    </node>
  </root>
</model>

