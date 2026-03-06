# GO IAQS — Global Open Indoor Air Quality Standards

> Source: GO AQS White Paper v1.0 (November 2025, ISBN 9798274916158), goaqs.org, AirGradient GO AQS Simulator
> Research date: March 2026

---

## What is GO AQS?

**Global Open Air Quality Standards (GO AQS)** is a non-profit initiative founded September 2024 by Sotirios Papathanasiou (See The Air). It produces open, science-based indoor air quality standards designed for global adoption.

- 160+ professionals from 32+ countries
- No external funding; declaration of non-competing interest
- License: CC BY-NC-SA 4.0
- **Tagline:** "We share the same air. Let's share the same air quality standards."

**Why it exists:** No single global IAQ standard. Most regulations focus on ventilation rates, not pollutant concentrations. Existing AQIs are proprietary, country-specific, and often not colour-blind accessible. Indoor environments need specific limits for indoor sources (materials, combustion, occupancy).

---

## GO IAQS Starter

**For:** Low-cost monitors, fast global adoption, two-parameter baseline.

| Pollutant | Averaging | Threshold | Notes |
|-----------|-----------|-----------|-------|
| PM2.5 | 24-hour | ≤25 µg/m³ | WHO 2021 interim target 4 |
| CO2 | — | ≤1000 ppm | Given outdoor baseline 450 ppm |

**MICA coverage:** Full — PM2.5 and CO2 measured by all MICA variants.

---

## GO IAQS Ultimate

**For:** Stricter, health-protective limits. Full seven-pollutant assessment.

| Pollutant | Averaging | Limit | Source |
|-----------|-----------|-------|--------|
| PM2.5 | 1-hour | ≤15 µg/m³ | Morawska et al. 2024 |
| CO2 | — | ≤800 ppm | Outdoor 450 ppm; 100% outdoor air scenario |
| O3 | 8-hour | ≤51 ppb | WHO 2021 |
| CH2O (formaldehyde) | — | ≤27 ppb | ASHRAE 189.1-2020 |
| CO | 8-hour | ≤9 ppm; 1-hour ≤31 ppm | WHO 2010, Morawska et al. 2024 |
| NO2 | 1-hour ≤106 ppb; 8-hour ≤21 ppb | — | WHO 2010, national regs |
| Radon | — | ≤100 Bq/m³ | Reference level (not "safe"), WHO 2010 |

**MICA coverage by variant:**
- PM2.5, CO2: all MICA variants
- O3, CO, NO2: MICA Plus / MICA WELL only
- CH2O (formaldehyde): MICA Plus / MICA WELL only
- Radon: **not measured by any MICA variant** — requires dedicated device

**TVOC:** GO AQS has **no TVOC limit** (Salthammer 2022 — TVOC lacks specificity as a health predictor). Elevated TVOC should trigger further investigation, not a score penalty. This aligns with Anne's approach: report TVOC, interpret patterns, do not overclaim.

**Units:** Gases in ppm/ppb (instrument-native). Conversion table in White Paper Appendix B.

---

## GO IAQS Score

**Scale:** 10 (best) → 0 (worst). Integer.

| Category | Grade | Score | Colour |
|----------|-------|-------|--------|
| Good | A | 8–10 | Blue |
| Moderate | B | 4–7 | Orange |
| Unhealthy | Z | 0–3 | Red |

**Design principles:**
- Colour-blind-safe palette (tested for Protan, Deutan, Tritan)
- Three breakpoints (vs. many national AQIs with more); inspired by US EPA, South Korean CAI, EU EAQI
- **Dominant pollutant** shown to guide mitigation action
- **Synergistic multi-pollutant logic:** when several pollutants are in Moderate or Unhealthy, overall score is reduced (Dutch-style — if all indices equal in those bands, total = next lower value)
- No weighting factors; direct use of measured concentrations
- Piecewise linear formula between concentration breakpoints (Clow/Chigh) and score breakpoints (Ilow/Ihigh)

**Simulator:** https://www.airgradient.com/professional/go-aqs-simulator/ — input PM2.5 + CO2, get score/grade/colour/advice.

---

## Relation to WELL and Anne's Standards Hierarchy

GO IAQS is **complementary to WELL, not competing.** Same physical parameters, different framing.

| Dimension | WELL v2 | GO IAQS |
|-----------|---------|---------|
| Scope | Building certification | Global health benchmark |
| PM2.5 | ≤15 µg/m³ (24h) precondition | Ultimate ≤15 µg/m³ (1h); Starter ≤25 µg/m³ (24h) |
| CO2 | ≤800 ppm (A03 target) | Ultimate ≤800 ppm; Starter ≤1000 ppm |
| Formaldehyde | ≤9 µg/m³ (A05) | Ultimate ≤27 ppb (~33 µg/m³) |
| Score/index | Points toward levels | GO IAQS Score 10–0, A/B/Z |
| Verification | Submission to IWBI | Self-reported; no third-party verification |
| Open/proprietary | Proprietary (licensed) | Open (CC BY-NC-SA 4.0) |

**When to use which:**
- **WELL certification path:** WELL thresholds govern. Reference GO IAQS as supporting evidence.
- **No certification target:** Use GO IAQS Ultimate as the health-protective benchmark.
- **Client communication:** GO IAQS Score (0–10, A/B/Z) is easier to communicate to non-technical audiences than raw µg/m³.
- **Quick global benchmark:** GO IAQS Starter (PM2.5 + CO2 only) for initial assessment.

---

## How Anne Computes the GO IAQS Score

Anne can calculate the GO IAQS Starter score from any MICA device (PM2.5 + CO2 available on all variants).

For Ultimate, Anne can assess partial compliance:
- Full coverage with MICA Plus / MICA WELL (except radon)
- Partial coverage with base MICA (PM2.5, CO2 only; flag missing parameters)

**When reporting:**
1. State which tier (Starter / Ultimate)
2. State which parameters are available vs. missing
3. Give score (0–10), grade (A/B/Z), and dominant pollutant
4. Flag radon as always requiring separate testing
5. Flag TVOC as "elevated — further investigation recommended" (not scored in GO AQS)

---

## Boundaries (What Anne Must NOT Do with GO IAQS)

- Do not claim GO IAQS "certification" — GO AQS has no third-party certification process
- Do not score radon from MICA data — always flag as "requires dedicated radon monitor"
- Do not equate TVOC with a GO AQS score penalty — GO AQS has no TVOC limit
- Do not use GO IAQS Starter as a substitute for WELL compliance when WELL is the goal
- Do not imply GO IAQS Ultimate replaces WELL for certification purposes

---

## Key References

- White Paper: GO AQS (2025), *Global Open Indoor Air Quality Standards: A Unified Framework*, v1.0, November 2025
- Website: goaqs.org
- Simulator: airgradient.com/professional/go-aqs-simulator
- Morawska et al. 2024 (Science) — mandating IAQ standards in public buildings
- Salthammer 2022 — TVOC limitations as a health predictor
