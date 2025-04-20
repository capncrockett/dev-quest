#!/bin/bash

# Remove or create fresh lessons directory
if [ -d lessons ]; then
  read -p "A /lessons directory already exists. Delete and start fresh? (y/N): " DELETE_LESSONS
  if [[ "$DELETE_LESSONS" =~ ^[Yy]$ ]]; then
    rm -rf lessons
    echo "Deleted existing /lessons directory."
  else
    echo "Keeping existing /lessons directory. Seeding may overwrite some files."
  fi
fi

echo "🌱 Seeding /lessons directory with starter files..."

# Menu-based stack selection for beginners
# Frontend
echo "Choose your frontend language:"
echo "1) JavaScript/TypeScript"
echo "2) React"
echo "3) Svelte"
read -p "Enter 1-3 (default: 1): " FRONTEND_CHOICE
case $FRONTEND_CHOICE in
  2) FRONTEND="React";;
  3) FRONTEND="Svelte";;
  *) FRONTEND="JavaScript/TypeScript";;
esac

# Backend
echo "Choose your backend language:"
echo "1) C#"
echo "2) Node.js"
echo "3) Python"
read -p "Enter 1-3 (default: 1): " BACKEND_CHOICE
case $BACKEND_CHOICE in
  2) BACKEND="Node.js";;
  3) BACKEND="Python";;
  *) BACKEND="C#";;
esac

# Database
echo "Choose your database:"
echo "1) PostgreSQL"
echo "2) SQLite"
echo "3) MongoDB"
read -p "Enter 1-3 (default: 1): " DATABASE_CHOICE
case $DATABASE_CHOICE in
  2) DATABASE="SQLite";;
  3) DATABASE="MongoDB";;
  *) DATABASE="PostgreSQL";;
esac

mkdir -p lessons/basics
mkdir -p lessons/projects/leaderboard
mkdir -p lessons/projects/task-tracker
mkdir -p lessons/games
mkdir -p lessons/scratch

# Top-level menu
cat > lessons/_menu.md <<EOF
# 🔧 Choose Your Learning Track

Welcome! What do you want to build or explore?

## 💡 Start Here
- [ ] [The Basics (${FRONTEND}, ${BACKEND})](./basics/)
- [ ] [Compare Concepts Across Languages](../seed/memory-block.md)

## 🎯 Mini Projects
- [ ] [Leaderboard Tracker](./projects/leaderboard/)
- [ ] [Task Tracker (CRUD)](./projects/task-tracker/)

## 🎮 Fun Games
- [ ] [Guess the Number](./games/number-guessing-game.md)
- [ ] [Tic Tac Toe](./games/tic-tac-toe.md)

## ✍️ Open Scratchpad
- [ ] [Write Your Own Challenge](../scratch/README.md)

Let the AI agent guide you from here!
EOF

# Basics
cat > lessons/basics/README.md <<EOF
# 🧠 ${FRONTEND}/${BACKEND} Basics Coming Soon

This folder will include language fundamentals, exercises, and progression from ${FRONTEND} to ${BACKEND}.
EOF

# Games starter docs
cat > lessons/games/number-guessing-game.md <<EOF
# 🎲 Number Guessing Game

Starter logic and instructions for building a number guessing game.

- Implement in ${FRONTEND} or ${BACKEND}
- Try both if you want a challenge!
EOF

cat > lessons/games/tic-tac-toe.md <<EOF
# ❌⭕ Tic Tac Toe

Starter logic and instructions for building Tic Tac Toe.

- Implement in ${FRONTEND} or ${BACKEND}
- Try both if you want a challenge!
EOF

# Projects starter docs
cat > lessons/projects/leaderboard/README.md <<EOF
# 🏆 Leaderboard Tracker

Starter instructions for a CRUD leaderboard app.

- Implement backend in ${BACKEND}
- Frontend in ${FRONTEND}
- Use ${DATABASE} for data storage
EOF

cat > lessons/projects/task-tracker/README.md <<EOF
# 📋 Task Tracker

Starter instructions for a CRUD task tracker app.

- Implement backend in ${BACKEND}
- Frontend in ${FRONTEND}
- Use ${DATABASE} for data storage
EOF

# Scratchpad starter
echo "# ✍️ Personal Scratchpad\n\nUse this file to jot down ideas, challenges, or code experiments." > lessons/scratch/README.md

# Optionally, starter code files for basics (empty for now)
FRONTEND_FILE=$(echo "$FRONTEND" | tr '[:upper:]' '[:lower:]' | tr -d '/ ')
touch lessons/basics/starter.${FRONTEND_FILE}.txt