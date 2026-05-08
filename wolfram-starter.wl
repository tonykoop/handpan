(* Handpan Root-Mode Wolfram Starter
   First-order sanity checks only. Do not treat these as final pitch predictors. *)

ClearAll["Global`*"];

inch = 0.0254;
cIn = 13552; (* speed of sound in/s at about 20 C *)
a4 = 440;

shellDiameterIn = 21;
shellHeightIn = 9.5;
steelThicknessMM = 1.0;
guDiameterIn = 3.5;
guLipDepthIn = 0.5;

guAreaIn2 = Pi (guDiameterIn/2)^2;
shellVolumeIn3 = (4/3) Pi (shellDiameterIn/2)^2 (shellHeightIn/2);
guLeffIn = guLipDepthIn + 0.6 (guDiameterIn/2);
guHz = (cIn/(2 Pi)) Sqrt[guAreaIn2/(shellVolumeIn3 guLeffIn)];

noteTable = {
  {"Ding", "D3", 50},
  {"Field 1", "A3", 57},
  {"Field 2", "Bb3", 58},
  {"Field 3", "C4", 60},
  {"Field 4", "D4", 62},
  {"Field 5", "E4", 64},
  {"Field 6", "F4", 65},
  {"Field 7", "G4", 67},
  {"Field 8", "A4", 69}
};

freq[midi_] := a4 2^((midi - 69)/12);
centsError[measured_, target_] := 1200 Log[2, measured/target];
partials[f_] := {f, 2 f, 3 f};

fieldEstimate[f_] := Module[{w},
  w = 3.5 Sqrt[220/f];
  {w, 1.3 w}
];

designDataset = Dataset[
  AssociationThread[
      {"field", "note", "midi", "fundamentalHz", "octaveHz", "compoundFifthHz", "layoutWidthIn", "layoutHeightIn"},
      {#[[1]], #[[2]], #[[3]], freq[#[[3]]], 2 freq[#[[3]]], 3 freq[#[[3]]],
       If[#[[1]] == "Ding", Missing["TunerDefined"], fieldEstimate[freq[#[[3]]]][[1]]],
       If[#[[1]] == "Ding", Missing["TunerDefined"], fieldEstimate[freq[#[[3]]]][[2]]]}
    ] & /@ noteTable
];

guSummary = <|
  "guAreaIn2" -> guAreaIn2,
  "shellVolumeIn3Approx" -> shellVolumeIn3,
  "guEffectiveLengthIn" -> guLeffIn,
  "firstOrderGuHz" -> guHz
|>;

(* Plate sanity check: kappa must be calibrated from measured shells/FEM.
   Hammered curvature and work-hardening dominate final behavior. *)
plateFirstOrder[aMeters_, hMeters_, kappa_: 10.2, e_: 200*10^9, rho_: 7850, nu_: 0.30] :=
  (kappa/(2 Pi)) (hMeters/aMeters^2) Sqrt[e/(rho (1 - nu^2))];

(* Measured tuning data shape:
measurements = {<|"field" -> "Field 1", "partial" -> "fundamental", "targetHz" -> 220, "measuredHz" -> 221|>, ...};
Dataset[Append[#, "cents" -> centsError[#measuredHz, #targetHz]] & /@ measurements]
*)

designDataset
guSummary
