# Handpan

Engineering documentation and parametric design table for a D Kurd root-mode handpan: the contemporary tuned-shell, tongueless metal hand drum built from two formed steel shells, a center Ding, eight surrounding tone fields, and a bottom Gu port.

Part of the [tonykoop/instrument-maker](https://github.com/tonykoop/instrument-maker) catalogue.

This repo is intentionally framed as a buildable research packet, not a promise that the spreadsheet can predict a finished handpan. Handpan tone fields are governed by hammered shell geometry, work-hardening, residual stress, shell coupling, and tuner technique. The calculations in `handpan-design-table.xlsx`, `design.md`, and `wolfram-starter.wl` are first-order sanity checks for scale, Gu behavior, and documentation. Final pitch, partial balance, sustain, and isolation must be earned through measured tuning passes on a real shell.

## Packet Map

- `design.md` - root-mode design intent, D Kurd note map, assumptions, and empirical tuning strategy.
- `tuning-tonality-notes.md` - Round 3 9-note D Kurd tonality notes, partial targets, and acoustic reference citations.
- `family-spec.csv` - root packet row plus variant rows that should not be released without measured prototypes.
- `bom.csv`, `sourcing.csv`, `cut-list.csv` - purchasing and fabrication surfaces with quote-sensitive fields kept explicit.
- `assembly-manual.md` - staged build method from shell inspection through settle/retune cycles.
- `validation.csv` - tuner-driven acceptance plan for cents error, partials, sustain, cross-talk, Gu coupling, and retuning drift.
- `validation-report.md` - current validator results and human-review gates before any public release.
- `public-release-checklist.md` - explicit path from private research packet to safe public release.
- `risks.md` - red-team review covering metal forming, heat/work-hardening, repeatability, and public-release limits.
- `drawing-brief.md`, `cad/handpan-cad-brief.md`, `cnc/fixture-cnc-brief.md`, `drawings/drawing-index.md` - CAD/CNC/drawing briefs for shells, fixtures, templates, and inspection views.
- `capstone-deck.md`, `capstone-manifest.json`, `print-packet.md`, `print-packet.html`, `site/index.html` - presentation, print, and static-site handoff artifacts.

## Current Root Mode

The current packet starts from the workbook defaults:

- Scale: D Kurd, 9 notes.
- Shell: 21 in nominal diameter, 9.5 in total height, 1.0 mm steel.
- Material path: nitrided DC04 preferred for first controlled build; stainless is allowed as a separate measured branch.
- Gu: 3.5 in nominal port with 0.5 in rolled lip, yielding a workbook first-order Helmholtz estimate near 115 Hz.
- Notes: D3 Ding plus A3, Bb3, C4, D4, E4, F4, G4, A4 fields.

## Round 3 L2 Boundary

For the Round 3 build-packet sweep, this repo remains L2: complete enough for
prototype planning and tuner review, but not L3/build-ready evidence. The D
Kurd note map and Gu estimate are documented targets. Final pitch, partial
balance, sustain, cross-talk, and Gu response must be measured on a real shell.

## Reality Check

The handpan should remain private until a human handpan tuner or metal-forming lead reviews the packet, approves the shell process, and signs off measured prototype data. The packet is useful for procurement, fixture planning, documentation, and validation discipline. It is not a guaranteed path to a concert instrument.

## Public Release Path

The repo is useful now as a private prototype handoff. Public release requires the gates in `public-release-checklist.md`: specialist review, supplier/process evidence, measured tuning data, safety review, and a public-claims pass. Until those are complete, describe the work as a research packet and fixture/documentation baseline.

## License

[CC BY 4.0](LICENSE) - see LICENSE for details.
