#!/bin/bash

echo "🌱 Seeding /lessons directory with starter files..."

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
- [ ] [The Basics (JS, TS, C#)](./basics/)
- [ ] [Compare Concepts Across Languages](../ai/prompts/compare-languages.md)

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
# 🧠 JS/TS/C# Basics Coming Soon

This folder will include language fundamentals, exercises, and progression from JS to TS to C#.
EOF

# Projects
cat > lessons/projects/leaderboard/README.md <<EOF
# 🏆 Leaderboard App

Build a leaderboard from scratch in JS, then in C#, and store results in Postgres.
EOF

cat > lessons/projects/task-tracker/README.md <<EOF
# ✅ Task Tracker

Build a full CRUD interface and backend API to manage tasks. Great practice for REST APIs and full-stack data flows.
EOF

# Games
cat > lessons/games/number-guessing-game.md <<EOF
# 🎲 Number Guessing Game

A fun way to explore input validation, loops, and randomness.
EOF

cat > lessons/games/tic-tac-toe.md <<EOF
# ❌ Tic Tac Toe

Explore 2D arrays, turn-based game logic, and maybe even a little AI.
EOF

# Scratch
cat > lessons/scratch/README.md <<EOF
# 📝 Scratch Area

Use this folder for your own experiments, doodles, or challenges created by AI agents.
EOF

echo "✅ Lesson seed complete. Explore /lessons/_menu.md to begin."