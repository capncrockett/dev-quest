# ✅ TODO: Learning-to-Code App Setup

This checklist tracks all major project setup tasks, features, and scaffolding work. It follows our goal of building a full-stack learning playground powered by AI coaching.

---

## 🔧 Project Structure

- [x] Create `/src/` and move `frontend/`, `backend/`, `db/` inside
- [x] Create `seed/reset.sh` script
- [x] Add placeholder READMEs to all `/src/` subfolders
- [x] Add `.gitignore` and `.env.example`
- [x] Choose MIT license and include `LICENSE` file

---

## 🧠 AI Agent Integration

- [x] Add `ai/memory-block.md` for Windsurf (workspace memory)
- [x] Add AI setup instructions to main `README.md`
- [ ] Scaffold `/ai/prompts/` with:
  - [ ] `explain-code.md`
  - [ ] `debug-nudges.md`
  - [ ] `generate-challenge.md`
  - [ ] `compare-languages.md`

---

## 🧪 Learning Modes & Resources

- [ ] Create `/lessons/` directory
  - [ ] Scaffold `/lessons/tiny-apps/leaderboard/README.md`
  - [ ] Include starter logic in JS, C#, SQL
- [ ] Create `/scratchpad/README.md`
  - [ ] Optional: plan for `scratchpad.json` or `/scratchpad/*.md` per language
- [ ] Create `/roadmap/README.md`
  - [ ] Optional: JSON structure for tracked learning goals

---

## 🧹 Reset & Rebuild

- [x] Implement reset logic in `seed/reset.sh`
- [ ] Add post-reset `/src/README.md` with:
  - [ ] What to do next
  - [ ] Link back to AI memory block
  - [ ] Mini tutorial on "choose a lane" (frontend, backend, DB)

---

## 🔜 Future Ideas (Not Now)

- [ ] Test-Driven Development (later)
- [ ] React (optional in Phase 3+)
- [ ] Local LLM or containerized memory agent
- [ ] Tiny app templates (CRUD, auth, chat, etc.)
- [ ] Export/backup learning logs

---

🧠 _Use this checklist to ensure Windsurf (or any agent) can stay on track and reflect progress at a glance._
