<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0e60ac07-77c3-4d5c-b40d-73e8fd128592(jetbrains.mps.typechecking.testlang.sandbox.test)">
  <persistence version="9" />
  <languages>
    <use id="3a1f0f04-b5e0-43be-884e-b856bfdeca21" name="jetbrains.mps.typechecking.testlang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="3a1f0f04-b5e0-43be-884e-b856bfdeca21" name="jetbrains.mps.typechecking.testlang">
      <concept id="8456919074565735802" name="jetbrains.mps.typechecking.testlang.structure.Container" flags="ng" index="0U$pH">
        <child id="8456919074565735822" name="statement" index="0U$qp" />
      </concept>
      <concept id="8456919074565735824" name="jetbrains.mps.typechecking.testlang.structure.Expr" flags="ng" index="0U$q7" />
      <concept id="8456919074565735814" name="jetbrains.mps.typechecking.testlang.structure.Stmt" flags="ng" index="0U$qh">
        <child id="8456919074565735832" name="expression" index="0U$qf" />
      </concept>
    </language>
  </registry>
  <node concept="0U$pH" id="7lt0LtPHRY$">
    <node concept="0U$qh" id="7lt0LtPHRYI" role="0U$qp">
      <node concept="0U$q7" id="7lt0LtPHRYK" role="0U$qf" />
      <node concept="0U$q7" id="7lt0LtPHRYM" role="0U$qf" />
      <node concept="0U$q7" id="7lt0LtPHRYP" role="0U$qf" />
      <node concept="0U$q7" id="7lt0LtPHRYT" role="0U$qf" />
    </node>
  </node>
</model>

