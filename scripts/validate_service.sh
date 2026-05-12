#!/bin/bash
# Validates that the app is actually running after deployment

echo "=== VALIDATING SERVICE ==="

# Wait 5 seconds for server to fully start
sleep 5

# Check if the server responds on port 3000
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000)

if [ "$response" = "200" ]; then
    echo "Validation PASSED. Server returned HTTP 200."
    exit 0
else
    echo "Validation FAILED. Server returned HTTP $response"
    exit 1   # Non-zero exit = CodeDeploy marks deployment as FAILED → triggers rollback
fi