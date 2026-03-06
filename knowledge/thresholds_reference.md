# Unified Thresholds Reference – Indoor & Ambient Air Quality

> **Purpose**  
> This file defines all scientifically validated thresholds for indoor and outdoor air-quality and comfort analysis.
>  
> • **Section 1 – Indoor IAQ Standards** → used for WELL v2 and ASHRAE compliance scoring.  
> • **Section 2 – Outdoor (Ambient) Standards** → used only for environmental context and indoor–outdoor comparison.  
>  
> When several limits exist, the **strictest value** (lowest allowable concentration or narrowest comfort range) governs compliance.

---

## Section 1 — Indoor Air Quality Standards (WELL v2 + ASHRAE + WHO Indoor)

These limits apply **inside occupied buildings**.  
They consolidate requirements from:  
- **WELL Building Standard v2** (Features A01–A08 and T01–T07)  
- **ASHRAE 62.1 & 55** (ventilation & thermal comfort)  
- **WHO Indoor Air Quality Guidelines (2010 + 2021)**  

| Parameter | Unit | WELL v2 Limit | ASHRAE / ISO / WHO Indoor Limit | Typical Basis / Feature |
|-----------|------|---------------|--------------------------------|-------------------------|
| **PM2.5** | µg/m³ | ≤ 15 (24 h) · ≤ 8 (annual) | WHO Indoor ≤ 10 (annual) · ≤ 15 (24 h) | A01 – Fine Particulates |
| **PM10** | µg/m³ | ≤ 45 (24 h) · ≤ 20 (annual) | WHO Indoor ≤ 20 (annual) · ≤ 45 (24 h) | A01 – Coarse Particles |
| **CO2** | ppm | ≤ 800 | ASHRAE 62.1 recommends ≤ 1000 | A03 – Ventilation Effectiveness |
| **CO** | ppm | ≤ 9 (8 h) | WHO Indoor ≤ 7 (24 h) | A06 – Combustion Control |
| **NO2** | µg/m³ | ≤ 40 (annual) | WHO Indoor ≤ 10 (annual) | A05 – Combustion Sources |
| **O3** | µg/m³ | ≤ 100 (8 h) | WHO Indoor ≤ 100 (8 h) | A05 – Ozone Control |
| **SO2** | µg/m³ | ≤ 50 (24 h) | WHO Indoor ≤ 40 (24 h) | A05 – Combustion Residue |
| **Formaldehyde (HCHO)** | µg/m³ | ≤ 9 | WHO Indoor ≤ 100 (30 min) | A05 – Enhanced Air Quality |
| **Total VOCs (TVOC)** | µg/m³ | ≤ 500 | WHO Indoor ≤ 300 (recommended) | A05 – Volatile Organics |
| **Temperature** | °C | 20–24 (winter) · 23–26 (summer) | ASHRAE 55 operative 20–26 | T01 / T06 – Thermal Performance |
| **Relative Humidity** | % | 30–60 | ASHRAE 55 · WHO Indoor 40–60 | T07 – Humidity Control |
| **Air Speed** | m/s | ≤ 0.15 (cool) · ≤ 0.25 (warm) | ASHRAE 55 | Thermal Comfort Indicator |
| **Radon** | Bq/m³ | ≤ 100 | WHO Indoor ≤ 100 | A07 – Radon Control |
| **Mold / Bio-contaminants** | CFU/m³ | ≤ 500 | ISO 16000-17 guideline ≤ 500 | A08 – Microbial Control |
| **IAQ Index (0–100)** | – | ≥ 80 = Excellent | – | InBiot Composite Metric |
| **Ventilation Indicator (0–100)** | – | ≥ 80 = Excellent | – | InBiot Proxy for A03 |
| **Thermal Indicator (0–100)** | – | ≥ 80 = Comfortable | – | InBiot Proxy for T01 |
| **Virus Resistance Index (0–100)** | – | ≥ 80 = Ideal | – | InBiot Proxy for A08 |

> **Indoor Scoring Rule**  
> • Use only WELL v2, ASHRAE 62.1 / 55, ISO 16000 and WHO Indoor values.  
> • Ambient (Outdoor) standards must *never* be used for IAQ scoring.  
> • If no indoor limit exists, report as "Not Scored".  
> • Always apply the strictest (health-protective) limit.

---

## Section 2 — Outdoor / Ambient Air Quality Standards (Context Only)

Used solely for environmental reference, ventilation intake assessment, and indoor–outdoor comparisons.  
Values are from the **WHO Ambient Air Quality Guidelines (2021)**.

| Parameter | Unit | WHO Ambient 2021 Limit | Averaging Period | Context / Use |
|-----------|------|------------------------|------------------|---------------|
| **PM2.5** | µg/m³ | ≤ 15 (24 h) · ≤ 5 (annual) | 24 h / annual | Outdoor baseline for filtration comparison |
| **PM10** | µg/m³ | ≤ 45 (24 h) · ≤ 15 (annual) | 24 h / annual | Coarse ambient particles |
| **NO2** | µg/m³ | ≤ 25 (24 h) · ≤ 10 (annual) | 24 h / annual | Traffic / combustion marker |
| **O3** | µg/m³ | ≤ 100 (8 h) | 8 h | Photochemical oxidant |
| **CO** | ppm | ≤ 4 (24 h) | 24 h | Ambient carbon monoxide |
| **SO2** | µg/m³ | ≤ 40 (24 h) · ≤ 20 (annual) | 24 h / annual | Sulphur emissions context |

> **Context-Only Rule**  
> Ambient standards protect public health outdoors and serve only for contextual comparison (e.g., "Indoor PM2.5 = 4 µg/m³ vs Outdoor = 12 µg/m³ → effective filtration").  
> They are not used for WELL scoring.

---

## Section 3 — Thermal & Comfort Metrics (ASHRAE 55 + WELL T01–T07)

| Parameter | Typical Range | Standard Reference | Notes |
|-----------|---------------|-------------------|-------|
| **Operative Temperature** | 20–26 °C | ASHRAE 55 / WELL T01 | Core thermal comfort range |
| **Relative Humidity** | 30–60 % | ASHRAE 55 / WELL T07 | Comfort + Pathogen control |
| **Air Velocity** | ≤ 0.15 m/s | ASHRAE 55 | Draft avoidance |
| **PMV (–0.5 to +0.5)** | Neutral comfort | ASHRAE 55 / ISO 7730 | Optional comfort metric |

---

## Application Summary

| Analysis Type | Standards Applied | Scoring Logic |
|---------------|-------------------|---------------|
| **Indoor IAQ / WELL Compliance** | WELL v2 + ASHRAE 62.1/55 + WHO Indoor + ISO 16000 | Strictest limit applies |
| **Thermal Comfort** | WELL v2 + ASHRAE 55 | Use operative temp + RH band |
| **Outdoor Context / Comparison** | WHO Ambient 2021 | For informational context only |
| **Unmeasured Pollutants** | – | Mark as "Data Unavailable / Not Scored" |

---

## Section 4 — Health & Cognitive Effects (Evidence-Based)

Use these when explaining *why* a threshold matters to non-technical audiences. Always cite source and note where evidence is contested.

### CO2 and cognitive performance

| CO2 level | Effect | Source |
|-----------|--------|--------|
| <800 ppm | WELL target; recommended for cognitive work | WELL v2 A03 |
| 1000 ppm | ASHRAE 62.1 upper limit; Pettenkofer threshold (Germany, Switzerland) | ASHRAE, svlw.ch |
| +500 ppm increase | ~1.4–1.8% slower response time; ~2.1–2.4% lower throughput | Harvard CogFx (healthybuildings.hsph.harvard.edu) |
| 1000 ppm vs 600 ppm | Moderate, significant decrements on 6/9 decision-making scales in some studies | Allen et al., EHP (PMC 3548274) |
| 3000 ppm for 8h | No significant cognitive/physiological effect found in one 2024 chamber study | SSRN 2024 |

> **[CONFLICT]** CO2 cognition evidence is mixed. Some studies show effects at 1000 ppm; one 2024 study at 3000 ppm found none. Differences in exposure duration, chamber design, and task type explain the divergence. Safe framing: "Standards use 1000 ppm as upper limit; some research suggests effects at this level; we recommend staying below 800 ppm."

### PM2.5 and cognitive performance

| Change | Effect | Source |
|--------|--------|--------|
| +10 µg/m³ PM2.5 | +0.8–0.9% slower response time; −0.8–1.7% lower throughput | Harvard CogFx (ERL paper) |
| Long-term exposure | Cardiovascular, asthma, mortality risk | WHO Indoor Air Quality Guidelines |

### Humidity and mold risk

| RH level | Risk |
|----------|------|
| 30–60% | Comfort + pathogen control (ASHRAE 55 / WELL T07) |
| >60% | Increased dust mite and pathogen growth risk |
| ≥70% on surfaces | Active mold growth risk — coldest surfaces condense first | buildingscience.com, EPA |
| <30% | Dry air, irritation, increased static electricity |

### Wildfire / high outdoor PM guidance

When outdoor PM2.5 is elevated (wildfire smoke, traffic events):
- Indoor PM2.5 is typically 55–60% of outdoor with building closed (range 30–100%)
- Actions: close windows/doors, recirculate HVAC (no fresh air intake), run MERV 13+ filter continuously, avoid indoor PM sources (cooking, candles)
- Source: EPA wildfire IAQ strategies; ASHRAE Guideline 44-2024

### ACH estimation from CO2 decay

When CO2 drops after occupancy ends (ventilation on, no people), ACH can be estimated:
- Formula: ACH = 1 / (time in hours for 63% of excess CO2 to be removed)
- Excel/calculator: Rochester URMC CO2 decay calculator
- Limitation: decay method can underestimate true ventilation rate if HVAC is off during measurement

---

## Section 5 — GO IAQS Thresholds (Open Standard — When WELL is not the goal)

> Source: GO AQS White Paper v1.0, November 2025 (ISBN 9798274916158), goaqs.org
> License: CC BY-NC-SA 4.0 | Founded Sept 2024 by Sotirios Papathanasiou (See The Air)

GO IAQS is an **open, science-based indoor air quality standard** designed for global adoption. It complements WELL but does not replace it for certification purposes.

### GO IAQS Starter (two-parameter baseline — all MICA variants)

| Pollutant | Averaging | Limit |
|-----------|-----------|-------|
| PM2.5 | 24-hour | ≤25 µg/m³ |
| CO2 | — | ≤1000 ppm |

### GO IAQS Ultimate (seven-pollutant — MICA Plus / MICA WELL for full coverage)

| Pollutant | Averaging | Limit | MICA coverage |
|-----------|-----------|-------|---------------|
| PM2.5 | 1-hour | ≤15 µg/m³ | All variants |
| CO2 | — | ≤800 ppm | All variants |
| O3 | 8-hour | ≤51 ppb | Plus / WELL only |
| CH2O (formaldehyde) | — | ≤27 ppb (~33 µg/m³) | Plus / WELL only |
| CO | 8h / 1h | ≤9 ppm / ≤31 ppm | Plus / WELL only |
| NO2 | 1h / 8h | ≤106 ppb / ≤21 ppb | Plus / WELL only |
| Radon | — | ≤100 Bq/m³ | **Not measured by MICA** |

**TVOC:** GO AQS has **no TVOC limit** (Salthammer 2022). Elevated TVOC = flag for further investigation, not a score penalty.

### GO IAQS Score

| Category | Grade | Score | Colour |
|----------|-------|-------|--------|
| Good | A | 8–10 | Blue |
| Moderate | B | 4–7 | Orange |
| Unhealthy | Z | 0–3 | Red |

- Scale: 10 (best) → 0 (worst), integer
- Colour-blind-safe palette; three breakpoints
- **Dominant pollutant** shown to guide mitigation
- **Synergistic logic:** when several pollutants are in Moderate/Unhealthy, overall score is reduced
- Simulator: airgradient.com/professional/go-aqs-simulator

### GO IAQS vs. WELL v2 Quick Comparison

| Parameter | WELL v2 | GO IAQS Ultimate | GO IAQS Starter |
|-----------|---------|------------------|-----------------|
| PM2.5 | ≤15 µg/m³ (24h) | ≤15 µg/m³ (1h) — same limit, shorter avg | ≤25 µg/m³ (24h) — more lenient |
| CO2 | ≤800 ppm | ≤800 ppm | ≤1000 ppm |
| Formaldehyde | ≤9 µg/m³ | ≤27 ppb (~33 µg/m³) — less strict | — |
| TVOC | ≤500 µg/m³ | **No limit** | — |
| Score/index | Points toward levels | 0–10 score, A/B/Z | 0–10 score (2 params) |
| Verification | IWBI submission | Self-reported; no third-party | Self-reported |
| Open/proprietary | Proprietary (licensed) | Open (CC BY-NC-SA 4.0) | Open |

> **Indoor Scoring Rule for GO IAQS:** Use when WELL certification is not the goal. For WELL paths, WELL thresholds govern and GO IAQS serves as supporting evidence only.

---

## Section 6 — A03 CO2 Threshold Clarification (WELL-Specific)

The WELL A03 (Ventilation Design) CO2 threshold differs by verification method:

| Verification method | CO2 threshold | Notes |
|--------------------|--------------|-------|
| Standard (performance test) | ≤800 ppm | WELL A03 operational target |
| Option 4: Continuous monitoring | ≤900 ppm | Per WELL Addenda for sensor-based verification |
| ASHRAE 62.1 maximum | ≤1000 ppm | Used when WELL is not the target |

When WELL certification is the goal, use ≤800 ppm as the target (more conservative). The 900 ppm threshold applies specifically to the continuous monitoring verification pathway.
