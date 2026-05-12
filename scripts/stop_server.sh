#!/bin/bash
# This script stops the currently running Node.js server

echo "=== STOPPING SERVER ==="

# Check if node is running and kill it
if pgrep -x "node" > /dev/null
then
    echo "Node process found. Killing it..."
    pkill -f "node app.js"
    echo "Server stopped."
else
    echo "No Node process running. Nothing to stop."
fi

# Exit 0 = success (important! CodeDeploy checks exit code)
exit 0