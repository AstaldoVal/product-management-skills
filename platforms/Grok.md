# Using PM skills in Grok

Grok supports **Customize Grok** (account-level custom instructions) and **Workspaces** with their own instructions. It does not support uploading a “skill” file. Use the PM skills as **custom instructions** so Grok follows the workflow you need.

---

## Option A: One workspace per skill (recommended)

1. Create a **Workspace** (e.g. “Prioritization”, “Discovery”, “PRD”).
2. In that workspace’s instructions (“How would you like Grok to respond?”), paste the full instructions for that skill:
   - **Prioritization:** use [dex/prioritization/standalone/platforms/Grok/Custom_Instructions.md](../dex/prioritization/standalone/platforms/Grok/Custom_Instructions.md).
   - **Any other skill:** open the skill folder in this repo, copy the content of **SKILL.md**, and paste here. Shorten if the field has a character limit.
3. Use that workspace when you want that workflow (e.g. open “Prioritization” and say “I want to prioritize my backlog for the quarter”).

---

## Option B: Single “Customize Grok” with all PM skills

1. Open **Customize Grok** (from the chat interface).
2. In “How would you like Grok to respond?”, paste a **routing** block plus abbreviated workflows for each skill (same idea as [ChatGPT.md](ChatGPT.md) Option B). Example:

   ```
   When the user asks to prioritize, run the prioritization workflow (context → method → items → result). When they ask for discovery, PRD, roadmap, or feature decision, run that PM workflow. [Then paste short versions of each workflow.]
   ```

3. Save. In any chat, say what you need (e.g. “Prioritize …”, “Help me with discovery …”).

---

## If you don’t use custom instructions or workspaces

- In the first message of a chat, paste the **one-shot prompt** from the skill’s README (e.g. prioritization: “You are a prioritization facilitator. Follow this workflow: …”) and add your situation.
- Or paste the skill’s playbook (e.g. Prioritization_Playbook.md) into the chat and ask Grok to follow it, if the interface allows.

---

## Ready-made prioritization instructions

Full text to paste for **prioritization only**: [dex/prioritization/standalone/platforms/Grok/Custom_Instructions.md](../dex/prioritization/standalone/platforms/Grok/Custom_Instructions.md).  
Short version and details: [dex/prioritization/standalone/platforms/Grok/README.md](../dex/prioritization/standalone/platforms/Grok/README.md).
