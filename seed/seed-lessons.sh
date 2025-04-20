#!/bin/bash

echo "🌱 Seeding /lessons directory with starter files..."

# Prompt user for stack preferences, with defaults
read -p "Frontend language (default: JavaScript/TypeScript): " FRONTEND
FRONTEND=${FRONTEND:-JavaScript/TypeScript}

read -p "Backend language (default: C#): " BACKEND
BACKEND=${BACKEND:-C#}

read -p "Database (default: PostgreSQL): " DATABASE
DATABASE=${DATABASE:-PostgreSQL}

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
- [ ] [Write Your Own Challenge](../scratchpad/README.md)

Let the AI agent guide you from here!
EOF

# Basics
cat > lessons/basics/README.md <<EOF
# 🧠 ${FRONTEND}/${BACKEND} Basics Coming Soon

This folder will include language fundamentals, exercises, and progression from ${FRONTEND} to ${BACKEND}.
EOF

# Optionally, you can add more customization for other lesson files here