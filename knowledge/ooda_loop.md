# OODA Loop — Anne's IAQ Decision-Making Framework

> Source: OODA_Deep_Research_Report.md (March 2026); Boyd (1995) "The Essence of Winning and Losing"; The Decision Lab; The Strategy Bridge.
> Research date: March 2026

---

## What OODA Is

The **OODA loop** (Observe → Orient → Decide → Act) is a decision-making model developed by USAF Colonel John Boyd. It describes an iterative cycle where each action feeds back into the next observation. The entity that cycles more effectively — not just faster — gains advantage.

**Orientation is the cognitive engine.** Every feedback loop passes through it. It uses mental models, prior experience, and contextual knowledge to interpret raw observations and shape decisions.

This is what Anne does for IAQ management. The sensor delivers raw data; Anne's knowledge (thresholds, patterns, standards) is the Orientation layer that turns data into meaning and action.

---

## How Anne Applies OODA to IAQ

### Observe — Gather sensor data

- `get_latest_measurements` → real-time snapshot
- `get_historical_data` → trends and trajectories
- `indoor_vs_outdoor` → infiltration context
- `detect_patterns` → recurring daily/weekly signals

Observation is only as good as sensor coverage. Flag data gaps, offline sensors, and unmonitored spaces explicitly — they are **blind spots in the loop**.

### Orient — Interpret with standards and pattern knowledge

This is where Anne's knowledge files do their work:

| Question | Knowledge applied |
|----------|------------------|
| Is this value dangerous? | `thresholds_reference.md` — WELL v2, ASHRAE, WHO, GO IAQS |
| What is causing this pattern? | `parameters.md` — CO2 decay, PM2.5 I/O ratio, TVOC patterns |
| Does it matter for certification? | `well_standards.md`, `well_performance_verification.md` |
| Who needs to act? | `client_personas.md` — FM, Owner, ESG, HR framing |
| What open standard applies? | `go_iaqs.md` — GO IAQS Starter/Ultimate Score |

**Orientation failures to avoid:**
- Comparing indoor data to outdoor standards (wrong model)
- Reporting TVOC as formaldehyde on base MICA (wrong sensor assumed)
- Declaring WELL certification from sensor data alone (wrong authority)
- Treating a single reading as a trend (insufficient observation window)

### Decide — Prioritised, actionable recommendations

Good IAQ decisions have:
- **Specificity**: target value, not just "reduce CO2"
- **Priority order**: fix the precondition failure before the optimization
- **Persona match**: FM gets "open the damper now"; Owner gets "this puts A03 at risk"
- **Confidence level**: flag if data period is too short for WELL performance-based verification

Avoid deciding prematurely. If the observation window is less than 1 calendar month, say so — a performance-based WELL feature cannot be concluded from sparse data.

### Act → Feed back to Observe

Recommendations trigger facility actions. Anne closes the loop by:
- Suggesting a re-measurement window ("check CO2 again after 48h with the HVAC adjustment")
- Identifying what to watch next (`detect_patterns` after the fix)
- Flagging whether results should be captured for WELL submission (the action becomes evidence)

---

## Tempo vs Speed — The IAQ Application

Boyd's key insight: **agility matters more than raw speed**. In IAQ terms:

| Speed trap | Agile alternative |
|------------|------------------|
| Immediately act on a single high CO2 reading | Orient first — is it a spike (event) or a trend (ventilation failure)? |
| Trigger HVAC changes on every PM2.5 alert | Check I/O ratio — is the source indoor or outdoor infiltration? |
| Report WELL compliance after 2 weeks of data | Wait for the full ≥1 calendar month performance-based window |
| Recommend the same fix to every persona | Orient to who's asking — FM vs Owner vs HR need different framing |

The "half-beat" concept (act at the moment the opponent is most vulnerable) translates to: **intervene when the trend is early and reversible** — a CO2 curve rising toward 900 ppm is easier to address than one already at 1200 ppm.

---

## OODA for Proactive IAQ Management

Most facility IAQ is reactive (complaints → investigation). OODA-aware IAQ management is proactive:

1. **Continuous Observe**: always-on sensors = persistent observation
2. **Fast Orient**: Anne's analysis converts data to meaning within the conversation
3. **Pre-committed Decide**: thresholds are defined in advance (not debated during the event)
4. **Standing Act protocols**: e.g. "if CO2 > 900 ppm for 2h, increase OA damper to 100%"

This compresses the loop enough that problems are addressed before occupants notice or complain.

---

## Anne's Loop in a Typical Consultation

```
OBSERVE:   get_latest_measurements + get_historical_data + indoor_vs_outdoor
              ↓
ORIENT:    thresholds_reference + parameters + well_standards + client_personas
              ↓
DECIDE:    prioritised action list, persona-matched framing, confidence flags
              ↓
ACT:       facility manager executes → re-measure → back to OBSERVE
```

For WELL certification, the loop runs for ≥1 calendar month, with sensor data forming the evidence base for the performance-based submission.

---

## Relation to Other Frameworks Anne Uses

| Framework | Role in Anne's work | Relation to OODA |
|-----------|--------------------|--------------------|
| WELL v2 | Certification target and threshold source | Defines acceptable Orient conclusions |
| GO IAQS | Open health benchmark (no certification) | Alternative Orient model when WELL not required |
| ASHRAE 62.1/55 | Ventilation and thermal standards | Part of Orient's rules engine |
| InBiot composite indicators (IAQ Index 0–100) | Pre-computed Orient shortcuts | Accelerate the Orient phase for FM audiences |

---

## Boundaries — What OODA Does NOT Override

The OODA loop is a reasoning structure, not a permission to skip hard limits:

- **Observe cannot be fabricated**: never estimate missing sensor data; flag blind spots
- **Orient cannot exceed sensor capability**: see `parameters.md` "What MICA Does NOT Measure"
- **Decide cannot certify**: WELL certification is IWBI's authority, not Anne's
- **Act cannot recommend destructive changes**: flag any recommendation that requires a contractor or commissioning agent

---

## Key References

- Boyd, J. (1995). *The Essence of Winning and Losing*. Briefing slides.
- The Decision Lab — OODA loop: four stages, Orientation centrality
- The Strategy Bridge (Luft) — tempo vs speed, the half-beat
- Wikipedia — OODA loop: history, diagram, critiques (Richards, Hankins)
