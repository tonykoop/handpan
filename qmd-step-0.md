# QMD Step 0 Record

Date: 2026-05-29.

Commands run before packet edits:

```sh
qmd search "handpan" -c instrument-builds
timeout 25 qmd query "handpan tuning packet"
```

Usable keyword hits:

- `instrument-builds/docs/handoffs/2026-05-08-github-sprint-round-2/dan-round-2-handpan.md`
- `instrument-builds/docs/handoffs/2026-05-08-github-sprint/dan-handpan-and-cajon.md`
- `instrument-builds/skills/v4/instrument-maker-v4/references/solidworks-templates/handpan.md`

Relevant retrieved guidance:

- Prior handpan lanes said the repo was useful but not close-ready without
  measured shell data, specialist tuning review, and clear public-readiness
  gates.
- The handpan design-table reference says template values are placeholders,
  not validated shop dimensions, and that measured pitch/tuning corrections
  belong in validation or sidecar tables.

Semantic query result:

- `qmd query "handpan tuning packet"` crashed inside Bun after the timeout
  reported `timeout: the monitored command dumped core`.

No QMD result supplied measured partials, cross-talk values, CAD geometry, or
tuning corrections for this issue #7 patch.
