<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0e60ac07-77c3-4d5c-b40d-73e8fd128592(jetbrains.mps.coderules.typechecking.testlang.sandbox.test)">
  <persistence version="9" />
  <languages>
    <use id="3a1f0f04-b5e0-43be-884e-b856bfdeca21" name="jetbrains.mps.typechecking.testlang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="3a1f0f04-b5e0-43be-884e-b856bfdeca21" name="jetbrains.mps.typechecking.testlang">
      <concept id="8456919074565735802" name="jetbrains.mps.typechecking.testlang.structure.Root" flags="ng" index="0U$pH">
        <child id="8456919074565735822" name="stmt" index="0U$qp" />
      </concept>
      <concept id="8477760168143925028" name="jetbrains.mps.typechecking.testlang.structure.VarDeclStmt" flags="ng" index="34yUbg">
        <child id="8477760168143925044" name="decl" index="34yUb0" />
        <child id="8477760168143925046" name="init" index="34yUb2" />
      </concept>
      <concept id="8477760168143925029" name="jetbrains.mps.typechecking.testlang.structure.VarDecl" flags="ng" index="34yUbh" />
      <concept id="8477760168144492408" name="jetbrains.mps.typechecking.testlang.structure.StrConst" flags="ng" index="34$_Ec">
        <property id="8477760168144492409" name="val" index="34$_Ed" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="0U$pH" id="7lt0LtPHRY$">
    <property role="TrG5h" value="Demo" />
    <node concept="34yUbg" id="7mB3viLblk6" role="0U$qp">
      <node concept="34yUbh" id="7mB3viLblk7" role="34yUb0">
        <property role="TrG5h" value="foo" />
      </node>
      <node concept="34$_Ec" id="7mB3viLdvny" role="34yUb2">
        <property role="34$_Ed" value="test" />
      </node>
    </node>
    <node concept="34yUbg" id="7mB3viLdNfT" role="0U$qp">
      <node concept="34yUbh" id="7mB3viLdNfV" role="34yUb0">
        <property role="TrG5h" value="bar" />
      </node>
      <node concept="34$_Ec" id="2DIFeUB7hka" role="34yUb2">
        <property role="34$_Ed" value="123" />
      </node>
    </node>
    <node concept="34yUbg" id="7mB3viLioHG" role="0U$qp">
      <node concept="34yUbh" id="7mB3viLioHH" role="34yUb0">
        <property role="TrG5h" value="qux" />
      </node>
      <node concept="34$_Ec" id="2DIFeUB7hkc" role="34yUb2">
        <property role="34$_Ed" value="1234" />
      </node>
    </node>
  </node>
</model>

