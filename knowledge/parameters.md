# Air Quality Parameters & InBiot MICA Capabilities

> Updated 2026-03-06 with research findings on MICA product variants, WELL accuracy requirements, and diagnostic interpretation.

---

## InBiot MICA Product Line — What Each Variant Measures

| Parameter | Unit | MICA Mini | MICA | MICA Plus | MICA WELL | Measurement principle |
|-----------|------|-----------|------|-----------|-----------|----------------------|
| Temperature | °C | ✓ | ✓ | ✓ | ✓ | Thermistor |
| Relative Humidity | % | ✓ | ✓ | ✓ | ✓ | Capacitive |
| CO2 | ppm (400–10,000) | ✓ | ✓ | ✓ | ✓ | NDIR |
| TVOC | VOC Index 0–500 | ✓ | ✓ | ✓ | ✓ | Metal oxide (MOx) |
| PM2.5 | µg/m³ (0–1,000) | ✓ | ✓ | ✓ | ✓ | Laser light scattering |
| PM10 | µg/m³ (0–1,000) | — | ✓ | ✓ | ✓ | Laser light scattering |
| PM1.0 | µg/m³ | — | — | ✓ | ✓ | Laser light scattering |
| PM4.0 | µg/m³ | — | — | ✓ | ✓ | Laser light scattering |
| Formaldehyde (HCHO) | µg/m³ | — | — | ✓ | ✓ | Electrochemical |
| Ozone (O3) | ppb | — | — | ✓ | ✓ | Electrochemical |
| NO2 | ppb | — | — | ✓ | ✓ | Electrochemical |
| CO | ppm | — | — | ✓ | ✓ | Electrochemical |
| Noise | dB (optional) | — | — | optional | optional | Microphone |

MICA connectivity: WiFi, NB-IoT, LoRaWAN, Sigfox. BMS: Modbus RTU/TCP, BACnet IP, MQTT.
RESET-accredited. Sensor life: 10+ years (InBiot advertised).

---

## MICA Accuracy vs. WELL PVG Requirements

| Parameter | WELL PVG spec | MICA | Status |
|-----------|--------------|------|--------|
| CO2 | ±50 ppm + 5% (400–5000 ppm) | NDIR; self-calibration; literature: ±1.6–4.4 ppm corrected | Likely meets; confirm datasheet |
| TVOC | ±20 µg/m³ + 15% (1–500 µg/m³) | ±10 Index points 1–500 µg/m³ (InBiot WELL doc) | Meets WELL requirement |
| PM2.5/PM10 | ±5 µg/m³ + 20% (laser) | 0–1,000 µg/m³ laser scattering | Likely meets; confirm vs PVG Table 3 |
| Temperature | ±0.5°C | [confirm datasheet] | — |
| RH | ±5% (10–90%) | [confirm datasheet] | — |
| Formaldehyde | ±20 ppb (0–100 ppb) | Plus/WELL only; electrochemical | Confirm accuracy |
| Radon | Alpha track | **Not measured** | Gap |

> InBiot states MICA WELL complies with PVG Table 3. Reference: inbiot.es/wikinbiot/well-compliance. Verify before using in certification documentation.

---

## MICA to WELL Feature Mapping

| WELL Feature | Strategy type | MICA can cover? | Notes |
|-------------|--------------|----------------|-------|
| A01 Part 1 (PM) | Performance-based | Yes (MICA+) | PM2.5 + PM10 |
| A01 Part 2 (TVOC/organic gases) | Performance-based | Partial | TVOC proxy; formaldehyde needs Plus/WELL |
| A01 Part 3 (inorganic gases) | Performance-based | Plus/WELL only | CO, O3, NO2 |
| A01 Part 4 (Radon) | Performance-based | **No** | Requires dedicated radon monitor |
| A01 Part 5 (periodic measure) | Periodic | Yes | Annual On-going Data Report |
| A03 (ventilation / CO2) | Performance-based | Yes | CO2 ≤900 ppm (continuous monitoring option) |
| A05 Part 1 (enhanced PM) | Performance-based | Yes | |
| A05 Part 2 (formaldehyde) | Performance-based | Plus/WELL only | Base MICA TVOC is not a substitute |
| A05 Part 3 (enhanced inorganic) | Performance-based | Plus/WELL only | |
| A06 (enhanced ventilation) | Performance-based | Yes | CO2 monitoring |
| A08 (monitoring + awareness) | Monitor deployment | Yes | ≥3 parameters; no threshold data needed |
| T01 (thermal performance) | Performance-based | Yes | Temp + RH long-term data |
| T06 (thermal monitoring) | Monitor deployment | Yes | No threshold data needed |
| T07 (humidity control) | Performance-based | Yes | RH long-term data |

---

## What MICA Does NOT Measure — Anne's Hard Boundaries

| Missing parameter | WELL relevance | What Anne says |
|------------------|---------------|---------------|
| **Radon** | A01 Part 4 | "Requires a dedicated radon monitor. MICA cannot assess radon." |
| **Speciated VOCs** (benzene, toluene, etc.) | A01 Part 2 (some options) | "MICA reports TVOC — a composite index. Individual VOC species require lab testing." |
| **Formaldehyde** (base MICA/Mini) | A01 Part 2, A05 Part 2 | "Formaldehyde measurement requires MICA Plus or MICA WELL. Base MICA TVOC is not a substitute." |
| **Legionella** | WELL W03 (water) | "Not an air parameter. Requires water system testing." |
| **Noise** (standard units) | WELL Sound concept | "Noise sensor is optional, not standard on MICA." |
| **Light levels** | WELL Light concept | "Not measured by MICA." |
| **Mean radiant temperature (MRT)** | T01/T05 full compliance | "MRT requires a globe thermometer. MICA measures dry-bulb temp only." |
| **Calibration status** | All features | "WELL requires 3-year calibration for air sensors. Anne cannot verify calibration from sensor readings alone." |

---

## Parameter Interpretation Guide

### CO2 (ppm)

- **What it indicates:** Ventilation effectiveness + occupancy load
- **Diagnostic patterns:**
  - Rising slowly through the day → ventilation insufficient for occupancy
  - Spike then drops → brief occupancy event or window/door opened
  - High overnight → very low ventilation rate
- **ACH from decay:** When CO2 drops after occupancy ends, ACH ≈ 1 / (hours to remove 63% of excess CO2)
- **Thresholds:** WELL ≤800 ppm target; A03 continuous option ≤900 ppm; ASHRAE max 1000 ppm

### TVOC (VOC Index)

- **What it indicates:** Combined volatile organic compounds (relative, not speciated)
- **Diagnostic patterns:**
  - Elevated mornings only → overnight off-gassing (furniture, materials) or early cleaning products
  - Persistent elevation → ongoing source (new furniture, paints, adhesives)
- **Limitation:** MOx sensors can cross-react with humidity. Not equivalent to lab VOC speciation.

### PM2.5 / PM10 (µg/m³)

- **What it indicates:** Particulate burden — health and filtration effectiveness
- **Diagnostic patterns:**
  - 30-min spike → indoor source (cooking is dominant indoor PM2.5 source)
  - Sustained elevation correlated with outdoor → infiltration (check I/O ratio)
  - I/O ratio < 0.3 → good filtration; > 0.8 → poor filtration or indoor source
- **Wildfire:** Indoor PM2.5 typically 55–60% of outdoor with building closed

### Temperature (°C)

- WELL comfort range: 20–24°C winter / 23–26°C summer
- Anomalies: cold surface + high RH → condensation/mold risk

### Relative Humidity (%)

- Optimal: 30–60% (ASHRAE 55 / WELL T07)
- >60% → dust mite and pathogen growth risk
- ≥70% on surfaces → active mold growth risk (coldest surface condenses first)
- <30% → irritation, static electricity

### InBiot Composite Indicators (0–100)

| Indicator | What it integrates | Scale |
|-----------|-------------------|-------|
| IAQ Index | CO2, TVOC, PM2.5, PM10, HCHO, CO, NO2, O3 | ≥80 Excellent / 60–79 Good / 40–59 Acceptable / <40 Poor |
| Thermal Indicator | Temperature + RH | ≥80 Comfortable |
| Virus Resistance | CO2, humidity, temperature, ventilation proxy | ≥80 Ideal |
| Ventilation Indicator | CO2 as proxy for air change rate | ≥80 Excellent |

### Particulate Matter Sizes

| Parameter | Size | Health significance |
|-----------|------|-------------------|
| PM1.0 | ≤1 µm | Ultrafine — can enter bloodstream |
| PM2.5 | ≤2.5 µm | Fine — penetrates deep into lungs; cardiovascular and cognitive effects |
| PM4.0 | ≤4 µm | Respirable — reaches lower airways |
| PM10 | ≤10 µm | Coarse — upper respiratory tract |
