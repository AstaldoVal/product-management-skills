# Using PM skills in Google Gemini

Gemini does not support a “skills folder”. You can use PM skills in two ways: **Custom Gems** (one Gem per skill or one “PM Assistant” Gem) or **Personal instructions** (one global style).

---

## Option A: One Gem per skill (recommended for focus)

1. In Gemini (gemini.google.com or Google AI Studio), go to **Create a Gem** (or equivalent).
2. Name and describe the Gem (e.g. “Prioritization facilitator”, “PRD assistant”).
3. In the Gem’s **Instructions** (or “How should this Gem respond?”), paste the full workflow for that skill:
   - **Prioritization:** use [dex/prioritization/standalone/platforms/Gemini/Custom_Instructions.md](../dex/prioritization/standalone/platforms/Gemini/Custom_Instructions.md).
   - **Any other skill:** open the skill folder in this repo, copy the content of **SKILL.md** (and any key references), and paste into the Gem instructions. Shorten if needed for length limits.
4. Save. Use this Gem when you want that workflow (e.g. “I want to prioritize …”, “Help me run discovery …”).

---

## Option B: One “PM Assistant” Gem (all skills in one Gem)

1. Create a single Gem (e.g. “PM Assistant”).
2. In the Gem’s instructions, paste a **routing** block that lists skills and when to use them, then add abbreviated workflows for each (same idea as [ChatGPT.md](ChatGPT.md) Option B). Example:

   ```
   You are a PM assistant with several modes: prioritization, discovery, PRD, roadmap, feature decision, project health. When the user says what they need, run the matching workflow.

   ## Prioritization
   [paste short workflow]

   ## Discovery / PRD / …
   [paste short workflows]
   ```

3. Save and use this Gem for all PM tasks; start your message with the task (e.g. “Prioritize my backlog for Q2”, “Draft a PRD for …”).

---

## Option C: Personal instructions (global style only)

If your account has **Personal instructions** (Settings → Personal Intelligence → Instructions for Gemini), you can add a short line such as:

- “When I ask to prioritize, run a structured prioritization workflow: context → method choice → items → result. When I ask for discovery or PRD, follow the PM skill workflow for that topic.”

This does not load the full skill text; it only nudges Gemini to behave in a PM way. For full workflows, use Gems (Options A or B).

---

## Reference

- [Customize Gemini’s responses with your instructions](https://support.google.com/gemini/answer/16598625)
- [Tips for creating custom Gems](https://support.google.com/gemini/answer/15235603)
