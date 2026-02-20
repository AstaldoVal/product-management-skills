# Cursor — use as a skill

Cursor supports **Agent Skills** (SKILL.md with name and description). The prioritization skill is ready to load.

## Install (recommended)

1. Copy the **parent folder** (the one that contains `SKILL.md`, `Prioritization_Playbook.md`, `Methods_Reference.md`) into your Cursor skills directory, for example:
   - **Mac/Linux:** `~/.cursor/skills/prioritization/`  
   - or your project’s skills path if you use project-level skills.
2. Ensure the folder contains at least **SKILL.md** (required). Optionally keep **Methods_Reference.md** in the same folder so the model can reference it when needed.
3. Restart or reload Cursor so the skill is picked up.

## How to use

- In chat, invoke the skill (e.g. type `/prioritization` if your Cursor setup supports slash commands, or say *“Use the prioritization skill: I want to prioritize …”*).
- The assistant will follow the playbook: context → method choice → items → run → markdown result.

## If you don’t use a skills folder

- Paste the contents of **Prioritization_Playbook.md** into the chat and ask the assistant to follow it.
- Or use the one-shot prompt from the main **README.md** (Option C).
