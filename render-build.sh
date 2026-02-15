#!/usr/bin/env bash
set -e

npm install

# Generate config/config.json from Render environment variables
cat > config/config.json << CONFIGEOF
{
  "secrets": {
    "ACCESS_CODE": "${ACCESS_CODE}",
    "DATABASE_URL": "${DATABASE_URL}",
    "TBA_API_KEY": "${TBA_API_KEY}"
  },
  "TBA_EVENT_KEY": "${TBA_EVENT_KEY}",
  "VERSION": "1.0",
  "DEMO": ${DEMO:-false}
}
CONFIGEOF

echo "config/config.json generated successfully"
