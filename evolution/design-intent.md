# Design Intent — handpan rev A

- Master CAD: `cad/handpan.scad` (sha256: 10a5e8d80ba57a5c706bd6ea92a2c84ce4aafa239d8eb2ffeb1638af2aa49fca) — a non-dimensional two-shell bounding envelope, driven by `handpan-design-table.xlsx` (sha256: 80c50005ce95baa1bfa12314e45540738dd1dd5cb3201e6eb3768304953d73db).
- Function: D Kurd root-mode handpan / hang-style steel idiophone. Two hammered steel shells form a Ding (center) plus eight surrounding tone fields and a bottom Gu (Helmholtz) port, coupled through the shell body (design.md Design Position, Governing Model). Tone field pitch is earned by measured tuning passes, not predicted by geometry (design.md Empirical Tuning Strategy).
- Environment: struck/hand-played idiophone; thin steel shells are forming-hazard-sensitive (risks.md Metal Forming Hazards).
- Target qty: 1 (prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Shell outside diameter | 21 in / 533 mm | workbook input, not measured | overall envelope, fixture sizing | design.md Starting Inputs From Workbook, cad/handpan-cad-brief.md |
| Total shell height | 9.5 in / 241 mm | workbook input, not measured | envelope, rim-joint planning | design.md Starting Inputs From Workbook |
| Steel thickness | 1.0 mm | workbook input, not measured | pitch model input, forming risk | design.md Starting Inputs From Workbook |
| Gu port diameter / neck depth | 3.5 in / 0.5 in | workbook input, not measured | Helmholtz sanity check only | design.md Starting Inputs From Workbook |
| Tone field layout (9 fields incl. Ding) | design.md Target Scale table (layout starters only) | measurement_required — explicitly OUT OF SCOPE for cad/handpan.scad | final pitch, tuner-driven | design.md Target Scale; cad/handpan-cad-brief.md "Do not model tuned tone fields as final manufacturable pitch geometry" |

## Incidental (free for DFM)

- Shell surface finish/color; ding-zone marker diameter in cad/handpan.scad (layout reference only, not a tuned dimple spec).

## Must-nots (DFM may never violate)

- Never model tone-field dimple geometry as final manufacturable pitch geometry — cad/handpan.scad is envelope-only per cad/handpan-cad-brief.md.
- Do not treat handpan-design-table.xlsx scale values as calibrated tuned geometry (register DST-001: authority pending_measurement).
- Do not join shells before the top shell survives a 24-hour rest without large drift (design.md Empirical Tuning Strategy step 8).
- Follow risks.md Metal Forming Hazards PPE/fixture mitigations before any forming or hammering pass.

## Material intent

- Preferred: nitrided DC04 steel shells (design.md Starting Inputs From Workbook); see bom.csv/sourcing.csv for procurement detail.
- Acceptable subs: per risks.md Heat And Work-Hardening Assumptions — do not mix stainless and nitrided assumptions in one measurement set.
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable.
