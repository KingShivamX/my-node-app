#!/bin/bash
# Runs before files are copied. Install system-level stuff here.

echo "=== INSTALLING DEPENDENCIES ==="

# Update package manager
yum update -y          # Amazon Linux uses yum
# apt-get update -y   # Ubuntu uses apt-get

# Install Node.js if not present
if ! command -v node &> /dev/null
then
    echo "Node.js not found. Installing..."
    curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
    yum install -y nodejs
fi

# Create app directory if it doesn't exist
mkdir -p /var/www/html

echo "Dependencies installed successfully."
exit 0