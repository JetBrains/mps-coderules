<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8762d21a-5bfe-45a2-8a7c-66fa5147f3db(samples.fitch.demo.herbrandLogic)">
  <persistence version="9" />
  <languages>
    <use id="06b7c5c7-e359-4f4b-a581-5d0c9323af39" name="samples.fitch" version="1" />
    <use id="748b3ba1-2791-4ee8-b985-a5598baa7112" name="samples.fitch.herbrandLogic" version="0" />
    <use id="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" name="samples.fitch.propositionalLogic" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" name="samples.fitch.propositionalLogic">
      <concept id="4322786184247901129" name="samples.fitch.propositionalLogic.structure.IfIntro" flags="ng" index="2jWAjC" />
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
      <concept id="3059457401299011411" name="samples.fitch.herbrandLogic.structure.Exists" flags="ng" index="3jEQso">
        <child id="3059457401299011416" name="variable" index="3jEQsj" />
        <child id="3059457401299011414" name="sentence" index="3jEQst" />
      </concept>
      <concept id="3059457401299011425" name="samples.fitch.herbrandLogic.structure.Relation" flags="ng" index="3jEQsE">
        <child id="3059457401299011435" name="member" index="3jEQsw" />
      </concept>
      <concept id="3059457401299011378" name="samples.fitch.herbrandLogic.structure.Variable" flags="ng" index="3jEQtT" />
      <concept id="4035326440038749016" name="samples.fitch.herbrandLogic.structure.HerbrandProof" flags="ng" index="1rg0Xs" />
      <concept id="1069765272453957481" name="samples.fitch.herbrandLogic.structure.ForallIntro" flags="ng" index="3Zs_qL" />
      <concept id="1069765272453957482" name="samples.fitch.herbrandLogic.structure.ForallElim" flags="ng" index="3Zs_qM" />
      <concept id="1069765272453957484" name="samples.fitch.herbrandLogic.structure.ExistsElim" flags="ng" index="3Zs_qO" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1rg0Xs" id="3w0n0hzkMd2">
    <property role="TrG5h" value="Example" />
    <property role="26WHrx" value="Proove AX.(EY.p(X,Y) =&gt; q(X)) given AX.AY.(p(X,Y) =&gt; q(X))" />
    <node concept="GydIM" id="3w0n0hzkMdq" role="2jVTa7">
      <node concept="3jEQs6" id="3w0n0hzkMdr" role="3MT$nN">
        <node concept="3jEQtT" id="3w0n0hzkMds" role="3jEQsg">
          <property role="TrG5h" value="X" />
        </node>
        <node concept="3jEQs6" id="3w0n0hzkMdt" role="3jEQsn">
          <node concept="3jEQtT" id="3w0n0hzkMdu" role="3jEQsg">
            <property role="TrG5h" value="Y" />
          </node>
          <node concept="2jWM_K" id="3w0n0hzkMdv" role="3jEQsn">
            <node concept="3jEQsE" id="3w0n0hzkMdw" role="2jWM_N">
              <property role="TrG5h" value="p" />
              <node concept="3jEQtT" id="3w0n0hzkMdx" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQtT" id="3w0n0hzkMdy" role="3jEQsw">
                <property role="TrG5h" value="Y" />
              </node>
            </node>
            <node concept="3jEQsE" id="3w0n0hzkMdz" role="2jWM_P">
              <property role="TrG5h" value="q" />
              <node concept="3jEQtT" id="3w0n0hzkMd$" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWza5" id="3w0n0hzkMd_" role="2jVTa7">
      <node concept="2jWGsN" id="3w0n0hzkMdA" role="2jWza4">
        <node concept="3jEQso" id="3w0n0hzkMdB" role="3MT$nN">
          <node concept="3jEQtT" id="3w0n0hzkMdC" role="3jEQsj">
            <property role="TrG5h" value="Y" />
          </node>
          <node concept="3jEQsE" id="3w0n0hzkMdD" role="3jEQst">
            <property role="TrG5h" value="p" />
            <node concept="3jEQtT" id="3w0n0hzkMdE" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQtT" id="3w0n0hzkMdF" role="3jEQsw">
              <property role="TrG5h" value="Y" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Zs_qM" id="3w0n0hzkMdG" role="2jWza4">
        <node concept="2jWMwi" id="3w0n0hzkMdH" role="2jWFax">
          <ref role="2jWMyc" node="3w0n0hzkMdq" />
        </node>
        <node concept="3jEQs6" id="3w0n0hzkMdI" role="3MT$nN">
          <node concept="3jEQtT" id="3w0n0hzkMdJ" role="3jEQsg">
            <property role="TrG5h" value="Y" />
          </node>
          <node concept="2jWM_K" id="3w0n0hzkMdK" role="3jEQsn">
            <node concept="3jEQsE" id="3w0n0hzkMdL" role="2jWM_N">
              <property role="TrG5h" value="p" />
              <node concept="3jEQtT" id="3w0n0hzkMdM" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQtT" id="3w0n0hzkMdN" role="3jEQsw">
                <property role="TrG5h" value="Y" />
              </node>
            </node>
            <node concept="3jEQsE" id="3w0n0hzkMdO" role="2jWM_P">
              <property role="TrG5h" value="q" />
              <node concept="3jEQtT" id="3w0n0hzkMdP" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Zs_qO" id="3w0n0hzkMdQ" role="2jWza4">
        <node concept="2jWMwi" id="3w0n0hzkMdR" role="2jWFax">
          <ref role="2jWMyc" node="3w0n0hzkMdA" />
        </node>
        <node concept="2jWMwi" id="3w0n0hzkMdS" role="2jWFax">
          <ref role="2jWMyc" node="3w0n0hzkMdG" />
        </node>
        <node concept="3jEQsE" id="3w0n0hzkMdT" role="3MT$nN">
          <property role="TrG5h" value="q" />
          <node concept="3jEQtT" id="3w0n0hzkMdU" role="3jEQsw">
            <property role="TrG5h" value="X" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="3w0n0hzkMdV" role="2jVTa7">
      <node concept="2jWMwi" id="3w0n0hzkMdW" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hzkMd_" />
      </node>
      <node concept="2jWM_K" id="3w0n0hzkMdX" role="3MT$nN">
        <node concept="3jEQsE" id="3w0n0hzkMdY" role="2jWM_P">
          <property role="TrG5h" value="q" />
          <node concept="3jEQtT" id="3w0n0hzkMdZ" role="3jEQsw">
            <property role="TrG5h" value="X" />
          </node>
        </node>
        <node concept="3jEQso" id="3w0n0hzkMe0" role="2jWM_N">
          <node concept="3jEQtT" id="3w0n0hzkMe1" role="3jEQsj">
            <property role="TrG5h" value="Y" />
          </node>
          <node concept="3jEQsE" id="3w0n0hzkMe2" role="3jEQst">
            <property role="TrG5h" value="p" />
            <node concept="3jEQtT" id="3w0n0hzkMe3" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
            <node concept="3jEQtT" id="3w0n0hzkMe4" role="3jEQsw">
              <property role="TrG5h" value="Y" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Zs_qL" id="3w0n0hzkMe5" role="2jVTa7">
      <node concept="2jWMwi" id="3w0n0hzkMe6" role="2jWFax">
        <ref role="2jWMyc" node="3w0n0hzkMdV" />
      </node>
      <node concept="3jEQs6" id="3w0n0hzkMe7" role="3MT$nN">
        <node concept="3jEQtT" id="3w0n0hzkMe8" role="3jEQsg">
          <property role="TrG5h" value="X" />
        </node>
        <node concept="2jWM_K" id="3w0n0hzkMe9" role="3jEQsn">
          <node concept="3jEQsE" id="3w0n0hzkMea" role="2jWM_P">
            <property role="TrG5h" value="q" />
            <node concept="3jEQtT" id="3w0n0hzkMeb" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
          <node concept="3jEQso" id="3w0n0hzkMec" role="2jWM_N">
            <node concept="3jEQtT" id="3w0n0hzkMed" role="3jEQsj">
              <property role="TrG5h" value="Y" />
            </node>
            <node concept="3jEQsE" id="3w0n0hzkMee" role="3jEQst">
              <property role="TrG5h" value="p" />
              <node concept="3jEQtT" id="3w0n0hzkMef" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQtT" id="3w0n0hzkMeg" role="3jEQsw">
                <property role="TrG5h" value="Y" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="GyqZO" id="3w0n0hzkMd4" role="GyqZB">
      <node concept="3jEQs6" id="3w0n0hzkMd5" role="GyqZP">
        <node concept="3jEQtT" id="3w0n0hzkMd6" role="3jEQsg">
          <property role="TrG5h" value="X" />
        </node>
        <node concept="2jWM_K" id="3w0n0hzkMd7" role="3jEQsn">
          <node concept="3jEQsE" id="3w0n0hzkMd8" role="2jWM_P">
            <property role="TrG5h" value="q" />
            <node concept="3jEQtT" id="3w0n0hzkMd9" role="3jEQsw">
              <property role="TrG5h" value="X" />
            </node>
          </node>
          <node concept="3jEQso" id="3w0n0hzkMda" role="2jWM_N">
            <node concept="3jEQtT" id="3w0n0hzkMdb" role="3jEQsj">
              <property role="TrG5h" value="Y" />
            </node>
            <node concept="3jEQsE" id="3w0n0hzkMdc" role="3jEQst">
              <property role="TrG5h" value="p" />
              <node concept="3jEQtT" id="3w0n0hzkMdd" role="3jEQsw">
                <property role="TrG5h" value="X" />
              </node>
              <node concept="3jEQtT" id="3w0n0hzkMde" role="3jEQsw">
                <property role="TrG5h" value="Y" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

