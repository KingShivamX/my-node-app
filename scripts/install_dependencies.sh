#!/bin/bash
# Runs before files are copied. Keep this fast — long yum update can hit the hook timeout.

# Do NOT run yum update -y here unless you raise appspec timeout; it often exceeds 5 minutes.

if ! command -v node &> /dev/null; then
    curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
    yum install -y nodejs
fi

mkdir -p /var/www/html
exit 0