# ClawdBot — workaround (no markdown skill format)

ClawdBot has **Skills** but they use a **code format** (manifest.json, index.ts, README.md), not a single markdown skill file. There is no ready-to-upload “Prioritization Playbook” skill package for ClawdBot. Use one of the options below.

## Option 1: Custom instructions (if supported)

If ClawdBot or OpenClaw lets you set **custom instructions** or a **system prompt** for the assistant:

1. Paste the contents of **Custom_Instructions.md** from this folder (or the full **Prioritization_Playbook.md** from the standalone root) into that field.
2. Then in chat you can say e.g. *“I want to prioritize [what] for [horizon].”* and the assistant will follow the playbook.

## Option 2: Paste in chat (no skill)

1. Start a new conversation.
2. Attach or paste **Prioritization_Playbook.md** and write: *“Use this playbook to help me prioritize. [Your situation.]”*
3. If you need formulas or method details, paste or attach **Methods_Reference.md** in the same thread.
4. Proceed through context → method → items → run → copy the markdown result.

## Option 3: One-shot prompt

If you can’t attach files, paste this into your first message (from the main **README.md**, Option C):

```
You are a prioritization facilitator. Follow this workflow:
1) Ask what I'm prioritizing, horizon, and constraints.
2) Suggest a method: RICE, MoSCoW, Value vs Effort, ICE, Weighted Scoring, Kano, Cost of Delay, WSJF, Opportunity Scoring, Story Mapping, or Stack Ranking.
3) Get my list of items (or help me list them).
4) Run the method and give me an ordered result.
5) Output a short markdown: title, context, method, ordered list, assumptions, next steps.

Start by asking me what I want to prioritize and for which horizon.
```

Then add your situation (e.g. “I have 4 features for the quarter, no estimates”).

---

**Summary:** ClawdBot does not have a drop-in markdown skill; use custom instructions if available, otherwise paste the playbook or the one-shot prompt in chat.
