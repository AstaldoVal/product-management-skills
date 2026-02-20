# Using PM skills in Manus

Manus supports **Skills**: you can upload a folder that contains **SKILL.md** (and optional reference files). The skill then appears in chat (e.g. via `/` or “use prioritization skill”). No need to paste long instructions manually.

---

## Install skills from this pack

1. Clone or download this repository (and run `./update.sh` if you want the latest from upstream sources).
2. In Manus, open **Skills** (main menu).
3. **Upload a skill:** choose **Upload** and select:
   - A **folder** that contains `SKILL.md` (e.g. `dex/prioritization/standalone/`, or `deanpeters/discovery-process/`, or `dex/feature-decision/`), or
   - A **.zip** of that folder.
4. If Manus asks for a single file, use **SKILL.md** from the skill folder (it contains the full workflow; you can attach other files in chat later if needed).
5. Repeat for each skill you want (prioritization, discovery, PRD, roadmap, feature-decision, project-health, etc.).

After upload, each skill is available in conversation (e.g. type `/` and pick the skill name).

---

## Which folders to upload

Each of these is a valid skill folder (contains `SKILL.md`):

- **Prioritization (standalone):** `dex/prioritization/standalone/` — use in any assistant; no Dex dependency.
- **Other dex skills:** `dex/feature-decision/`, `dex/roadmap/`, `dex/product-brief/`, `dex/project-health/`, `dex/customer-intel/`.
- **From other sources (after `./update.sh`):** e.g. `deanpeters/discovery-process/`, `deanpeters/deliver-prd/`, `pop/`, `pmprompt/`, `ralph/`, `bmad/` (see main [README](../README.md) and [SOURCES.md](../SOURCES.md)).

Upload the **folder** that contains `SKILL.md`, not the parent `pm/` or `dex/` root, so Manus sees one skill per upload.

---

## Prioritization skill (step-by-step)

Detailed steps for the prioritization skill only: [dex/prioritization/standalone/platforms/Manus/README.md](../dex/prioritization/standalone/platforms/Manus/README.md).

---

## If upload is not available

- Paste the content of the skill’s **SKILL.md** or playbook (e.g. Prioritization_Playbook.md) into the chat and ask the assistant to follow it.
- Or use the one-shot prompt from that skill’s README in your first message.
