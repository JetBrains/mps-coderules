<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:64f472af-c4b1-4900-9ea3-aec5c51b6e6e(sample.demo.fooblah)">
  <persistence version="9" />
  <languages>
    <use id="af858d84-85f2-42f4-a854-0b3c6b5cd482" name="sample.lambdacalc" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="af858d84-85f2-42f4-a854-0b3c6b5cd482" name="sample.lambdacalc">
      <concept id="1784752312119229448" name="sample.lambdacalc.structure.Fix" flags="ng" index="2facFd" />
      <concept id="8747055848970356251" name="sample.lambdacalc.structure.VarRef" flags="ng" index="t0$VC">
        <reference id="8747055848970356252" name="def" index="t0$VJ" />
      </concept>
      <concept id="7591258541060276116" name="sample.lambdacalc.structure.IfThenElse" flags="ng" index="FlqVS">
        <child id="7591258541060276154" name="neg" index="FlqVm" />
        <child id="7591258541060276151" name="pos" index="FlqVr" />
        <child id="7591258541060276145" name="cond" index="FlqVt" />
      </concept>
      <concept id="8739282858702982512" name="sample.lambdacalc.structure.App" flags="ng" index="1DVIo5">
        <child id="8739282858702982513" name="fun" index="1DVIo4" />
        <child id="8739282858702982525" name="arg" index="1DVIo8" />
      </concept>
      <concept id="8739282858702982488" name="sample.lambdacalc.structure.Var" flags="ng" index="1DVIoH" />
      <concept id="8739282858702982568" name="sample.lambdacalc.structure.Doc" flags="ng" index="1DVIrt">
        <child id="8739282858702982571" name="clause" index="1DVIru" />
      </concept>
      <concept id="8739282858702982546" name="sample.lambdacalc.structure.LamVarBind" flags="ng" index="1DVIrB">
        <child id="8739282858702982547" name="var" index="1DVIrA" />
      </concept>
      <concept id="8739282858702982553" name="sample.lambdacalc.structure.LetVarBind" flags="ng" index="1DVIrG">
        <child id="8739282858702982556" name="expr" index="1DVIrD" />
        <child id="8739282858702982554" name="var" index="1DVIrJ" />
      </concept>
      <concept id="8739282858702982552" name="sample.lambdacalc.structure.LetExpr" flags="ng" index="1DVIrH">
        <child id="8739282858702982561" name="expr" index="1DVIrk" />
        <child id="8739282858702982559" name="binding" index="1DVIrE" />
      </concept>
      <concept id="8739282858702982543" name="sample.lambdacalc.structure.Lam" flags="ng" index="1DVIrU">
        <child id="8739282858702982549" name="expr" index="1DVIrw" />
        <child id="8739282858702982544" name="binding" index="1DVIr_" />
      </concept>
      <concept id="8739282858702985614" name="sample.lambdacalc.structure.LetClause" flags="ng" index="1DVJbV">
        <child id="2654091495521629866" name="binding" index="j9CMd" />
      </concept>
      <concept id="4774429934441545239" name="sample.lambdacalc.structure.False" flags="ng" index="3P8L2H" />
      <concept id="4774429934441530831" name="sample.lambdacalc.structure.True" flags="ng" index="3P8MHP" />
    </language>
  </registry>
  <node concept="1DVIrt" id="7_8aRkgE06U">
    <property role="TrG5h" value="Numerals" />
    <node concept="1DVJbV" id="492bFERo3kV" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYyS" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYyY" role="1DVIrJ">
          <property role="TrG5h" value="zero" />
        </node>
        <node concept="1DVIrU" id="2jleysRWYz0" role="1DVIrD">
          <node concept="1DVIrU" id="2jleysRWYz1" role="1DVIrw">
            <node concept="t0$VC" id="3TFdEPZdg6e" role="1DVIrw">
              <ref role="t0$VJ" node="2jleysRWYz4" resolve="x" />
            </node>
            <node concept="1DVIrB" id="2jleysRWYz3" role="1DVIr_">
              <node concept="1DVIoH" id="2jleysRWYz4" role="1DVIrA">
                <property role="TrG5h" value="x" />
              </node>
            </node>
          </node>
          <node concept="1DVIrB" id="2jleysRWYz5" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWYz6" role="1DVIrA">
              <property role="TrG5h" value="f" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="492bFERo7Ll" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYze" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYzk" role="1DVIrJ">
          <property role="TrG5h" value="one" />
        </node>
        <node concept="1DVIrU" id="2jleysRWYzm" role="1DVIrD">
          <node concept="1DVIrU" id="2jleysRWYzn" role="1DVIrw">
            <node concept="1DVIo5" id="2jleysRWYzo" role="1DVIrw">
              <node concept="t0$VC" id="3TFdEPZdg6c" role="1DVIo4">
                <ref role="t0$VJ" node="2jleysRWYzu" resolve="f" />
              </node>
              <node concept="t0$VC" id="3TFdEPZdg6a" role="1DVIo8">
                <ref role="t0$VJ" node="2jleysRWYzs" resolve="x" />
              </node>
            </node>
            <node concept="1DVIrB" id="2jleysRWYzr" role="1DVIr_">
              <node concept="1DVIoH" id="2jleysRWYzs" role="1DVIrA">
                <property role="TrG5h" value="x" />
              </node>
            </node>
          </node>
          <node concept="1DVIrB" id="2jleysRWYzt" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWYzu" role="1DVIrA">
              <property role="TrG5h" value="f" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="492bFERo7Nd" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYzC" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYzI" role="1DVIrJ">
          <property role="TrG5h" value="two" />
        </node>
        <node concept="1DVIrU" id="2jleysRWYzK" role="1DVIrD">
          <node concept="1DVIrU" id="2jleysRWYzL" role="1DVIrw">
            <node concept="1DVIrB" id="2jleysRWYzM" role="1DVIr_">
              <node concept="1DVIoH" id="2jleysRWYzN" role="1DVIrA">
                <property role="TrG5h" value="x" />
              </node>
            </node>
            <node concept="1DVIo5" id="2jleysRWYzO" role="1DVIrw">
              <node concept="t0$VC" id="3TFdEPZdg6g" role="1DVIo4">
                <ref role="t0$VJ" node="2jleysRWYzU" resolve="f" />
              </node>
              <node concept="1DVIo5" id="2jleysRWYzQ" role="1DVIo8">
                <node concept="t0$VC" id="3TFdEPZdg6i" role="1DVIo4">
                  <ref role="t0$VJ" node="2jleysRWYzU" resolve="f" />
                </node>
                <node concept="t0$VC" id="3TFdEPZdg6k" role="1DVIo8">
                  <ref role="t0$VJ" node="2jleysRWYzN" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1DVIrB" id="2jleysRWYzT" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWYzU" role="1DVIrA">
              <property role="TrG5h" value="f" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="492bFERo7Sb" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWY$6" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWY$c" role="1DVIrJ">
          <property role="TrG5h" value="three" />
        </node>
        <node concept="1DVIrU" id="2jleysRWY$e" role="1DVIrD">
          <node concept="1DVIrU" id="2jleysRWY$f" role="1DVIrw">
            <node concept="1DVIo5" id="2jleysRWY$g" role="1DVIrw">
              <node concept="t0$VC" id="3TFdEPZdg6m" role="1DVIo4">
                <ref role="t0$VJ" node="2jleysRWY$q" resolve="f" />
              </node>
              <node concept="1DVIo5" id="2jleysRWY$i" role="1DVIo8">
                <node concept="t0$VC" id="3TFdEPZdg6o" role="1DVIo4">
                  <ref role="t0$VJ" node="2jleysRWY$q" resolve="f" />
                </node>
                <node concept="1DVIo5" id="2jleysRWY$k" role="1DVIo8">
                  <node concept="t0$VC" id="3TFdEPZdg6q" role="1DVIo4">
                    <ref role="t0$VJ" node="2jleysRWY$q" resolve="f" />
                  </node>
                  <node concept="t0$VC" id="3TFdEPZdg6s" role="1DVIo8">
                    <ref role="t0$VJ" node="2jleysRWY$o" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DVIrB" id="2jleysRWY$n" role="1DVIr_">
              <node concept="1DVIoH" id="2jleysRWY$o" role="1DVIrA">
                <property role="TrG5h" value="x" />
              </node>
            </node>
          </node>
          <node concept="1DVIrB" id="2jleysRWY$p" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWY$q" role="1DVIrA">
              <property role="TrG5h" value="f" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="492bFERodtO" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWY$C" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWY$I" role="1DVIrJ">
          <property role="TrG5h" value="four" />
        </node>
        <node concept="1DVIrU" id="2jleysRWY$K" role="1DVIrD">
          <node concept="1DVIrU" id="2jleysRWY$L" role="1DVIrw">
            <node concept="1DVIo5" id="2jleysRWY$M" role="1DVIrw">
              <node concept="t0$VC" id="3TFdEPZdg6u" role="1DVIo4">
                <ref role="t0$VJ" node="2jleysRWY$Y" resolve="f" />
              </node>
              <node concept="1DVIo5" id="2jleysRWY$O" role="1DVIo8">
                <node concept="t0$VC" id="3TFdEPZdg6w" role="1DVIo4">
                  <ref role="t0$VJ" node="2jleysRWY$Y" resolve="f" />
                </node>
                <node concept="1DVIo5" id="2jleysRWY$Q" role="1DVIo8">
                  <node concept="t0$VC" id="3TFdEPZdg6y" role="1DVIo4">
                    <ref role="t0$VJ" node="2jleysRWY$Y" resolve="f" />
                  </node>
                  <node concept="1DVIo5" id="2jleysRWY$S" role="1DVIo8">
                    <node concept="t0$VC" id="3TFdEPZdg6$" role="1DVIo4">
                      <ref role="t0$VJ" node="2jleysRWY$Y" resolve="f" />
                    </node>
                    <node concept="t0$VC" id="3TFdEPZdg6A" role="1DVIo8">
                      <ref role="t0$VJ" node="2jleysRWY$W" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DVIrB" id="2jleysRWY$V" role="1DVIr_">
              <node concept="1DVIoH" id="2jleysRWY$W" role="1DVIrA">
                <property role="TrG5h" value="x" />
              </node>
            </node>
          </node>
          <node concept="1DVIrB" id="2jleysRWY$X" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWY$Y" role="1DVIrA">
              <property role="TrG5h" value="f" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="1LGA6BuFeVl" role="1DVIru">
      <node concept="1DVIrG" id="1LGA6BuFeVn" role="j9CMd">
        <node concept="1DVIoH" id="1LGA6BuFeVp" role="1DVIrJ">
          <property role="TrG5h" value="suc" />
        </node>
        <node concept="1DVIrU" id="1LGA6BuFeWB" role="1DVIrD">
          <node concept="1DVIrB" id="1LGA6BuFeWC" role="1DVIr_">
            <node concept="1DVIoH" id="1LGA6BuFeWD" role="1DVIrA">
              <property role="TrG5h" value="n" />
            </node>
          </node>
          <node concept="1DVIrU" id="1LGA6BuFeWH" role="1DVIrw">
            <node concept="1DVIrB" id="1LGA6BuFeWI" role="1DVIr_">
              <node concept="1DVIoH" id="1LGA6BuFeWJ" role="1DVIrA">
                <property role="TrG5h" value="f" />
              </node>
            </node>
            <node concept="1DVIrU" id="1LGA6BuFeWN" role="1DVIrw">
              <node concept="1DVIrB" id="1LGA6BuFeWO" role="1DVIr_">
                <node concept="1DVIoH" id="1LGA6BuFeWP" role="1DVIrA">
                  <property role="TrG5h" value="x" />
                </node>
              </node>
              <node concept="1DVIo5" id="1LGA6BuFeWY" role="1DVIrw">
                <node concept="t0$VC" id="1LGA6BuFeWT" role="1DVIo4">
                  <ref role="t0$VJ" node="1LGA6BuFeWJ" resolve="f" />
                </node>
                <node concept="1DVIo5" id="1LGA6BuFeXg" role="1DVIo8">
                  <node concept="1DVIo5" id="1LGA6BuFeXz" role="1DVIo4">
                    <node concept="t0$VC" id="1LGA6BuFeWX" role="1DVIo4">
                      <ref role="t0$VJ" node="1LGA6BuFeWD" resolve="n" />
                    </node>
                    <node concept="t0$VC" id="1LGA6BuFeXy" role="1DVIo8">
                      <ref role="t0$VJ" node="1LGA6BuFeWJ" resolve="f" />
                    </node>
                  </node>
                  <node concept="t0$VC" id="1LGA6BuFeXt" role="1DVIo8">
                    <ref role="t0$VJ" node="1LGA6BuFeWP" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="1LGA6BuFeZ9" role="1DVIru">
      <node concept="1DVIrG" id="1LGA6BuFeZb" role="j9CMd">
        <node concept="1DVIoH" id="1LGA6BuFeZd" role="1DVIrJ">
          <property role="TrG5h" value="zero_plus_one" />
        </node>
        <node concept="1DVIo5" id="1LGA6BuFf0O" role="1DVIrD">
          <node concept="t0$VC" id="1LGA6BuFf0I" role="1DVIo4">
            <ref role="t0$VJ" node="1LGA6BuFeVp" resolve="suc" />
          </node>
          <node concept="t0$VC" id="1LGA6BuFf0N" role="1DVIo8">
            <ref role="t0$VJ" node="2jleysRWYyY" resolve="zero" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="1LGA6BuFfaA" role="1DVIru">
      <node concept="1DVIrG" id="1LGA6BuFfaB" role="j9CMd">
        <node concept="1DVIoH" id="1LGA6BuFfaC" role="1DVIrJ">
          <property role="TrG5h" value="one_plus_one" />
        </node>
        <node concept="1DVIo5" id="1LGA6BuFfaD" role="1DVIrD">
          <node concept="t0$VC" id="1LGA6BuFfaE" role="1DVIo4">
            <ref role="t0$VJ" node="1LGA6BuFeVp" resolve="suc" />
          </node>
          <node concept="t0$VC" id="1LGA6BuFfch" role="1DVIo8">
            <ref role="t0$VJ" node="2jleysRWYzk" resolve="one" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1DVIrt" id="1PL$JmLA85j">
    <property role="TrG5h" value="Y_combinator" />
    <node concept="1DVJbV" id="7_8aRkgHLyo" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYDI" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYDO" role="1DVIrJ">
          <property role="TrG5h" value="y" />
        </node>
        <node concept="1DVIrU" id="2jleysRWYDQ" role="1DVIrD">
          <node concept="1DVIo5" id="2jleysRWYDR" role="1DVIrw">
            <node concept="1DVIrU" id="2jleysRWYDS" role="1DVIo4">
              <node concept="1DVIo5" id="2jleysRWYDT" role="1DVIrw">
                <node concept="1DVIo5" id="2jleysRWYDU" role="1DVIo8">
                  <node concept="t0$VC" id="3TFdEPZdg7k" role="1DVIo4">
                    <ref role="t0$VJ" node="2jleysRWYDZ" resolve="x" />
                  </node>
                  <node concept="t0$VC" id="3TFdEPZdg7m" role="1DVIo8">
                    <ref role="t0$VJ" node="2jleysRWYDZ" resolve="x" />
                  </node>
                </node>
                <node concept="t0$VC" id="3TFdEPZdg7i" role="1DVIo4">
                  <ref role="t0$VJ" node="2jleysRWYE9" resolve="f" />
                </node>
              </node>
              <node concept="1DVIrB" id="2jleysRWYDY" role="1DVIr_">
                <node concept="1DVIoH" id="2jleysRWYDZ" role="1DVIrA">
                  <property role="TrG5h" value="x" />
                </node>
              </node>
            </node>
            <node concept="1DVIrU" id="2jleysRWYE0" role="1DVIo8">
              <node concept="1DVIo5" id="2jleysRWYE1" role="1DVIrw">
                <node concept="t0$VC" id="3TFdEPZdg7o" role="1DVIo4">
                  <ref role="t0$VJ" node="2jleysRWYE9" resolve="f" />
                </node>
                <node concept="1DVIo5" id="2jleysRWYE3" role="1DVIo8">
                  <node concept="t0$VC" id="3TFdEPZdg7q" role="1DVIo4">
                    <ref role="t0$VJ" node="2jleysRWYE7" resolve="x" />
                  </node>
                  <node concept="t0$VC" id="3TFdEPZdg7s" role="1DVIo8">
                    <ref role="t0$VJ" node="2jleysRWYE7" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="1DVIrB" id="2jleysRWYE6" role="1DVIr_">
                <node concept="1DVIoH" id="2jleysRWYE7" role="1DVIrA">
                  <property role="TrG5h" value="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1DVIrB" id="2jleysRWYE8" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWYE9" role="1DVIrA">
              <property role="TrG5h" value="f" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1DVIrt" id="4dPZ2m2jNim">
    <property role="TrG5h" value="Demo" />
    <node concept="1DVJbV" id="4dPZ2m2jNip" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYwm" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYws" role="1DVIrJ">
          <property role="TrG5h" value="x" />
        </node>
        <node concept="3P8L2H" id="2jleysRWYwu" role="1DVIrD" />
      </node>
    </node>
    <node concept="1DVJbV" id="2jleysRWMBQ" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYwx" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYwB" role="1DVIrJ">
          <property role="TrG5h" value="y" />
        </node>
        <node concept="1DVIrH" id="2jleysRWYwD" role="1DVIrD">
          <node concept="1DVIrG" id="2jleysRWYwE" role="1DVIrE">
            <node concept="1DVIrU" id="2jleysRWYwG" role="1DVIrD">
              <node concept="3P8L2H" id="2jleysRWYwH" role="1DVIrw" />
              <node concept="1DVIrB" id="2jleysRWYwI" role="1DVIr_">
                <node concept="1DVIoH" id="2jleysRWYwJ" role="1DVIrA">
                  <property role="TrG5h" value="y" />
                </node>
              </node>
            </node>
            <node concept="1DVIoH" id="2jleysRXNAK" role="1DVIrJ">
              <property role="TrG5h" value="f" />
            </node>
          </node>
          <node concept="1DVIo5" id="2jleysRWYwK" role="1DVIrk">
            <node concept="t0$VC" id="3TFdEPZdg7u" role="1DVIo4">
              <ref role="t0$VJ" node="2jleysRXNAK" resolve="f" />
            </node>
            <node concept="t0$VC" id="3TFdEPZdg7w" role="1DVIo8">
              <ref role="t0$VJ" node="2jleysRWYws" resolve="x" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="2jleysRWYxF" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYxH" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYy8" role="1DVIrJ">
          <property role="TrG5h" value="z" />
        </node>
        <node concept="t0$VC" id="3TFdEPZdg7y" role="1DVIrD">
          <ref role="t0$VJ" node="2jleysRWYws" resolve="x" />
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="10BVPEVKOU2" role="1DVIru">
      <node concept="1DVIrG" id="10BVPEVKOU4" role="j9CMd">
        <node concept="1DVIoH" id="10BVPEVKOU6" role="1DVIrJ">
          <property role="TrG5h" value="q" />
        </node>
        <node concept="1DVIrH" id="10BVPEVKOUz" role="1DVIrD">
          <node concept="1DVIrH" id="10BVPEVKOUR" role="1DVIrk">
            <node concept="t0$VC" id="10BVPEVKOVb" role="1DVIrk">
              <ref role="t0$VJ" node="10BVPEVKOUY" resolve="s" />
            </node>
            <node concept="1DVIrG" id="10BVPEVKOUX" role="1DVIrE">
              <node concept="1DVIoH" id="10BVPEVKOUY" role="1DVIrJ">
                <property role="TrG5h" value="s" />
              </node>
              <node concept="1DVIrU" id="10BVPEVKOV3" role="1DVIrD">
                <node concept="1DVIrB" id="10BVPEVKOV4" role="1DVIr_">
                  <node concept="1DVIoH" id="10BVPEVKOV5" role="1DVIrA">
                    <property role="TrG5h" value="b" />
                  </node>
                </node>
                <node concept="t0$VC" id="10BVPEVKOV9" role="1DVIrw">
                  <ref role="t0$VJ" node="10BVPEVKOUE" resolve="r" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1DVIrG" id="10BVPEVKOUD" role="1DVIrE">
            <node concept="1DVIoH" id="10BVPEVKOUE" role="1DVIrJ">
              <property role="TrG5h" value="r" />
            </node>
            <node concept="1DVIrH" id="10BVPEVKUAb" role="1DVIrD">
              <node concept="t0$VC" id="10BVPEVKUBL" role="1DVIrk">
                <ref role="t0$VJ" node="10BVPEVKUAi" resolve="a" />
              </node>
              <node concept="1DVIrG" id="10BVPEVKUAh" role="1DVIrE">
                <node concept="1DVIoH" id="10BVPEVKUAi" role="1DVIrJ">
                  <property role="TrG5h" value="a" />
                </node>
                <node concept="1DVIrU" id="10BVPEVKUBD" role="1DVIrD">
                  <node concept="1DVIrB" id="10BVPEVKUBE" role="1DVIr_">
                    <node concept="1DVIoH" id="10BVPEVKUBF" role="1DVIrA">
                      <property role="TrG5h" value="x" />
                    </node>
                  </node>
                  <node concept="t0$VC" id="10BVPEVKUBJ" role="1DVIrw">
                    <ref role="t0$VJ" node="10BVPEVKUBF" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="6_p$mL23mCW" role="1DVIru">
      <node concept="1DVIrG" id="6_p$mL23mCY" role="j9CMd">
        <node concept="1DVIoH" id="6_p$mL23mD0" role="1DVIrJ">
          <property role="TrG5h" value="aaa" />
        </node>
        <node concept="FlqVS" id="6_p$mL23mDN" role="1DVIrD">
          <node concept="3P8MHP" id="6_p$mL23mDZ" role="FlqVt" />
          <node concept="1DVIrU" id="6XR$k9E0tEk" role="FlqVr">
            <node concept="1DVIrB" id="6XR$k9E0tEl" role="1DVIr_">
              <node concept="1DVIoH" id="6XR$k9E0tEm" role="1DVIrA">
                <property role="TrG5h" value="x" />
              </node>
            </node>
            <node concept="3P8MHP" id="6XR$k9E0tEq" role="1DVIrw" />
          </node>
          <node concept="1DVIrU" id="6XR$k9E0tEu" role="FlqVm">
            <node concept="1DVIrB" id="6XR$k9E0tEv" role="1DVIr_">
              <node concept="1DVIoH" id="6XR$k9E0tEw" role="1DVIrA">
                <property role="TrG5h" value="x" />
              </node>
            </node>
            <node concept="3P8L2H" id="6XR$k9E0tE$" role="1DVIrw" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1DVIrt" id="7Et5j8uqHKT">
    <property role="TrG5h" value=" SKI" />
    <node concept="1DVJbV" id="7Et5j8uqHKU" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWY_e" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWY_k" role="1DVIrJ">
          <property role="TrG5h" value="s" />
        </node>
        <node concept="1DVIrU" id="2jleysRWY_m" role="1DVIrD">
          <node concept="1DVIrU" id="2jleysRWY_n" role="1DVIrw">
            <node concept="1DVIrU" id="2jleysRWY_o" role="1DVIrw">
              <node concept="1DVIrB" id="2jleysRWY_p" role="1DVIr_">
                <node concept="1DVIoH" id="2jleysRWY_q" role="1DVIrA">
                  <property role="TrG5h" value="x" />
                </node>
              </node>
              <node concept="1DVIo5" id="2jleysRWY_r" role="1DVIrw">
                <node concept="1DVIo5" id="2jleysRWY_s" role="1DVIo8">
                  <node concept="t0$VC" id="3TFdEPZdg6G" role="1DVIo4">
                    <ref role="t0$VJ" node="2jleysRWY_z" resolve="g" />
                  </node>
                  <node concept="t0$VC" id="3TFdEPZdg6I" role="1DVIo8">
                    <ref role="t0$VJ" node="2jleysRWY_q" resolve="x" />
                  </node>
                </node>
                <node concept="1DVIo5" id="2jleysRWY_v" role="1DVIo4">
                  <node concept="t0$VC" id="3TFdEPZdg6C" role="1DVIo4">
                    <ref role="t0$VJ" node="2jleysRWY__" resolve="f" />
                  </node>
                  <node concept="t0$VC" id="3TFdEPZdg6E" role="1DVIo8">
                    <ref role="t0$VJ" node="2jleysRWY_q" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DVIrB" id="2jleysRWY_y" role="1DVIr_">
              <node concept="1DVIoH" id="2jleysRWY_z" role="1DVIrA">
                <property role="TrG5h" value="g" />
              </node>
            </node>
          </node>
          <node concept="1DVIrB" id="2jleysRWY_$" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWY__" role="1DVIrA">
              <property role="TrG5h" value="f" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="7Et5j8uqHR$" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWY_Q" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWY_W" role="1DVIrJ">
          <property role="TrG5h" value="k" />
        </node>
        <node concept="1DVIrU" id="2jleysRWYB5" role="1DVIrD">
          <node concept="1DVIrB" id="2jleysRWYB6" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWYB7" role="1DVIrA">
              <property role="TrG5h" value="x" />
            </node>
          </node>
          <node concept="1DVIrU" id="2jleysRWYB8" role="1DVIrw">
            <node concept="t0$VC" id="3TFdEPZdg6K" role="1DVIrw">
              <ref role="t0$VJ" node="2jleysRWYB7" resolve="x" />
            </node>
            <node concept="1DVIrB" id="2jleysRWYBa" role="1DVIr_">
              <node concept="1DVIoH" id="2jleysRWYBb" role="1DVIrA">
                <property role="TrG5h" value="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="7Et5j8uqHWb" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYCm" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYCs" role="1DVIrJ">
          <property role="TrG5h" value="i" />
        </node>
        <node concept="1DVIrU" id="2jleysRWYCu" role="1DVIrD">
          <node concept="1DVIrB" id="2jleysRWYCw" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWYCx" role="1DVIrA">
              <property role="TrG5h" value="x" />
            </node>
          </node>
          <node concept="t0$VC" id="3TFdEPZh0gs" role="1DVIrw">
            <ref role="t0$VJ" node="2jleysRWYCx" resolve="x" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="6ydDNpmNRcW" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYCA" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYCG" role="1DVIrJ">
          <property role="TrG5h" value="skk" />
        </node>
        <node concept="1DVIo5" id="2jleysRWYCI" role="1DVIrD">
          <node concept="1DVIo5" id="2jleysRWYCJ" role="1DVIo4">
            <node concept="t0$VC" id="3TFdEPZdg6O" role="1DVIo4">
              <ref role="t0$VJ" node="2jleysRWY_k" resolve="s" />
            </node>
            <node concept="t0$VC" id="3TFdEPZdg6Q" role="1DVIo8">
              <ref role="t0$VJ" node="2jleysRWY_W" resolve="k" />
            </node>
          </node>
          <node concept="t0$VC" id="3TFdEPZdg6S" role="1DVIo8">
            <ref role="t0$VJ" node="2jleysRWY_W" resolve="k" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="6ydDNpmNRlh" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYCS" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYCY" role="1DVIrJ">
          <property role="TrG5h" value="y" />
        </node>
        <node concept="1DVIo5" id="2jleysRWYD0" role="1DVIrD">
          <node concept="1DVIo5" id="2jleysRWYD1" role="1DVIo4">
            <node concept="1DVIo5" id="2jleysRWYD2" role="1DVIo4">
              <node concept="t0$VC" id="3TFdEPZdg6U" role="1DVIo4">
                <ref role="t0$VJ" node="2jleysRWY_k" resolve="s" />
              </node>
              <node concept="t0$VC" id="3TFdEPZdg6W" role="1DVIo8">
                <ref role="t0$VJ" node="2jleysRWY_k" resolve="s" />
              </node>
            </node>
            <node concept="t0$VC" id="3TFdEPZdg6Y" role="1DVIo8">
              <ref role="t0$VJ" node="2jleysRWY_W" resolve="k" />
            </node>
          </node>
          <node concept="1DVIo5" id="2jleysRWYD6" role="1DVIo8">
            <node concept="1DVIo5" id="2jleysRWYD7" role="1DVIo4">
              <node concept="t0$VC" id="3TFdEPZdg70" role="1DVIo4">
                <ref role="t0$VJ" node="2jleysRWY_k" resolve="s" />
              </node>
              <node concept="1DVIo5" id="2jleysRWYD9" role="1DVIo8">
                <node concept="t0$VC" id="3TFdEPZdg72" role="1DVIo4">
                  <ref role="t0$VJ" node="2jleysRWY_W" resolve="k" />
                </node>
                <node concept="1DVIo5" id="2jleysRWYDb" role="1DVIo8">
                  <node concept="1DVIo5" id="2jleysRWYDc" role="1DVIo4">
                    <node concept="t0$VC" id="3TFdEPZdg74" role="1DVIo4">
                      <ref role="t0$VJ" node="2jleysRWY_k" resolve="s" />
                    </node>
                    <node concept="t0$VC" id="3TFdEPZdg76" role="1DVIo8">
                      <ref role="t0$VJ" node="2jleysRWY_k" resolve="s" />
                    </node>
                  </node>
                  <node concept="1DVIo5" id="2jleysRWYDf" role="1DVIo8">
                    <node concept="t0$VC" id="3TFdEPZdg78" role="1DVIo4">
                      <ref role="t0$VJ" node="2jleysRWY_k" resolve="s" />
                    </node>
                    <node concept="1DVIo5" id="2jleysRWYDh" role="1DVIo8">
                      <node concept="1DVIo5" id="2jleysRWYDi" role="1DVIo4">
                        <node concept="t0$VC" id="3TFdEPZdg7a" role="1DVIo4">
                          <ref role="t0$VJ" node="2jleysRWY_k" resolve="s" />
                        </node>
                        <node concept="t0$VC" id="3TFdEPZdg7c" role="1DVIo8">
                          <ref role="t0$VJ" node="2jleysRWY_k" resolve="s" />
                        </node>
                      </node>
                      <node concept="t0$VC" id="3TFdEPZdg7e" role="1DVIo8">
                        <ref role="t0$VJ" node="2jleysRWY_W" resolve="k" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="t0$VC" id="3TFdEPZdg7g" role="1DVIo8">
              <ref role="t0$VJ" node="2jleysRWY_W" resolve="k" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1DVIrt" id="nOeFRaGxm_">
    <property role="TrG5h" value="Omega" />
    <node concept="1DVJbV" id="nOeFRaGxmK" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRWYy$" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRWYyE" role="1DVIrJ">
          <property role="TrG5h" value="omega" />
        </node>
        <node concept="1DVIrU" id="2jleysRWYyG" role="1DVIrD">
          <node concept="1DVIo5" id="2jleysRWYyH" role="1DVIrw">
            <node concept="t0$VC" id="3TFdEPZdg7E" role="1DVIo4">
              <ref role="t0$VJ" node="2jleysRWYyL" resolve="x" />
            </node>
            <node concept="t0$VC" id="3TFdEPZdg7G" role="1DVIo8">
              <ref role="t0$VJ" node="2jleysRWYyL" resolve="x" />
            </node>
          </node>
          <node concept="1DVIrB" id="2jleysRWYyK" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRWYyL" role="1DVIrA">
              <property role="TrG5h" value="x" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1DVIrt" id="G788z3ofcS">
    <property role="TrG5h" value="Fix" />
    <node concept="1DVJbV" id="2jleysRX4cu" role="1DVIru">
      <node concept="1DVIrG" id="2jleysRX4cw" role="j9CMd">
        <node concept="1DVIoH" id="2jleysRX4cS" role="1DVIrJ">
          <property role="TrG5h" value="fix_bad" />
        </node>
        <node concept="1DVIrU" id="2jleysRX4cZ" role="1DVIrD">
          <node concept="1DVIrB" id="2jleysRX4d7" role="1DVIr_">
            <node concept="1DVIoH" id="2jleysRX4cU" role="1DVIrA">
              <property role="TrG5h" value="f" />
            </node>
          </node>
          <node concept="1DVIrH" id="2jleysRX4dk" role="1DVIrw">
            <node concept="1DVIrG" id="2jleysRX4dl" role="1DVIrE">
              <node concept="1DVIo5" id="2jleysRX4dm" role="1DVIrD">
                <node concept="t0$VC" id="3TFdEPZdg7$" role="1DVIo4">
                  <ref role="t0$VJ" node="2jleysRX4cU" resolve="f" />
                </node>
                <node concept="t0$VC" id="3TFdEPZheq9" role="1DVIo8">
                  <ref role="t0$VJ" node="2jleysRX4dp" resolve="x" />
                </node>
              </node>
              <node concept="1DVIoH" id="2jleysRX4dp" role="1DVIrJ">
                <property role="TrG5h" value="x" />
              </node>
            </node>
            <node concept="t0$VC" id="3TFdEPZdg7C" role="1DVIrk">
              <ref role="t0$VJ" node="2jleysRX4dp" resolve="x" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="1YCbHn1AbJG" role="1DVIru">
      <node concept="1DVIrG" id="1YCbHn1AbJI" role="j9CMd">
        <node concept="1DVIoH" id="1YCbHn1AbJK" role="1DVIrJ">
          <property role="TrG5h" value="g" />
        </node>
        <node concept="1DVIrU" id="1YCbHn1AbKi" role="1DVIrD">
          <node concept="1DVIrB" id="1YCbHn1AbKj" role="1DVIr_">
            <node concept="1DVIoH" id="1YCbHn1AbKk" role="1DVIrA">
              <property role="TrG5h" value="rec" />
            </node>
          </node>
          <node concept="1DVIrU" id="1YCbHn1AbKl" role="1DVIrw">
            <node concept="1DVIrB" id="1YCbHn1AbKm" role="1DVIr_">
              <node concept="1DVIoH" id="1YCbHn1AbKn" role="1DVIrA">
                <property role="TrG5h" value="n" />
              </node>
            </node>
            <node concept="1DVIo5" id="1YCbHn1AbKo" role="1DVIrw">
              <node concept="t0$VC" id="1YCbHn1AbKp" role="1DVIo4">
                <ref role="t0$VJ" node="1YCbHn1AbKk" resolve="rec" />
              </node>
              <node concept="t0$VC" id="1YCbHn1AbKq" role="1DVIo8">
                <ref role="t0$VJ" node="1YCbHn1AbKn" resolve="n" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="1YCbHn1AJbt" role="1DVIru">
      <node concept="1DVIrG" id="1YCbHn1AJbv" role="j9CMd">
        <node concept="1DVIoH" id="1YCbHn1AJbx" role="1DVIrJ">
          <property role="TrG5h" value="f" />
        </node>
        <node concept="1DVIo5" id="1YCbHn1AJc8" role="1DVIrD">
          <node concept="2facFd" id="1YCbHn1AJc2" role="1DVIo4" />
          <node concept="t0$VC" id="1YCbHn1AJc7" role="1DVIo8">
            <ref role="t0$VJ" node="1YCbHn1AbJK" resolve="g" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DVJbV" id="1YCbHn1AVG3" role="1DVIru">
      <node concept="1DVIrG" id="1YCbHn1AVG5" role="j9CMd">
        <node concept="1DVIoH" id="1YCbHn1AVG7" role="1DVIrJ">
          <property role="TrG5h" value="f2" />
        </node>
        <node concept="1DVIo5" id="1YCbHn1AVGO" role="1DVIrD">
          <node concept="2facFd" id="1YCbHn1AVGI" role="1DVIo4" />
          <node concept="1DVIrU" id="1YCbHn1AVH1" role="1DVIo8">
            <node concept="1DVIrB" id="1YCbHn1AVH2" role="1DVIr_">
              <node concept="1DVIoH" id="1YCbHn1AVH3" role="1DVIrA">
                <property role="TrG5h" value="rec" />
              </node>
            </node>
            <node concept="1DVIrU" id="1YCbHn1AVH4" role="1DVIrw">
              <node concept="1DVIrB" id="1YCbHn1AVH5" role="1DVIr_">
                <node concept="1DVIoH" id="1YCbHn1AVH6" role="1DVIrA">
                  <property role="TrG5h" value="n" />
                </node>
              </node>
              <node concept="1DVIo5" id="1YCbHn1AVH7" role="1DVIrw">
                <node concept="t0$VC" id="1YCbHn1AVH8" role="1DVIo4">
                  <ref role="t0$VJ" node="1YCbHn1AVH3" resolve="rec" />
                </node>
                <node concept="t0$VC" id="1YCbHn1AVH9" role="1DVIo8">
                  <ref role="t0$VJ" node="1YCbHn1AVH6" resolve="n" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

