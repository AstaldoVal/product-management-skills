# Using PM skills in ChatGPT

ChatGPT does not have a “skills” folder. The closest equivalent is a **Custom GPT** with fixed instructions (and optional Knowledge files). You can use the PM skills pack in two ways.

---

## Option A: One Custom GPT per skill (recommended for focus)

1. Go to **Explore GPTs** → **Create** (or **My GPTs** → edit).
2. Give the GPT a name and description (e.g. “Prioritization facilitator”, “PRD assistant”).
3. In **Instructions**, paste the full instructions for that skill:
   - **Prioritization:** use the ready-made block from [dex/prioritization/standalone/platforms/ChatGPT/Custom_GPT_Instructions.md](../dex/prioritization/standalone/platforms/ChatGPT/Custom_GPT_Instructions.md) (section “Instructions to paste”).
   - **Any other skill:** open the skill folder in this repo (e.g. `deanpeters/discovery-process/`, `dex/feature-decision/`), copy the content of **SKILL.md** (and any critical reference files), and paste into Instructions. Trim or summarize if the character limit is tight.
4. (Optional) In **Knowledge**, upload reference files (e.g. Methods_Reference.md for prioritization, or a methods/glossary file for that skill).
5. Save. Use this GPT whenever you want that specific workflow (e.g. “prioritize my backlog”, “run discovery”, “draft a PRD”).

---

## Option B: One “PM Assistant” Custom GPT (all skills in one place)

1. Create a single Custom GPT (e.g. “PM Assistant”).
2. In **Instructions**, paste a **routing** block that lists all skills and when to use them, then paste abbreviated workflows (or key steps) for each skill. Example:

   ```
   You are a PM assistant with several modes. When the user asks to prioritize, run the prioritization workflow. When they ask for discovery or PRD or roadmap or feature decision, run that workflow.

   ## Prioritization
   [paste short version: context → method choice → items → run → document]

   ## Discovery
   [paste short version from discovery SKILL.md]

   ## PRD / feature brief
   [paste short version from product-brief or PRD SKILL.md]

   … (add other skills as needed)
   ```

3. If Instructions have a character limit, keep only the most-used skills in full and add: “For other PM workflows (e.g. roadmap, project health), ask the user to paste the relevant SKILL.md or say which workflow they want.”
4. Optionally add the most important reference files to **Knowledge**.

---

## If you don’t use Custom GPTs

- In a normal chat, attach the skill’s **playbook** or **SKILL.md** (e.g. Prioritization_Playbook.md from the prioritization standalone folder) and write: “Use this playbook to help me [prioritize / run discovery / …].”
- Or paste the one-shot prompt from that skill’s README (e.g. prioritization standalone “All platforms: one-shot prompt”) in the first message.
