<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2deee13f-4a3d-4229-ad45-9e5b85327419(samples.fitch.demo.firstOrderLogic)">
  <persistence version="9" />
  <languages>
    <use id="ddb01c98-e78e-4c79-b11a-aeba193668d4" name="samples.fitch.firstOrderLogic" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ddb01c98-e78e-4c79-b11a-aeba193668d4" name="samples.fitch.firstOrderLogic">
      <concept id="4035326440040001483" name="samples.fitch.firstOrderLogic.structure.Equality" flags="ng" index="1rkNff">
        <child id="4035326440040001493" name="left" index="1rkNfh" />
        <child id="4035326440040001495" name="right" index="1rkNfj" />
      </concept>
      <concept id="4035326440039997715" name="samples.fitch.firstOrderLogic.structure.EqualityElim" flags="ng" index="1rkNOn" />
      <concept id="4035326440039985580" name="samples.fitch.firstOrderLogic.structure.FirstOrderProof" flags="ng" index="1rkQQC" />
    </language>
    <language id="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" name="samples.fitch.propositionalLogic">
      <concept id="4322786184247881317" name="samples.fitch.propositionalLogic.structure.OrElim" flags="ng" index="2jWz54" />
      <concept id="4322786184247901129" name="samples.fitch.propositionalLogic.structure.IfIntro" flags="ng" index="2jWAjC" />
      <concept id="4322786184247817766" name="samples.fitch.propositionalLogic.structure.Or" flags="ng" index="2jWM$7">
        <child id="4322786184247817796" name="disjunct" index="2jWM__" />
      </concept>
      <concept id="4322786184247817809" name="samples.fitch.propositionalLogic.structure.If" flags="ng" index="2jWM_K">
        <child id="4322786184247817810" name="antecedent" index="2jWM_N" />
        <child id="4322786184247817812" name="consequent" index="2jWM_P" />
      </concept>
    </language>
    <language id="06b7c5c7-e359-4f4b-a581-5d0c9323af39" name="samples.fitch">
      <concept id="4322786184247881124" name="samples.fitch.structure.SubProof" flags="ng" index="2jWza5">
        <child id="4322786184247881125" name="content" index="2jWza4" />
      </concept>
      <concept id="4322786184247859218" name="samples.fitch.structure.Assumption" flags="ng" index="2jWGsN" />
      <concept id="4322786184247854968" name="samples.fitch.structure.Reasoning" flags="ng" index="2jWHxp">
        <child id="2497161927181071993" name="conclusion" index="3MT$nN" />
      </concept>
      <concept id="4322786184247818022" name="samples.fitch.structure.Judgement" flags="ng" index="2jWMw7">
        <child id="4322786184247848320" name="basis" index="2jWFax" />
      </concept>
      <concept id="4322786184247818035" name="samples.fitch.structure.Reference" flags="ng" index="2jWMwi">
        <reference id="4322786184247818157" name="reasoning" index="2jWMyc" />
      </concept>
      <concept id="657004910291123662" name="samples.fitch.structure.Premise" flags="ng" index="GydIM" />
      <concept id="657004910291159432" name="samples.fitch.structure.Goal" flags="ng" index="GyqZO">
        <child id="657004910291159433" name="sentence" index="GyqZP" />
      </concept>
      <concept id="4035326440038975469" name="samples.fitch.structure.AbstractProof" flags="ng" index="1rgTJD">
        <property id="2994859399702197792" name="description" index="26WHrx" />
        <child id="4322786184248036774" name="content" index="2jVTa7" />
        <child id="657004910291159451" name="goal" index="GyqZB" />
      </concept>
    </language>
    <language id="748b3ba1-2791-4ee8-b985-a5598baa7112" name="samples.fitch.herbrandLogic">
      <concept id="3059457401299011405" name="samples.fitch.herbrandLogic.structure.Forall" flags="ng" index="3jEQs6">
        <child id="3059457401299011419" name="variable" index="3jEQsg" />
        <child id="3059457401299011420" name="sentence" index="3jEQsn" />
      </concept>
      <concept id="3059457401299011425" name="samples.fitch.herbrandLogic.structure.Relation" flags="ng" index="3jEQsE">
        <child id="3059457401299011435" name="member" index="3jEQsw" />
      </concept>
      <concept id="3059457401299011374" name="samples.fitch.herbrandLogic.structure.Object" flags="ng" index="3jEQt_" />
      <concept id="3059457401299011378" name="samples.fitch.herbrandLogic.structure.Variable" flags="ng" index="3jEQtT" />
      <concept id="3059457401299011381" name="samples.fitch.herbrandLogic.structure.Function" flags="ng" index="3jEQtY">
        <child id="3059457401299011423" name="argument" index="3jEQsk" />
      </concept>
      <concept id="1069765272453957482" name="samples.fitch.herbrandLogic.structure.ForallElim" flags="ng" index="3Zs_qM" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1rkQQC" id="3w0n0hzkQZ9">
    <property role="TrG5h" value="Test1" />
    <property role="26WHrx" value="Proove a=c from b=a and b=c" />
    <node concept="GydIM" id="3w0n0hzl41D" role="2jVTa7">
      <node concept="1rkNff" id="3w0n0hzl41P" role="3MT$nN">
        <node concept="3jEQt_" id="3w0n0hzl41W" role="1rkNfh">
          <property role="TrG5h" value="b" />
        </node>
        <node concept="3jEQt_" id="3w0n0hzl41Y" role="1rkNfj">
          <property role="TrG5h" value="a" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="3w0n0hzl42d" role="2jVTa7">
      <node concept="1rkNff" id="3w0n0hzl42x" role="3MT$nN">
        <node concept="3jEQt_" id="3w0n0hzl42C" role="1rkNfh">
          <property role="TrG5h" value="b" />
        </node>
        <node concept="3jEQt_" id="3w0n0hzl42E" role="1rkNfj">
          <property role="TrG5h" value="c" />
        </node>
      </node>
    </node>
    <node concept="1rkNOn" id="3w0n0hzl41h" role="2jVTa7">
      <node concept="2jWMwi" id="3w0n0hzl434" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hzl42d" />
      </node>
      <node concept="2jWMwi" id="3w0n0hzl43a" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hzl41D" />
      </node>
      <node concept="1rkNff" id="3w0n0hzl42G" role="3MT$nN">
        <node concept="3jEQt_" id="3w0n0hzl42N" role="1rkNfh">
          <property role="TrG5h" value="a" />
        </node>
        <node concept="3jEQt_" id="3w0n0hzl42P" role="1rkNfj">
          <property role="TrG5h" value="c" />
        </node>
      </node>
    </node>
    <node concept="GyqZO" id="3w0n0hznGE5" role="GyqZB">
      <node concept="1rkNff" id="3w0n0hznGEb" role="GyqZP">
        <node concept="3jEQt_" id="3w0n0hznGEi" role="1rkNfh">
          <property role="TrG5h" value="a" />
        </node>
        <node concept="3jEQt_" id="3w0n0hznGEk" role="1rkNfj">
          <property role="TrG5h" value="c" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1rkQQC" id="3w0n0hznGEq">
    <property role="TrG5h" value="Test2" />
    <property role="26WHrx" value="Proove f(f(a))=a from f(a)=b and f(b)=a" />
    <node concept="GydIM" id="3w0n0hznGFv" role="2jVTa7">
      <node concept="1rkNff" id="3w0n0hznGF$" role="3MT$nN">
        <node concept="3jEQtY" id="3w0n0hznGFI" role="1rkNfh">
          <property role="TrG5h" value="f" />
          <node concept="3jEQt_" id="3w0n0hznGFK" role="3jEQsk">
            <property role="TrG5h" value="a" />
          </node>
        </node>
        <node concept="3jEQt_" id="3w0n0hznGFM" role="1rkNfj">
          <property role="TrG5h" value="b" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="3w0n0hznGFV" role="2jVTa7">
      <node concept="1rkNff" id="3w0n0hznGGf" role="3MT$nN">
        <node concept="3jEQtY" id="3w0n0hznGGp" role="1rkNfh">
          <property role="TrG5h" value="f" />
          <node concept="3jEQt_" id="3w0n0hznGGr" role="3jEQsk">
            <property role="TrG5h" value="b" />
          </node>
        </node>
        <node concept="3jEQt_" id="3w0n0hznGGt" role="1rkNfj">
          <property role="TrG5h" value="a" />
        </node>
      </node>
    </node>
    <node concept="1rkNOn" id="3w0n0hznGH$" role="2jVTa7">
      <node concept="2jWMwi" id="3w0n0hznGHW" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGFV" />
      </node>
      <node concept="2jWMwi" id="3w0n0hznGI2" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGFv" />
      </node>
      <node concept="1rkNff" id="3w0n0hznGI6" role="3MT$nN">
        <node concept="3jEQtY" id="3w0n0hznGIg" role="1rkNfh">
          <property role="TrG5h" value="f" />
          <node concept="3jEQtY" id="3w0n0hznGIl" role="3jEQsk">
            <property role="TrG5h" value="f" />
            <node concept="3jEQt_" id="3w0n0hznGIn" role="3jEQsk">
              <property role="TrG5h" value="a" />
            </node>
          </node>
        </node>
        <node concept="3jEQt_" id="3w0n0hznGIp" role="1rkNfj">
          <property role="TrG5h" value="a" />
        </node>
      </node>
    </node>
    <node concept="GyqZO" id="3w0n0hznGES" role="GyqZB">
      <node concept="1rkNff" id="3w0n0hznGEW" role="GyqZP">
        <node concept="3jEQtY" id="3w0n0hznGF6" role="1rkNfh">
          <property role="TrG5h" value="f" />
          <node concept="3jEQtY" id="3w0n0hznGFb" role="3jEQsk">
            <property role="TrG5h" value="f" />
            <node concept="3jEQt_" id="3w0n0hznGFd" role="3jEQsk">
              <property role="TrG5h" value="a" />
            </node>
          </node>
        </node>
        <node concept="3jEQt_" id="3w0n0hznGFf" role="1rkNfj">
          <property role="TrG5h" value="a" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1rkQQC" id="3w0n0hznGIK">
    <property role="TrG5h" value="Test3" />
    <property role="26WHrx" value="Sample proof" />
    <node concept="GydIM" id="3w0n0hznGMq" role="2jVTa7">
      <node concept="1rkNff" id="3w0n0hznGMK" role="3MT$nN">
        <node concept="3jEQtY" id="3w0n0hznGMU" role="1rkNfh">
          <property role="TrG5h" value="father" />
          <node concept="3jEQt_" id="3w0n0hznGMW" role="3jEQsk">
            <property role="TrG5h" value="quincy" />
          </node>
        </node>
        <node concept="3jEQt_" id="3w0n0hznGMY" role="1rkNfj">
          <property role="TrG5h" value="pat" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="3w0n0hznGJk" role="2jVTa7">
      <node concept="3jEQs6" id="3w0n0hznGJu" role="3MT$nN">
        <node concept="3jEQtT" id="3w0n0hznGJw" role="3jEQsg">
          <property role="TrG5h" value="X" />
        </node>
        <node concept="3jEQsE" id="3w0n0hznGJD" role="3jEQsn">
          <property role="TrG5h" value="older" />
          <node concept="3jEQtY" id="3w0n0hznGJI" role="3jEQsw">
            <property role="TrG5h" value="father" />
            <node concept="3jEQtT" id="3w0n0hznGJK" role="3jEQsk">
              <property role="TrG5h" value="X" />
            </node>
          </node>
          <node concept="3jEQtT" id="3w0n0hznGJQ" role="3jEQsw">
            <property role="TrG5h" value="X" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Zs_qM" id="3w0n0hznGK6" role="2jVTa7">
      <node concept="2jWMwi" id="3w0n0hznGKo" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGJk" />
      </node>
      <node concept="3jEQsE" id="3w0n0hznGKu" role="3MT$nN">
        <property role="TrG5h" value="older" />
        <node concept="3jEQtY" id="3w0n0hznGKz" role="3jEQsw">
          <property role="TrG5h" value="father" />
          <node concept="3jEQt_" id="3w0n0hznGK_" role="3jEQsk">
            <property role="TrG5h" value="quincy" />
          </node>
        </node>
        <node concept="3jEQt_" id="3w0n0hznGKF" role="3jEQsw">
          <property role="TrG5h" value="quincy" />
        </node>
      </node>
    </node>
    <node concept="1rkNOn" id="3w0n0hznGL2" role="2jVTa7">
      <node concept="2jWMwi" id="3w0n0hznGLq" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGK6" />
      </node>
      <node concept="2jWMwi" id="3w0n0hznGN4" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGMq" />
      </node>
      <node concept="3jEQsE" id="3w0n0hznGNb" role="3MT$nN">
        <property role="TrG5h" value="older" />
        <node concept="3jEQt_" id="3w0n0hznGNd" role="3jEQsw">
          <property role="TrG5h" value="pat" />
        </node>
        <node concept="3jEQt_" id="3w0n0hznGNi" role="3jEQsw">
          <property role="TrG5h" value="quincy" />
        </node>
      </node>
    </node>
    <node concept="GyqZO" id="3w0n0hznGIM" role="GyqZB">
      <node concept="3jEQsE" id="3w0n0hznGIT" role="GyqZP">
        <property role="TrG5h" value="older" />
        <node concept="3jEQt_" id="3w0n0hznGIV" role="3jEQsw">
          <property role="TrG5h" value="pat" />
        </node>
        <node concept="3jEQt_" id="3w0n0hznGJ0" role="3jEQsw">
          <property role="TrG5h" value="quincy" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1rkQQC" id="3w0n0hznGNm">
    <property role="TrG5h" value="Test4" />
    <property role="26WHrx" value="Proove p(c) from p(a), p(b) and (a=c \/ b=c)." />
    <node concept="GydIM" id="3w0n0hznGNz" role="2jVTa7">
      <node concept="3jEQsE" id="3w0n0hznGNF" role="3MT$nN">
        <property role="TrG5h" value="p" />
        <node concept="3jEQt_" id="3w0n0hznGNH" role="3jEQsw">
          <property role="TrG5h" value="a" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="3w0n0hznGNO" role="2jVTa7">
      <node concept="3jEQsE" id="3w0n0hznGNZ" role="3MT$nN">
        <property role="TrG5h" value="p" />
        <node concept="3jEQt_" id="3w0n0hznGO1" role="3jEQsw">
          <property role="TrG5h" value="b" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="3w0n0hznGOO" role="2jVTa7">
      <node concept="2jWM$7" id="3w0n0hznGP7" role="3MT$nN">
        <node concept="1rkNff" id="3w0n0hznGPM" role="2jWM__">
          <node concept="3jEQt_" id="3w0n0hznGPU" role="1rkNfh">
            <property role="TrG5h" value="a" />
          </node>
          <node concept="3jEQt_" id="3w0n0hznGPW" role="1rkNfj">
            <property role="TrG5h" value="c" />
          </node>
        </node>
        <node concept="1rkNff" id="3w0n0hznGQi" role="2jWM__">
          <node concept="3jEQt_" id="3w0n0hznGQs" role="1rkNfh">
            <property role="TrG5h" value="b" />
          </node>
          <node concept="3jEQt_" id="3w0n0hznGQu" role="1rkNfj">
            <property role="TrG5h" value="c" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="3w0n0hznGR$" role="2jVTa7">
      <node concept="2jWGsN" id="3w0n0hznGR_" role="2jWza4">
        <node concept="1rkNff" id="3w0n0hznGRQ" role="3MT$nN">
          <node concept="3jEQt_" id="3w0n0hznGRW" role="1rkNfh">
            <property role="TrG5h" value="a" />
          </node>
          <node concept="3jEQt_" id="3w0n0hznGRY" role="1rkNfj">
            <property role="TrG5h" value="c" />
          </node>
        </node>
      </node>
      <node concept="1rkNOn" id="3w0n0hznGSI" role="2jWza4">
        <node concept="2jWMwi" id="3w0n0hznGSU" role="2jWFax">
          <ref role="2jWMyc" node="3w0n0hznGNz" />
        </node>
        <node concept="2jWMwi" id="3w0n0hznGT0" role="2jWFax">
          <ref role="2jWMyc" node="3w0n0hznGR_" />
        </node>
        <node concept="3jEQsE" id="3w0n0hznGT7" role="3MT$nN">
          <property role="TrG5h" value="p" />
          <node concept="3jEQt_" id="3w0n0hznGT9" role="3jEQsw">
            <property role="TrG5h" value="c" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="3w0n0hznGTA" role="2jVTa7">
      <node concept="2jWMwi" id="3w0n0hznGU6" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGR$" />
      </node>
      <node concept="2jWM_K" id="3w0n0hznGUl" role="3MT$nN">
        <node concept="1rkNff" id="3w0n0hznGUs" role="2jWM_N">
          <node concept="3jEQt_" id="3w0n0hznGUz" role="1rkNfh">
            <property role="TrG5h" value="a" />
          </node>
          <node concept="3jEQt_" id="3w0n0hznGU_" role="1rkNfj">
            <property role="TrG5h" value="c" />
          </node>
        </node>
        <node concept="3jEQsE" id="3w0n0hznGUE" role="2jWM_P">
          <property role="TrG5h" value="p" />
          <node concept="3jEQt_" id="3w0n0hznGUG" role="3jEQsw">
            <property role="TrG5h" value="c" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="3w0n0hznGVh" role="2jVTa7">
      <node concept="2jWGsN" id="3w0n0hznGVi" role="2jWza4">
        <node concept="1rkNff" id="3w0n0hznGVP" role="3MT$nN">
          <node concept="3jEQt_" id="3w0n0hznGVV" role="1rkNfh">
            <property role="TrG5h" value="b" />
          </node>
          <node concept="3jEQt_" id="3w0n0hznGVX" role="1rkNfj">
            <property role="TrG5h" value="c" />
          </node>
        </node>
      </node>
      <node concept="1rkNOn" id="3w0n0hznGXh" role="2jWza4">
        <node concept="2jWMwi" id="3w0n0hznGXt" role="2jWFax">
          <ref role="2jWMyc" node="3w0n0hznGNO" />
        </node>
        <node concept="2jWMwi" id="3w0n0hznGXz" role="2jWFax">
          <ref role="2jWMyc" node="3w0n0hznGVi" />
        </node>
        <node concept="3jEQsE" id="3w0n0hznGXE" role="3MT$nN">
          <property role="TrG5h" value="p" />
          <node concept="3jEQt_" id="3w0n0hznGXG" role="3jEQsw">
            <property role="TrG5h" value="c" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="3w0n0hznGYq" role="2jVTa7">
      <node concept="2jWMwi" id="3w0n0hznGZc" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGVh" />
      </node>
      <node concept="2jWM_K" id="3w0n0hznGZj" role="3MT$nN">
        <node concept="1rkNff" id="3w0n0hznGZq" role="2jWM_N">
          <node concept="3jEQt_" id="3w0n0hznGZx" role="1rkNfh">
            <property role="TrG5h" value="b" />
          </node>
          <node concept="3jEQt_" id="3w0n0hznGZz" role="1rkNfj">
            <property role="TrG5h" value="c" />
          </node>
        </node>
        <node concept="3jEQsE" id="3w0n0hznGZC" role="2jWM_P">
          <property role="TrG5h" value="p" />
          <node concept="3jEQt_" id="3w0n0hznGZE" role="3jEQsw">
            <property role="TrG5h" value="c" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWz54" id="3w0n0hznH0x" role="2jVTa7">
      <node concept="2jWMwi" id="3w0n0hznH1x" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGTA" />
      </node>
      <node concept="2jWMwi" id="3w0n0hznH1D" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGYq" />
      </node>
      <node concept="2jWMwi" id="3w0n0hznH1r" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hznGOO" />
      </node>
      <node concept="3jEQsE" id="3w0n0hznH1L" role="3MT$nN">
        <property role="TrG5h" value="p" />
        <node concept="3jEQt_" id="3w0n0hznH1N" role="3jEQsw">
          <property role="TrG5h" value="c" />
        </node>
      </node>
    </node>
    <node concept="GyqZO" id="3w0n0hznGNo" role="GyqZB">
      <node concept="3jEQsE" id="3w0n0hznGNv" role="GyqZP">
        <property role="TrG5h" value="p" />
        <node concept="3jEQt_" id="3w0n0hznGNx" role="3jEQsw">
          <property role="TrG5h" value="c" />
        </node>
      </node>
    </node>
  </node>
</model>

