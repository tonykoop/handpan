# Handpan

Status: L2 V5 build-packet candidate; measurement-required before any L3/L4
tuning, CAD, or public-release claim.

Engineering documentation and parametric design table for a D Kurd root-mode handpan: the contemporary tuned-shell, tongueless metal hand drum built from two formed steel shells, a center Ding, eight surrounding tone fields, and a bottom Gu port.

Part of the [tonykoop/instrument-maker](https://github.com/tonykoop/instrument-maker) catalogue.

This repo is intentionally framed as a private research packet, not a promise that the spreadsheet can predict a finished handpan. Handpan tone fields are governed by hammered shell geometry, work-hardening, residual stress, shell coupling, heat/surface treatment, and tuner technique. The calculations in `handpan-design-table.xlsx`, `design.md`, and `handpan-starter.wl` are first-order sanity checks for scale, Gu behavior, and documentation. Final pitch, tuned dimple geometry, partial balance, sustain, and isolation must be earned through measured tuning passes on a real shell.

## Packet Map

- `design.md` - root-mode design intent, D Kurd note map, assumptions, and empirical tuning strategy.
- `tuning-tonality-notes.md` - Round 3 9-note D Kurd tonality notes, partial targets, and acoustic reference citations.
- `family-spec.csv` - root packet row plus variant rows that should not be released without measured prototypes.
- `bom.csv`, `sourcing.csv`, `cut-list.csv` - purchasing and fabrication surfaces with quote-sensitive fields kept explicit.
- `assembly-manual.md` - staged build method from shell inspection through settle/retune cycles.
- `validation.csv` - tuner-driven acceptance plan for cents error, partials, sustain, cross-talk, Gu coupling, and retuning drift.
- `validation-loop.csv` - Round 31 measurement loop for shell inspection, forming, heat/surface treatment, tuning, cross-talk, Gu response, and review gates.
- `measured-partial-strike-log.csv` - empty Round 35a strike/FFT/cross-talk log template; all rows remain `measurement_required` until real shell captures are recorded.
- `visual-output-register.csv` - authority map that keeps workbook/design-table inputs separate from concept-only SVG/PDF/explorer visuals.
- `cad/mcp-session-log.md` - provenance note recording that no MCP-generated V5 artifacts were produced in the Round 31 patch.
- `measurement-protocol.md` - issue #7 protocol for measured partials,
  cross-talk strike logs, microphone posture, and claim gates.
- `data/measured-partial-log.csv` - blank measurement template for field
  fundamentals and partial captures; no measured values are present yet.
- `data/cross-talk-strike-log.csv` - blank strike-log template for neighbor
  response and isolation review; no measured values are present yet.
- `qmd-step-0.md` - Round 2 retrieval record and QMD crash note.
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

## Round 31 V5 Issue Boundary

For the Round 31 V5 issue sweep, this repo is a private research/prototype
planning packet. It is useful for procurement, fixture planning, tuner review,
and evidence capture, but it is not L3, build-ready, measured, or publicly
release-ready evidence. The D Kurd note map and Gu estimate are documented
targets. Final pitch, dimple geometry, forming sequence, heat-treatment effects,
partial balance, sustain, cross-talk, and Gu response must be measured on a
real shell.

## Round 2 Issue #7 Measurement Surface

Issue #7 adds the missing measured-partial and cross-talk strike-log structure
before any stronger tuning claim. The note names in this repo remain target
program information only. The packet cannot claim tuned partials, field
isolation, final sustain, or public-ready musical behavior until
`data/measured-partial-log.csv` and `data/cross-talk-strike-log.csv` contain
real captures from a real shell, reviewed against `measurement-protocol.md`.

## Reality Check

The handpan should remain private until a human handpan tuner or metal-forming lead reviews the packet, approves the shell process, and signs off measured prototype data. The packet is useful for procurement, fixture planning, documentation, and validation discipline. It is not a guaranteed path to a concert instrument.

Issue #7 evidence starts in `measured-partial-strike-log.csv`. Do not promote tuning, partial-balance, sustain, or cross-talk claims from the D Kurd targets alone; each claim needs matching strike/FFT rows, audio or image evidence, and tuner review.

## Public Release Path

The repo is useful now as a private prototype handoff. Public release requires the gates in `public-release-checklist.md`: specialist review, supplier/process evidence, measured tuning data, safety review, and a public-claims pass. Until those are complete, describe the work as a research packet and fixture/documentation baseline.

## License

[CC BY 4.0](LICENSE) - see LICENSE for details.
