---
name: air-quality-analysis
description: "Comprehensive air quality analysis for a specific device"
arguments:
  - name: device
    description: "Device ID to analyze (e.g., main_office, cafeteria, laboratory, miguel_demo)"
    required: true
  - name: period
    description: "Time period: latest (default), today, or week"
    required: false
---

Run the `air-quality-analysis` skill with these arguments: $ARGUMENTS

Follow the instructions in `skills/air-quality-analysis/SKILL.md` exactly.
