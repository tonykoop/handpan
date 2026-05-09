# Issue Comment Draft

Draft for `tonykoop/handpan#1` only. Do not post automatically.

Round 2 sprint update:

The local `handpan` repo is materially stronger, but I would not call it public-close-ready yet. The packet is now clearer about the boundary between useful private prototype documentation and claims that require a real handpan maker plus measured shell data.

- Round 1 starter drawings are present:
  - `drawings/01-top-layout.svg`
  - `drawings/02-gu-section-fixture.svg`
- Round 2 added `public-release-checklist.md` and wired it through README, validation, risks, drawing index, site, and validation rows
- `validation-report.md` now distinguishes validator-clean packet status from public-release readiness
- `risks.md` now calls out the specialist boundary: tone-field forming, partial balancing, and drift control are experienced handpan-maker work
- `validation.csv` now has explicit supplier/process and public-claims release gates
- CAD/CNC/drawing scope remains honest: fixtures, templates, support rings, inspection, and documentation, not final tone-field machining

Validation run:

```bash
git -C /mnt/c/Users/Tony/Documents/GitHub/handpan status --short
python3 /home/tony/.codex/skills/instrument-maker-v4/scripts/validate_packet.py /mnt/c/Users/Tony/Documents/GitHub/handpan --json
python3 /mnt/c/Users/Tony/Documents/GitHub/instrument-maker/skills/v4/instrument-maker-v4/scripts/validate_packet.py /mnt/c/Users/Tony/Documents/GitHub/handpan --json --mode auto
```

Both validators passed with 0 findings.

Remaining assumptions/blockers before any public release:

- no measured shell, Gu, cents-error, partial, cross-talk, sustain, or drift data yet
- no supplier-verified shell/material/nitriding/heat-treatment process window yet
- final field contours, hammer sequence, and partial balancing remain human-tuner work
- public release still needs specialist review, supplier/process evidence, measured build log, safety review, and public-claims review
