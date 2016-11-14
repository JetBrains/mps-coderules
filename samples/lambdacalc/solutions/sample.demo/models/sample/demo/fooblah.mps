<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:64f472af-c4b1-4900-9ea3-aec5c51b6e6e(sample.demo.fooblah)">
  <persistence version="9" />
  <languages>
    <use id="af858d84-85f2-42f4-a854-0b3c6b5cd482" name="sample.fooblin" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="af858d84-85f2-42f4-a854-0b3c6b5cd482" name="sample.fooblin">
      <concept id="8739282858702982512" name="sample.fooblin.structure.App" flags="ng" index="1DVIo5">
        <child id="8739282858702982513" name="fun" index="1DVIo4" />
        <child id="8739282858702982525" name="arg" index="1DVIo8" />
      </concept>
      <concept id="8739282858702982488" name="sample.fooblin.structure.Var" flags="ng" index="1DVIoH" />
      <concept id="8739282858702982568" name="sample.fooblin.structure.Doc" flags="ng" index="1DVIrt">
        <child id="8739282858702982571" name="clause" index="1DVIru" />
      </concept>
      <concept id="8739282858702982546" name="sample.fooblin.structure.VarType" flags="ng" index="1DVIrB">
        <child id="8739282858702982547" name="var" index="1DVIrA" />
      </concept>
      <concept id="8739282858702982543" name="sample.fooblin.structure.Abs" flags="ng" index="1DVIrU">
        <child id="8739282858702982549" name="expr" index="1DVIrw" />
        <child id="8739282858702982544" name="bind" index="1DVIr_" />
      </concept>
      <concept id="8739282858702985712" name="sample.fooblin.structure.NumConst" flags="ng" index="1DVJa5">
        <property id="8739282858702985713" name="value" index="1DVJa4" />
      </concept>
      <concept id="8739282858702985614" name="sample.fooblin.structure.LetClause" flags="ng" index="1DVJbV">
        <child id="8739282858702985617" name="expr" index="1DVJb$" />
        <child id="8739282858702985615" name="var" index="1DVJbU" />
      </concept>
    </language>
  </registry>
  <node concept="1DVIrt" id="7_8aRkgE06U">
    <property role="TrG5h" value="Demo1" />
    <node concept="1DVJbV" id="7_8aRkgE06X" role="1DVIru">
      <node concept="1DVIoH" id="7_8aRkgE06Z" role="1DVJbU">
        <property role="TrG5h" value="x" />
      </node>
      <node concept="1DVJa5" id="7_8aRkgE076" role="1DVJb$">
        <property role="1DVJa4" value="2" />
      </node>
    </node>
    <node concept="1DVJbV" id="7_8aRkgHLyo" role="1DVIru">
      <node concept="1DVIoH" id="7_8aRkgHLyq" role="1DVJbU">
        <property role="TrG5h" value="Y" />
      </node>
      <node concept="1DVIrU" id="7_8aRkgHLz7" role="1DVJb$">
        <node concept="1DVIo5" id="7_8aRkgHLPv" role="1DVIrw">
          <node concept="1DVIrU" id="7_8aRkgHLzw" role="1DVIo4">
            <node concept="1DVIo5" id="7_8aRkgHLzU" role="1DVIrw">
              <node concept="1DVIo5" id="7_8aRkgHL$8" role="1DVIo8">
                <node concept="1DVIoH" id="7_8aRkgHLzT" role="1DVIo4">
                  <property role="TrG5h" value="x" />
                </node>
                <node concept="1DVIoH" id="7_8aRkgHL$7" role="1DVIo8">
                  <property role="TrG5h" value="x" />
                </node>
              </node>
              <node concept="1DVIoH" id="7_8aRkgHLPr" role="1DVIo4">
                <property role="TrG5h" value="f" />
              </node>
            </node>
            <node concept="1DVIrB" id="7_8aRkgHLzC" role="1DVIr_">
              <node concept="1DVIoH" id="7_8aRkgHLzs" role="1DVIrA">
                <property role="TrG5h" value="x" />
              </node>
            </node>
          </node>
          <node concept="1DVIrU" id="7_8aRkgHLQf" role="1DVIo8">
            <node concept="1DVIo5" id="7_8aRkgHLQD" role="1DVIrw">
              <node concept="1DVIoH" id="7_8aRkgHLQ$" role="1DVIo4">
                <property role="TrG5h" value="f" />
              </node>
              <node concept="1DVIo5" id="7_8aRkgHLQR" role="1DVIo8">
                <node concept="1DVIoH" id="7_8aRkgHLQC" role="1DVIo4">
                  <property role="TrG5h" value="x" />
                </node>
                <node concept="1DVIoH" id="7_8aRkgHLQQ" role="1DVIo8">
                  <property role="TrG5h" value="x" />
                </node>
              </node>
            </node>
            <node concept="1DVIrB" id="7_8aRkgHLQn" role="1DVIr_">
              <node concept="1DVIoH" id="7_8aRkgHLPu" role="1DVIrA">
                <property role="TrG5h" value="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DVIrB" id="7_8aRkgHLzf" role="1DVIr_">
          <node concept="1DVIoH" id="7_8aRkgHLz3" role="1DVIrA">
            <property role="TrG5h" value="f" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

