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
      <concept id="4322786184247881316" name="samples.fitch.propositionalLogic.structure.OrIntro" flags="ng" index="2jWz55" />
      <concept id="4322786184247881318" name="samples.fitch.propositionalLogic.structure.NotIntro" flags="ng" index="2jWz57" />
      <concept id="4322786184247901129" name="samples.fitch.propositionalLogic.structure.IfIntro" flags="ng" index="2jWAjC" />
      <concept id="4322786184247901128" name="samples.fitch.propositionalLogic.structure.NotElim" flags="ng" index="2jWAjD" />
      <concept id="4322786184247901142" name="samples.fitch.propositionalLogic.structure.IfElim" flags="ng" index="2jWAjR" />
      <concept id="4322786184247805399" name="samples.fitch.propositionalLogic.structure.Not" flags="ng" index="2jWLFQ">
        <child id="4322786184247805400" name="target" index="2jWLFT" />
      </concept>
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
      <concept id="4322786184247854968" name="samples.fitch.structure.Reasoning" flags="ngI" index="2jWHxp">
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
      <concept id="6123633795074140037" name="samples.fitch.structure.Reiteration" flags="ng" index="1l0MfV" />
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
      <concept id="3059457401299011411" name="samples.fitch.herbrandLogic.structure.Exists" flags="ng" index="3jEQso">
        <child id="3059457401299011416" name="variable" index="3jEQsj" />
        <child id="3059457401299011414" name="sentence" index="3jEQst" />
      </concept>
      <concept id="3059457401299011425" name="samples.fitch.herbrandLogic.structure.Relation" flags="ng" index="3jEQsE">
        <child id="3059457401299011435" name="member" index="3jEQsw" />
      </concept>
      <concept id="3059457401299011374" name="samples.fitch.herbrandLogic.structure.Object" flags="ng" index="3jEQt_" />
      <concept id="3059457401299011378" name="samples.fitch.herbrandLogic.structure.Variable" flags="ng" index="3jEQtT" />
      <concept id="3059457401299011381" name="samples.fitch.herbrandLogic.structure.Function" flags="ng" index="3jEQtY">
        <child id="3059457401299011423" name="argument" index="3jEQsk" />
      </concept>
      <concept id="1069765272453957481" name="samples.fitch.herbrandLogic.structure.ForallIntro" flags="ng" index="3Zs_qL" />
      <concept id="1069765272453957482" name="samples.fitch.herbrandLogic.structure.ForallElim" flags="ng" index="3Zs_qM" />
      <concept id="1069765272453957483" name="samples.fitch.herbrandLogic.structure.ExistsIntro" flags="ng" index="3Zs_qN" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
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
  <node concept="1rkQQC" id="4h0MmDW5AwM">
    <property role="TrG5h" value="NotForall_implies_Exists" />
    <property role="26WHrx" value="Proove a fact that is valid for any relation, using Relation_Tautology as a lemma: (~forall X. foo(X)) =&gt; (exists X. ~foo(X))" />
    <node concept="GydIM" id="4h0MmDW5Ayp" role="2jVTa7">
      <node concept="2jWM$7" id="4h0MmDW5AyB" role="3MT$nN">
        <node concept="3jEQs6" id="4h0MmDW5AyL" role="2jWM__">
          <node concept="3jEQtT" id="4h0MmDW5AyN" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="4h0MmDW5AyX" role="3jEQsn">
            <property role="TrG5h" value="foo" />
            <node concept="3jEQtT" id="4h0MmDW5Az1" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
        </node>
        <node concept="3jEQso" id="4h0MmDW5Az3" role="2jWM__">
          <node concept="3jEQtT" id="4h0MmDW5Az5" role="3jEQsj">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5Siz" role="3jEQst">
            <node concept="3jEQsE" id="4h0MmDW5Azi" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5Azk" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="4h0MmDW5ByP" role="2jVTa7">
      <node concept="2jWGsN" id="4h0MmDW5ByQ" role="2jWza4">
        <node concept="2jWLFQ" id="4h0MmDW5B_a" role="3MT$nN">
          <node concept="3jEQs6" id="4h0MmDW5B$W" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5B$X" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5B_5" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5B_7" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="4h0MmDW5AzC" role="2jWza4">
        <node concept="2jWGsN" id="4h0MmDW5AzD" role="2jWza4">
          <node concept="3jEQs6" id="4h0MmDW5AzW" role="3MT$nN">
            <node concept="3jEQtT" id="4h0MmDW5AzX" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5A$5" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5A$7" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWza5" id="4h0MmDW5A$g" role="2jWza4">
          <node concept="2jWGsN" id="4h0MmDW5A$h" role="2jWza4">
            <node concept="2jWLFQ" id="4h0MmDW5A$B" role="3MT$nN">
              <node concept="3jEQso" id="4h0MmDW5A$p" role="2jWLFT">
                <node concept="3jEQtT" id="4h0MmDW5A$q" role="3jEQsj">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="2jWLFQ" id="4h0MmDW5SiE" role="3jEQst">
                  <node concept="3jEQsE" id="4h0MmDW5A$y" role="2jWLFT">
                    <property role="TrG5h" value="foo" />
                    <node concept="3jEQtT" id="4h0MmDW5A$$" role="3jEQsw">
                      <property role="TrG5h" value="X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1l0MfV" id="4h0MmDW5ABz" role="2jWza4">
            <node concept="2jWMwi" id="4h0MmDW5AB$" role="2jWFax">
              <ref role="2jWMyc" node="4h0MmDW5AzD" />
            </node>
            <node concept="3jEQs6" id="4h0MmDW5AB_" role="3MT$nN">
              <node concept="3jEQtT" id="4h0MmDW5ABA" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5ABB" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5ABC" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWAjC" id="4h0MmDW5A_N" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5ABw" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5A$g" />
          </node>
          <node concept="2jWM_K" id="4h0MmDW5ABT" role="3MT$nN">
            <node concept="2jWLFQ" id="4h0MmDW5ADc" role="2jWM_N">
              <node concept="3jEQso" id="4h0MmDW5ACW" role="2jWLFT">
                <node concept="3jEQtT" id="4h0MmDW5ACY" role="3jEQsj">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="2jWLFQ" id="4h0MmDW5SiL" role="3jEQst">
                  <node concept="3jEQsE" id="4h0MmDW5AD7" role="2jWLFT">
                    <property role="TrG5h" value="foo" />
                    <node concept="3jEQtT" id="4h0MmDW5AD9" role="3jEQsw">
                      <property role="TrG5h" value="X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3jEQs6" id="4h0MmDW5AED" role="2jWM_P">
              <node concept="3jEQtT" id="4h0MmDW5AEF" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5AEO" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5AEQ" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWza5" id="4h0MmDW5AFo" role="2jWza4">
          <node concept="2jWGsN" id="4h0MmDW5AFp" role="2jWza4">
            <node concept="2jWLFQ" id="4h0MmDW5AG1" role="3MT$nN">
              <node concept="3jEQso" id="4h0MmDW5AFU" role="2jWLFT">
                <node concept="3jEQtT" id="4h0MmDW5AFV" role="3jEQsj">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="2jWLFQ" id="4h0MmDW5SiS" role="3jEQst">
                  <node concept="3jEQsE" id="4h0MmDW5AGc" role="2jWLFT">
                    <property role="TrG5h" value="foo" />
                    <node concept="3jEQtT" id="4h0MmDW5AGe" role="3jEQsw">
                      <property role="TrG5h" value="X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1l0MfV" id="4h0MmDW5AI6" role="2jWza4">
            <node concept="2jWMwi" id="4h0MmDW5Sp9" role="2jWFax">
              <ref role="2jWMyc" node="4h0MmDW5ByQ" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5AI8" role="3MT$nN">
              <node concept="3jEQs6" id="4h0MmDW5AI9" role="2jWLFT">
                <node concept="3jEQtT" id="4h0MmDW5AIa" role="3jEQsg">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="3jEQsE" id="4h0MmDW5AIb" role="3jEQsn">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5AIc" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWAjC" id="4h0MmDW5AKr" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5ALf" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5AFo" />
          </node>
          <node concept="2jWM_K" id="4h0MmDW5ALm" role="3MT$nN">
            <node concept="2jWLFQ" id="4h0MmDW5ANn" role="2jWM_N">
              <node concept="3jEQso" id="4h0MmDW5ALv" role="2jWLFT">
                <node concept="3jEQtT" id="4h0MmDW5ALx" role="3jEQsj">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="2jWLFQ" id="4h0MmDW5SiZ" role="3jEQst">
                  <node concept="3jEQsE" id="4h0MmDW5ANi" role="2jWLFT">
                    <property role="TrG5h" value="foo" />
                    <node concept="3jEQtT" id="4h0MmDW5ANk" role="3jEQsw">
                      <property role="TrG5h" value="X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5ANL" role="2jWM_P">
              <node concept="3jEQs6" id="4h0MmDW5ANx" role="2jWLFT">
                <node concept="3jEQtT" id="4h0MmDW5ANz" role="3jEQsg">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="3jEQsE" id="4h0MmDW5ANG" role="3jEQsn">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5ANI" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWz57" id="4h0MmDW5AOQ" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5APR" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5A_N" />
          </node>
          <node concept="2jWMwi" id="4h0MmDW5APX" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5AKr" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5AQh" role="3MT$nN">
            <node concept="2jWLFQ" id="4h0MmDW5AQs" role="2jWLFT">
              <node concept="3jEQso" id="4h0MmDW5AQ1" role="2jWLFT">
                <node concept="3jEQtT" id="4h0MmDW5AQ3" role="3jEQsj">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="2jWLFQ" id="4h0MmDW5Sj6" role="3jEQst">
                  <node concept="3jEQsE" id="4h0MmDW5AQc" role="2jWLFT">
                    <property role="TrG5h" value="foo" />
                    <node concept="3jEQtT" id="4h0MmDW5AQe" role="3jEQsw">
                      <property role="TrG5h" value="X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWAjD" id="4h0MmDW5B1s" role="2jWza4">
          <node concept="3jEQso" id="4h0MmDW5B89" role="3MT$nN">
            <node concept="3jEQtT" id="4h0MmDW5B8b" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5Sjd" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5B8k" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5B8m" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2jWMwi" id="4h0MmDW5B86" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5AOQ" />
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="4h0MmDW5Bbc" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5BcH" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5AzC" />
        </node>
        <node concept="2jWM_K" id="4h0MmDW5BcO" role="3MT$nN">
          <node concept="3jEQs6" id="4h0MmDW5BfV" role="2jWM_N">
            <node concept="3jEQtT" id="4h0MmDW5BfX" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5Bg6" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5Bg8" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
          <node concept="3jEQso" id="4h0MmDW5Bga" role="2jWM_P">
            <node concept="3jEQtT" id="4h0MmDW5Bgc" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5Sjk" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Bgl" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Bgn" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="4h0MmDW5BhZ" role="2jWza4">
        <node concept="2jWGsN" id="4h0MmDW5Bi0" role="2jWza4">
          <node concept="3jEQso" id="4h0MmDW5BjD" role="3MT$nN">
            <node concept="3jEQtT" id="4h0MmDW5BjF" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5Sjr" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5BjO" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5BjQ" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1l0MfV" id="4h0MmDW5BjZ" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5Bk0" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5Bi0" />
          </node>
          <node concept="3jEQso" id="4h0MmDW5Bk1" role="3MT$nN">
            <node concept="3jEQtT" id="4h0MmDW5Bk2" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5Sjy" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Bk3" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Bk4" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="4h0MmDW5Bm2" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5BnU" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5BhZ" />
        </node>
        <node concept="2jWM_K" id="4h0MmDW5Bo1" role="3MT$nN">
          <node concept="3jEQso" id="4h0MmDW5Boa" role="2jWM_N">
            <node concept="3jEQtT" id="4h0MmDW5Boc" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5SjD" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Bol" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Bon" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3jEQso" id="4h0MmDW5Bop" role="2jWM_P">
            <node concept="3jEQtT" id="4h0MmDW5Bor" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5SjK" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Bo$" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5BoA" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWz54" id="4h0MmDW5Bq_" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5BsJ" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5Bbc" />
        </node>
        <node concept="2jWMwi" id="4h0MmDW5BsR" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5Bm2" />
        </node>
        <node concept="2jWMwi" id="4h0MmDW5BsF" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5Ayp" />
        </node>
        <node concept="3jEQso" id="4h0MmDW5BsW" role="3MT$nN">
          <node concept="3jEQtT" id="4h0MmDW5BsY" role="3jEQsj">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5SjR" role="3jEQst">
            <node concept="3jEQsE" id="4h0MmDW5Bt7" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5Bt9" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="4h0MmDW5CxZ" role="2jVTa7">
      <node concept="2jWMwi" id="4h0MmDW5C$t" role="2jWFax">
        <ref role="2jWMyc" node="4h0MmDW5ByP" />
      </node>
      <node concept="2jWM_K" id="4h0MmDW5CDI" role="3MT$nN">
        <node concept="2jWLFQ" id="4h0MmDW5CJe" role="2jWM_N">
          <node concept="3jEQs6" id="4h0MmDW5CIJ" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5CIL" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5CIU" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5CIW" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3jEQso" id="4h0MmDW5CIY" role="2jWM_P">
          <node concept="3jEQtT" id="4h0MmDW5CJ0" role="3jEQsj">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5SjY" role="3jEQst">
            <node concept="3jEQsE" id="4h0MmDW5CJ9" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5CJb" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="GyqZO" id="4h0MmDW5AwO" role="GyqZB">
      <node concept="2jWM_K" id="4h0MmDW5Ax0" role="GyqZP">
        <node concept="3jEQso" id="4h0MmDW5Axz" role="2jWM_P">
          <node concept="3jEQtT" id="4h0MmDW5Ax_" role="3jEQsj">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5Sis" role="3jEQst">
            <node concept="3jEQsE" id="4h0MmDW5AxI" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5AxK" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWLFQ" id="4h0MmDW5Axp" role="2jWM_N">
          <node concept="3jEQs6" id="4h0MmDW5Ax9" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5Axb" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5Axk" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5CLI" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1rkQQC" id="4h0MmDW5CMA">
    <property role="TrG5h" value="Relation_Tautology" />
    <property role="26WHrx" value="Proove a fact about any relation, using NotExists_implies_ForAll as a lemma: (forall X. foo(X)) | (exists X. ~foo(X))" />
    <node concept="GydIM" id="4h0MmDW5RHG" role="2jVTa7">
      <node concept="2jWM_K" id="4h0MmDW5RL7" role="3MT$nN">
        <node concept="2jWLFQ" id="4h0MmDW5RLg" role="2jWM_N">
          <node concept="3jEQso" id="4h0MmDW5RLh" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5RLi" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5RLj" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5RLk" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5RLl" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3jEQs6" id="4h0MmDW5RLs" role="2jWM_P">
          <node concept="3jEQtT" id="4h0MmDW5RLt" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="4h0MmDW5RLu" role="3jEQsn">
            <property role="TrG5h" value="foo" />
            <node concept="3jEQtT" id="4h0MmDW5RLv" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="4h0MmDW5CNR" role="2jVTa7">
      <node concept="2jWGsN" id="4h0MmDW5CNS" role="2jWza4">
        <node concept="2jWLFQ" id="4h0MmDW5CPc" role="3MT$nN">
          <node concept="2jWM$7" id="4h0MmDW5CNY" role="2jWLFT">
            <node concept="3jEQs6" id="4h0MmDW5CO8" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5CO9" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5COa" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5COb" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
            <node concept="3jEQso" id="4h0MmDW5COh" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5COi" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5R_K" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5COj" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5COk" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="4h0MmDW5COD" role="2jWza4">
        <node concept="2jWGsN" id="4h0MmDW5COE" role="2jWza4">
          <node concept="3jEQs6" id="4h0MmDW5COR" role="3MT$nN">
            <node concept="3jEQtT" id="4h0MmDW5COS" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5CP0" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5CP2" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWz55" id="4h0MmDW5CRa" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5CRn" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5COE" />
          </node>
          <node concept="2jWM$7" id="4h0MmDW5CRt" role="3MT$nN">
            <node concept="3jEQs6" id="4h0MmDW5CRB" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5CRD" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5CRN" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5CRP" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
            <node concept="3jEQso" id="4h0MmDW5CRR" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5CRS" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5R_R" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5CRT" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5CRU" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="4h0MmDW5CT2" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5CTA" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5COD" />
        </node>
        <node concept="2jWM_K" id="4h0MmDW5CTH" role="3MT$nN">
          <node concept="3jEQs6" id="4h0MmDW5CTQ" role="2jWM_N">
            <node concept="3jEQtT" id="4h0MmDW5CTR" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5CTS" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5CTT" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
          <node concept="2jWM$7" id="4h0MmDW5CTY" role="2jWM_P">
            <node concept="3jEQs6" id="4h0MmDW5CTZ" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5CU0" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5CU1" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5CU2" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
            <node concept="3jEQso" id="4h0MmDW5CU3" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5CU4" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5R_Y" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5CU5" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5CU6" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="4h0MmDW5CUY" role="2jWza4">
        <node concept="2jWGsN" id="4h0MmDW5CUZ" role="2jWza4">
          <node concept="3jEQs6" id="4h0MmDW5CVI" role="3MT$nN">
            <node concept="3jEQtT" id="4h0MmDW5CVJ" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5CVR" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5CVT" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1l0MfV" id="4h0MmDW5CW2" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5CW3" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5CNS" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5CW4" role="3MT$nN">
            <node concept="2jWM$7" id="4h0MmDW5CW5" role="2jWLFT">
              <node concept="3jEQs6" id="4h0MmDW5CW6" role="2jWM__">
                <node concept="3jEQtT" id="4h0MmDW5CW7" role="3jEQsg">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="3jEQsE" id="4h0MmDW5CW8" role="3jEQsn">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5CW9" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
              <node concept="3jEQso" id="4h0MmDW5CWa" role="2jWM__">
                <node concept="3jEQtT" id="4h0MmDW5CWb" role="3jEQsj">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="2jWLFQ" id="4h0MmDW5RA5" role="3jEQst">
                  <node concept="3jEQsE" id="4h0MmDW5CWc" role="2jWLFT">
                    <property role="TrG5h" value="foo" />
                    <node concept="3jEQtT" id="4h0MmDW5CWd" role="3jEQsw">
                      <property role="TrG5h" value="X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="4h0MmDW5CYA" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5CZK" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5CUY" />
        </node>
        <node concept="2jWM_K" id="4h0MmDW5CZR" role="3MT$nN">
          <node concept="3jEQs6" id="4h0MmDW5D00" role="2jWM_N">
            <node concept="3jEQtT" id="4h0MmDW5D01" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5D02" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5D03" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5D0r" role="2jWM_P">
            <node concept="2jWM$7" id="4h0MmDW5D08" role="2jWLFT">
              <node concept="3jEQs6" id="4h0MmDW5D09" role="2jWM__">
                <node concept="3jEQtT" id="4h0MmDW5D0a" role="3jEQsg">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="3jEQsE" id="4h0MmDW5D0b" role="3jEQsn">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5D0c" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
              <node concept="3jEQso" id="4h0MmDW5D0d" role="2jWM__">
                <node concept="3jEQtT" id="4h0MmDW5D0e" role="3jEQsj">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="2jWLFQ" id="4h0MmDW5RAc" role="3jEQst">
                  <node concept="3jEQsE" id="4h0MmDW5D0f" role="2jWLFT">
                    <property role="TrG5h" value="foo" />
                    <node concept="3jEQtT" id="4h0MmDW5D0g" role="3jEQsw">
                      <property role="TrG5h" value="X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWz57" id="4h0MmDW5D82" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5D9p" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5CT2" />
        </node>
        <node concept="2jWMwi" id="4h0MmDW5D9v" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5CYA" />
        </node>
        <node concept="2jWLFQ" id="4h0MmDW5D9P" role="3MT$nN">
          <node concept="3jEQs6" id="4h0MmDW5D9_" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5D9B" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5D9K" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5D9M" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="4h0MmDW5D4x" role="2jVTa7">
      <node concept="2jWMwi" id="4h0MmDW5D5U" role="2jWFax">
        <ref role="2jWMyc" node="4h0MmDW5CNR" />
      </node>
      <node concept="2jWM_K" id="4h0MmDW5D61" role="3MT$nN">
        <node concept="2jWLFQ" id="4h0MmDW5D6t" role="2jWM_N">
          <node concept="2jWM$7" id="4h0MmDW5D6a" role="2jWLFT">
            <node concept="3jEQs6" id="4h0MmDW5D6b" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5D6c" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5D6d" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5D6e" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
            <node concept="3jEQso" id="4h0MmDW5D6f" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5D6g" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5RAj" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5D6h" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5D6i" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWLFQ" id="4h0MmDW5Da8" role="2jWM_P">
          <node concept="3jEQs6" id="4h0MmDW5D9Z" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5Da0" role="3jEQsg">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQsE" id="4h0MmDW5Da1" role="3jEQsn">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5Da2" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="4h0MmDW5Dai" role="2jVTa7">
      <node concept="2jWGsN" id="4h0MmDW5Daj" role="2jWza4">
        <node concept="2jWLFQ" id="4h0MmDW5Dcz" role="3MT$nN">
          <node concept="2jWM$7" id="4h0MmDW5Dc3" role="2jWLFT">
            <node concept="3jEQs6" id="4h0MmDW5Dcd" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5Dce" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5Dcf" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Dcg" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
            <node concept="3jEQso" id="4h0MmDW5Dcm" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5Dcn" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5RAq" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5Dco" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5Dcp" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="4h0MmDW5Dd4" role="2jWza4">
        <node concept="2jWGsN" id="4h0MmDW5Dd5" role="2jWza4">
          <node concept="3jEQso" id="4h0MmDW5Ddl" role="3MT$nN">
            <node concept="3jEQtT" id="4h0MmDW5Ddn" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5RAx" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Ddw" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Ddy" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWz55" id="4h0MmDW5De$" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5DeL" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5Dd5" />
          </node>
          <node concept="2jWM$7" id="4h0MmDW5DeR" role="3MT$nN">
            <node concept="3jEQs6" id="4h0MmDW5Df1" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5Df2" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5Df3" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Df4" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
            <node concept="3jEQso" id="4h0MmDW5Dfa" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5Dfb" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5RAC" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5Dfc" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5Dfd" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="4h0MmDW5Djd" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5DkL" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5Dd4" />
        </node>
        <node concept="2jWM_K" id="4h0MmDW5Dk4" role="3MT$nN">
          <node concept="3jEQso" id="4h0MmDW5Dkd" role="2jWM_N">
            <node concept="3jEQtT" id="4h0MmDW5Dke" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5RAJ" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Dkf" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Dkg" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2jWM$7" id="4h0MmDW5Dkl" role="2jWM_P">
            <node concept="3jEQs6" id="4h0MmDW5Dkm" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5Dkn" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5Dko" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Dkp" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
            <node concept="3jEQso" id="4h0MmDW5Dkq" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5Dkr" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5RAQ" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5Dks" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5Dkt" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="4h0MmDW5Dme" role="2jWza4">
        <node concept="2jWGsN" id="4h0MmDW5Dmf" role="2jWza4">
          <node concept="3jEQso" id="4h0MmDW5DmY" role="3MT$nN">
            <node concept="3jEQtT" id="4h0MmDW5DmZ" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5RAX" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Dn7" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Dn9" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1l0MfV" id="4h0MmDW5Dni" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5Dnj" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5Daj" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5Dnk" role="3MT$nN">
            <node concept="2jWM$7" id="4h0MmDW5Dnl" role="2jWLFT">
              <node concept="3jEQs6" id="4h0MmDW5Dnm" role="2jWM__">
                <node concept="3jEQtT" id="4h0MmDW5Dnn" role="3jEQsg">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="3jEQsE" id="4h0MmDW5Dno" role="3jEQsn">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5Dnp" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
              <node concept="3jEQso" id="4h0MmDW5Dnq" role="2jWM__">
                <node concept="3jEQtT" id="4h0MmDW5Dnr" role="3jEQsj">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="2jWLFQ" id="4h0MmDW5RB4" role="3jEQst">
                  <node concept="3jEQsE" id="4h0MmDW5Dns" role="2jWLFT">
                    <property role="TrG5h" value="foo" />
                    <node concept="3jEQtT" id="4h0MmDW5Dnt" role="3jEQsw">
                      <property role="TrG5h" value="X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="4h0MmDW5DpQ" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5DqW" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5Dme" />
        </node>
        <node concept="2jWM_K" id="4h0MmDW5Dr3" role="3MT$nN">
          <node concept="3jEQso" id="4h0MmDW5Drc" role="2jWM_N">
            <node concept="3jEQtT" id="4h0MmDW5Drd" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5RBb" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Dre" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Drf" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5DrB" role="2jWM_P">
            <node concept="2jWM$7" id="4h0MmDW5Drk" role="2jWLFT">
              <node concept="3jEQs6" id="4h0MmDW5Drl" role="2jWM__">
                <node concept="3jEQtT" id="4h0MmDW5Drm" role="3jEQsg">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="3jEQsE" id="4h0MmDW5Drn" role="3jEQsn">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5Dro" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
              <node concept="3jEQso" id="4h0MmDW5Drp" role="2jWM__">
                <node concept="3jEQtT" id="4h0MmDW5Drq" role="3jEQsj">
                  <property role="TrG5h" value="X" />
                </node>
                <node concept="2jWLFQ" id="4h0MmDW5RBi" role="3jEQst">
                  <node concept="3jEQsE" id="4h0MmDW5Drr" role="2jWLFT">
                    <property role="TrG5h" value="foo" />
                    <node concept="3jEQtT" id="4h0MmDW5Drs" role="3jEQsw">
                      <property role="TrG5h" value="X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWz57" id="4h0MmDW5Dtc" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5Duz" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5Djd" />
        </node>
        <node concept="2jWMwi" id="4h0MmDW5DuD" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5DpQ" />
        </node>
        <node concept="2jWLFQ" id="4h0MmDW5DuZ" role="3MT$nN">
          <node concept="3jEQso" id="4h0MmDW5DuJ" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5DuL" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5RBp" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5DuU" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5DuW" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjR" id="4h0MmDW5RN7" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5ROK" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5RHG" />
        </node>
        <node concept="2jWMwi" id="4h0MmDW5ROQ" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5Dtc" />
        </node>
        <node concept="3jEQs6" id="4h0MmDW5ROY" role="3MT$nN">
          <node concept="3jEQtT" id="4h0MmDW5RP0" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="4h0MmDW5RP9" role="3jEQsn">
            <property role="TrG5h" value="foo" />
            <node concept="3jEQtT" id="4h0MmDW5RPb" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="4h0MmDW5RW5" role="2jVTa7">
      <node concept="2jWMwi" id="4h0MmDW5RZM" role="2jWFax">
        <ref role="2jWMyc" node="4h0MmDW5Dai" />
      </node>
      <node concept="2jWM_K" id="4h0MmDW5RZT" role="3MT$nN">
        <node concept="3jEQs6" id="4h0MmDW5S0H" role="2jWM_P">
          <node concept="3jEQtT" id="4h0MmDW5S0J" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="4h0MmDW5S0S" role="3jEQsn">
            <property role="TrG5h" value="foo" />
            <node concept="3jEQtT" id="4h0MmDW5S0U" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
        </node>
        <node concept="2jWLFQ" id="4h0MmDW5S0n" role="2jWM_N">
          <node concept="2jWM$7" id="4h0MmDW5S02" role="2jWLFT">
            <node concept="3jEQs6" id="4h0MmDW5S03" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5S04" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5S05" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5S06" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
            <node concept="3jEQso" id="4h0MmDW5S07" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5S08" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5S09" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5S0a" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5S0b" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWz57" id="4h0MmDW5S4P" role="2jVTa7">
      <node concept="2jWMwi" id="4h0MmDW5S8O" role="2jWFax">
        <ref role="2jWMyc" node="4h0MmDW5D4x" />
      </node>
      <node concept="2jWMwi" id="4h0MmDW5S8U" role="2jWFax">
        <ref role="2jWMyc" node="4h0MmDW5RW5" />
      </node>
      <node concept="2jWLFQ" id="4h0MmDW5S91" role="3MT$nN">
        <node concept="2jWLFQ" id="4h0MmDW5S95" role="2jWLFT">
          <node concept="2jWM$7" id="4h0MmDW5S96" role="2jWLFT">
            <node concept="3jEQs6" id="4h0MmDW5S97" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5S98" role="3jEQsg">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQsE" id="4h0MmDW5S99" role="3jEQsn">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5S9a" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
            <node concept="3jEQso" id="4h0MmDW5S9b" role="2jWM__">
              <node concept="3jEQtT" id="4h0MmDW5S9c" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5S9d" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5S9e" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5S9f" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjD" id="4h0MmDW5Sdz" role="2jVTa7">
      <node concept="2jWMwi" id="4h0MmDW5ShL" role="2jWFax">
        <ref role="2jWMyc" node="4h0MmDW5S4P" />
      </node>
      <node concept="2jWM$7" id="4h0MmDW5ShT" role="3MT$nN">
        <node concept="3jEQs6" id="4h0MmDW5Si3" role="2jWM__">
          <node concept="3jEQtT" id="4h0MmDW5Si4" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="4h0MmDW5Si5" role="3jEQsn">
            <property role="TrG5h" value="foo" />
            <node concept="3jEQtT" id="4h0MmDW5Si6" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
        </node>
        <node concept="3jEQso" id="4h0MmDW5Sic" role="2jWM__">
          <node concept="3jEQtT" id="4h0MmDW5Sid" role="3jEQsj">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5Sie" role="3jEQst">
            <node concept="3jEQsE" id="4h0MmDW5Sif" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5Sig" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="GyqZO" id="4h0MmDW5CMC" role="GyqZB">
      <node concept="2jWM$7" id="4h0MmDW5CMJ" role="GyqZP">
        <node concept="3jEQs6" id="4h0MmDW5CMT" role="2jWM__">
          <node concept="3jEQtT" id="4h0MmDW5CMV" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="4h0MmDW5CN5" role="3jEQsn">
            <property role="TrG5h" value="foo" />
            <node concept="3jEQtT" id="4h0MmDW5CN7" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
        </node>
        <node concept="3jEQso" id="4h0MmDW5CN9" role="2jWM__">
          <node concept="3jEQtT" id="4h0MmDW5CNb" role="3jEQsj">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5R_D" role="3jEQst">
            <node concept="3jEQsE" id="4h0MmDW5CNo" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5CNq" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1rkQQC" id="4h0MmDW5Dv9">
    <property role="TrG5h" value="NotExists_implies_ForAll" />
    <property role="26WHrx" value="Proove a fact that is valid for any relation : (~exists X. ~foo(X)) =&gt; (forall X. foo(X))" />
    <node concept="2jWza5" id="4h0MmDW5Dw5" role="2jVTa7">
      <node concept="2jWGsN" id="4h0MmDW5Dw6" role="2jWza4">
        <node concept="2jWLFQ" id="4h0MmDW5Dwn" role="3MT$nN">
          <node concept="3jEQso" id="4h0MmDW5Dw9" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5Dwa" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5Rpr" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Dwi" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Dwk" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="4h0MmDW5DwM" role="2jWza4">
        <node concept="2jWGsN" id="4h0MmDW5DwN" role="2jWza4">
          <node concept="2jWLFQ" id="4h0MmDW5Rpy" role="3MT$nN">
            <node concept="3jEQsE" id="4h0MmDW5DwZ" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5Dx1" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Zs_qN" id="4h0MmDW5Dx8" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5Dxj" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5DwN" />
          </node>
          <node concept="3jEQso" id="4h0MmDW5Dxm" role="3MT$nN">
            <node concept="3jEQtT" id="4h0MmDW5Dxo" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5RpD" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Dxx" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Dxz" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="4h0MmDW5Dya" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5Dyy" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5DwM" />
        </node>
        <node concept="2jWM_K" id="4h0MmDW5DyD" role="3MT$nN">
          <node concept="2jWLFQ" id="4h0MmDW5RpK" role="2jWM_N">
            <node concept="3jEQsE" id="4h0MmDW5DyN" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5DyP" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
          <node concept="3jEQso" id="4h0MmDW5DyT" role="2jWM_P">
            <node concept="3jEQtT" id="4h0MmDW5DyV" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5RpR" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Dz4" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Dz6" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="4h0MmDW5Dzz" role="2jWza4">
        <node concept="2jWGsN" id="4h0MmDW5Dz$" role="2jWza4">
          <node concept="2jWLFQ" id="4h0MmDW5Rqz" role="3MT$nN">
            <node concept="3jEQsE" id="4h0MmDW5D$3" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5D$5" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1l0MfV" id="4h0MmDW5D$c" role="2jWza4">
          <node concept="2jWMwi" id="4h0MmDW5D$d" role="2jWFax">
            <ref role="2jWMyc" node="4h0MmDW5Dw6" />
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5D$e" role="3MT$nN">
            <node concept="3jEQso" id="4h0MmDW5D$f" role="2jWLFT">
              <node concept="3jEQtT" id="4h0MmDW5D$g" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5RpY" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5D$h" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5D$i" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="4h0MmDW5D_o" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5DA4" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5Dzz" />
        </node>
        <node concept="2jWM_K" id="4h0MmDW5DAb" role="3MT$nN">
          <node concept="2jWLFQ" id="4h0MmDW5Rq5" role="2jWM_N">
            <node concept="3jEQsE" id="4h0MmDW5DAk" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5DAl" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
          <node concept="2jWLFQ" id="4h0MmDW5DAx" role="2jWM_P">
            <node concept="3jEQso" id="4h0MmDW5DAo" role="2jWLFT">
              <node concept="3jEQtT" id="4h0MmDW5DAp" role="3jEQsj">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="2jWLFQ" id="4h0MmDW5Rqc" role="3jEQst">
                <node concept="3jEQsE" id="4h0MmDW5DAq" role="2jWLFT">
                  <property role="TrG5h" value="foo" />
                  <node concept="3jEQtT" id="4h0MmDW5DAr" role="3jEQsw">
                    <property role="TrG5h" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWz57" id="4h0MmDW5DBr" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5DCh" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5Dya" />
        </node>
        <node concept="2jWMwi" id="4h0MmDW5DCn" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5D_o" />
        </node>
        <node concept="2jWLFQ" id="4h0MmDW5Rqq" role="3MT$nN">
          <node concept="2jWLFQ" id="4h0MmDW5Rqj" role="2jWLFT">
            <node concept="3jEQsE" id="4h0MmDW5DCu" role="2jWLFT">
              <property role="TrG5h" value="foo" />
              <node concept="3jEQtT" id="4h0MmDW5DCw" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjD" id="4h0MmDW5RuC" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5RvI" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5DBr" />
        </node>
        <node concept="3jEQsE" id="4h0MmDW5RvO" role="3MT$nN">
          <property role="TrG5h" value="foo" />
          <node concept="3jEQtT" id="4h0MmDW5RvQ" role="3jEQsw">
            <property role="TrG5h" value="X" />
          </node>
        </node>
      </node>
      <node concept="3Zs_qL" id="4h0MmDW5RzM" role="2jWza4">
        <node concept="2jWMwi" id="4h0MmDW5R$W" role="2jWFax">
          <ref role="2jWMyc" node="4h0MmDW5RuC" />
        </node>
        <node concept="3jEQs6" id="4h0MmDW5R_3" role="3MT$nN">
          <node concept="3jEQtT" id="4h0MmDW5R_5" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="4h0MmDW5R_e" role="3jEQsn">
            <property role="TrG5h" value="foo" />
            <node concept="3jEQtT" id="4h0MmDW5R_g" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="4h0MmDW5RwX" role="2jVTa7">
      <node concept="2jWMwi" id="4h0MmDW5Ry8" role="2jWFax">
        <ref role="2jWMyc" node="4h0MmDW5Dw5" />
      </node>
      <node concept="2jWM_K" id="4h0MmDW5Ryf" role="3MT$nN">
        <node concept="2jWLFQ" id="4h0MmDW5R_r" role="2jWM_N">
          <node concept="3jEQso" id="4h0MmDW5Ryo" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5Ryq" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5RyC" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5Ryz" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5Ry_" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3jEQs6" id="4h0MmDW5R_i" role="2jWM_P">
          <node concept="3jEQtT" id="4h0MmDW5R_j" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="4h0MmDW5R_k" role="3jEQsn">
            <property role="TrG5h" value="foo" />
            <node concept="3jEQtT" id="4h0MmDW5R_l" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="GyqZO" id="4h0MmDW5Dvb" role="GyqZB">
      <node concept="2jWM_K" id="4h0MmDW5Dvj" role="GyqZP">
        <node concept="2jWLFQ" id="4h0MmDW5DvG" role="2jWM_N">
          <node concept="3jEQso" id="4h0MmDW5Dvs" role="2jWLFT">
            <node concept="3jEQtT" id="4h0MmDW5Dvu" role="3jEQsj">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="2jWLFQ" id="4h0MmDW5Rpk" role="3jEQst">
              <node concept="3jEQsE" id="4h0MmDW5R0E" role="2jWLFT">
                <property role="TrG5h" value="foo" />
                <node concept="3jEQtT" id="4h0MmDW5R0G" role="3jEQsw">
                  <property role="TrG5h" value="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3jEQs6" id="4h0MmDW5DvQ" role="2jWM_P">
          <node concept="3jEQtT" id="4h0MmDW5DvS" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="4h0MmDW5Dw1" role="3jEQsn">
            <property role="TrG5h" value="foo" />
            <node concept="3jEQtT" id="4h0MmDW5Dw3" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

