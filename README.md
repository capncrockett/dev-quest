# ⚗️ Dev Quest – Full Stack Playground

This repo is a personal journey through modern software development. It’s designed to be:

- 💻 **Project-first** – Learn by building real, functional apps
- 🛠️ **Minimal dependency** – Prioritize “roll your own” solutions
- 🧠 **AI-augmented** – Guided by an AI agent (Cascade/Codeium, etc.)
- 🔁 **Flexible stack** – Languages and tools can be swapped as needed

> 💡 This starting point is geared for:
>
> - JavaScript / TypeScript (frontend & scratchpad logic)
> - C# (.NET Minimal API for backend)
> - PostgreSQL (relational database with raw SQL)  
>   You can change this by updating [`seed/memory-block.md`](seed/memory-block.md) and guiding your agent accordingly.

---

## Getting Started

1. **Clone this repo.**

2. **Make the lesson seeding script executable (first time only):**
   ```bash
   chmod +x ./seed/seed-lessons.sh
   ```

3. **Seed your lessons directory:**
   ```bash
   ./seed/seed-lessons.sh
   ```
   - You’ll be prompted to choose your frontend, backend, and database languages (or just press Enter to use the defaults: JavaScript/TypeScript, C#, PostgreSQL).
   - This will set up your `/lessons` directory with the basics and a starter project.

4. **(Optional) Customize your learning agent:**
   - Open `seed/memory-block.md` and update it if you want to further personalize the AI’s coaching style, stack, or learning goals.

5. **Start learning:**
   - Explore the `/lessons` directory and open the “Basics” track to begin.
   - Let the AI agent guide you as you build and learn.

> **Tip:** Start with the “Basics” to get comfortable, then try a mini project or game when you’re ready.

---

## ⚠️ Important Tips for Learning

- 🔕 **Disable autocomplete or auto-agent execution**  
  Turn off AI auto-complete suggestions (e.g. tab completions in Windsurf or "Auto Agent" in Augment).  
  These can short-circuit the learning process by skipping your own reasoning.

- 🧠 The agent should guide—not solve—for you.  
  Use hints, breakdowns, or nudges instead of full answers.

- 🔄 You can reset or revisit lessons anytime.  
  Learning is iterative—lean into repetition.

---

## Goals

- Build and explore full stack apps using your chosen tools
- Reinforce concepts by comparing how they work across languages
- Let the AI guide your learning through conversation and exploration
- Reset and revisit lessons at any time
