# Sources and attribution

All skills in this repository are taken from the following upstream projects. This document lists each source, its license, and how `update.sh` syncs from it.

---

## 1. dex/ (native)

**Source:** Original skills bundled in this repo (product-brief, prioritization, roadmap, feature-decision, project-health, customer-intel).  
**Location:** `dex/`  
No upstream repo; updated only when this repo is updated.

---

## 2. deanpeters/Product-Manager-Skills

**Repository:** https://github.com/deanpeters/Product-Manager-Skills  
**License:** CC BY-NC-SA 4.0  
**Local clone (used by update.sh):** `External/Product-Manager-Skills`  
**Target folder:** `deanpeters/<skill-name>/`

Skills are copied from `skills/*/` in the upstream repo. Run `./update.sh` to refresh.

---

## 3. product-on-purpose/pm-skills

**Repository:** https://github.com/product-on-purpose/pm-skills  
**License:** Apache-2.0  
**Local clone:** `External/pm-skills`  
**Target folder:** `pop/<skill-name>/`

Triple Diamond: discover-*, define-*, develop-*, deliver-*, measure-*, iterate-*. Run `./update.sh` to refresh.

---

## 4. pmprompt/claude-plugin-product-management

**Repository:** https://github.com/pmprompt/claude-plugin-product-management  
**License:** MIT  
**Local clone:** `External/claude-plugin-product-management`  
**Target folder:** `pmprompt/pmprompt-<name>/`

All skills have the `pmprompt-` prefix. Run `./update.sh` to refresh.

---

## 5. aj-geddes/claude-code-bmad-skills (BMAD)

**Repository:** https://github.com/aj-geddes/claude-code-bmad-skills  
**Local clone:** `External/claude-code-bmad-skills`  
**Target folders:** `bmad/`, `commands/bmad/`, `config/bmad/` (skills, slash commands, and config from `bmad-v6/`)

Run `./update.sh` to refresh. See the upstream repo for license and BMAD Method documentation.

---

## 6. alirezarezvani/claude-skills (product-team)

**Repository:** https://github.com/alirezarezvani/claude-skills  
**Local clone:** `External/claude-skills` (created by update.sh if missing)  
**Target folder:** `alirezarezvani/<name>/`

Skills come from the `product-team/` subfolder: product-manager-toolkit, agile-product-owner, product-strategist, ux-researcher-designer, ui-design-system. Run `./update.sh` to refresh.

---

## 7. snarktank/ralph

**Repository:** https://github.com/snarktank/ralph  
**Local clone:** `External/ralph` (created by update.sh if missing)  
**Target folder:** `ralph/` (ralph-prd, ralph)

Mapping: `skills/prd` → `ralph/ralph-prd`, `skills/ralph` → `ralph/ralph`. Run `./update.sh` to refresh.

---

## Updating all sources

From the root of this repository:

```bash
./update.sh
```

The script clones any missing upstream repos into `External/`, runs `git pull` in each, and copies only the PM-related skills into the folders above. `External/` is in `.gitignore` and is not committed.
