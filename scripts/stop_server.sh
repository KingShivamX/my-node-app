#!/bin/bash
pkill -f "node app.js" 2>/dev/null || true
sleep 2
exit 0