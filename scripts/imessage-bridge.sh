#!/bin/bash
# Bridges the iMessage MCP server (macOS-only) to HTTP so containers can access it.
# Runs on the host, containers connect via http://host.docker.internal:8090/mcp
exec npx -y supergateway \
  --stdio "npx -y @foxychat-mcp/apple-imessages" \
  --outputTransport streamableHttp \
  --port 8090
