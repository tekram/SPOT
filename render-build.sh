#!/usr/bin/env bash
set -e

npm install

# Generate config/config.json from Render environment variables
cat > config/config.json << CONFIGEOF
{
  "secrets": {
    "DATABASE_URL": "${DATABASE_URL}",
    "TBA_API_KEY": "${TBA_API_KEY}",
    "GOOGLE_AUTH": {
      "CLIENT_ID": "${GOOGLE_CLIENT_ID}",
      "CLIENT_SECRET": "${GOOGLE_CLIENT_SECRET}"
    },
    "FMS_API_USERNAME": "${FMS_API_USERNAME}",
    "FMS_API_KEY": "${FMS_API_KEY}"
  },
  "EVENT_NUMBER": "${EVENT_NUMBER}",
  "VERSION": "0.0",
  "TBA_EVENT_KEY": "${TBA_EVENT_KEY}"
}
CONFIGEOF

echo "config/config.json generated successfully"
