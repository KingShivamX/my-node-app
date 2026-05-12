#!/bin/bash
# This script stops the currently running Node.js server

echo "=== STOPPING SERVER ==="

# Kill by command line (process name is "node", not "node" as pgrep -x would require)
pkill -f "node app.js" 2>/dev/null || true
# Free port 3000 if something else grabbed it (optional safety net)
if command -v fuser &>/dev/null; then
  fuser -k 3000/tcp 2>/dev/null || true
fi
echo "Stop step finished (ignore 'no process' messages)."

# Exit 0 = success (important! CodeDeploy checks exit code)
exit 0