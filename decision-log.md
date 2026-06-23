# Handpan Decision Log

## Decision 1 — Shell Material and Tuner Path

**Status:** Decided (planning-level; no measurement evidence yet)
**Refs:** issue #7

### Shell

| Option | Chosen? | Rationale |
|---|:--:|---|
| DC04 deep-draw steel, 2.0 mm blank | **Yes** | Widely available from Metall Pfeiffer/Havel or domestic steel service; known forming behavior; case-hardening via nitriding is available as an optional post-form step |
| Stainless 304 / 316, 1.5 mm blank | Fallback | Higher spring-back; tooling force increase; research path only |
| Nitrided / hardened pre-treated sheet | Deferred | Pre-nitrided stock is scarce; defer until DC04 path is validated |

**Chosen path:** Start with DC04 raw blank. Shell thickness target: 2.0 mm flat, ~1.2 mm measured at formed crown after hydroforming or deep press. Nitriding is an optional post-form step, not a prerequisite.

### Tuner / FFT Capture

| Option | Chosen? | Rationale |
|---|:--:|---|
| Peterson StroboPlus HD (hardware strobe) | **Yes** | Reference-grade ±0.1 cent accuracy; offline; no cloud dependency |
| Audacity FFT (software, laptop mic) | Yes (supplemental) | Free; cross-check only; mic placement and room must be logged |
| Android tuner app (GStrings, etc.) | No (initial) | Insufficient accuracy for compound-fifth partial verification |

**Chosen path:** Primary capture = Peterson StroboPlus HD + close-field mic (~5 cm, cardioid) into Audacity for FFT screenshot. Every row in `measured-partial-strike-log.csv` must name the tuner model, gain setting, room noise level, and audio file or FFT screenshot path.

### Public / Private Handling for Evidence

| Artifact | Public? | Rationale |
|---|:--:|---|
| Protocol template (`measurement-protocol.md`) | Public | Process definition only; no shell-specific data |
| Log template (`measured-partial-strike-log.csv`, `data/measured-partial-log.csv`) | Public | Template rows marked `measurement_required`; no real values |
| Populated log rows (real Hz readings, FFT screenshots) | **Private until reviewed** | Measurement evidence is retained locally in `data/`; only a reviewed summary is committed to main |
| Audio captures (`.wav`, `.flac`) | Private / local only | Large files; store locally or in private object storage; never commit to GitHub |

**Decision:** Only template rows and protocol docs are committed public. Populated measurement rows go into `data/` (already listed in `.gitignore` drafts) until a tuning lead or fabrication reviewer signs off. After review, a sanitized summary row is promoted to `measured-partial-strike-log.csv` with a reference to the private evidence file path.

## Packet Readiness Gate

The packet stays at **L2 planning** (templates defined, protocol decided, no real shell evidence) until at least:

- [ ] One physical shell blank acquired and logged in `validation-loop.csv` vl001
- [ ] Material/process path documented with supplier cert or process note (vl002)
- [ ] Template layout photographed and reviewed (vl003)
- [ ] Ding fundamental and octave partial captured and within ±5 cents of target (vl004)

Advancing to L3 requires real measured rows, not template rows.
