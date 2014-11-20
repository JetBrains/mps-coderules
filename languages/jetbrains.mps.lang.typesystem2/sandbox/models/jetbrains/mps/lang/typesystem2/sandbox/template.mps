<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:fce0252c-0765-4ee2-a00c-80dfd47d2d03(jetbrains.mps.lang.typesystem2.sandbox.template)">
  <persistence version="8" />
  <language namespace="c4803b19-6d89-4a3b-bf82-390769514add(jetbrains.mps.lang.typesystem2)" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="qiww" modelUID="r:7e0616dc-e55e-4c35-beca-da14b0c8f8bd(jetbrains.mps.lang.typesystem2.runtime.template)" version="-1" />
  <import index="nc4n" modelUID="r:2a1eb048-898c-47a3-863b-36b04c4b9f7c(jetbrains.mps.lang.typesystem2.runtime.rule)" version="-1" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="qoa9" modelUID="r:dba3d2d4-97f1-42c8-b8ff-d7210906a24c(jetbrains.mps.lang.typesystem2.sandbox)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="wq2x" modelUID="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" version="-1" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="4992889260812803191" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SampleTemplate" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4992889260812803192" nodeInfo="nn" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4992889260812861421" nodeInfo="in">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="qiww.6135434422633732177" resolveInfo="RuleTemplate" />
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
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7340198212830525313" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="includeSuperConcepts" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <node role="returnType" roleId="tpee.1068580123133" type="tp2q.SequenceType" typeId="tp2q.1151689724996" id="7340198212830525314" nodeInfo="in">
        <node role="elementType" roleId="tp2q.1151689745422" type="tp25.SConceptType" typeId="tp25.1172420572800" id="7340198212830525315" nodeInfo="in" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7340198212830525316" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7340198212830525318" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7340198212830526212" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7340198212830526210" nodeInfo="nn">
            <node role="creator" roleId="tpee.1145553007750" type="tp2q.SingletonSequenceCreator" typeId="tp2q.1235573135402" id="7340198212830537876" nodeInfo="nn">
              <node role="elementType" roleId="tp2q.1235573175711" type="tp25.SConceptType" typeId="tp25.1172420572800" id="7340198212830538041" nodeInfo="in" />
              <node role="singletonValue" roleId="tp2q.1235573187520" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="7340198212830538214" nodeInfo="nn">
                <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tpee.1068431474542" resolveInfo="VariableDeclaration" />
              </node>
            </node>
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
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7340198212830826695" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="nc4n.8335224865064895431" resolveInfo="UserConstraint" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="nc4n.6135434422634372093" resolveInfo="nary" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7340198212830826696" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="type" />
                    </node>
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
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qiww.7340198212831140255" resolveInfo="type" />
                              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qiww.7340198212831139254" resolveInfo="CustomConstraints" />
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
</model>

