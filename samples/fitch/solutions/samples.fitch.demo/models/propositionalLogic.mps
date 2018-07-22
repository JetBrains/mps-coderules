<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ff7f5a29-d9b8-40f0-b446-35696305dff0(samples.fitch.demo.propositionalLogic)">
  <persistence version="9" />
  <languages>
    <use id="06b7c5c7-e359-4f4b-a581-5d0c9323af39" name="samples.fitch" version="1" />
    <use id="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" name="samples.fitch.propositionalLogic" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" name="samples.fitch.propositionalLogic">
      <concept id="4322786184247881315" name="samples.fitch.propositionalLogic.structure.AndElim" flags="ng" index="2jWz52" />
      <concept id="4322786184247881317" name="samples.fitch.propositionalLogic.structure.OrElim" flags="ng" index="2jWz54" />
      <concept id="4322786184247881316" name="samples.fitch.propositionalLogic.structure.OrIntro" flags="ng" index="2jWz55" />
      <concept id="4322786184247881318" name="samples.fitch.propositionalLogic.structure.NotIntro" flags="ng" index="2jWz57" />
      <concept id="4322786184247881194" name="samples.fitch.propositionalLogic.structure.AndIntro" flags="ng" index="2jWzbb" />
      <concept id="4322786184247901129" name="samples.fitch.propositionalLogic.structure.IfIntro" flags="ng" index="2jWAjC" />
      <concept id="4322786184247901128" name="samples.fitch.propositionalLogic.structure.NotElim" flags="ng" index="2jWAjD" />
      <concept id="4322786184247901143" name="samples.fitch.propositionalLogic.structure.IffIntro" flags="ng" index="2jWAjQ" />
      <concept id="4322786184247901142" name="samples.fitch.propositionalLogic.structure.IfElim" flags="ng" index="2jWAjR" />
      <concept id="4322786184247901144" name="samples.fitch.propositionalLogic.structure.IffElim" flags="ng" index="2jWAjT" />
      <concept id="4322786184247805384" name="samples.fitch.propositionalLogic.structure.Proposition" flags="ng" index="2jWLFD" />
      <concept id="4322786184247805399" name="samples.fitch.propositionalLogic.structure.Not" flags="ng" index="2jWLFQ">
        <child id="4322786184247805400" name="target" index="2jWLFT" />
      </concept>
      <concept id="4322786184247818020" name="samples.fitch.propositionalLogic.structure.PropositionalProof" flags="ng" index="2jWMw5" />
      <concept id="4322786184247817766" name="samples.fitch.propositionalLogic.structure.Or" flags="ng" index="2jWM$7">
        <child id="4322786184247817796" name="disjunct" index="2jWM__" />
      </concept>
      <concept id="4322786184247817809" name="samples.fitch.propositionalLogic.structure.If" flags="ng" index="2jWM_K">
        <child id="4322786184247817810" name="antecedent" index="2jWM_N" />
        <child id="4322786184247817812" name="consequent" index="2jWM_P" />
      </concept>
      <concept id="4322786184247817953" name="samples.fitch.propositionalLogic.structure.Iff" flags="ng" index="2jWMB0">
        <child id="4322786184247817963" name="antecedent" index="2jWMBa" />
        <child id="4322786184247817964" name="consequent" index="2jWMBd" />
      </concept>
      <concept id="4322786184247817723" name="samples.fitch.propositionalLogic.structure.And" flags="ng" index="2jWMFq">
        <child id="4322786184247817724" name="conjunct" index="2jWMFt" />
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
      <concept id="6123633795074140037" name="samples.fitch.structure.Reiteration" flags="ng" index="1l0MfV" />
      <concept id="4035326440038975469" name="samples.fitch.structure.AbstractProof" flags="ng" index="1rgTJD">
        <property id="2994859399702197792" name="description" index="26WHrx" />
        <child id="4322786184248036774" name="content" index="2jVTa7" />
        <child id="657004910291159451" name="goal" index="GyqZB" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2jWMw5" id="2AfSc6Jv_cR">
    <property role="TrG5h" value="Test1" />
    <property role="26WHrx" value="Given p, q, and (p &amp; q =&gt; r) proove r." />
    <node concept="GyqZO" id="2AfSc6Jv_cT" role="GyqZB">
      <node concept="2jWLFD" id="2AfSc6Jv_cX" role="GyqZP">
        <property role="TrG5h" value="r" />
      </node>
    </node>
    <node concept="GydIM" id="2AfSc6Jv_cZ" role="2jVTa7">
      <node concept="2jWLFD" id="2AfSc6Jv_d4" role="3MT$nN">
        <property role="TrG5h" value="p" />
      </node>
    </node>
    <node concept="GydIM" id="2AfSc6Jv_da" role="2jVTa7">
      <node concept="2jWLFD" id="2AfSc6Jv_dh" role="3MT$nN">
        <property role="TrG5h" value="q" />
      </node>
    </node>
    <node concept="GydIM" id="2AfSc6Jv_dp" role="2jVTa7">
      <node concept="2jWM_K" id="2AfSc6Jv_dL" role="3MT$nN">
        <node concept="2jWMFq" id="2AfSc6Jv_d_" role="2jWM_N">
          <node concept="2jWLFD" id="2AfSc6Jv_dy" role="2jWMFt">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2jWLFD" id="2AfSc6Jv_dG" role="2jWMFt">
            <property role="TrG5h" value="q" />
          </node>
        </node>
        <node concept="2jWLFD" id="2AfSc6Jv_dW" role="2jWM_P">
          <property role="TrG5h" value="r" />
        </node>
      </node>
    </node>
    <node concept="2jWzbb" id="2AfSc6Jv_ea" role="2jVTa7">
      <node concept="2jWMwi" id="2AfSc6Jv_es" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6Jv_cZ" />
      </node>
      <node concept="2jWMwi" id="2AfSc6Jv_ey" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6Jv_da" />
      </node>
      <node concept="2jWMFq" id="2AfSc6Jv_eD" role="3MT$nN">
        <node concept="2jWLFD" id="2AfSc6Jv_eA" role="2jWMFt">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="2AfSc6Jv_eK" role="2jWMFt">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWAjR" id="2AfSc6JxVe6" role="2jVTa7">
      <node concept="2jWMwi" id="2AfSc6JxVeu" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6Jv_dp" />
      </node>
      <node concept="2jWMwi" id="2AfSc6JxVe$" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6Jv_ea" />
      </node>
      <node concept="2jWLFD" id="2AfSc6JxVeC" role="3MT$nN">
        <property role="TrG5h" value="r" />
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="3l440nVt5$e">
    <property role="TrG5h" value="Nonsense" />
    <property role="26WHrx" value="Ex nihilo quilibet. Proove nonsense given (p &amp; ~p)." />
    <node concept="GyqZO" id="3l440nVt5$g" role="GyqZB">
      <node concept="2jWLFD" id="3l440nVt5$k" role="GyqZP">
        <property role="TrG5h" value="nonsense" />
      </node>
    </node>
    <node concept="GydIM" id="1w94$GeTp5D" role="2jVTa7">
      <node concept="2jWMFq" id="1w94$GeTp5T" role="3MT$nN">
        <node concept="2jWLFD" id="1w94$GeTp5Q" role="2jWMFt">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFQ" id="1w94$GeTp60" role="2jWMFt">
          <node concept="2jWLFD" id="1w94$GeTp63" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="1w94$GeTp6r" role="2jVTa7">
      <node concept="2jWGsN" id="1w94$GeTp6s" role="2jWza4">
        <node concept="2jWLFQ" id="1w94$GeTp6$" role="3MT$nN">
          <node concept="2jWLFD" id="1w94$GeTp6A" role="2jWLFT">
            <property role="TrG5h" value="nonsense" />
          </node>
        </node>
      </node>
      <node concept="2jWz52" id="1w94$GeTp71" role="2jWza4">
        <node concept="2jWMwi" id="1w94$GeTp7c" role="2jWFax">
          <ref role="2jWMyc" node="1w94$GeTp5D" />
        </node>
        <node concept="2jWLFD" id="1w94$GeTp7f" role="3MT$nN">
          <property role="TrG5h" value="p" />
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="1w94$GeTp7G" role="2jVTa7">
      <node concept="2jWMwi" id="1w94$GeTp80" role="2jWFax">
        <ref role="2jWMyc" node="1w94$GeTp6r" />
      </node>
      <node concept="2jWM_K" id="1w94$GeTp89" role="3MT$nN">
        <node concept="2jWLFQ" id="1w94$GeTp8j" role="2jWM_N">
          <node concept="2jWLFD" id="1w94$GeTp85" role="2jWLFT">
            <property role="TrG5h" value="nonsense" />
          </node>
        </node>
        <node concept="2jWLFD" id="1w94$GeTp8g" role="2jWM_P">
          <property role="TrG5h" value="p" />
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="1w94$GeTp8J" role="2jVTa7">
      <node concept="2jWGsN" id="1w94$GeTp8K" role="2jWza4">
        <node concept="2jWLFQ" id="1w94$GeTp95" role="3MT$nN">
          <node concept="2jWLFD" id="1w94$GeTp97" role="2jWLFT">
            <property role="TrG5h" value="nonsense" />
          </node>
        </node>
      </node>
      <node concept="2jWz52" id="1w94$GeTp9e" role="2jWza4">
        <node concept="2jWMwi" id="1w94$GeTp9p" role="2jWFax">
          <ref role="2jWMyc" node="1w94$GeTp5D" />
        </node>
        <node concept="2jWLFQ" id="1w94$GeTp9s" role="3MT$nN">
          <node concept="2jWLFD" id="1w94$GeTp9u" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="1w94$GeTpab" role="2jVTa7">
      <node concept="2jWMwi" id="1w94$GeTpaH" role="2jWFax">
        <ref role="2jWMyc" node="1w94$GeTp8J" />
      </node>
      <node concept="2jWM_K" id="1w94$GeTpaO" role="3MT$nN">
        <node concept="2jWLFQ" id="1w94$GeTpb0" role="2jWM_N">
          <node concept="2jWLFD" id="1w94$GeTpaK" role="2jWLFT">
            <property role="TrG5h" value="nonsense" />
          </node>
        </node>
        <node concept="2jWLFQ" id="1w94$GeTpaV" role="2jWM_P">
          <node concept="2jWLFD" id="1w94$GeTpaX" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWz57" id="1w94$GeTpbB" role="2jVTa7">
      <node concept="2jWMwi" id="1w94$GeTpcg" role="2jWFax">
        <ref role="2jWMyc" node="1w94$GeTp7G" />
      </node>
      <node concept="2jWMwi" id="1w94$GeTpcm" role="2jWFax">
        <ref role="2jWMyc" node="1w94$GeTpab" />
      </node>
      <node concept="2jWLFQ" id="1w94$GeTpcq" role="3MT$nN">
        <node concept="2jWLFQ" id="1w94$GeTpcs" role="2jWLFT">
          <node concept="2jWLFD" id="1w94$GeTpcu" role="2jWLFT">
            <property role="TrG5h" value="nonsense" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjD" id="1w94$GeTpd9" role="2jVTa7">
      <node concept="2jWMwi" id="1w94$GeTpdS" role="2jWFax">
        <ref role="2jWMyc" node="1w94$GeTpbB" />
      </node>
      <node concept="2jWLFD" id="1w94$GeTpdV" role="3MT$nN">
        <property role="TrG5h" value="nonsense" />
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="2AfSc6Jv$28">
    <property role="TrG5h" value="Contrapositive" />
    <property role="26WHrx" value="Proove the contrapositive (~q =&gt; ~p) given (p =&gt; q)" />
    <node concept="GyqZO" id="2AfSc6Jv$2a" role="GyqZB">
      <node concept="2jWM_K" id="2AfSc6Jv$2k" role="GyqZP">
        <node concept="2jWLFQ" id="2AfSc6Jv$2z" role="2jWM_N">
          <node concept="2jWLFD" id="2AfSc6Jv$2e" role="2jWLFT">
            <property role="TrG5h" value="q" />
          </node>
        </node>
        <node concept="2jWLFQ" id="2AfSc6Jv$2u" role="2jWM_P">
          <node concept="2jWLFD" id="2AfSc6Jv$2r" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="GydIM" id="2AfSc6Jv$2B" role="2jVTa7">
      <node concept="2jWM_K" id="2AfSc6Jv$2K" role="3MT$nN">
        <node concept="2jWLFD" id="2AfSc6Jv$2G" role="2jWM_N">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="2AfSc6Jv$2R" role="2jWM_P">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="2AfSc6Jv$2Z" role="2jVTa7">
      <node concept="2jWGsN" id="2AfSc6Jv$30" role="2jWza4">
        <node concept="2jWLFQ" id="2AfSc6Jv$37" role="3MT$nN">
          <node concept="2jWLFD" id="2AfSc6Jv$39" role="2jWLFT">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="2AfSc6Jv$3g" role="2jWza4">
        <node concept="2jWGsN" id="2AfSc6Jv$3h" role="2jWza4">
          <node concept="2jWLFD" id="2AfSc6Jv$3n" role="3MT$nN">
            <property role="TrG5h" value="p" />
          </node>
        </node>
        <node concept="1l0MfV" id="2AfSc6Jv$3t" role="2jWza4">
          <node concept="2jWMwi" id="2AfSc6Jv$3u" role="2jWFax">
            <ref role="2jWMyc" node="2AfSc6Jv$30" />
          </node>
          <node concept="2jWLFQ" id="2AfSc6Jv$3v" role="3MT$nN">
            <node concept="2jWLFD" id="2AfSc6Jv$3w" role="2jWLFT">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="2AfSc6Jv$4_" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6Jv$4R" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6Jv$3g" />
        </node>
        <node concept="2jWM_K" id="2AfSc6Jv$4Y" role="3MT$nN">
          <node concept="2jWLFD" id="2AfSc6Jv$4U" role="2jWM_N">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2jWLFQ" id="2AfSc6Jv$58" role="2jWM_P">
            <node concept="2jWLFD" id="2AfSc6Jv$55" role="2jWLFT">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="2AfSc6Jv$5u" role="2jWza4">
        <node concept="2jWGsN" id="2AfSc6Jv$5v" role="2jWza4">
          <node concept="2jWLFD" id="2AfSc6Jv$5M" role="3MT$nN">
            <property role="TrG5h" value="p" />
          </node>
        </node>
        <node concept="2jWAjR" id="2AfSc6Jv$5S" role="2jWza4">
          <node concept="2jWMwi" id="2AfSc6Jv$62" role="2jWFax">
            <ref role="2jWMyc" node="2AfSc6Jv$2B" />
          </node>
          <node concept="2jWMwi" id="2AfSc6Jv$68" role="2jWFax">
            <ref role="2jWMyc" node="2AfSc6Jv$5v" />
          </node>
          <node concept="2jWLFD" id="2AfSc6Jv$6c" role="3MT$nN">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="2AfSc6Jv$6O" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6Jv$7j" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6Jv$5u" />
        </node>
        <node concept="2jWM_K" id="2AfSc6Jv$7q" role="3MT$nN">
          <node concept="2jWLFD" id="2AfSc6Jv$7m" role="2jWM_N">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2jWLFD" id="2AfSc6Jv$7x" role="2jWM_P">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
      <node concept="2jWz57" id="2AfSc6Jv$86" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6Jv$9U" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6Jv$4_" />
        </node>
        <node concept="2jWMwi" id="2AfSc6Jv$a0" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6Jv$6O" />
        </node>
        <node concept="2jWLFQ" id="2AfSc6Jv$a4" role="3MT$nN">
          <node concept="2jWLFD" id="2AfSc6Jv$a6" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="2AfSc6Jv$aL" role="2jVTa7">
      <node concept="2jWMwi" id="2AfSc6Jv$bv" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6Jv$2Z" />
      </node>
      <node concept="2jWM_K" id="2AfSc6Jv$bE" role="3MT$nN">
        <node concept="2jWLFQ" id="2AfSc6Jv$bT" role="2jWM_N">
          <node concept="2jWLFD" id="2AfSc6Jv$bA" role="2jWLFT">
            <property role="TrG5h" value="q" />
          </node>
        </node>
        <node concept="2jWLFQ" id="2AfSc6Jv$bO" role="2jWM_P">
          <node concept="2jWLFD" id="2AfSc6Jv$bL" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="3l440nVrsN1">
    <property role="TrG5h" value="Test5" />
    <property role="26WHrx" value="Given (p &amp; q) proove (p &lt;=&gt; q)" />
    <node concept="GyqZO" id="3l440nVrsN3" role="GyqZB">
      <node concept="2jWMB0" id="3l440nVrsNb" role="GyqZP">
        <node concept="2jWLFD" id="3l440nVrsN7" role="2jWMBa">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="3l440nVrsNi" role="2jWMBd">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="3l440nVrsNk" role="2jVTa7">
      <node concept="2jWMFq" id="3l440nVrsNJ" role="3MT$nN">
        <node concept="2jWLFD" id="3l440nVrsNp" role="2jWMFt">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="3l440nVrsNQ" role="2jWMFt">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="3l440nVrsOD" role="2jVTa7">
      <node concept="2jWGsN" id="3l440nVrsOE" role="2jWza4">
        <node concept="2jWLFD" id="3l440nVrsOR" role="3MT$nN">
          <property role="TrG5h" value="p" />
        </node>
      </node>
      <node concept="2jWz52" id="3l440nVrsOf" role="2jWza4">
        <node concept="2jWMwi" id="3l440nVrsOg" role="2jWFax">
          <ref role="2jWMyc" node="3l440nVrsNk" />
        </node>
        <node concept="2jWLFD" id="3l440nVrsOh" role="3MT$nN">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="3l440nVrzqG" role="2jVTa7">
      <node concept="2jWMwi" id="3l440nVrzr1" role="2jWFax">
        <ref role="2jWMyc" node="3l440nVrsOD" />
      </node>
      <node concept="2jWM_K" id="3l440nVrzr8" role="3MT$nN">
        <node concept="2jWLFD" id="3l440nVrzr4" role="2jWM_N">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="3l440nVrzrf" role="2jWM_P">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="3l440nVrzr_" role="2jVTa7">
      <node concept="2jWGsN" id="3l440nVrzrA" role="2jWza4">
        <node concept="2jWLFD" id="3l440nVrzrV" role="3MT$nN">
          <property role="TrG5h" value="q" />
        </node>
      </node>
      <node concept="2jWz52" id="3l440nVrsNY" role="2jWza4">
        <node concept="2jWMwi" id="3l440nVrsOa" role="2jWFax">
          <ref role="2jWMyc" node="3l440nVrsNk" />
        </node>
        <node concept="2jWLFD" id="3l440nVrsOd" role="3MT$nN">
          <property role="TrG5h" value="p" />
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="3l440nVrzuf" role="2jVTa7">
      <node concept="2jWMwi" id="3l440nVrzuG" role="2jWFax">
        <ref role="2jWMyc" node="3l440nVrzr_" />
      </node>
      <node concept="2jWM_K" id="3l440nVrzuN" role="3MT$nN">
        <node concept="2jWLFD" id="3l440nVrzuJ" role="2jWM_N">
          <property role="TrG5h" value="q" />
        </node>
        <node concept="2jWLFD" id="3l440nVrzuU" role="2jWM_P">
          <property role="TrG5h" value="p" />
        </node>
      </node>
    </node>
    <node concept="2jWAjQ" id="3l440nVrzvo" role="2jVTa7">
      <node concept="2jWMwi" id="3l440nVrzvU" role="2jWFax">
        <ref role="2jWMyc" node="3l440nVrzqG" />
      </node>
      <node concept="2jWMwi" id="3l440nVrzw0" role="2jWFax">
        <ref role="2jWMyc" node="3l440nVrzuf" />
      </node>
      <node concept="2jWMB0" id="3l440nVrzwa" role="3MT$nN">
        <node concept="2jWLFD" id="3l440nVrzw4" role="2jWMBa">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="3l440nVrzwh" role="2jWMBd">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="5jVx7S230hl">
    <property role="TrG5h" value="Implication" />
    <property role="26WHrx" value="Proove alternative form of implication (~p | q) given (p =&gt; q)" />
    <node concept="GyqZO" id="5jVx7S230kM" role="GyqZB">
      <node concept="2jWM$7" id="5jVx7S230lc" role="GyqZP">
        <node concept="2jWLFQ" id="5jVx7S230ln" role="2jWM__">
          <node concept="2jWLFD" id="5jVx7S230l9" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
        <node concept="2jWLFD" id="5jVx7S230lj" role="2jWM__">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="5jVx7S230ls" role="2jVTa7">
      <node concept="2jWM_K" id="5jVx7S230l_" role="3MT$nN">
        <node concept="2jWLFD" id="5jVx7S230lx" role="2jWM_N">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="5jVx7S230lG" role="2jWM_P">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="5jVx7S230mU" role="2jVTa7">
      <node concept="2jWGsN" id="5jVx7S230mV" role="2jWza4">
        <node concept="2jWLFQ" id="5jVx7S230nm" role="3MT$nN">
          <node concept="2jWM$7" id="5jVx7S230n5" role="2jWLFT">
            <node concept="2jWLFQ" id="5jVx7S230ng" role="2jWM__">
              <node concept="2jWLFD" id="5jVx7S230n2" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
            <node concept="2jWLFD" id="5jVx7S230nc" role="2jWM__">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="5jVx7S230o0" role="2jWza4">
        <node concept="2jWGsN" id="5jVx7S230o1" role="2jWza4">
          <node concept="2jWLFQ" id="5jVx7S230oa" role="3MT$nN">
            <node concept="2jWLFD" id="5jVx7S230oc" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
        </node>
        <node concept="2jWz55" id="5jVx7S230oN" role="2jWza4">
          <node concept="2jWMwi" id="5jVx7S230p1" role="2jWFax">
            <ref role="2jWMyc" node="5jVx7S230o1" />
          </node>
          <node concept="2jWM$7" id="5jVx7S230pp" role="3MT$nN">
            <node concept="2jWLFQ" id="5jVx7S230p$" role="2jWM__">
              <node concept="2jWLFD" id="5jVx7S230pm" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
            <node concept="2jWLFD" id="5jVx7S230pw" role="2jWM__">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="5jVx7S230qz" role="2jWza4">
        <node concept="2jWM_K" id="2AfSc6JtMjf" role="3MT$nN">
          <node concept="2jWLFQ" id="2AfSc6JtMjq" role="2jWM_N">
            <node concept="2jWLFD" id="2AfSc6JtMjb" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
          <node concept="2jWM$7" id="2AfSc6JtMjx" role="2jWM_P">
            <node concept="2jWLFQ" id="2AfSc6JtMjG" role="2jWM__">
              <node concept="2jWLFD" id="2AfSc6JtMju" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
            <node concept="2jWLFD" id="2AfSc6JtMjC" role="2jWM__">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
        <node concept="2jWMwi" id="2AfSc6JtMcI" role="2jWFax">
          <ref role="2jWMyc" node="5jVx7S230o0" />
        </node>
      </node>
      <node concept="2jWza5" id="2AfSc6Juvb_" role="2jWza4">
        <node concept="2jWGsN" id="2AfSc6JuvbA" role="2jWza4">
          <node concept="2jWLFQ" id="2AfSc6Juvc7" role="3MT$nN">
            <node concept="2jWLFD" id="2AfSc6Juvc9" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
        </node>
        <node concept="1l0MfV" id="2AfSc6Juwr$" role="2jWza4">
          <node concept="2jWMwi" id="2AfSc6Juwr_" role="2jWFax">
            <ref role="2jWMyc" node="5jVx7S230mV" />
          </node>
          <node concept="2jWLFQ" id="2AfSc6JuwrA" role="3MT$nN">
            <node concept="2jWM$7" id="2AfSc6JuwrB" role="2jWLFT">
              <node concept="2jWLFQ" id="2AfSc6JuwrC" role="2jWM__">
                <node concept="2jWLFD" id="2AfSc6JuwrD" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
              <node concept="2jWLFD" id="2AfSc6JuwrE" role="2jWM__">
                <property role="TrG5h" value="q" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="2AfSc6JuwsQ" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6Juwv1" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6Juvb_" />
        </node>
        <node concept="2jWM_K" id="2AfSc6Juwv8" role="3MT$nN">
          <node concept="2jWLFQ" id="2AfSc6Juwvg" role="2jWM_N">
            <node concept="2jWLFD" id="2AfSc6Juwv4" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
          <node concept="2jWLFQ" id="2AfSc6JuwvV" role="2jWM_P">
            <node concept="2jWM$7" id="2AfSc6JuwvK" role="2jWLFT">
              <node concept="2jWLFQ" id="2AfSc6Juww4" role="2jWM__">
                <node concept="2jWLFD" id="2AfSc6Juwvk" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
              <node concept="2jWLFD" id="2AfSc6JuwvR" role="2jWM__">
                <property role="TrG5h" value="q" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWz57" id="2AfSc6JuwwY" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6JuwzT" role="2jWFax">
          <ref role="2jWMyc" node="5jVx7S230qz" />
        </node>
        <node concept="2jWMwi" id="2AfSc6JuwzJ" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JuwsQ" />
        </node>
        <node concept="2jWLFQ" id="2AfSc6JuwzX" role="3MT$nN">
          <node concept="2jWLFQ" id="2AfSc6JuwzZ" role="2jWLFT">
            <node concept="2jWLFD" id="2AfSc6Juw$1" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjD" id="2AfSc6JuwAI" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6JuwBE" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JuwwY" />
        </node>
        <node concept="2jWLFD" id="2AfSc6JuwBH" role="3MT$nN">
          <property role="TrG5h" value="p" />
        </node>
      </node>
      <node concept="2jWAjR" id="2AfSc6JuwRZ" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6JuwSY" role="2jWFax">
          <ref role="2jWMyc" node="5jVx7S230ls" />
        </node>
        <node concept="2jWMwi" id="2AfSc6JviAZ" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JuwAI" />
        </node>
        <node concept="2jWLFD" id="2AfSc6JuwT8" role="3MT$nN">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="2AfSc6JuwEt" role="2jVTa7">
      <node concept="2jWMwi" id="2AfSc6JuwFx" role="2jWFax">
        <ref role="2jWMyc" node="5jVx7S230mU" />
      </node>
      <node concept="2jWM_K" id="2AfSc6JuwK2" role="3MT$nN">
        <node concept="2jWLFQ" id="2AfSc6JuwKm" role="2jWM_N">
          <node concept="2jWM$7" id="2AfSc6JuwJ_" role="2jWLFT">
            <node concept="2jWLFQ" id="2AfSc6JuwJK" role="2jWM__">
              <node concept="2jWLFD" id="2AfSc6JuwJy" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
            <node concept="2jWLFD" id="2AfSc6JuwJG" role="2jWM__">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
        <node concept="2jWLFD" id="2AfSc6JuwKw" role="2jWM_P">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="2AfSc6JuwO8" role="2jVTa7">
      <node concept="2jWGsN" id="2AfSc6JuwO9" role="2jWza4">
        <node concept="2jWLFQ" id="2AfSc6JuwOa" role="3MT$nN">
          <node concept="2jWM$7" id="2AfSc6JuwOb" role="2jWLFT">
            <node concept="2jWLFQ" id="2AfSc6JuwOc" role="2jWM__">
              <node concept="2jWLFD" id="2AfSc6JuwOd" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
            <node concept="2jWLFD" id="2AfSc6JuwOe" role="2jWM__">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="2AfSc6JuwOf" role="2jWza4">
        <node concept="2jWGsN" id="2AfSc6JuwOg" role="2jWza4">
          <node concept="2jWLFD" id="2AfSc6JviB6" role="3MT$nN">
            <property role="TrG5h" value="q" />
          </node>
        </node>
        <node concept="2jWz55" id="2AfSc6JuwOj" role="2jWza4">
          <node concept="2jWMwi" id="2AfSc6JuwOk" role="2jWFax">
            <ref role="2jWMyc" node="2AfSc6JuwOg" />
          </node>
          <node concept="2jWM$7" id="2AfSc6JuwOl" role="3MT$nN">
            <node concept="2jWLFQ" id="2AfSc6JuwOm" role="2jWM__">
              <node concept="2jWLFD" id="2AfSc6JuwOn" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
            <node concept="2jWLFD" id="2AfSc6JuwOo" role="2jWM__">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="2AfSc6JuwOp" role="2jWza4">
        <node concept="2jWM_K" id="2AfSc6JuwOq" role="3MT$nN">
          <node concept="2jWLFD" id="2AfSc6JviBa" role="2jWM_N">
            <property role="TrG5h" value="q" />
          </node>
          <node concept="2jWM$7" id="2AfSc6JuwOt" role="2jWM_P">
            <node concept="2jWLFQ" id="2AfSc6JuwOu" role="2jWM__">
              <node concept="2jWLFD" id="2AfSc6JuwOv" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
            <node concept="2jWLFD" id="2AfSc6JuwOw" role="2jWM__">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
        <node concept="2jWMwi" id="2AfSc6JuwOx" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JuwOf" />
        </node>
      </node>
      <node concept="2jWza5" id="2AfSc6JuwOy" role="2jWza4">
        <node concept="2jWGsN" id="2AfSc6JuwOz" role="2jWza4">
          <node concept="2jWLFD" id="2AfSc6JviCJ" role="3MT$nN">
            <property role="TrG5h" value="q" />
          </node>
        </node>
        <node concept="1l0MfV" id="2AfSc6JuwOA" role="2jWza4">
          <node concept="2jWMwi" id="2AfSc6JuwOB" role="2jWFax">
            <ref role="2jWMyc" node="2AfSc6JuwO9" />
          </node>
          <node concept="2jWLFQ" id="2AfSc6JuwOC" role="3MT$nN">
            <node concept="2jWM$7" id="2AfSc6JuwOD" role="2jWLFT">
              <node concept="2jWLFQ" id="2AfSc6JuwOE" role="2jWM__">
                <node concept="2jWLFD" id="2AfSc6JuwOF" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
              <node concept="2jWLFD" id="2AfSc6JuwOG" role="2jWM__">
                <property role="TrG5h" value="q" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="2AfSc6JuwOH" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6JuwOI" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JuwOy" />
        </node>
        <node concept="2jWM_K" id="2AfSc6JuwOJ" role="3MT$nN">
          <node concept="2jWLFD" id="2AfSc6JviCN" role="2jWM_N">
            <property role="TrG5h" value="q" />
          </node>
          <node concept="2jWLFQ" id="2AfSc6JuwOM" role="2jWM_P">
            <node concept="2jWM$7" id="2AfSc6JuwON" role="2jWLFT">
              <node concept="2jWLFQ" id="2AfSc6JuwOO" role="2jWM__">
                <node concept="2jWLFD" id="2AfSc6JuwOP" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
              <node concept="2jWLFD" id="2AfSc6JuwOQ" role="2jWM__">
                <property role="TrG5h" value="q" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWz57" id="2AfSc6JuwOR" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6JuwOS" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JuwOp" />
        </node>
        <node concept="2jWMwi" id="2AfSc6JuwOT" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JuwOH" />
        </node>
        <node concept="2jWLFQ" id="2AfSc6JuwOU" role="3MT$nN">
          <node concept="2jWLFD" id="2AfSc6JviCR" role="2jWLFT">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="2AfSc6JuwNZ" role="2jVTa7">
      <node concept="2jWMwi" id="2AfSc6JviDJ" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6JuwO8" />
      </node>
      <node concept="2jWM_K" id="2AfSc6JuwO1" role="3MT$nN">
        <node concept="2jWLFQ" id="2AfSc6JuwO2" role="2jWM_N">
          <node concept="2jWM$7" id="2AfSc6JuwO3" role="2jWLFT">
            <node concept="2jWLFQ" id="2AfSc6JuwO4" role="2jWM__">
              <node concept="2jWLFD" id="2AfSc6JuwO5" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
            <node concept="2jWLFD" id="2AfSc6JuwO6" role="2jWM__">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
        <node concept="2jWLFQ" id="2AfSc6JviDE" role="2jWM_P">
          <node concept="2jWLFD" id="2AfSc6JuwO7" role="2jWLFT">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWz57" id="2AfSc6JviFS" role="2jVTa7">
      <node concept="2jWLFQ" id="2AfSc6JviIq" role="3MT$nN">
        <node concept="2jWLFQ" id="2AfSc6JviI_" role="2jWLFT">
          <node concept="2jWM$7" id="2AfSc6JviI9" role="2jWLFT">
            <node concept="2jWLFQ" id="2AfSc6JviIk" role="2jWM__">
              <node concept="2jWLFD" id="2AfSc6JviI6" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
            <node concept="2jWLFD" id="2AfSc6JviIg" role="2jWM__">
              <property role="TrG5h" value="q" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWMwi" id="2AfSc6JviN6" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6JuwEt" />
      </node>
      <node concept="2jWMwi" id="2AfSc6JviNb" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6JuwNZ" />
      </node>
    </node>
    <node concept="2jWAjD" id="2AfSc6JviPu" role="2jVTa7">
      <node concept="2jWMwi" id="2AfSc6JviRM" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6JviFS" />
      </node>
      <node concept="2jWM$7" id="2AfSc6JviRS" role="3MT$nN">
        <node concept="2jWLFQ" id="2AfSc6JviS3" role="2jWM__">
          <node concept="2jWLFD" id="2AfSc6JviRP" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
        <node concept="2jWLFD" id="2AfSc6JviRZ" role="2jWM__">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="3l440nVqpsF">
    <property role="TrG5h" value="Test4" />
    <property role="26WHrx" value="Given (p =&gt; q) and (q &lt;=&gt; r) proove (p =&gt; r)" />
    <node concept="GyqZO" id="3l440nVqpsH" role="GyqZB">
      <node concept="2jWM_K" id="3l440nVqpsP" role="GyqZP">
        <node concept="2jWLFD" id="3l440nVqpsL" role="2jWM_N">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="3l440nVqpsW" role="2jWM_P">
          <property role="TrG5h" value="r" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="3l440nVqpsY" role="2jVTa7">
      <node concept="2jWM_K" id="3l440nVqpt7" role="3MT$nN">
        <node concept="2jWLFD" id="3l440nVqpt3" role="2jWM_N">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="3l440nVqpte" role="2jWM_P">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="3l440nVqptm" role="2jVTa7">
      <node concept="2jWMB0" id="3l440nVqptB" role="3MT$nN">
        <node concept="2jWLFD" id="3l440nVqptv" role="2jWMBa">
          <property role="TrG5h" value="q" />
        </node>
        <node concept="2jWLFD" id="3l440nVqptI" role="2jWMBd">
          <property role="TrG5h" value="r" />
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="3l440nVqptU" role="2jVTa7">
      <node concept="2jWGsN" id="3l440nVqptV" role="2jWza4">
        <node concept="2jWLFD" id="3l440nVqpu6" role="3MT$nN">
          <property role="TrG5h" value="p" />
        </node>
      </node>
      <node concept="2jWAjR" id="3l440nVqpuc" role="2jWza4">
        <node concept="2jWMwi" id="3l440nVqpum" role="2jWFax">
          <ref role="2jWMyc" node="3l440nVqpsY" />
        </node>
        <node concept="2jWMwi" id="3l440nVqpus" role="2jWFax">
          <ref role="2jWMyc" node="3l440nVqptV" />
        </node>
        <node concept="2jWLFD" id="3l440nVqpuw" role="3MT$nN">
          <property role="TrG5h" value="q" />
        </node>
      </node>
      <node concept="2jWAjT" id="3l440nVqpuF" role="2jWza4">
        <node concept="2jWMwi" id="3l440nVqpuT" role="2jWFax">
          <ref role="2jWMyc" node="3l440nVqptm" />
        </node>
        <node concept="2jWM_K" id="3l440nVqpv0" role="3MT$nN">
          <node concept="2jWLFD" id="3l440nVqpuW" role="2jWM_N">
            <property role="TrG5h" value="q" />
          </node>
          <node concept="2jWLFD" id="3l440nVqpv7" role="2jWM_P">
            <property role="TrG5h" value="r" />
          </node>
        </node>
      </node>
      <node concept="2jWAjR" id="3l440nVr59R" role="2jWza4">
        <node concept="2jWMwi" id="3l440nVr5aa" role="2jWFax">
          <ref role="2jWMyc" node="3l440nVqpuF" />
        </node>
        <node concept="2jWMwi" id="3l440nVr5ag" role="2jWFax">
          <ref role="2jWMyc" node="3l440nVqpuc" />
        </node>
        <node concept="2jWLFD" id="3l440nVr5ak" role="3MT$nN">
          <property role="TrG5h" value="r" />
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="3l440nVr5bg" role="2jVTa7">
      <node concept="2jWMwi" id="3l440nVr5bK" role="2jWFax">
        <ref role="2jWMyc" node="3l440nVqptU" />
      </node>
      <node concept="2jWM_K" id="3l440nVr5bR" role="3MT$nN">
        <node concept="2jWLFD" id="3l440nVr5bN" role="2jWM_N">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="3l440nVr5bY" role="2jWM_P">
          <property role="TrG5h" value="r" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="2AfSc6JxXEN">
    <property role="TrG5h" value="Test3" />
    <property role="26WHrx" value="Given (p =&gt; q) and (m =&gt; (p | q)) proove (m =&gt; q)" />
    <node concept="GyqZO" id="2AfSc6JxXET" role="GyqZB">
      <node concept="2jWM_K" id="2AfSc6JxXF1" role="GyqZP">
        <node concept="2jWLFD" id="2AfSc6JxXEX" role="2jWM_N">
          <property role="TrG5h" value="m" />
        </node>
        <node concept="2jWLFD" id="2AfSc6JxXF8" role="2jWM_P">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="2AfSc6JxXFa" role="2jVTa7">
      <node concept="2jWM_K" id="2AfSc6JxXFj" role="3MT$nN">
        <node concept="2jWLFD" id="2AfSc6JxXFf" role="2jWM_N">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="2AfSc6JxXFq" role="2jWM_P">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="2AfSc6JxXFy" role="2jVTa7">
      <node concept="2jWM_K" id="2AfSc6JxXFJ" role="3MT$nN">
        <node concept="2jWLFD" id="2AfSc6JxXFF" role="2jWM_N">
          <property role="TrG5h" value="m" />
        </node>
        <node concept="2jWM$7" id="2AfSc6JxXFT" role="2jWM_P">
          <node concept="2jWLFD" id="2AfSc6JxXFQ" role="2jWM__">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2jWLFD" id="2AfSc6JxXG0" role="2jWM__">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="2AfSc6JxXGf" role="2jVTa7">
      <node concept="2jWGsN" id="2AfSc6JxXGg" role="2jWza4">
        <node concept="2jWLFD" id="2AfSc6JxXGt" role="3MT$nN">
          <property role="TrG5h" value="m" />
        </node>
      </node>
      <node concept="2jWAjR" id="2AfSc6JxXGz" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6JxXGH" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JxXFy" />
        </node>
        <node concept="2jWMwi" id="2AfSc6JxXGN" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JxXGg" />
        </node>
        <node concept="2jWM$7" id="2AfSc6JxXGU" role="3MT$nN">
          <node concept="2jWLFD" id="2AfSc6JxXGR" role="2jWM__">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2jWLFD" id="2AfSc6JxXH1" role="2jWM__">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="2AfSc6JxXHq" role="2jWza4">
        <node concept="2jWGsN" id="2AfSc6JxXHr" role="2jWza4">
          <node concept="2jWLFD" id="2AfSc6JxXHL" role="3MT$nN">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="2AfSc6JxXIh" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6JxXIJ" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JxXHq" />
        </node>
        <node concept="2jWM_K" id="2AfSc6JxXIQ" role="3MT$nN">
          <node concept="2jWLFD" id="2AfSc6JxXIM" role="2jWM_N">
            <property role="TrG5h" value="q" />
          </node>
          <node concept="2jWLFD" id="2AfSc6JxXIX" role="2jWM_P">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
      <node concept="2jWz54" id="2AfSc6JyJbm" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6JyJbI" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JxXFa" />
        </node>
        <node concept="2jWMwi" id="2AfSc6JyJbO" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JxXIh" />
        </node>
        <node concept="2jWMwi" id="3l440nVo6f3" role="2jWFax">
          <ref role="2jWMyc" node="2AfSc6JxXGz" />
        </node>
        <node concept="2jWLFD" id="2AfSc6JyJbS" role="3MT$nN">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="3l440nVqpgA" role="2jVTa7">
      <node concept="2jWMwi" id="3l440nVqphe" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6JxXGf" />
      </node>
      <node concept="2jWM_K" id="3l440nVqphl" role="3MT$nN">
        <node concept="2jWLFD" id="3l440nVqphh" role="2jWM_N">
          <property role="TrG5h" value="m" />
        </node>
        <node concept="2jWLFD" id="3l440nVqphs" role="2jWM_P">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="2AfSc6Jw7pl">
    <property role="TrG5h" value="Test2" />
    <property role="26WHrx" value="Given (p &amp; q) prove (q | r)" />
    <node concept="GyqZO" id="2AfSc6Jw7pn" role="GyqZB">
      <node concept="2jWM$7" id="2AfSc6Jw7pu" role="GyqZP">
        <node concept="2jWLFD" id="2AfSc6Jw7pr" role="2jWM__">
          <property role="TrG5h" value="q" />
        </node>
        <node concept="2jWLFD" id="2AfSc6Jw7p_" role="2jWM__">
          <property role="TrG5h" value="r" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="2AfSc6Jw7pC" role="2jVTa7">
      <node concept="2jWMFq" id="2AfSc6Jw7pK" role="3MT$nN">
        <node concept="2jWLFD" id="2AfSc6Jw7pH" role="2jWMFt">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="2AfSc6Jw7pR" role="2jWMFt">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWz52" id="2AfSc6Jw7q0" role="2jVTa7">
      <node concept="2jWMwi" id="2AfSc6Jw7qc" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6Jw7pC" />
      </node>
      <node concept="2jWLFD" id="2AfSc6Jw7qf" role="3MT$nN">
        <property role="TrG5h" value="q" />
      </node>
    </node>
    <node concept="2jWz55" id="2AfSc6JxVdj" role="2jVTa7">
      <node concept="2jWMwi" id="2AfSc6JxVdy" role="2jWFax">
        <ref role="2jWMyc" node="2AfSc6Jw7q0" />
      </node>
      <node concept="2jWM$7" id="2AfSc6JxVdC" role="3MT$nN">
        <node concept="2jWLFD" id="2AfSc6JxVd_" role="2jWM__">
          <property role="TrG5h" value="q" />
        </node>
        <node concept="2jWLFD" id="2AfSc6JxVdJ" role="2jWM__">
          <property role="TrG5h" value="r" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="3JXBM6C4h$e">
    <property role="TrG5h" value="Tautology" />
    <property role="26WHrx" value="Proove a tautology (p | ~p)" />
    <node concept="GyqZO" id="$u9BK_AaA7" role="GyqZB">
      <node concept="2jWM$7" id="$u9BK_AaAe" role="GyqZP">
        <node concept="2jWLFD" id="$u9BK_AaAb" role="2jWM__">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFQ" id="$u9BK_AaAl" role="2jWM__">
          <node concept="2jWLFD" id="$u9BK_AaAo" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="$u9BK_y$0J" role="2jVTa7">
      <node concept="2jWGsN" id="3JXBM6C4ztF" role="2jWza4">
        <node concept="2jWLFQ" id="$u9BK_y$3a" role="3MT$nN">
          <node concept="2jWM$7" id="3JXBM6C4ztG" role="2jWLFT">
            <node concept="2jWLFD" id="3JXBM6C4ztH" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="5jVx7S2251s" role="2jWM__">
              <node concept="2jWLFD" id="3JXBM6C4ztJ" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="3JXBM6Ca7o3" role="2jWza4">
        <node concept="2jWGsN" id="3JXBM6Ca7o4" role="2jWza4">
          <node concept="2jWLFD" id="3JXBM6Ca7o_" role="3MT$nN">
            <property role="TrG5h" value="p" />
          </node>
        </node>
        <node concept="2jWz55" id="3JXBM6Ca7oF" role="2jWza4">
          <node concept="2jWMwi" id="3JXBM6Ca7p4" role="2jWFax">
            <ref role="2jWMyc" node="3JXBM6Ca7o4" />
          </node>
          <node concept="2jWM$7" id="3JXBM6Ca7oS" role="3MT$nN">
            <node concept="2jWLFD" id="3JXBM6Ca7oP" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="3JXBM6Ca7oZ" role="2jWM__">
              <node concept="2jWLFD" id="3JXBM6Ca7p2" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="3JXBM6Ca7pK" role="2jWza4">
        <node concept="2jWMwi" id="2AfSc6JviTh" role="2jWFax">
          <ref role="2jWMyc" node="3JXBM6Ca7o3" />
        </node>
        <node concept="2jWM_K" id="3JXBM6Ca7qz" role="3MT$nN">
          <node concept="2jWLFD" id="3JXBM6Ca7qv" role="2jWM_N">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2jWM$7" id="3JXBM6Ca7qH" role="2jWM_P">
            <node concept="2jWLFD" id="3JXBM6Ca7qE" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="3JXBM6Ca7qO" role="2jWM__">
              <node concept="2jWLFD" id="3JXBM6Ca7qR" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="3JXBM6Ca7rP" role="2jWza4">
        <node concept="2jWGsN" id="3JXBM6Ca7rQ" role="2jWza4">
          <node concept="2jWLFD" id="3JXBM6Ca7sF" role="3MT$nN">
            <property role="TrG5h" value="p" />
          </node>
        </node>
        <node concept="1l0MfV" id="5jVx7S2165V" role="2jWza4">
          <node concept="2jWMwi" id="5jVx7S2165W" role="2jWFax">
            <ref role="2jWMyc" node="3JXBM6C4ztF" />
          </node>
          <node concept="2jWLFQ" id="5jVx7S2165X" role="3MT$nN">
            <node concept="2jWM$7" id="5jVx7S2165Y" role="2jWLFT">
              <node concept="2jWLFD" id="5jVx7S2165Z" role="2jWM__">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="2jWLFQ" id="5jVx7S21660" role="2jWM__">
                <node concept="2jWLFD" id="5jVx7S21661" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="$u9BK_yvcM" role="2jWza4">
        <node concept="2jWM_K" id="$u9BK_yzWw" role="3MT$nN">
          <node concept="2jWLFD" id="$u9BK_yzWs" role="2jWM_N">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2jWLFQ" id="$u9BK_y$k$" role="2jWM_P">
            <node concept="2jWM$7" id="$u9BK_yzWJ" role="2jWLFT">
              <node concept="2jWLFD" id="$u9BK_yzWG" role="2jWM__">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="2jWLFQ" id="$u9BK_yzWQ" role="2jWM__">
                <node concept="2jWLFD" id="$u9BK_yzWT" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWMwi" id="2AfSc6JviTv" role="2jWFax">
          <ref role="2jWMyc" node="3JXBM6Ca7rP" />
        </node>
      </node>
      <node concept="2jWz57" id="$u9BK_y$kO" role="2jWza4">
        <node concept="2jWMwi" id="$u9BK_y$lO" role="2jWFax">
          <ref role="2jWMyc" node="3JXBM6Ca7pK" />
        </node>
        <node concept="2jWMwi" id="$u9BK_y$lU" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_yvcM" />
        </node>
        <node concept="2jWLFQ" id="$u9BK_y$lF" role="3MT$nN">
          <node concept="2jWLFD" id="$u9BK_y$lJ" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="$u9BK_y$oJ" role="2jVTa7">
      <node concept="2jWM_K" id="$u9BK_y$q$" role="3MT$nN">
        <node concept="2jWLFQ" id="$u9BK_y$v0" role="2jWM_N">
          <node concept="2jWM$7" id="$u9BK_y$qb" role="2jWLFT">
            <node concept="2jWLFD" id="$u9BK_y$q8" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="$u9BK_y$qi" role="2jWM__">
              <node concept="2jWLFD" id="$u9BK_y$ql" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWLFQ" id="$u9BK_y$xn" role="2jWM_P">
          <node concept="2jWLFD" id="$u9BK_y$xp" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
      <node concept="2jWMwi" id="2AfSc6JviTm" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$0J" />
      </node>
    </node>
    <node concept="2jWza5" id="$u9BK_y$yG" role="2jVTa7">
      <node concept="2jWGsN" id="$u9BK_y$yH" role="2jWza4">
        <node concept="2jWLFQ" id="$u9BK_y$yI" role="3MT$nN">
          <node concept="2jWM$7" id="$u9BK_y$yJ" role="2jWLFT">
            <node concept="2jWLFD" id="$u9BK_y$yK" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="$u9BK_y$yL" role="2jWM__">
              <node concept="2jWLFD" id="$u9BK_y$yM" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="$u9BK_y$yN" role="2jWza4">
        <node concept="2jWGsN" id="$u9BK_y$yO" role="2jWza4">
          <node concept="2jWLFQ" id="$u9BK_y$_m" role="3MT$nN">
            <node concept="2jWLFD" id="$u9BK_y$yP" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
        </node>
        <node concept="2jWz55" id="$u9BK_y$yQ" role="2jWza4">
          <node concept="2jWMwi" id="$u9BK_y$yR" role="2jWFax">
            <ref role="2jWMyc" node="$u9BK_y$yO" />
          </node>
          <node concept="2jWM$7" id="$u9BK_y$yS" role="3MT$nN">
            <node concept="2jWLFD" id="$u9BK_y$yT" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="$u9BK_y$yU" role="2jWM__">
              <node concept="2jWLFD" id="$u9BK_y$yV" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="$u9BK_y$yW" role="2jWza4">
        <node concept="2jWM_K" id="$u9BK_y$yZ" role="3MT$nN">
          <node concept="2jWLFQ" id="$u9BK_y$_r" role="2jWM_N">
            <node concept="2jWLFD" id="$u9BK_y$z0" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
          <node concept="2jWM$7" id="$u9BK_y$z1" role="2jWM_P">
            <node concept="2jWLFD" id="$u9BK_y$z2" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="$u9BK_y$z3" role="2jWM__">
              <node concept="2jWLFD" id="$u9BK_y$z4" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWMwi" id="2AfSc6JviTo" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$yN" />
        </node>
      </node>
      <node concept="2jWza5" id="$u9BK_y$z5" role="2jWza4">
        <node concept="2jWGsN" id="$u9BK_y$z6" role="2jWza4">
          <node concept="2jWLFQ" id="$u9BK_y$_w" role="3MT$nN">
            <node concept="2jWLFD" id="$u9BK_y$z7" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
        </node>
        <node concept="1l0MfV" id="5jVx7S22tDg" role="2jWza4">
          <node concept="2jWMwi" id="5jVx7S22tDh" role="2jWFax">
            <ref role="2jWMyc" node="$u9BK_y$yH" />
          </node>
          <node concept="2jWLFQ" id="5jVx7S22tDi" role="3MT$nN">
            <node concept="2jWM$7" id="5jVx7S22tDj" role="2jWLFT">
              <node concept="2jWLFD" id="5jVx7S22tDk" role="2jWM__">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="2jWLFQ" id="5jVx7S22tDl" role="2jWM__">
                <node concept="2jWLFD" id="5jVx7S22tDm" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="$u9BK_y$ze" role="2jWza4">
        <node concept="2jWM_K" id="$u9BK_y$zh" role="3MT$nN">
          <node concept="2jWLFQ" id="$u9BK_y$__" role="2jWM_N">
            <node concept="2jWLFD" id="$u9BK_y$zi" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
          <node concept="2jWLFQ" id="$u9BK_y$zj" role="2jWM_P">
            <node concept="2jWM$7" id="$u9BK_y$zk" role="2jWLFT">
              <node concept="2jWLFD" id="$u9BK_y$zl" role="2jWM__">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="2jWLFQ" id="$u9BK_y$zm" role="2jWM__">
                <node concept="2jWLFD" id="$u9BK_y$zn" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWMwi" id="2AfSc6JviTq" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$z5" />
        </node>
      </node>
      <node concept="2jWz57" id="$u9BK_y$zo" role="2jWza4">
        <node concept="2jWMwi" id="$u9BK_y$zp" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$yW" />
        </node>
        <node concept="2jWMwi" id="$u9BK_y$zq" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$ze" />
        </node>
        <node concept="2jWLFQ" id="$u9BK_y$zr" role="3MT$nN">
          <node concept="2jWLFQ" id="$u9BK_y$_E" role="2jWLFT">
            <node concept="2jWLFD" id="$u9BK_y$zs" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjD" id="$u9BK_y$A_" role="2jWza4">
        <node concept="2jWMwi" id="$u9BK_y$B$" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$zo" />
        </node>
        <node concept="2jWLFD" id="$u9BK_y$By" role="3MT$nN">
          <property role="TrG5h" value="p" />
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="$u9BK_y$yx" role="2jVTa7">
      <node concept="2jWM_K" id="$u9BK_y$y$" role="3MT$nN">
        <node concept="2jWLFQ" id="$u9BK_y$yB" role="2jWM_N">
          <node concept="2jWM$7" id="$u9BK_y$yC" role="2jWLFT">
            <node concept="2jWLFD" id="$u9BK_y$yD" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="$u9BK_y$yE" role="2jWM__">
              <node concept="2jWLFD" id="$u9BK_y$yF" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2jWLFD" id="$u9BK_y$yA" role="2jWM_P">
          <property role="TrG5h" value="p" />
        </node>
      </node>
      <node concept="2jWMwi" id="2AfSc6JviTz" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$yG" />
      </node>
    </node>
    <node concept="2jWz57" id="$u9BK_y$DL" role="2jVTa7">
      <node concept="2jWMwi" id="$u9BK_y$Gw" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$oJ" />
      </node>
      <node concept="2jWMwi" id="$u9BK_y$G_" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$yx" />
      </node>
      <node concept="2jWLFQ" id="$u9BK_y$G8" role="3MT$nN">
        <node concept="2jWLFQ" id="$u9BK_y$Gj" role="2jWLFT">
          <node concept="2jWM$7" id="$u9BK_y$FV" role="2jWLFT">
            <node concept="2jWLFD" id="$u9BK_y$FS" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="$u9BK_y$G2" role="2jWM__">
              <node concept="2jWLFD" id="$u9BK_y$G5" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjD" id="$u9BK_y$IN" role="2jVTa7">
      <node concept="2jWMwi" id="$u9BK_y$Li" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$DL" />
      </node>
      <node concept="2jWM$7" id="$u9BK_y$L6" role="3MT$nN">
        <node concept="2jWLFD" id="$u9BK_y$L3" role="2jWM__">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFQ" id="$u9BK_y$Ld" role="2jWM__">
          <node concept="2jWLFD" id="$u9BK_y$Lg" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="5A8qZLXfUvB">
    <property role="TrG5h" value="Sample" />
    <property role="26WHrx" value="Proove (cloudy) given (rain =&gt; cloudy) and (rain)" />
    <node concept="GyqZO" id="5A8qZLXfUvD" role="GyqZB">
      <node concept="2jWLFD" id="5A8qZLXfUvH" role="GyqZP">
        <property role="TrG5h" value="cloudy" />
      </node>
    </node>
    <node concept="GydIM" id="5A8qZLXfUvX" role="2jVTa7">
      <node concept="2jWM_K" id="5A8qZLXfUw8" role="3MT$nN">
        <node concept="2jWLFD" id="5A8qZLXfUw4" role="2jWM_N">
          <property role="TrG5h" value="rain" />
        </node>
        <node concept="2jWLFD" id="5A8qZLXfUwf" role="2jWM_P">
          <property role="TrG5h" value="cloudy" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="5A8qZLXfUvJ" role="2jVTa7">
      <node concept="2jWLFD" id="5A8qZLXfUvO" role="3MT$nN">
        <property role="TrG5h" value="rain" />
      </node>
    </node>
    <node concept="2jWAjR" id="5A8qZLXfUwp" role="2jVTa7">
      <node concept="2jWMwi" id="5A8qZLXfUwB" role="2jWFax">
        <ref role="2jWMyc" node="5A8qZLXfUvX" />
      </node>
      <node concept="2jWMwi" id="5A8qZLXfUwH" role="2jWFax">
        <ref role="2jWMyc" node="5A8qZLXfUvJ" />
      </node>
      <node concept="2jWLFD" id="5A8qZLXfUwL" role="3MT$nN">
        <property role="TrG5h" value="cloudy" />
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="5A8qZLXfUwO">
    <property role="TrG5h" value="Test6" />
    <property role="26WHrx" value="Given ((p =&gt; q) &amp; ~q) proove ~p" />
    <node concept="GyqZO" id="5A8qZLXfUwQ" role="GyqZB">
      <node concept="2jWLFQ" id="5A8qZLXfUwX" role="GyqZP">
        <node concept="2jWLFD" id="5A8qZLXfUwU" role="2jWLFT">
          <property role="TrG5h" value="p" />
        </node>
      </node>
    </node>
    <node concept="GydIM" id="5A8qZLXfUx1" role="2jVTa7">
      <node concept="2jWMFq" id="5A8qZLXfUxk" role="3MT$nN">
        <node concept="2jWM_K" id="5A8qZLXfUxa" role="2jWMFt">
          <node concept="2jWLFD" id="5A8qZLXfUx6" role="2jWM_N">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2jWLFD" id="5A8qZLXfUxh" role="2jWM_P">
            <property role="TrG5h" value="q" />
          </node>
        </node>
        <node concept="2jWLFQ" id="5A8qZLXfUxv" role="2jWMFt">
          <node concept="2jWLFD" id="5A8qZLXfUx$" role="2jWLFT">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="5A8qZLXfUxJ" role="2jVTa7">
      <node concept="2jWGsN" id="5A8qZLXfUxK" role="2jWza4">
        <node concept="2jWLFD" id="5A8qZLXfUxU" role="3MT$nN">
          <property role="TrG5h" value="p" />
        </node>
      </node>
      <node concept="2jWz52" id="5A8qZLXfUy0" role="2jWza4">
        <node concept="2jWMwi" id="5A8qZLXfUya" role="2jWFax">
          <ref role="2jWMyc" node="5A8qZLXfUx1" />
        </node>
        <node concept="2jWM_K" id="5A8qZLXfUyh" role="3MT$nN">
          <node concept="2jWLFD" id="5A8qZLXfUyd" role="2jWM_N">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2jWLFD" id="5A8qZLXfUyo" role="2jWM_P">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
      <node concept="2jWAjR" id="5A8qZLXfUyz" role="2jWza4">
        <node concept="2jWMwi" id="5A8qZLXfUyM" role="2jWFax">
          <ref role="2jWMyc" node="5A8qZLXfUy0" />
        </node>
        <node concept="2jWMwi" id="5A8qZLXfUyS" role="2jWFax">
          <ref role="2jWMyc" node="5A8qZLXfUxK" />
        </node>
        <node concept="2jWLFD" id="5A8qZLXfUyW" role="3MT$nN">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="5A8qZLXfUzE" role="2jVTa7">
      <node concept="2jWMwi" id="5A8qZLXfU$5" role="2jWFax">
        <ref role="2jWMyc" node="5A8qZLXfUxJ" />
      </node>
      <node concept="2jWM_K" id="5A8qZLXfU$c" role="3MT$nN">
        <node concept="2jWLFD" id="5A8qZLXfU$8" role="2jWM_N">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFD" id="5A8qZLXfU$j" role="2jWM_P">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="3eN$koMSiRw" role="2jVTa7">
      <node concept="2jWGsN" id="3eN$koMSiRx" role="2jWza4">
        <node concept="2jWLFD" id="3eN$koMSiRW" role="3MT$nN">
          <property role="TrG5h" value="p" />
        </node>
      </node>
      <node concept="2jWz52" id="3eN$koMSiS2" role="2jWza4">
        <node concept="2jWMwi" id="3eN$koMSiSc" role="2jWFax">
          <ref role="2jWMyc" node="5A8qZLXfUx1" />
        </node>
        <node concept="2jWLFQ" id="3eN$koMSiSf" role="3MT$nN">
          <node concept="2jWLFD" id="3eN$koMSiSh" role="2jWLFT">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="3eN$koMSiSP" role="2jVTa7">
      <node concept="2jWMwi" id="3eN$koMSiTs" role="2jWFax">
        <ref role="2jWMyc" node="3eN$koMSiRw" />
      </node>
      <node concept="2jWM_K" id="3eN$koMSiTz" role="3MT$nN">
        <node concept="2jWLFD" id="3eN$koMSiTv" role="2jWM_N">
          <property role="TrG5h" value="p" />
        </node>
        <node concept="2jWLFQ" id="3eN$koMSiTE" role="2jWM_P">
          <node concept="2jWLFD" id="3eN$koMSiTG" role="2jWLFT">
            <property role="TrG5h" value="q" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWz57" id="3eN$koMSiUl" role="2jVTa7">
      <node concept="2jWMwi" id="3eN$koMSiV2" role="2jWFax">
        <ref role="2jWMyc" node="5A8qZLXfUzE" />
      </node>
      <node concept="2jWMwi" id="3eN$koMSiVh" role="2jWFax">
        <ref role="2jWMyc" node="3eN$koMSiSP" />
      </node>
      <node concept="2jWLFQ" id="3eN$koMSiVc" role="3MT$nN">
        <node concept="2jWLFD" id="3eN$koMSiVe" role="2jWLFT">
          <property role="TrG5h" value="p" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2jWMw5" id="4wvktoXPtyv">
    <property role="TrG5h" value="Foo" />
    <property role="26WHrx" value="(x &amp; y) z" />
    <node concept="GydIM" id="4wvktoXPtyx" role="2jVTa7">
      <node concept="2jWLFD" id="4wvktoXPtyA" role="3MT$nN">
        <property role="TrG5h" value="x" />
      </node>
    </node>
    <node concept="GydIM" id="4wvktoXPtyG" role="2jVTa7">
      <node concept="2jWLFD" id="4wvktoXPtyN" role="3MT$nN">
        <property role="TrG5h" value="y" />
      </node>
    </node>
    <node concept="GydIM" id="4wvktoXPtyV" role="2jVTa7">
      <node concept="2jWLFD" id="4wvktoXPtz4" role="3MT$nN">
        <property role="TrG5h" value="z" />
      </node>
    </node>
    <node concept="GydIM" id="4wvktoXPt_T" role="2jVTa7">
      <node concept="2jWLFD" id="4wvktoXPtAi" role="3MT$nN">
        <property role="TrG5h" value="w" />
      </node>
    </node>
    <node concept="2jWzbb" id="4wvktoXPtze" role="2jVTa7">
      <node concept="2jWMwi" id="4wvktoXPtzs" role="2jWFax">
        <ref role="2jWMyc" node="4wvktoXPtyx" />
      </node>
      <node concept="2jWMwi" id="4wvktoXPtzy" role="2jWFax">
        <ref role="2jWMyc" node="4wvktoXPtyG" />
      </node>
      <node concept="2jWMFq" id="4wvktoXPtzD" role="3MT$nN">
        <node concept="2jWLFD" id="4wvktoXPtzA" role="2jWMFt">
          <property role="TrG5h" value="x" />
        </node>
        <node concept="2jWLFD" id="4wvktoXPtzK" role="2jWMFt">
          <property role="TrG5h" value="y" />
        </node>
      </node>
    </node>
    <node concept="2jWzbb" id="4wvktoXPt$1" role="2jVTa7">
      <node concept="2jWMwi" id="4wvktoXPt$l" role="2jWFax">
        <ref role="2jWMyc" node="4wvktoXPtze" />
      </node>
      <node concept="2jWMwi" id="4wvktoXPt$r" role="2jWFax">
        <ref role="2jWMyc" node="4wvktoXPtyV" />
      </node>
      <node concept="2jWMFq" id="4wvktoXPt$H" role="3MT$nN">
        <node concept="2jWMFq" id="4wvktoXPt$y" role="2jWMFt">
          <node concept="2jWLFD" id="4wvktoXPt$v" role="2jWMFt">
            <property role="TrG5h" value="x" />
          </node>
          <node concept="2jWLFD" id="4wvktoXPt$D" role="2jWMFt">
            <property role="TrG5h" value="y" />
          </node>
        </node>
        <node concept="2jWLFD" id="4wvktoXPt$S" role="2jWMFt">
          <property role="TrG5h" value="z" />
        </node>
      </node>
    </node>
    <node concept="GyqZO" id="4wvktoXPt$X" role="GyqZB">
      <node concept="2jWMFq" id="4wvktoXPt_g" role="GyqZP">
        <node concept="2jWMFq" id="4wvktoXPt_4" role="2jWMFt">
          <node concept="2jWLFD" id="4wvktoXPt_1" role="2jWMFt">
            <property role="TrG5h" value="x" />
          </node>
          <node concept="2jWLFD" id="4wvktoXPt_b" role="2jWMFt">
            <property role="TrG5h" value="y" />
          </node>
        </node>
        <node concept="2jWLFD" id="4wvktoXPt_r" role="2jWMFt">
          <property role="TrG5h" value="a" />
        </node>
      </node>
    </node>
  </node>
</model>

