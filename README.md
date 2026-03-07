# inbiot-anne — IAQ Consultant Claude Code Plugin

Anne is a digital Indoor Air Quality consultant and WELL Accredited Professional, built as a **Claude Code plugin**. She has live access to InBiot sensor data and knows WELL v2, ASHRAE 62.1/55, and WHO guidelines out of the box.

No copy-pasting readings into a chat. No prompting from scratch. Anne knows the standards, knows your devices, and follows structured workflows.

## How it fits together

```
┌─────────────────────────────────┐     ┌──────────────────────────────────┐
│  This plugin (intelligence)     │     │  MCP Server (data)               │
│                                 │     │                                  │
│  agents/anne.md  = persona      │────>│  14 tools returning JSON from    │
│  skills/        = slash cmds    │ MCP │  InBiot sensors + OpenWeather    │
│  knowledge/     = standards     │     │  + WELL compliance engine        │
│  hooks/         = greeting      │     │  + TTL cache (rate limit safe)   │
│  .mcp.json      = connection    │     │                                  │
└─────────────────────────────────┘     └──────────────────────────────────┘
```

---

## Install (recommended)

### Prerequisites

- [Node.js 18+](https://nodejs.org/) (for `mcp-remote`)
- [Claude Code](https://claude.ai/code) v1.0.33+
- An MCP token — contact the server admin

### 1. Set your token

```bash
export MCP_INBIOT_TOKEN=your-token-here
```

Add to your shell profile (`~/.zshrc`, `~/.bashrc`) to persist across sessions.

### 2. Add the marketplace and install

```bash
claude marketplace add https://github.com/miguel-escribano/inbiot-Anne-IAQ-consultant-as-a-plugin
claude plugin install inbiot-anne
```

### 3. Try it

```
/inbiot-anne:facility-dashboard
/inbiot-anne:well-certification main_office
/inbiot-anne:air-quality-analysis laboratory week
```

**Available devices:** `cafeteria`, `main_office`, `laboratory`, `miguel_demo`

---

## Local / dev mode

```bash
git clone https://github.com/miguel-escribano/inbiot-Anne-IAQ-consultant-as-a-plugin
claude --plugin-dir ./inbiot-Anne-IAQ-consultant-as-a-plugin
```

---

## Skills

| Command | What Anne does |
|---------|----------------|
| `/inbiot-anne:facility-dashboard` | Full installation overview — status of every device |
| `/inbiot-anne:air-quality-analysis <device> [period]` | Latest + historical data, parameter-by-parameter analysis |
| `/inbiot-anne:health-advisory <device>` | Health-focused recommendations with clinical context |
| `/inbiot-anne:well-certification <device>` | WELL compliance check + per-feature breakdown + certification roadmap |
| `/inbiot-anne:compare-devices <dev1> <dev2>` | Side-by-side comparison of two locations |
| `/inbiot-anne:trend-analysis <device> <start> <end> [param]` | Pattern detection + statistics, actionable trends |
| `/inbiot-anne:ventilation-check <device>` | Indoor vs outdoor comparison, ventilation effectiveness |
| `/inbiot-anne:daily-report [date]` | End-of-day summary across all devices |

---

## Knowledge base

| File | Content |
|------|---------|
| `well_standards.md` | WELL v2 feature requirements and scoring logic |
| `thresholds_reference.md` | Unified threshold table — WELL + ASHRAE + WHO, strictest governs |
| `ashrae_iso_reference.md` | ASHRAE 62.1/55 and ISO 16000 details |
| `well_performance_verification.md` | WELL PVG sampling methodology |
| `well_v2_scorecard.md` | Full WELL v2 scorecard with certification levels |
| `parameters.md` | What each InBiot sensor parameter means |
| `indicators/` | InBiot composite indicator guides (IAQ, thermal, virus, ventilation) |

---

## Rules Anne follows

- **Never simulates data.** If an API call fails, she says "data unavailable" — never guesses.
- **Strictest standard governs.** When WELL says 800 ppm CO₂ and ASHRAE says 1000 ppm, Anne uses 800 ppm.
- **Rate-limit aware.** Plans tool calls to stay within InBiot's 6 req/device/hour limit.
- **Outdoor data is context only.** Never used for indoor WELL scoring.

---

## Links

- [InBiot](https://www.inbiot.es/) — Air quality monitoring devices
- [My inBiot Platform](https://my.inbiot.es) — Device management and API credentials
- [WELL Building Standard](https://www.wellcertified.com/) — Certification program

## License

MIT
