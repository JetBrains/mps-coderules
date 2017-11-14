<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ff7f5a29-d9b8-40f0-b446-35696305dff0(jetbrains.mps.fitch.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="06b7c5c7-e359-4f4b-a581-5d0c9323af39" name="jetbrains.mps.fitch" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="06b7c5c7-e359-4f4b-a581-5d0c9323af39" name="jetbrains.mps.fitch">
      <concept id="4322786184247881316" name="jetbrains.mps.fitch.structure.OrIntro" flags="ng" index="2jWz55" />
      <concept id="4322786184247881318" name="jetbrains.mps.fitch.structure.NotIntro" flags="ng" index="2jWz57" />
      <concept id="4322786184247881124" name="jetbrains.mps.fitch.structure.SubProof" flags="ng" index="2jWza5">
        <child id="4322786184247881125" name="content" index="2jWza4" />
      </concept>
      <concept id="4322786184247901129" name="jetbrains.mps.fitch.structure.IfIntro" flags="ng" index="2jWAjC" />
      <concept id="4322786184247901128" name="jetbrains.mps.fitch.structure.NotElim" flags="ng" index="2jWAjD" />
      <concept id="4322786184247859218" name="jetbrains.mps.fitch.structure.Assumption" flags="ng" index="2jWGsN">
        <child id="4322786184247859221" name="sentence" index="2jWGsO" />
      </concept>
      <concept id="4322786184247805384" name="jetbrains.mps.fitch.structure.Constant" flags="ng" index="2jWLFD" />
      <concept id="4322786184247805399" name="jetbrains.mps.fitch.structure.Not" flags="ng" index="2jWLFQ">
        <child id="4322786184247805400" name="target" index="2jWLFT" />
      </concept>
      <concept id="4322786184247818020" name="jetbrains.mps.fitch.structure.Proof" flags="ng" index="2jWMw5">
        <child id="4322786184248036774" name="content" index="2jVTa7" />
      </concept>
      <concept id="4322786184247818022" name="jetbrains.mps.fitch.structure.Judgement" flags="ng" index="2jWMw7">
        <child id="4322786184247848320" name="premise" index="2jWFax" />
        <child id="4322786184247818023" name="conclusion" index="2jWMw6" />
      </concept>
      <concept id="4322786184247818035" name="jetbrains.mps.fitch.structure.Basis" flags="ng" index="2jWMwi">
        <reference id="4322786184247818157" name="reasoning" index="2jWMyc" />
      </concept>
      <concept id="4322786184247817766" name="jetbrains.mps.fitch.structure.Or" flags="ng" index="2jWM$7">
        <child id="4322786184247817796" name="disjunct" index="2jWM__" />
      </concept>
      <concept id="4322786184247817809" name="jetbrains.mps.fitch.structure.If" flags="ng" index="2jWM_K">
        <child id="4322786184247817810" name="antecedent" index="2jWM_N" />
        <child id="4322786184247817812" name="consequent" index="2jWM_P" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2jWMw5" id="3JXBM6C4h$e">
    <property role="TrG5h" value="sample" />
    <node concept="2jWza5" id="$u9BK_y$0J" role="2jVTa7">
      <node concept="2jWGsN" id="3JXBM6C4ztF" role="2jWza4">
        <node concept="2jWLFQ" id="$u9BK_y$3a" role="2jWGsO">
          <node concept="2jWM$7" id="3JXBM6C4ztG" role="2jWLFT">
            <node concept="2jWLFD" id="3JXBM6C4ztH" role="2jWM__">
              <property role="TrG5h" value="p" />
            </node>
            <node concept="2jWLFQ" id="3JXBM6C4ztI" role="2jWM__">
              <node concept="2jWLFD" id="3JXBM6C4ztJ" role="2jWLFT">
                <property role="TrG5h" value="p" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWza5" id="3JXBM6Ca7o3" role="2jWza4">
        <node concept="2jWGsN" id="3JXBM6Ca7o4" role="2jWza4">
          <node concept="2jWLFD" id="3JXBM6Ca7o_" role="2jWGsO">
            <property role="TrG5h" value="p" />
          </node>
        </node>
        <node concept="2jWz55" id="3JXBM6Ca7oF" role="2jWza4">
          <node concept="2jWMwi" id="3JXBM6Ca7p4" role="2jWFax">
            <ref role="2jWMyc" node="3JXBM6Ca7o4" />
          </node>
          <node concept="2jWM$7" id="3JXBM6Ca7oS" role="2jWMw6">
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
        <node concept="2jWMwi" id="3JXBM6Ca7qT" role="2jWFax">
          <ref role="2jWMyc" node="3JXBM6Ca7o4" />
        </node>
        <node concept="2jWMwi" id="3JXBM6Ca7qZ" role="2jWFax">
          <ref role="2jWMyc" node="3JXBM6Ca7oF" />
        </node>
        <node concept="2jWM_K" id="3JXBM6Ca7qz" role="2jWMw6">
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
          <node concept="2jWLFD" id="3JXBM6Ca7sF" role="2jWGsO">
            <property role="TrG5h" value="p" />
          </node>
        </node>
        <node concept="2jWGsN" id="$u9BK_y$eJ" role="2jWza4">
          <node concept="2jWLFQ" id="$u9BK_y$eK" role="2jWGsO">
            <node concept="2jWM$7" id="$u9BK_y$eL" role="2jWLFT">
              <node concept="2jWLFD" id="$u9BK_y$eM" role="2jWM__">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="2jWLFQ" id="$u9BK_y$eN" role="2jWM__">
                <node concept="2jWLFD" id="$u9BK_y$eO" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="$u9BK_yvcM" role="2jWza4">
        <node concept="2jWMwi" id="$u9BK_yzWV" role="2jWFax">
          <ref role="2jWMyc" node="3JXBM6Ca7rQ" />
        </node>
        <node concept="2jWMwi" id="$u9BK_y$kI" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$eJ" />
        </node>
        <node concept="2jWM_K" id="$u9BK_yzWw" role="2jWMw6">
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
      </node>
      <node concept="2jWz57" id="$u9BK_y$kO" role="2jWza4">
        <node concept="2jWMwi" id="$u9BK_y$lO" role="2jWFax">
          <ref role="2jWMyc" node="3JXBM6Ca7pK" />
        </node>
        <node concept="2jWMwi" id="$u9BK_y$lU" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_yvcM" />
        </node>
        <node concept="2jWLFQ" id="$u9BK_y$lF" role="2jWMw6">
          <node concept="2jWLFD" id="$u9BK_y$lJ" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="$u9BK_y$oJ" role="2jVTa7">
      <node concept="2jWMwi" id="$u9BK_y$xr" role="2jWFax">
        <ref role="2jWMyc" node="3JXBM6C4ztF" />
      </node>
      <node concept="2jWMwi" id="$u9BK_y$xx" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$kO" />
      </node>
      <node concept="2jWM_K" id="$u9BK_y$q$" role="2jWMw6">
        <node concept="2jWLFQ" id="$u9BK_y$xn" role="2jWM_P">
          <node concept="2jWLFD" id="$u9BK_y$xp" role="2jWLFT">
            <property role="TrG5h" value="p" />
          </node>
        </node>
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
      </node>
    </node>
    <node concept="2jWza5" id="$u9BK_y$yG" role="2jVTa7">
      <node concept="2jWGsN" id="$u9BK_y$yH" role="2jWza4">
        <node concept="2jWLFQ" id="$u9BK_y$yI" role="2jWGsO">
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
          <node concept="2jWLFQ" id="$u9BK_y$_m" role="2jWGsO">
            <node concept="2jWLFD" id="$u9BK_y$yP" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
        </node>
        <node concept="2jWz55" id="$u9BK_y$yQ" role="2jWza4">
          <node concept="2jWMwi" id="$u9BK_y$yR" role="2jWFax">
            <ref role="2jWMyc" node="$u9BK_y$yO" />
          </node>
          <node concept="2jWM$7" id="$u9BK_y$yS" role="2jWMw6">
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
        <node concept="2jWMwi" id="$u9BK_y$yX" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$yO" />
        </node>
        <node concept="2jWMwi" id="$u9BK_y$yY" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$yQ" />
        </node>
        <node concept="2jWM_K" id="$u9BK_y$yZ" role="2jWMw6">
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
      </node>
      <node concept="2jWza5" id="$u9BK_y$z5" role="2jWza4">
        <node concept="2jWGsN" id="$u9BK_y$z6" role="2jWza4">
          <node concept="2jWLFQ" id="$u9BK_y$_w" role="2jWGsO">
            <node concept="2jWLFD" id="$u9BK_y$z7" role="2jWLFT">
              <property role="TrG5h" value="p" />
            </node>
          </node>
        </node>
        <node concept="2jWGsN" id="$u9BK_y$z8" role="2jWza4">
          <node concept="2jWLFQ" id="$u9BK_y$z9" role="2jWGsO">
            <node concept="2jWM$7" id="$u9BK_y$za" role="2jWLFT">
              <node concept="2jWLFD" id="$u9BK_y$zb" role="2jWM__">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="2jWLFQ" id="$u9BK_y$zc" role="2jWM__">
                <node concept="2jWLFD" id="$u9BK_y$zd" role="2jWLFT">
                  <property role="TrG5h" value="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2jWAjC" id="$u9BK_y$ze" role="2jWza4">
        <node concept="2jWMwi" id="$u9BK_y$zf" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$z6" />
        </node>
        <node concept="2jWMwi" id="$u9BK_y$zg" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$z8" />
        </node>
        <node concept="2jWM_K" id="$u9BK_y$zh" role="2jWMw6">
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
      </node>
      <node concept="2jWz57" id="$u9BK_y$zo" role="2jWza4">
        <node concept="2jWMwi" id="$u9BK_y$zp" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$yW" />
        </node>
        <node concept="2jWMwi" id="$u9BK_y$zq" role="2jWFax">
          <ref role="2jWMyc" node="$u9BK_y$ze" />
        </node>
        <node concept="2jWLFQ" id="$u9BK_y$zr" role="2jWMw6">
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
        <node concept="2jWLFD" id="$u9BK_y$By" role="2jWMw6">
          <property role="TrG5h" value="p" />
        </node>
      </node>
    </node>
    <node concept="2jWAjC" id="$u9BK_y$yx" role="2jVTa7">
      <node concept="2jWMwi" id="$u9BK_y$BC" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$yH" />
      </node>
      <node concept="2jWMwi" id="$u9BK_y$BG" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$A_" />
      </node>
      <node concept="2jWM_K" id="$u9BK_y$y$" role="2jWMw6">
        <node concept="2jWLFD" id="$u9BK_y$yA" role="2jWM_P">
          <property role="TrG5h" value="p" />
        </node>
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
      </node>
    </node>
    <node concept="2jWz57" id="$u9BK_y$DL" role="2jVTa7">
      <node concept="2jWLFQ" id="$u9BK_y$G8" role="2jWMw6">
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
      <node concept="2jWMwi" id="$u9BK_y$Gw" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$oJ" />
      </node>
      <node concept="2jWMwi" id="$u9BK_y$G_" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$yx" />
      </node>
    </node>
    <node concept="2jWAjD" id="$u9BK_y$IN" role="2jVTa7">
      <node concept="2jWMwi" id="$u9BK_y$Li" role="2jWFax">
        <ref role="2jWMyc" node="$u9BK_y$DL" />
      </node>
      <node concept="2jWM$7" id="$u9BK_y$L6" role="2jWMw6">
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
</model>

