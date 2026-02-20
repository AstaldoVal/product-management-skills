---
name: prioritization
description: Choose and apply a prioritization method (RICE, MoSCoW, Value vs Effort, ICE, Weighted Scoring, Kano, Cost of Delay, WSJF, Opportunity Scoring, Story Mapping, Stack Ranking) with context gathering, method selection, and documented outcome.
role_groups: [product, leadership]
jtbd: |
  You need to prioritize a list (features, initiatives, tasks) but different situations 
  need different methods. This skill clarifies context, suggests the right method, 
  runs the prioritization, and documents the result with rationale for later reference.
time_investment: "10-30 minutes depending on list size and method"
---

## Portable version (any AI assistant)

A Dex-agnostic pack for use in ChatGPT, Claude, Grok, Manus, ClawdBot, etc.: see **standalone/** in this folder. It contains Prioritization_Playbook.md (workflow), Methods_Reference.md (11 methods), and README.md (how to use per platform). No vault or file paths; output is markdown the user can copy. This SKILL.md adds Dex-specific behaviour (vault, 04-Projects/, /feature-decision, /roadmap).

---

## Purpose

Prioritize any list (features, initiatives, experiments, roadmap items, tasks) in a product-minded way: gather context first, choose a method that fits the situation, apply it consistently, and document the outcome with rationale. The skill does not impose one "best" method; it helps select and apply the most appropriate one.

## Usage

- `/prioritization` — Start with guided context questions, then method choice and execution
- `/prioritization [method-name]` — Use a specific method (e.g. `/prioritization RICE`, `/prioritization MoSCoW`)
- `/prioritization [list or file]` — Prioritize items from a pasted list or referenced file

---

## Step 1: Clarify Context (Always First)

Before choosing a method, establish:

1. **What is being prioritized?**
   - Features, initiatives, experiments, roadmap themes, tasks, OKRs, or other

2. **Horizon and constraint**
   - One release, one quarter, backlog for the year, or "next N items"
   - Hard constraint: capacity (team-weeks), deadline, or must-ship set

3. **Available inputs**
   - Do we have reach/numbers (RICE), user research (Opportunity, Kano), clear strategy/weights (Weighted), or only impact/effort (Value vs Effort, ICE)?

4. **Stakeholders and usage**
   - Who will use the result (team, exec, customers)? Need for transparency vs speed?

Ask the user these in a short, conversational way; do not require a formal doc. Infer from vault when possible (e.g. 04-Projects/, System/pillars.yaml, 01-Quarter_Goals/Quarter_Goals.md).

---

## Step 2: Select Method(s)

Use context to suggest one or two methods. Load `references/methods.md` when comparing methods.

**Quick selector (product strategy view):**

- **Backlog of features, need a score** → RICE or ICE
- **Single release / scope commitment** → MoSCoW
- **Quick visual, stakeholder discussion** → Value vs Effort
- **Ideas, experiments, hypotheses** → ICE
- **Strategy-led, clear criteria** → Weighted Scoring (align weights to pillars/OKRs)
- **Understanding what to improve first (satisfaction)** → Kano
- **Time-sensitive, commercial pressure** → Cost of Delay
- **Agile/SAFe backlog, value and job size** → WSJF (Cost of Delay / Job Size)
- **Discovery, user-driven** → Opportunity Scoring (if importance/satisfaction data exists)
- **Release/MVP along user journey** → Story Mapping
- **Strict capacity, exec alignment** → Stack Ranking

If the user already specified a method (e.g. `/prioritization RICE`), skip suggestion and confirm inputs for that method. If they insist on a method that fits poorly, briefly note the trade-off and proceed.

---

## Step 3: Gather or Define Items

- If the user provided a list or file path, parse it into discrete items (one per line or structured block).
- If not, help derive items from vault: e.g. 04-Projects/, 03-Tasks/Tasks.md, or a digest they reference.
- Ensure each item has a short, unambiguous label for the output.

---

## Step 4: Run the Method

- **RICE:** For each item, ask or infer Reach, Impact (scale), Confidence, Effort. Compute score; sort descending.
- **MoSCoW:** For the given horizon, assign each item to M / S / C / W. Enforce rule: Must is minimal set for success.
- **Value vs Effort:** For each item, assign Value and Effort (e.g. High/Medium/Low). Plot 2×2; propose order: Quick wins → Big bets → Fill-ins; Avoid only if explicitly agreed.
- **ICE:** For each item, score Impact, Confidence, Ease (e.g. 1–10). Multiply; sort descending.
- **Weighted Scoring:** Define criteria and weights (from pillars/OKRs if available). Score each item per criterion; compute weighted sum; sort descending.
- **Kano:** Use for classification only (Basic / Performance / Delight) unless user has survey data; then combine with another method for order.
- **Cost of Delay:** For each item, estimate value and time-sensitivity (or CoD/duration); rank by CoD or CD3.
- **WSJF:** For each item, estimate Cost of Delay (or components: user-business value, time criticality, risk/opportunity) and Job Size (duration or story points). WSJF = CoD / Job Size; sort descending. Prefer shorter high-value work first.
- **Opportunity Scoring:** Need importance and satisfaction per item (from user). Priority = high importance, low satisfaction.
- **Story Mapping:** Order items along user journey; identify backbone; then order by "slice" for delivery.
- **Stack Ranking:** Produce single ordered list 1..N; no ties. If user cannot decide between two, use a tie-breaker (e.g. strategic fit, then effort).

For any method, if data is missing, use placeholders (e.g. "TBD") and list assumptions so the user can fill later.

---

## Step 5: Document the Outcome

Create a short artifact (e.g. in 04-Projects/ or 00-Inbox/):

- **Title:** e.g. "Prioritization: [Scope] — [Method] — [Date]"
- **Context:** What was prioritized, horizon, constraint
- **Method used:** Name and one-line rationale
- **Ordered result:** List (or matrix/quadrant) with final order
- **Assumptions:** Missing data, subjective choices
- **Next steps:** e.g. "Top 5 to roadmap", "Must-have to sprint", "Revisit when data available"

If the vault has System/pillars.yaml or 01-Quarter_Goals/Quarter_Goals.md, note alignment of top items with pillars/goals where relevant.

---

## Step 6: Offer Follow-Up

- Add top items to roadmap or tasks
- Turn result into a one-pager for stakeholders
- Schedule a revisit when new data (e.g. Opportunity, Cost of Delay) is available
- Run `/feature-decision` on the top one or two items for full decision documentation

---

## Integration with Other Skills

- **Before:** `/customer-intel` or recent meeting notes if prioritization is feature/customer-led
- **Before:** `/roadmap` to see current capacity and avoid overloading
- **After:** `/feature-decision` for the chosen top feature(s); `/roadmap` to reflect new priorities

---

## Methods Summary (Details in references/methods.md)

1. **RICE** — (Reach × Impact × Confidence) / Effort; good for feature backlog with reach
2. **MoSCoW** — Must / Should / Could / Won't for one scope
3. **Value vs Effort** — 2×2 matrix; quick visual
4. **ICE** — Impact × Confidence × Ease; ideas and experiments
5. **Weighted Scoring** — Custom criteria and weights; strategy-led
6. **Kano** — Basic / Performance / Delight; satisfaction-led
7. **Cost of Delay** — Value and urgency; time-sensitive
8. **WSJF** — Cost of Delay / Job Size; agile/SAFe, balance value and duration
9. **Opportunity Scoring** — Importance vs satisfaction gap; discovery
10. **Story Mapping** — Order by user journey and backbone
11. **Stack Ranking** — Single ordered list 1..N; strict capacity

When in doubt, suggest **Value vs Effort** for speed or **RICE** for a scored backlog; **MoSCoW** when the outcome is a committed scope.
