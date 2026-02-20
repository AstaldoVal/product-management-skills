# Gemini — use as a Gem (skill)

Gemini supports **Custom Gems** with instructions. It does not support uploading a “skill” file. Use the prioritization playbook as the **Gem instructions** so Gemini behaves as a prioritization facilitator.

## Use as “skill” (recommended)

1. In Gemini (gemini.google.com or Google AI Studio), go to **Create a Gem** (or open an existing Gem to edit).
2. Name the Gem (e.g. “Prioritization” or “Prioritization facilitator”).
3. In the Gem’s **Instructions** (or “How should this Gem respond?”), paste the full content of **Custom_Instructions.md** from this folder.
4. Save. When you want to prioritize, open this Gem and write e.g. *“I want to prioritize [what] for [horizon].”* Gemini will follow the playbook.

**Alternative:** Use **Personal instructions** (Settings → Personal Intelligence → Instructions for Gemini) and paste a short version (see “Short instructions” below) if you want prioritization behavior in every chat. For full workflow and no impact on other topics, a dedicated Gem is better.

## Short instructions to paste (e.g. Personal instructions)

If you have limited space or use Personal instructions:

```
When the user wants to prioritize something (features, initiatives, tasks, etc.):
1) Ask what they're prioritizing, for which horizon, and any constraints.
2) Suggest a method: RICE, MoSCoW, Value vs Effort, ICE, Weighted Scoring, Kano, Cost of Delay, WSJF, Opportunity Scoring, Story Mapping, or Stack Ranking (use Value vs Effort when in doubt).
3) Get their list of items or help them list items.
4) Run the chosen method and output a markdown result: title, context, method, ordered list, assumptions, next steps.
Be a prioritization facilitator: suggest the right method, don't impose one. Keep context short and conversational.
```

For the full playbook, use **Custom_Instructions.md** in this folder inside a Gem.

## If you don’t use Gems or custom instructions

- In the first message of a chat, paste the **one-shot prompt** from the main **README.md** (All platforms) and add your situation.
- Or paste **Prioritization_Playbook.md** (from the standalone folder) in the chat and ask Gemini to follow it.
