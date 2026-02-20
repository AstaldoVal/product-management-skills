# Prioritization methods reference

Detailed description of 11 methods. When to use which: see Prioritization_Playbook.md (Quick selector).

---

## 1. RICE (Reach, Impact, Confidence, Effort)

**Formula:** Score = (Reach × Impact × Confidence) / Effort

- **Reach** — number of users/events affected per period
- **Impact** — 3 = massive, 2 = high, 1 = medium, 0.5 = low, 0.25 = minimal
- **Confidence** — 100%, 80%, 50% (or fraction)
- **Effort** — person-months (or weeks) to deliver

**When to use:** Feature backlog with measurable reach; comparing initiatives at different scale.

**Pros:** Transparent formula; accounts for volume and confidence. **Cons:** Subjective inputs; reach often unknown.

---

## 2. MoSCoW (Must / Should / Could / Won't)

**Idea:** Assign each item to one of four categories for a single release/horizon.

- **Must** — without this, the release fails
- **Should** — important but not blocking
- **Could** — nice to have if capacity allows
- **Won't** — explicitly out of this round (not "never")

**When to use:** Agreeing release scope with business and stakeholders.

**Pros:** Easy for non-technical audiences; reduces "everything is critical." **Cons:** Must often gets overloaded; no order within category.

---

## 3. Value vs Effort (Impact vs Effort)

**Idea:** 2×2 matrix: Value (Impact) vs Effort. Quadrants:

- **High Value, Low Effort** — Quick wins (do first)
- **High Value, High Effort** — Big bets (plan)
- **Low Value, Low Effort** — Fill-ins (when time allows)
- **Low Value, High Effort** — Avoid

**When to use:** Backlog or initiatives; fast visual and discussion.

**Pros:** Intuitive, fast. **Cons:** Value/Effort can mix different factors; no fine granularity.

---

## 4. ICE (Impact, Confidence, Ease)

**Formula:** Score = Impact × Confidence × Ease (each typically 1–10).

- **Impact** — effect on goal (metric, experience)
- **Confidence** — how sure you are in the estimate
- **Ease** — how easy to implement

**When to use:** Ideas, experiments, hypotheses, A/B tests.

**Pros:** Simpler than RICE; no reach needed. **Cons:** Single 1–10 scale can blur differences.

---

## 5. Weighted Scoring

**Idea:** Custom criteria and weights. Score each item per criterion (e.g. 1–5); weighted sum.

**Example criteria:** Strategic fit (30%), Customer impact (25%), Revenue impact (20%), Effort (15%), Risk (10%).

**When to use:** Clear strategy (OKRs, pillars); priorities must reflect goals.

**Pros:** Flexible; strategy is explicit. **Cons:** Requires agreed criteria and weights; heavy for small decisions.

---

## 6. Kano Model

**Idea:** Classify by effect on satisfaction:

- **Basic (Must-be)** — expected; absence causes strong dissatisfaction
- **Performance (One-dimensional)** — more feature = more satisfaction
- **Delight (Attractive)** — unexpected; presence pleases

**When to use:** Deciding what to improve first (basics vs delight); product experience decisions.

**Pros:** Shifts focus from "importance" to type of satisfaction. **Cons:** Needs research/surveys; does not order backlog by itself.

---

## 7. Cost of Delay (CD3)

**Idea:** Priority = Value / Time or Urgency × Value. Delay has a cost (revenue, users, opportunities). Often: CD3 = CoD / duration.

**When to use:** Time-critical: commercial deadlines, closing windows, dependencies.

**Pros:** Makes delay cost explicit. **Cons:** CoD hard to estimate; can over-prioritize "urgent."

---

## 8. WSJF (Weighted Shortest Job First)

**Formula:** WSJF = Cost of Delay / Job Size. Or (SAFe): (User-Business Value + Time Criticality + Risk Reduction/Opportunity Enablement) / Job Size. Job Size = duration or story points.

**Idea:** Prioritize high value and small size; long jobs with same value go later.

**When to use:** Agile/SAFe backlogs; need to balance value and duration.

**Pros:** Uses both value and size; reduces long-queue bias. **Cons:** Needs size and value estimates; sensitive to bad estimates.

---

## 9. Opportunity Scoring (Importance vs Satisfaction)

**Idea:** X = importance to user, Y = satisfaction with current solution. Priority = high importance, low satisfaction (gap).

**When to use:** Discovery, Jobs-to-be-Done; choosing problems/features from surveys or interviews.

**Pros:** User-driven; surfaces gaps. **Cons:** Needs data; does not include effort or strategy directly.

---

## 10. Story Mapping

**Idea:** Backlog along user journey (steps top to bottom, order left to right). Prioritize backbone (horizontal slice), then deepen.

**When to use:** Release planning, MVP; completeness and order of a scenario.

**Pros:** Keeps user journey intact. **Cons:** Weak for comparing unrelated initiatives or products.

---

## 11. Stack Ranking

**Idea:** Single ordered list 1..N. One item per rank. No "all are top priority."

**When to use:** Hard capacity limit; exec alignment; quarterly/annual plan.

**Pros:** Removes ambiguity; forces real order. **Cons:** Psychologically hard; small differences between neighbors can be noise.
