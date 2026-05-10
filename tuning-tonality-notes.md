# Handpan Tuning And Tonality Notes

## Acoustic Reference Basis

These notes cite the local instrument-maker-v4 references used for this L2
packet:

- `references/new-instruments-v4.md` section `Handpan`: the governing model is
  coupled membrane/plate plus Helmholtz; the plate formula and Gu formula are
  coarse sanity checks, not final tuning predictors.
- `references/acoustic-models.md` section `Membranes And Plates`: handpan and
  steel-pan tone fields are shaped/tuned zones with multiple partials; document
  target partials, field geometry, steel thickness, forming method, and
  post-form tuning process.

## 9-Note Scale Of The Pan

Round 3 L2 target: D Kurd, a common handpan tonality with a D3 Ding and eight
surrounding fields:

| Field | Note | MIDI | Fundamental Hz | Octave target | Compound fifth target | Tonality role |
| --- | --- | ---: | ---: | ---: | ---: | --- |
| Ding | D3 | 50 | 146.83 | 293.66 | 440.00 | Root / tonal center |
| 1 | A3 | 57 | 220.00 | 440.00 | 660.00 | Fifth below upper field set |
| 2 | Bb3 | 58 | 233.08 | 466.16 | 699.23 | Modal color / minor sixth color |
| 3 | C4 | 60 | 261.63 | 523.25 | 784.88 | Flat seventh / open modal color |
| 4 | D4 | 62 | 293.66 | 587.33 | 880.00 | Octave root |
| 5 | E4 | 64 | 329.63 | 659.26 | 988.88 | Ninth / melodic lift |
| 6 | F4 | 65 | 349.23 | 698.46 | 1047.69 | Minor third color |
| 7 | G4 | 67 | 392.00 | 784.00 | 1176.00 | Fourth / suspended color |
| 8 | A4 | 69 | 440.00 | 880.00 | 1320.00 | Upper fifth |

The musical target is a D-centered minor/modal pan with strong root-fifth
anchors and enough adjacent stepwise motion for simple melodies. It should be
reviewed as a tonal program, not as proof that field dimensions are final.

## Partial And Tonality Acceptance

For each field, log:

- Fundamental cents error.
- Octave partial cents error near 2x.
- Compound fifth partial cents error near 3x where measurable.
- Sustain and decay character.
- Cross-talk into neighboring fields.
- Tonal role notes: root, fifth, color tone, or melodic connector.

## Gu / Body Coupling Note

The workbook Gu estimate near 115 Hz is a Helmholtz sanity check. Measure the
actual Gu response only after the shells are joined because shell volume, port
lip, adhesive/rim geometry, and internal damping affect the result.

## L2 Boundary

This note supports tuner review and prototype planning. L3 requires measured
field data from a real handpan shell plus specialist review of shell process,
hammer sequence, and final claims.
