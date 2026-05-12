#!/bin/bash
# Stop the Node app before a new revision is installed (must exit 0 for CodeDeploy)

pkill -f "node app.js" 2>/dev/null || true
sleep 2
exit 0