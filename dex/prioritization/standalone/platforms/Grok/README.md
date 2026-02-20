# Grok — custom instructions (no skill upload)

Grok supports **Customize Grok** (custom instructions) and **Workspaces** with their own instructions. It does not support uploading a “skill” file. Use the playbook as **custom instructions** so Grok behaves as a prioritization facilitator.

## Use as “skill” (recommended)

1. Open **Customize Grok** (from the chat interface).
2. In **“How would you like Grok to respond?”** (or the equivalent instructions field), paste the content of **Custom_Instructions.md** from this folder (or the short version below).
3. Save. In any chat (or in a Workspace that uses these instructions), say e.g. *“I want to prioritize [what] for [horizon].”* Grok will follow the playbook.

**Alternative:** Create a **Workspace** for prioritization and set the same instructions there so they apply only when you use that workspace.

## Short instructions to paste

If you have limited space, paste this:

```
When the user wants to prioritize something (features, initiatives, tasks, etc.):
1) Ask what they're prioritizing, for which horizon, and any constraints.
2) Suggest a method: RICE, MoSCoW, Value vs Effort, ICE, Weighted Scoring, Kano, Cost of Delay, WSJF, Opportunity Scoring, Story Mapping, or Stack Ranking (use Value vs Effort when in doubt).
3) Get their list of items or help them list items.
4) Run the chosen method and output a markdown result: title, context, method, ordered list, assumptions, next steps.
Be a prioritization facilitator: suggest the right method, don't impose one. Keep context short and conversational.
```

For the full playbook, use **Custom_Instructions.md** in this folder.

---

## If you don’t use custom instructions

- In the first message of a chat, paste the **one-shot prompt** from the main **README.md** (Option C) and add your situation.
- Or attach or paste **Prioritization_Playbook.md** in the chat and ask Grok to follow it (if Grok supports file paste in your interface).
