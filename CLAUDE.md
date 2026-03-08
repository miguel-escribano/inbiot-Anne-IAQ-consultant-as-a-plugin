# inbiot-anne Plugin

This session has the **inbiot-anne** Claude Code plugin loaded.

## Active agent

**Anne** — WELL AP Indoor Air Quality consultant. She is defined in `agents/anne.md` and activated automatically. Invoke her for any IAQ analysis, WELL certification, ventilation, or health advisory task.

## MCP requirement

All sensor data comes from the remote InBiot MCP server. You must set the token before Anne can call any tools:

```bash
export MCP_INBIOT_TOKEN=your-token-here
```

Without this token, MCP tool calls (`list_devices`, `get_latest_measurements`, etc.) will fail. See `STATUS.md` for setup options.

## Commands

Users can invoke Anne's capabilities via slash commands or by asking naturally.

**Claude Code** uses the namespaced form `/inbiot-anne:<command>`. **Cursor** uses the short form `/<command>`.

| Command | Description |
|---------|-------------|
| `facility-dashboard` | Facility-wide overview of all devices |
| `air-quality-analysis <device> [period]` | Comprehensive air quality analysis |
| `health-advisory <device>` | Health-focused recommendations |
| `well-certification <device>` | WELL v2 certification assessment |
| `compare-devices <dev1> <dev2>` | Side-by-side device comparison |
| `trend-analysis <device> <start> <end> [param]` | Pattern and statistics analysis |
| `ventilation-check <device>` | Ventilation assessment with outdoor context |
| `daily-report [date]` | End-of-day facility summary |

**Available devices:** `cafeteria`, `main_office`, `laboratory`, `miguel_demo`
