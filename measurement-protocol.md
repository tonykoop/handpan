# Handpan Measurement Protocol

Status: V5 issue #7 scaffold. This protocol defines the measurement surface
only. No partials, cross-talk values, tuning frequencies, CAD geometry, or DXF
coordinates were measured or generated in this patch.

## Purpose

The handpan packet already names a D Kurd target program, but target notes are
not measured acoustics. Before the packet can claim tuned partials, field
isolation, sustain, or public-ready musical behavior, a real shell must be
measured with repeatable strike, microphone, and environment records.

This protocol controls two blank logs:

- `data/measured-partial-log.csv`
- `data/cross-talk-strike-log.csv`

## Required Capture Setup

Record these setup facts for every measurement session:

- shell identifier and build state;
- date/time and operator;
- room, background noise note, temperature, and relative humidity if available;
- microphone or tuner model, gain setting, and distance from the struck field;
- strike implement, strike zone, and strike force class;
- audio file or screenshot reference;
- reviewer and review status.

If any setup item is missing, keep the row status as `needs_recapture` or
`blocked`; do not promote it to measured evidence.

## Measured Partial Log

Use one row per field and partial role. Required partial roles:

- `fundamental`
- `octave`
- `compound_fifth`

The log intentionally separates target labels from measured data. Do not enter
a frequency, cents offset, or pass/fail result unless it came from a real
capture file or tuner/strobe reading.

Minimum pass toward L3/L4:

- Ding plus all eight surrounding fields have reviewed `fundamental` rows.
- Every surrounding field has reviewed `octave` and `compound_fifth` rows, or
  an explicit `not_resolved` status with tuner note.
- Each row links to an audio or screenshot artifact.
- A human tuner or measurement reviewer signs off the interpretation.

## Cross-Talk Strike Log

Use one row for each struck/listener pair that matters to field isolation. At
minimum, record all adjacent neighbors and any field that audibly responds.
For full matrix review, include the Ding and all eight surrounding fields as
both struck and listener positions, excluding same-field pairs.

Minimum pass toward L3/L4:

- Rough-tune matrix is recorded before shell closure or before final tuning.
- Final/settled matrix is recorded after shell closure and rest.
- Rows include the struck-field reference amplitude and listener response
  method, even when the numerical value is still pending.
- A tuner reviews any listener response that exceeds the project gate or is
  musically intentional.

## Claim Gate

Until both logs are populated from real evidence:

- say `target note`, `planned partial`, or `pending measurement`;
- do not say `measured partial`, `validated tuning`, `isolated field`, or
  `build-ready tuning recipe`;
- treat SVGs, design tables, and print packets as planning artifacts only;
- keep the packet at L2 V5 candidate status.

## Next Physical Work

1. Assign shell IDs and mark the shell state before tuning.
2. Capture baseline impulse responses before final hammer work.
3. Populate `data/measured-partial-log.csv` through rough tune, rest, and final
   tuning states.
4. Populate `data/cross-talk-strike-log.csv` at rough tune and final/settled
   states.
5. Update `validation-report.md` only after the logs contain real evidence.
