#!/bin/bash

echo "🚨 This will wipe all lesson progress, code, and scratchpads under /src."
read -p "Are you sure you want to reset? (yes/no): " confirm

if [[ "$confirm" != "yes" ]]; then
  echo "❌ Reset aborted."
  exit 1
fi

echo "Resetting project to Back to Basics mode..."

# Clean out src directories
rm -rf src/frontend/*
rm -rf src/backend/*
rm -rf src/db/*

# Optional: Remove or reset any scratchpad, notes, or progress files
rm -f scratchpad.json
rm -f lesson-progress.json

# Restore placeholder README files to preserve directory structure
echo "# Frontend Placeholder" > src/frontend/README.md
echo "# Backend Placeholder" > src/backend/README.md
echo "# DB Placeholder" > src/db/README.md

echo "✅ Project has been reset. You’re back to square one."