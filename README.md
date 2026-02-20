# Product Management Skills

A single collection of **product manager and product owner** skills for AI assistants, aggregated from several open-source repositories. Use it in **Cursor**, **Claude Code**, or any environment that loads skills from a folder.

All original sources are linked below. This repo only curates and syncs PM-related skills in one place.

---

## Installation

### Cursor

1. Clone this repository (or add it as a submodule) into your project or a global skills directory that Cursor reads:
   ```bash
   git clone https://github.com/AstaldoVal/product-management-skills.git
   cd product-management-skills
   ```
2. **Optional — pull latest skills from source repos:** run the update script so that `deanpeters/`, `pop/`, `pmprompt/`, `alirezarezvani/`, `ralph/`, and `bmad/` are filled from the upstream repositories:
   ```bash
   chmod +x update.sh
   ./update.sh
   ```
   This creates an `External/` folder (git-ignored) with clones and copies only the PM skills into the folders above.

3. **Point Cursor at this folder:**  
   - If your project uses a path like `.cursor/skills/` or `.claude/skills/`, copy or symlink the contents of this repo into a subfolder, e.g. `.claude/skills/pm/` or `.cursor/skills/pm/`, so that each skill subfolder (e.g. `deanpeters/`, `pop/`, `pmprompt/`) is visible as skills.  
   - Alternatively, configure your Cursor/Claude setup to use `product-management-skills` as the root skills directory; then the subfolders `deanpeters/`, `pop/`, `pmprompt/`, etc. are the skill roots.

4. Restart Cursor (or reload the window) so skills are picked up. Invoke skills by name, e.g. `/product-brief`, `/discovery-process`, `/deliver-prd`, `/pmprompt-jobs-to-be-done`.

### Claude Code (Claude desktop / code agent)

1. Clone the repo and run the update script as above.
2. Copy or symlink this folder (or its contents) into Claude Code’s skills directory. Typical locations:
   - **macOS/Linux:** `~/.claude/skills/pm/` — copy the contents of this repo into `~/.claude/skills/pm/` (so that `~/.claude/skills/pm/deanpeters/`, `~/.claude/skills/pm/pop/`, etc. exist).
   - Or set your project’s vault root and place the repo at `<vault>/.claude/skills/pm/`.
3. Restart Claude Code. Use skills via `/skill-name` (e.g. `/product-brief`, `/prioritization`).

### Other providers

If your tool expects a flat list of skill folders or a single skills root, use this repo as that root: each of `deanpeters/`, `pop/`, `pmprompt/`, `alirezarezvani/`, `ralph/`, and (after running `./update.sh`) `bmad/` contains one or more skills. Copy or symlink the folders your provider expects.

---

## Suggesting BMAD with other PM skills (any assistant)

If you use an assistant that supports **custom instructions** or a **system prompt** (Cursor, Claude Code, Manus, ChatGPT Custom Instructions, Gemini instructions, etc.), add the following so it suggests BMAD when the user’s task fits it (project init, structured PRD/tech-spec, phase-based workflow, next steps). Paste into your assistant’s instructions or system prompt:

```
When the user has a product management task (PRD, prioritization, roadmap, discovery, project initialization, tech-spec, workflow status), consider both the PM skills in this pack and BMAD. If the task fits BMAD (project initialization, structured PRD/tech-spec, phase-based workflow, "what to do next"), suggest: /workflow-init, /prd, /tech-spec, or /workflow-status alongside or instead of other PM skills. Treat BMAD as part of the same set, not as an afterthought. BMAD commands live in commands/bmad/ (after running ./update.sh).
```

This way anyone who installs this repo (in Cursor, another IDE, or without Dex) can get consistent behavior: BMAD is offered when relevant, together with other PM skills.

---

## Using these skills in ChatGPT, Gemini, Grok, and Manus

The same PM workflows can be used in **ChatGPT** (Custom GPTs), **Google Gemini** (Gems or Personal instructions), **Grok** (Customize Grok / Workspaces), and **Manus** (Skills upload). Each platform has different ways to load instructions; we provide step-by-step guides and ready-to-paste text where applicable.

- **Overview and links:** [platforms/README.md](platforms/README.md)
- **ChatGPT:** [platforms/ChatGPT.md](platforms/ChatGPT.md)
- **Gemini:** [platforms/Gemini.md](platforms/Gemini.md)
- **Grok:** [platforms/Grok.md](platforms/Grok.md)
- **Manus:** [platforms/Manus.md](platforms/Manus.md)

The **Prioritization** skill already has copy-paste instructions for all of these: see [dex/prioritization/standalone/README.md](dex/prioritization/standalone/README.md) and the `platforms/` folder inside it.

---

## Updating skills from sources

To refresh skills from the original repositories (without manually cloning each repo):

```bash
./update.sh
```

The script clones missing repos into `External/`, runs `git pull` in each, and copies only the PM-related skills into `deanpeters/`, `pop/`, `pmprompt/`, `alirezarezvani/`, `ralph/`, and `bmad/` (and `commands/bmad/`, `config/bmad/` for BMAD). The `External/` directory is listed in `.gitignore` and is not part of this repo.

---

## Original repositories and attribution

Every skill in this collection comes from one of the following projects. Please follow their licenses and give credit when you use or redistribute.

| Folder / source | Original repository | License |
|-----------------|---------------------|--------|
| **deanpeters/** | [deanpeters/Product-Manager-Skills](https://github.com/deanpeters/Product-Manager-Skills) | CC BY-NC-SA 4.0 |
| **pop/** | [product-on-purpose/pm-skills](https://github.com/product-on-purpose/pm-skills) (Triple Diamond) | Apache-2.0 |
| **pmprompt/** | [pmprompt/claude-plugin-product-management](https://github.com/pmprompt/claude-plugin-product-management) | MIT |
| **bmad/** | [aj-geddes/claude-code-bmad-skills](https://github.com/aj-geddes/claude-code-bmad-skills) (BMAD Method) | See repo |
| **alirezarezvani/** | [alirezarezvani/claude-skills](https://github.com/alirezarezvani/claude-skills) (product-team) | See repo |
| **ralph/** | [snarktank/ralph](https://github.com/snarktank/ralph) | See repo |
| **dex/** | Native/original skills (product-brief, prioritization, roadmap, feature-decision, project-health, customer-intel) | Included in this repo |

Detailed paths and update behavior per source are in [SOURCES.md](SOURCES.md).

This repository does not replace the originals; it only aggregates PM skills for convenience and provides a single `update.sh` to pull updates from them.

---

## Structure after `./update.sh`

- `deanpeters/` — skills from Product-Manager-Skills  
- `pop/` — discover-*, define-*, develop-*, deliver-*, measure-*, iterate-* (pm-skills)  
- `pmprompt/` — pmprompt-* (claude-plugin-product-management)  
- `alirezarezvani/` — product-manager-toolkit, agile-product-owner, product-strategist, ux-researcher-designer, ui-design-system  
- `ralph/` — ralph-prd, ralph  
- `bmad/` — BMAD Method skills (core, bmm, bmb, cis)  
- `commands/bmad/` — BMAD workflow commands  
- `config/bmad/` — BMAD config and templates  
- `dex/` — native PM skills (shipped in this repo)

---

## License

Each source folder is under its original project’s license. See the table above and the repositories linked there. This aggregation and the `update.sh` script are provided as-is for easier installation and updates.
