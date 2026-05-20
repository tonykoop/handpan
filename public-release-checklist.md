# Public Release Checklist

This repo can be useful before it is publicly releasable. Treat the current packet as a private research and shop-review bundle until every gate below is complete.

## Current Use

Allowed now:

- Quote shells, tooling, measurement equipment, fixtures, adhesive coupons, and finishing supplies.
- Review the D Kurd layout, Gu target, and validation method.
- Build non-acoustic fixtures: tuning support ring, removable templates, inspection overlays, and photo/documentation setup.
- Run scrap-shell or coupon trials for hammers, edge finishing, adhesive, and finish compatibility.

Not allowed to claim yet:

- Final tone-field contours.
- A proven hammer recipe or tuning sequence.
- Concert-quality pitch accuracy, sustain, or cross-talk isolation.
- Validated nitriding, heat-treatment, stainless, or supplier process behavior.
- A general public recipe for building a finished handpan.

## Specialist Gates

| Gate | Required reviewer | Evidence to add |
|---|---|---|
| Shell process | Experienced handpan maker or metal-forming lead | Supplier shell data, material certificate, forming notes, thickness map, mass, hardness/process notes if available |
| Tone-field forming | Experienced handpan tuner | Signed review of layout, hammer plan, stop conditions, and tuning-log fields |
| Heat / surface process | Heat-treatment or supplier reviewer | Nitriding/stainless branch decision, process temperature notes, distortion risk, compatibility with finish and adhesive |
| Safety | Shop lead | PPE plan, hearing protection plan, Gu/rim deburr inspection, fixture stability, fire/fume plan if heat is used |
| Public release | Tony plus IP/public-safety reviewer | Confirmation that photos, supplier details, methods, claims, and terminology are safe to publish |

## Measurement Gates

Populate `validation.csv` before public release:

- Incoming shell diameter, height, thickness map, mass, material path, and Gu geometry.
- Gu response after assembly or controlled cavity test.
- Ding plus eight field fundamentals, backed by `measured-partial-strike-log.csv`.
- Octave and compound fifth partials for every field, backed by FFT/strobe rows in `measured-partial-strike-log.csv`.
- Strike matrix for cross-talk, with struck-field and neighbor-field rows in `measured-partial-strike-log.csv`.
- Sustain or practical decay for every field, linked to the same strike-log evidence.
- Post-assembly drift after at least one week.
- Final Gu/rim tactile safety inspection.

## Drawing Gates

The current drawings are layout and inspection drawings. Before public release, add or revise:

- General assembly view from actual shell measurements.
- Bottom Gu drawing from the final cut port and edge treatment.
- Measurement overlay for shell-thickness points, strike locations, and microphone reference.
- Template sheet labeled `layout estimate`, not `final tone geometry`.
- Photos or screenshots showing the real prototype, not only schematic layouts.

## Release Decision

The issue can be considered complete for a private build packet when the repo validates cleanly and clearly escalates the human-only work.

The repo should not be called public-ready until the specialist and measurement gates above are complete.
