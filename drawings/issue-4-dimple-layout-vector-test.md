# Issue #4 Dimple Layout Vector Test Brief

Status: **pending_measurement**. This is an honest V5 scaffold for the
Illustrator-MCP dimple-layout vector test requested by issue #4. It is not a
vector drawing, not CAD, not DXF, and not tuned dimple geometry.

## Purpose

Define the packet surface a future Illustrator-MCP session must fill in when
real measurement and review data are available. The goal is to keep the future
vector test traceable without inventing coordinates in this no-MCP lane.

## Authority Register Row

The active V5 register row is `ISSUE4-ILL-001` in
[`../visual-output-register.csv`](../visual-output-register.csv).

Current authority:

- `authority`: `pending_measurement`
- `dimension_claim`: `pending_measurement`
- `fabrication_required`: `true`, because a future dimple-layout vector could
  be mistaken for a template if promoted without review.
- Current artifact: this brief only.
- Future possible output: an Illustrator-authored or Illustrator-reviewed vector
  layout after measurement and tuner review. No future file path is reserved as
  fabrication authority by this lane.

## Inputs Required Before MCP Work

Do not run or promote an Illustrator vector test until the packet has:

- measured top-shell outside diameter, usable crown/profile notes, and thickness
  map;
- measured or reviewed Ding center, field clocking, and available field
  envelope clearances;
- tuner or forming-lead review of field order, strike zones, dimple shoulder
  clearance, and neighbor isolation;
- explicit decision on whether the vector is a removable film/template,
  inspection overlay, print plate, or fabrication template;
- updated `validation-loop.csv` evidence for issue #4 gates.

## Non-Claims

This lane did not:

- open Illustrator MCP or any other MCP tool;
- generate SVG, DXF, AI, PDF, CAD, or coordinate geometry;
- infer dimple centers, oval dimensions, or shoulder curves from the starter
  SVG;
- calculate tuning frequencies or partials;
- promote the existing top-layout SVG beyond `concept_only`.

## Future Session Log Contract

When an actual Illustrator-MCP session happens, append a real row to
[`../cad/mcp-session-log.md`](../cad/mcp-session-log.md) with:

- real session id or timestamp;
- measured/reviewed input authority ids;
- output file paths;
- role set to `dimple_layout_vector_test` or narrower;
- authority result kept at `pending_measurement` until measured and reviewed;
- notes naming any manual edits and any rejected geometry.

## Promotion Gate

Issue #4 remains blocked at `pending_measurement` until a future change commits
the actual vector output, records its MCP provenance, validates it against
measured shell data, and has human tuner/forming review. Until then, this brief
is a planning surface only.
