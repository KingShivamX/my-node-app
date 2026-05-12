#!/bin/bash
pkill -f "node app.js" 2>/dev/null || true
sleep 1
cd /var/www/html
npm install
nohup node app.js > /var/log/app.log 2>&1 &
exit 0