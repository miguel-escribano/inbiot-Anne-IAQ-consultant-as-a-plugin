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

## Quick start

```
/inbiot-anne:facility-dashboard
/inbiot-anne:air-quality-analysis <device> [period]
/inbiot-anne:well-certification <device>
/inbiot-anne:health-advisory <device>
/inbiot-anne:compare-devices <dev1> <dev2>
/inbiot-anne:trend-analysis <device> <start> <end> [param]
/inbiot-anne:ventilation-check <device>
/inbiot-anne:daily-report [date]
```

**Available devices:** `cafeteria`, `main_office`, `laboratory`, `miguel_demo`
