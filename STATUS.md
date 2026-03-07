# MCP server status

**Authentication required.** The InBiot Anne MCP server is remote and token-protected. You must provide a token so Cursor can call the MCP tools.

## What to do

1. **Get a token** — Contact the server admin for an MCP token.

2. **Give Cursor the token** — either:

   **Option A — Environment variable (recommended)**  
   Set `MCP_INBIOT_TOKEN` before starting Cursor. The plugin’s `.mcp.json` references `${MCP_INBIOT_TOKEN}` in the request header.
   - Windows (PowerShell): `$env:MCP_INBIOT_TOKEN = "your-token-here"`
   - Persist: add to your profile or System Properties → Environment variables.
   - macOS/Linux: `export MCP_INBIOT_TOKEN=your-token-here` (e.g. in `~/.zshrc`).

   **Option B — Token in `.mcp.json`**  
   After installing the plugin from GitHub, edit the `.mcp.json` Cursor uses (in the plugin cache) and put the token in the header instead of the placeholder. For example on Windows:
   - `%USERPROFILE%\.cursor\plugins\cache\inbiot-anne\inbiot-anne\HEAD\.mcp.json`
   - Change `"X-MCP-Token: ${MCP_INBIOT_TOKEN}"` to `"X-MCP-Token: your-actual-token"`.
   - **Note:** Reinstalling or updating the plugin can overwrite this file; you’d need to re-apply the token. Option A survives updates.

3. **Restart Cursor** after changing the token.

If the token is missing or invalid, MCP tool calls (e.g. `list_devices`, `get_latest_measurements`) will fail.

Full install and usage: see [README.md](README.md).
