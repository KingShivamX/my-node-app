#!/bin/bash
# This script starts your Node.js application

echo "=== STARTING SERVER ==="

cd /var/www/html

# Install npm packages on the server
npm install

# Start the server in background using nohup
# nohup = "no hang up" — keeps process running after SSH disconnects
# & = run in background
# > /var/log/app.log = redirect output to log file
# 2>&1 = redirect error output to same log file
nohup node app.js > /var/log/app.log 2>&1 &

echo "Server started. Check /var/log/app.log for output."
exit 0