# Prioritization Playbook — use in any AI assistant

This folder is a **standalone product**: the same prioritization workflow works in ChatGPT, Claude, Grok, Manus, ClawdBot, Cursor, or any other AI chat. No dependency on Dex, Cursor, or a specific file system.

**Preferred way:** use it as a **skill** (or equivalent) on your platform so the assistant always follows the workflow. If the platform doesn’t support skills, use the workarounds below.

---

## What’s inside

- **SKILL.md** — Agent Skills–compatible skill (Cursor, Manus). Full workflow + method summary. Use this when the platform supports loading a skill file or folder.
- **Prioritization_Playbook.md** — Same workflow as plain markdown; for pasting or attaching when you’re not using a skill.
- **Methods_Reference.md** — Detailed description of 11 methods (formulas, when to use, pros/cons). Attach in chat when the AI needs details.
- **platforms/** — Ready-to-use instructions or install steps per platform (see below).
- **README.md** — This file.

---

## By platform: use as skill first, then workarounds

### Cursor (skills supported)

**Use as skill:** Copy the folder that contains `SKILL.md` into your Cursor skills directory (e.g. `~/.cursor/skills/prioritization/`). Reload Cursor; invoke e.g. `/prioritization` or “use prioritization skill”.

**Details:** [platforms/Cursor/README.md](platforms/Cursor/README.md)

**If you don’t use a skills folder:** Paste **Prioritization_Playbook.md** into the chat, or use the one-shot prompt under “All platforms” below.

---

### Manus (skills supported)

**Use as skill:** In Manus → Skills → Upload. Upload the folder that contains `SKILL.md` (or a .zip of it). The skill appears in chat (e.g. `/prioritization`).

**Details:** [platforms/Manus/README.md](platforms/Manus/README.md)

**If upload isn’t available:** Paste **Prioritization_Playbook.md** in the chat, or use the one-shot prompt below.

---

### ChatGPT (Custom GPT = “skill”)

**Use as skill:** Create a Custom GPT. In **Instructions**, paste the content of **platforms/ChatGPT/Custom_GPT_Instructions.md** (the block marked “Instructions to paste”). Optionally add **Methods_Reference.md** to **Knowledge**. Then use this GPT whenever you want to prioritize.

**Details:** [platforms/ChatGPT/Custom_GPT_Instructions.md](platforms/ChatGPT/Custom_GPT_Instructions.md)

**If you don’t use Custom GPTs:** Attach **Prioritization_Playbook.md** in a normal chat and say “Use this playbook to help me prioritize…”, or use the one-shot prompt below.

---

### Claude (claude.ai) (Projects = “skill”)

**Use as skill:** Create a Project. In **Project instructions**, paste the content of **platforms/Claude/Project_Instructions.md**. In **Knowledge**, add **Prioritization_Playbook.md** and optionally **Methods_Reference.md**. Use this Project for prioritization.

**Details:** [platforms/Claude/Project_Instructions.md](platforms/Claude/Project_Instructions.md)

**If you don’t use Projects:** Attach **Prioritization_Playbook.md** (and optionally **Methods_Reference.md**) in a chat and ask Claude to follow it, or use the one-shot prompt below.

---

### Grok (no skill upload; custom instructions)

**Use as “skill”:** Open **Customize Grok** and paste the content of **platforms/Grok/Custom_Instructions.md** into “How would you like Grok to respond?”. Alternatively create a **Workspace** and set the same instructions there.

**Details:** [platforms/Grok/README.md](platforms/Grok/README.md)

**If you don’t use custom instructions:** In the first message, paste the one-shot prompt below and add your situation; or paste **Prioritization_Playbook.md** if the interface allows.

---

### ClawdBot (skills are code-based; no markdown skill)

**Workaround:** ClawdBot skills use manifest.json + code, not a single markdown skill. Use **Custom instructions** if ClawdBot supports them: paste **platforms/ClawdBot/Custom_Instructions.md**. Otherwise paste **Prioritization_Playbook.md** in the chat or use the one-shot prompt below.

**Details:** [platforms/ClawdBot/README.md](platforms/ClawdBot/README.md)

---

## All platforms: one-shot prompt (no skill, no files)

If you can’t use a skill or attach files, paste this into your first message:

```
You are a prioritization facilitator. Follow this workflow:
1) Ask what I'm prioritizing, horizon, and constraints.
2) Suggest a method: RICE, MoSCoW, Value vs Effort, ICE, Weighted Scoring, Kano, Cost of Delay, WSJF, Opportunity Scoring, Story Mapping, or Stack Ranking.
3) Get my list of items (or help me list them).
4) Run the method and give me an ordered result.
5) Output a short markdown: title, context, method, ordered list, assumptions, next steps.

Start by asking me what I want to prioritize and for which horizon.
```

Then add your situation (e.g. “I have 4 platform features for the quarter, no size estimates”).

---

## Output

The AI returns a markdown block with: title, context, method used, ordered result, assumptions, next steps. Copy it into your doc, Notion, Confluence, or save as a file. If the assistant can write files (e.g. in an IDE), you can ask it to save that markdown to a path.

---

## License and reuse

You can copy this folder (including **platforms/**) into another repo, share it, or ship it as a “Prioritization Playbook” product. The workflow and method list are generic; no trademark or platform lock-in.
