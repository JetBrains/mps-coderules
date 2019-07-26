<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e74c1bfc-387b-4b4b-abee-2eb77ee510ec(samples.lambdacalc.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7_8aRkgDGPo">
    <property role="EcuMT" value="8739282858702982488" />
    <property role="TrG5h" value="Var" />
    <property role="3GE5qa" value="expr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7_8aRkgDGPp" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="3TFdEPZfajg" role="PzmwI">
      <ref role="PrY4T" node="3TFdEPZf9SZ" resolve="Typeable" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_8aRkgDGPJ">
    <property role="EcuMT" value="8739282858702982511" />
    <property role="TrG5h" value="Expr" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="expr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3TFdEPZf9T0" role="PzmwI">
      <ref role="PrY4T" node="3TFdEPZf9SZ" resolve="Typeable" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_8aRkgDGPK">
    <property role="EcuMT" value="8739282858702982512" />
    <property role="TrG5h" value="App" />
    <property role="3GE5qa" value="expr.fun" />
    <property role="34LRSv" value="app" />
    <ref role="1TJDcQ" node="7_8aRkgDGPJ" resolve="Expr" />
    <node concept="1TJgyj" id="7_8aRkgDGPL" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982513" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="fun" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
    <node concept="1TJgyj" id="7_8aRkgDGPX" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982525" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="arg" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_8aRkgDGQe">
    <property role="EcuMT" value="8739282858702982542" />
    <property role="TrG5h" value="Const" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="expr.const" />
    <ref role="1TJDcQ" node="7_8aRkgDGPJ" resolve="Expr" />
  </node>
  <node concept="1TIwiD" id="7_8aRkgDGQf">
    <property role="EcuMT" value="8739282858702982543" />
    <property role="TrG5h" value="Lam" />
    <property role="3GE5qa" value="expr.fun" />
    <ref role="1TJDcQ" node="7_8aRkgDGPJ" resolve="Expr" />
    <node concept="1TJgyj" id="7_8aRkgDGQg" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982544" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="binding" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGQi" resolve="LamVarBind" />
    </node>
    <node concept="1TJgyj" id="7_8aRkgDGQl" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982549" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expr" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_8aRkgDGQi">
    <property role="EcuMT" value="8739282858702982546" />
    <property role="TrG5h" value="LamVarBind" />
    <property role="3GE5qa" value="expr.fun" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7_8aRkgDGQj" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982547" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="var" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPo" resolve="Var" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_8aRkgDGQo">
    <property role="EcuMT" value="8739282858702982552" />
    <property role="3GE5qa" value="expr.let" />
    <property role="TrG5h" value="LetExpr" />
    <property role="34LRSv" value="let...in" />
    <ref role="1TJDcQ" node="7_8aRkgDGPJ" resolve="Expr" />
    <node concept="1TJgyj" id="7_8aRkgDGQv" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982559" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="binding" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="7_8aRkgDGQp" resolve="LetVarBind" />
    </node>
    <node concept="1TJgyj" id="7_8aRkgDGQx" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982561" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expr" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_8aRkgDGQp">
    <property role="EcuMT" value="8739282858702982553" />
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="LetVarBind" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7_8aRkgDGQq" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982554" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="var" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPo" resolve="Var" />
    </node>
    <node concept="1TJgyj" id="7_8aRkgDGQs" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982556" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expr" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_8aRkgDGQB">
    <property role="EcuMT" value="8739282858702982567" />
    <property role="TrG5h" value="Clause" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="clause" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="7_8aRkgDGQC">
    <property role="EcuMT" value="8739282858702982568" />
    <property role="TrG5h" value="Doc" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7_8aRkgDGQF" role="1TKVEi">
      <property role="IQ2ns" value="8739282858702982571" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="clause" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7_8aRkgDGQB" resolve="Clause" />
    </node>
    <node concept="PrWs8" id="7_8aRkgDGQD" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_8aRkgDHAe">
    <property role="EcuMT" value="8739282858702985614" />
    <property role="TrG5h" value="LetClause" />
    <property role="34LRSv" value="let" />
    <property role="3GE5qa" value="clause" />
    <ref role="1TJDcQ" node="7_8aRkgDGQB" resolve="Clause" />
    <node concept="1TJgyj" id="2jleysRWVqE" role="1TKVEi">
      <property role="IQ2ns" value="2654091495521629866" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="binding" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGQp" resolve="LetVarBind" />
    </node>
    <node concept="PrWs8" id="1Lr58WGbe9B" role="PzmwI">
      <ref role="PrY4T" to="tpck:2WmWrdnSpX2" resolve="ICanSuppressErrors" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_8aRkgEZ_W">
    <property role="EcuMT" value="8739282858703321468" />
    <property role="3GE5qa" value="clause" />
    <property role="TrG5h" value="ExprClause" />
    <property role="34LRSv" value="expr" />
    <ref role="1TJDcQ" node="7_8aRkgDGQB" resolve="Clause" />
    <node concept="1TJgyj" id="7_8aRkgEZ_X" role="1TKVEi">
      <property role="IQ2ns" value="8739282858703321469" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expr" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="3_qfG1EP6Nw">
    <property role="EcuMT" value="4132684604212800736" />
    <property role="TrG5h" value="Type" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3_qfG1EP6Of">
    <property role="EcuMT" value="4132684604212800783" />
    <property role="TrG5h" value="FunType" />
    <property role="3GE5qa" value="type" />
    <ref role="1TJDcQ" node="3_qfG1EP6Nw" resolve="Type" />
    <node concept="1TJgyj" id="3_qfG1EP6Op" role="1TKVEi">
      <property role="IQ2ns" value="4132684604212800793" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3_qfG1EP6Nw" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="3_qfG1EP6O_" role="1TKVEi">
      <property role="IQ2ns" value="4132684604212800805" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="resType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3_qfG1EP6Nw" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="492bFERodLp">
    <property role="EcuMT" value="4774429934441520217" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="BoolType" />
    <property role="34LRSv" value="Bool" />
    <ref role="1TJDcQ" node="3_qfG1EP6Nw" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="492bFERognf">
    <property role="EcuMT" value="4774429934441530831" />
    <property role="3GE5qa" value="expr.const" />
    <property role="TrG5h" value="True" />
    <property role="34LRSv" value="True" />
    <ref role="1TJDcQ" node="7_8aRkgDGQe" resolve="Const" />
  </node>
  <node concept="1TIwiD" id="492bFERojSn">
    <property role="EcuMT" value="4774429934441545239" />
    <property role="3GE5qa" value="expr.const" />
    <property role="TrG5h" value="False" />
    <property role="34LRSv" value="False" />
    <ref role="1TJDcQ" node="7_8aRkgDGQe" resolve="Const" />
  </node>
  <node concept="1TIwiD" id="3g9UT2j9I06">
    <property role="EcuMT" value="3749787170939265030" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="VarType" />
    <node concept="PrWs8" id="48ZGLP8BG5o" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_zMfd$ooor">
    <property role="EcuMT" value="8747055848970356251" />
    <property role="3GE5qa" value="expr" />
    <property role="TrG5h" value="VarRef" />
    <ref role="1TJDcQ" node="7_8aRkgDGPJ" resolve="Expr" />
    <node concept="1TJgyj" id="7_zMfd$ooos" role="1TKVEi">
      <property role="IQ2ns" value="8747055848970356252" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="def" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPo" resolve="Var" />
    </node>
  </node>
  <node concept="PlHQZ" id="3TFdEPZf9SZ">
    <property role="EcuMT" value="4497748771651493439" />
    <property role="TrG5h" value="Typeable" />
  </node>
  <node concept="1TIwiD" id="12dHl3ZCxTW">
    <property role="EcuMT" value="1192808835813875324" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="ForallType" />
    <property role="34LRSv" value="forall" />
    <ref role="1TJDcQ" node="3_qfG1EP6Nw" resolve="Type" />
    <node concept="1TJgyj" id="12dHl3ZCFaI" role="1TKVEi">
      <property role="IQ2ns" value="1192808835813913262" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3_qfG1EP6Nw" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="48ZGLP7q1Qc" role="1TKVEi">
      <property role="IQ2ns" value="4773731068369444236" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="typeVars" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3g9UT2j9I06" resolve="VarType" />
    </node>
    <node concept="1TJgyj" id="2O9ahh6mHw4" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553596420" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="constraints" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2O9ahh6mHvg" resolve="Constraint" />
    </node>
  </node>
  <node concept="1TIwiD" id="1z4HGmnV7K8">
    <property role="EcuMT" value="1784752312119229448" />
    <property role="3GE5qa" value="expr" />
    <property role="TrG5h" value="Fix" />
    <property role="34LRSv" value="fix" />
    <ref role="1TJDcQ" node="7_8aRkgDGPJ" resolve="Expr" />
  </node>
  <node concept="1TIwiD" id="6_p$mL233Yk">
    <property role="EcuMT" value="7591258541060276116" />
    <property role="3GE5qa" value="expr" />
    <property role="TrG5h" value="IfThenElse" />
    <property role="34LRSv" value="if then else" />
    <ref role="1TJDcQ" node="7_8aRkgDGPJ" resolve="Expr" />
    <node concept="1TJgyj" id="6_p$mL233YL" role="1TKVEi">
      <property role="IQ2ns" value="7591258541060276145" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="cond" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
    <node concept="1TJgyj" id="6_p$mL233YR" role="1TKVEi">
      <property role="IQ2ns" value="7591258541060276151" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="pos" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
    <node concept="1TJgyj" id="6_p$mL233YU" role="1TKVEi">
      <property role="IQ2ns" value="7591258541060276154" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="neg" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="JqEP$8fvqm">
    <property role="EcuMT" value="854183478218847894" />
    <property role="3GE5qa" value="expr" />
    <property role="TrG5h" value="AnnExpr" />
    <property role="34LRSv" value="annotation" />
    <ref role="1TJDcQ" node="7_8aRkgDGPJ" resolve="Expr" />
    <node concept="PrWs8" id="JqEP$8fvqn" role="PzmwI">
      <ref role="PrY4T" node="JqEP$8fvoa" resolve="Annotated" />
    </node>
    <node concept="1TJgyj" id="JqEP$8fvqp" role="1TKVEi">
      <property role="IQ2ns" value="854183478218847897" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expr" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="JqEP$8fvrm">
    <property role="EcuMT" value="854183478218847958" />
    <property role="3GE5qa" value="expr" />
    <property role="TrG5h" value="AnnVar" />
    <property role="34LRSv" value="Annotated var" />
    <ref role="1TJDcQ" node="7_8aRkgDGPo" resolve="Var" />
    <node concept="PrWs8" id="JqEP$8fvrn" role="PzmwI">
      <ref role="PrY4T" node="JqEP$8fvoa" resolve="Annotated" />
    </node>
    <node concept="1TJgyj" id="JqEP$8fvrp" role="1TKVEi">
      <property role="IQ2ns" value="854183478218847961" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="var" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPo" resolve="Var" />
    </node>
  </node>
  <node concept="PlHQZ" id="JqEP$8fvoa">
    <property role="EcuMT" value="854183478218847754" />
    <property role="3GE5qa" value="expr" />
    <property role="TrG5h" value="Annotated" />
    <node concept="PrWs8" id="JqEP$8fvob" role="PrDN$">
      <ref role="PrY4T" node="3TFdEPZf9SZ" resolve="Typeable" />
    </node>
    <node concept="1TJgyj" id="JqEP$8fvrd" role="1TKVEi">
      <property role="IQ2ns" value="854183478218847949" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="ann" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3_qfG1EP6Nw" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="48ZGLP8$3c6">
    <property role="EcuMT" value="4773731068388848390" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="VarTypeRef" />
    <ref role="1TJDcQ" node="3_qfG1EP6Nw" resolve="Type" />
    <node concept="1TJgyj" id="48ZGLP8$3cj" role="1TKVEi">
      <property role="IQ2ns" value="4773731068388848403" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="def" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3g9UT2j9I06" resolve="VarType" />
    </node>
  </node>
  <node concept="1TIwiD" id="JqEP$8sgV5">
    <property role="EcuMT" value="854183478222196421" />
    <property role="3GE5qa" value="expr" />
    <property role="TrG5h" value="Pair" />
    <property role="34LRSv" value="pair" />
    <ref role="1TJDcQ" node="7_8aRkgDGPJ" resolve="Expr" />
    <node concept="1TJgyj" id="JqEP$8sgV6" role="1TKVEi">
      <property role="IQ2ns" value="854183478222196422" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="fst" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
    <node concept="1TJgyj" id="JqEP$8sgV8" role="1TKVEi">
      <property role="IQ2ns" value="854183478222196424" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="snd" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="JqEP$8shba">
    <property role="EcuMT" value="854183478222197450" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="PairType" />
    <property role="34LRSv" value="pair" />
    <ref role="1TJDcQ" node="3_qfG1EP6Nw" resolve="Type" />
    <node concept="1TJgyj" id="JqEP$8shbd" role="1TKVEi">
      <property role="IQ2ns" value="854183478222197453" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="fstType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3_qfG1EP6Nw" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="JqEP$8shbb" role="1TKVEi">
      <property role="IQ2ns" value="854183478222197451" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="sndType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3_qfG1EP6Nw" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="2O9ahh6mHnA">
    <property role="EcuMT" value="3245170173553595878" />
    <property role="3GE5qa" value="clause" />
    <property role="TrG5h" value="Typeclass" />
    <property role="34LRSv" value="class" />
    <ref role="1TJDcQ" node="7_8aRkgDGQB" resolve="Clause" />
    <node concept="PrWs8" id="2O9ahh6mHnB" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="2O9ahh6mHnJ" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553595887" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="members" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2O9ahh6mHnE" resolve="Prototype" />
    </node>
    <node concept="1TJgyj" id="2O9ahh6mHnL" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553595889" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="typeVar" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3g9UT2j9I06" resolve="VarType" />
    </node>
  </node>
  <node concept="1TIwiD" id="2O9ahh6mHnE">
    <property role="EcuMT" value="3245170173553595882" />
    <property role="TrG5h" value="Prototype" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2O9ahh6mHnF" role="PzmwI">
      <ref role="PrY4T" node="3TFdEPZf9SZ" resolve="Typeable" />
    </node>
    <node concept="1TJgyj" id="2O9ahh6mHnH" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553595885" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="annVar" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="JqEP$8fvrm" resolve="AnnVar" />
    </node>
    <node concept="PrWs8" id="2O9ahh6tR0e" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2O9ahh6mHnO">
    <property role="EcuMT" value="3245170173553595892" />
    <property role="3GE5qa" value="clause" />
    <property role="TrG5h" value="Instance" />
    <property role="34LRSv" value="instance" />
    <ref role="1TJDcQ" node="7_8aRkgDGQB" resolve="Clause" />
    <node concept="1TJgyj" id="2O9ahh6mHnP" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553595893" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="typeScheme" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="12dHl3ZCxTW" resolve="ForallType" />
    </node>
    <node concept="1TJgyj" id="2O9ahh6mHnR" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553595895" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="impls" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2O9ahh6mHnU" resolve="PrototypeImpl" />
    </node>
    <node concept="1TJgyj" id="2O9ahh6mHo2" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553595906" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="typeclass" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2O9ahh6mHnA" resolve="Typeclass" />
    </node>
  </node>
  <node concept="1TIwiD" id="2O9ahh6mHnU">
    <property role="EcuMT" value="3245170173553595898" />
    <property role="TrG5h" value="PrototypeImpl" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2O9ahh6mHnV" role="PzmwI">
      <ref role="PrY4T" node="3TFdEPZf9SZ" resolve="Typeable" />
    </node>
    <node concept="1TJgyj" id="2O9ahh6mHnX" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553595901" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="proto" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2O9ahh6mHnE" resolve="Prototype" />
    </node>
    <node concept="1TJgyj" id="2O9ahh6mHnZ" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553595903" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expr" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7_8aRkgDGPJ" resolve="Expr" />
    </node>
  </node>
  <node concept="1TIwiD" id="2O9ahh6mHvg">
    <property role="EcuMT" value="3245170173553596368" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="Constraint" />
    <property role="34LRSv" value="constraint" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2O9ahh6tFol" role="1TKVEi">
      <property role="IQ2ns" value="3245170173555422741" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="varRef" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3g9UT2j9I06" resolve="VarType" />
    </node>
    <node concept="1TJgyj" id="2O9ahh6mHvj" role="1TKVEi">
      <property role="IQ2ns" value="3245170173553596371" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="typeclass" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2O9ahh6mHnA" resolve="Typeclass" />
    </node>
  </node>
  <node concept="1TIwiD" id="47tET_WTDZo">
    <property role="EcuMT" value="4746138258032205784" />
    <property role="TrG5h" value="ConstraintRepr" />
    <ref role="1TJDcQ" node="2O9ahh6mHvg" resolve="Constraint" />
    <node concept="1TJgyi" id="47tET_WTDZp" role="1TKVEl">
      <property role="IQ2nx" value="4746138258032205785" />
      <property role="TrG5h" value="typeclassName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="47tET_X0JtN" role="1TKVEl">
      <property role="IQ2nx" value="4746138258034063219" />
      <property role="TrG5h" value="typeVarName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

