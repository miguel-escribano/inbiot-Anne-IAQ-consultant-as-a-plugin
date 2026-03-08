---
name: trend-analysis
description: "Pattern detection and statistical analysis over a time period"
arguments:
  - name: device
    description: "Device ID to analyze (e.g., main_office)"
    required: true
  - name: start_date
    description: "Start date (YYYY-MM-DD)"
    required: true
  - name: end_date
    description: "End date (YYYY-MM-DD)"
    required: true
  - name: parameter
    description: "Specific parameter to focus on (e.g., co2, pm25, temperature)"
    required: false
---

Run the `trend-analysis` skill with these arguments: $ARGUMENTS

Follow the instructions in `skills/trend-analysis/SKILL.md` exactly.
