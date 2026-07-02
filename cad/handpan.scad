// Handpan (D Kurd root-mode) — shell ENVELOPE ONLY
// SPDX-License-Identifier: CC-BY-4.0
//
// Source of truth: handpan-design-table.xlsx (sheet "Handpan") and
// ../design.md "Starting Inputs From Workbook" / cad/handpan-cad-brief.md.
// Values below are workbook-input scale dimensions, NOT measured/calibrated
// tuned geometry.
//
// Authority: pending_measurement. NOT fabrication authority until reviewed
// against a measured shell (see ../visual-output-register.csv,
// cad/mcp-session-log.md).
//
// EXPLICITLY OUT OF SCOPE (per cad/handpan-cad-brief.md "Do not model tuned
// tone fields as final manufacturable pitch geometry" — hand-refined,
// tuning-sensitive regions this envelope does not model):
//   - tone-field dimple geometry, depth, or profile (9 fields incl. Ding)
//   - tuned dimple layout / final pitch geometry
//   - hammered curvature, residual stress, or work-hardening effects
// This file models only the two-shell envelope (top shell, bottom shell,
// rim joint plane, Ding zone as a flat surface marker, Gu port) so a builder
// can block out shop space, fixtures, and template layout before tuned
// dimple work happens on a real shell.

// ---- Parameters (workbook inputs — see design.md Starting Inputs) ----
shell_diameter_in   = 21;    // workbook input: shell outside diameter (cad/handpan-cad-brief.md, design.md)
shell_height_in     = 9.5;   // workbook input: total shell height (design.md)
steel_thickness_mm  = 1.0;   // workbook input: steel thickness (design.md) — shown as shell wall, not tuned-field profile
gu_diameter_in      = 3.5;   // workbook input: Gu port diameter (design.md, cad/handpan-cad-brief.md)
gu_neck_depth_in    = 0.5;   // workbook input: Gu lip/neck depth (design.md "Gu lip / neck depth")
ding_zone_dia_in    = 5;     // assumption: Ding zone marker diameter for layout review only, NOT a tuned dimple spec (design.md Ding is "tuner-defined")

in = 25.4; // mm per inch
mm = 1;    // base unit for thickness param already in mm
steel_thickness_in = steel_thickness_mm / 25.4;

// ---- Modules ----

// Top shell: convex dome (bounding surface only, no tone-field dimples)
module top_shell() {
    difference() {
        sphere(d = shell_diameter_in * in, $fn = 96);
        translate([0, 0, -shell_diameter_in * in])
            cube([shell_diameter_in * in * 2, shell_diameter_in * in * 2, shell_diameter_in * in * 2], center = true);
        // inner shell (wall thickness cutaway, not a tuned profile)
        sphere(d = (shell_diameter_in - 2 * steel_thickness_in) * in, $fn = 96);
    }
}

// Bottom shell: concave dome with Gu port (bounding surface only)
module bottom_shell() {
    difference() {
        union() {
            difference() {
                sphere(d = shell_diameter_in * in, $fn = 96);
                translate([0, 0, shell_diameter_in * in])
                    cube([shell_diameter_in * in * 2, shell_diameter_in * in * 2, shell_diameter_in * in * 2], center = true);
                sphere(d = (shell_diameter_in - 2 * steel_thickness_in) * in, $fn = 96);
            }
        }
        // Gu port bore through the pole of the bottom shell
        translate([0, 0, -shell_diameter_in * in / 2])
            cylinder(h = shell_diameter_in * in, d = gu_diameter_in * in, center = false, $fn = 48);
    }
}

// Ding zone: flat marker disc at the top-shell pole for layout reference only
// (NOT a tuned dimple — design.md: "formed convex dome, tuner-defined")
module ding_zone_marker() {
    translate([0, 0, shell_diameter_in * in / 2 - 1])
        cylinder(h = 1, d = ding_zone_dia_in * in, center = false, $fn = 48);
}

// ---- Top-level assembly (approximate rim-joined shell pair) ----
module handpan_shell_envelope() {
    rim_gap_in = shell_height_in - shell_diameter_in; // negative = shells overlap at rim per height budget; layout aid only
    color("SlateGray") top_shell();
    color("DimGray") translate([0, 0, rim_gap_in * in])
        mirror([0, 0, 1])
        bottom_shell();
    color("Gold") ding_zone_marker();
}

handpan_shell_envelope();
