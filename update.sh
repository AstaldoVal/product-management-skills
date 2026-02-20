#!/usr/bin/env bash
# Обновление PM-скиллов из репозиториев-источников.
# Работает в двух режимах:
# 1) Внутри Dex vault: клоны в 06-Resources/External, BMAD → .claude/skills|commands|config/bmad
# 2) Отдельный репо: клоны в ./External, BMAD → ./bmad, ./commands/bmad, ./config/bmad
# Запуск: из корня папки со скиллами — ./update.sh (или из корня vault — ./.claude/skills/pm/update.sh)

set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PM_ROOT="$SCRIPT_DIR"

# Режим: внутри Dex vault или отдельный репозиторий
POSSIBLE_VAULT="$(cd "$SCRIPT_DIR/../../.." 2>/dev/null && pwd)"
if [[ -f "${POSSIBLE_VAULT}/CLAUDE.md" ]] && [[ -d "${POSSIBLE_VAULT}/.claude/skills/pm" ]]; then
  VAULT_ROOT="$POSSIBLE_VAULT"
  EXTERNAL="${VAULT_ROOT}/06-Resources/External"
  STANDALONE=0
else
  VAULT_ROOT="$PM_ROOT"
  EXTERNAL="${PM_ROOT}/External"
  STANDALONE=1
fi

mkdir -p "$EXTERNAL"
mkdir -p "$PM_ROOT"

# --- deanpeters/Product-Manager-Skills ---
DEANPETERS_REPO="https://github.com/deanpeters/Product-Manager-Skills.git"
DEANPETERS_DIR="${EXTERNAL}/Product-Manager-Skills"
if [[ ! -d "$DEANPETERS_DIR" ]]; then
  git clone --depth 1 "$DEANPETERS_REPO" "$DEANPETERS_DIR"
fi
(cd "$DEANPETERS_DIR" && git pull --depth 1 || true)
mkdir -p "${PM_ROOT}/deanpeters"
for d in "$DEANPETERS_DIR"/skills/*/; do
  [[ -d "$d" ]] || continue
  name=$(basename "$d")
  rm -rf "${PM_ROOT}/deanpeters/${name}"
  cp -R "$d" "${PM_ROOT}/deanpeters/${name}"
done
echo "Updated deanpeters -> deanpeters/"

# --- product-on-purpose/pm-skills ---
POP_REPO="https://github.com/product-on-purpose/pm-skills.git"
POP_DIR="${EXTERNAL}/pm-skills"
if [[ ! -d "$POP_DIR" ]]; then
  git clone --depth 1 "$POP_REPO" "$POP_DIR"
fi
(cd "$POP_DIR" && git pull --depth 1 || true)
mkdir -p "${PM_ROOT}/pop"
for d in "$POP_DIR"/skills/*/; do
  [[ -d "$d" ]] || continue
  name=$(basename "$d")
  rm -rf "${PM_ROOT}/pop/${name}"
  cp -R "$d" "${PM_ROOT}/pop/${name}"
done
echo "Updated pop -> pop/"

# --- pmprompt/claude-plugin-product-management ---
PMPROMPT_REPO="https://github.com/pmprompt/claude-plugin-product-management.git"
PMPROMPT_DIR="${EXTERNAL}/claude-plugin-product-management"
if [[ ! -d "$PMPROMPT_DIR" ]]; then
  git clone --depth 1 "$PMPROMPT_REPO" "$PMPROMPT_DIR"
fi
(cd "$PMPROMPT_DIR" && git pull --depth 1 || true)
mkdir -p "${PM_ROOT}/pmprompt"
for d in "$PMPROMPT_DIR"/skills/*/; do
  [[ -d "$d" ]] || continue
  name=$(basename "$d")
  dest="${PM_ROOT}/pmprompt/pmprompt-${name}"
  rm -rf "$dest"
  mkdir -p "$dest"
  cp -R "$d"* "$dest/"
done
echo "Updated pmprompt -> pmprompt/"

# --- alirezarezvani/claude-skills (product-team) ---
ALI_DIR="${EXTERNAL}/claude-skills"
if [[ ! -d "$ALI_DIR" ]]; then
  git clone --depth 1 "https://github.com/alirezarezvani/claude-skills.git" "$ALI_DIR" 2>/dev/null || true
fi
if [[ -d "$ALI_DIR" ]]; then
  (cd "$ALI_DIR" && git pull --depth 1 || true)
  mkdir -p "${PM_ROOT}/alirezarezvani"
  for d in "$ALI_DIR"/product-team/*/; do
    [[ -d "$d" ]] || continue
    name=$(basename "$d")
    rm -rf "${PM_ROOT}/alirezarezvani/${name}"
    cp -R "$d" "${PM_ROOT}/alirezarezvani/${name}"
  done
  echo "Updated alirezarezvani -> alirezarezvani/"
else
  echo "Skip alirezarezvani: clone manually to $ALI_DIR if needed"
fi

# --- snarktank/ralph ---
RALPH_REPO="https://github.com/snarktank/ralph.git"
RALPH_DIR="${EXTERNAL}/ralph"
if [[ ! -d "$RALPH_DIR" ]]; then
  git clone --depth 1 "$RALPH_REPO" "$RALPH_DIR" 2>/dev/null || true
fi
if [[ -d "$RALPH_DIR" ]]; then
  (cd "$RALPH_DIR" && git pull --depth 1 || true)
  mkdir -p "${PM_ROOT}/ralph"
  [[ -d "$RALPH_DIR/skills/prd" ]] && { rm -rf "${PM_ROOT}/ralph/ralph-prd"; cp -R "$RALPH_DIR/skills/prd" "${PM_ROOT}/ralph/ralph-prd"; }
  [[ -d "$RALPH_DIR/skills/ralph" ]] && { rm -rf "${PM_ROOT}/ralph/ralph"; cp -R "$RALPH_DIR/skills/ralph" "${PM_ROOT}/ralph/ralph"; }
  echo "Updated ralph -> ralph/"
else
  echo "Skip ralph: clone manually to $RALPH_DIR if needed"
fi

# --- BMAD: aj-geddes/claude-code-bmad-skills ---
BMAD_REPO="https://github.com/aj-geddes/claude-code-bmad-skills.git"
BMAD_DIR="${EXTERNAL}/claude-code-bmad-skills"
BMAD_V6="${BMAD_DIR}/bmad-v6"
if [[ ! -d "$BMAD_DIR" ]]; then
  git clone --depth 1 "$BMAD_REPO" "$BMAD_DIR"
fi
(cd "$BMAD_DIR" && git pull --depth 1 || true)

if [[ $STANDALONE -eq 1 ]]; then
  # Отдельный репо: BMAD внутрь этой папки
  if [[ -d "$BMAD_V6/skills" ]]; then
    rm -rf "${PM_ROOT}/bmad"
    mkdir -p "${PM_ROOT}/bmad"
    for sub in "$BMAD_V6/skills"/*/; do
      [[ -d "$sub" ]] || continue
      cp -R "$sub" "${PM_ROOT}/bmad/"
    done
    echo "Updated BMAD skills -> bmad/"
  fi
  if [[ -d "$BMAD_V6/commands" ]]; then
    rm -rf "${PM_ROOT}/commands"
    mkdir -p "${PM_ROOT}/commands/bmad"
    cp "$BMAD_V6/commands"/*.md "${PM_ROOT}/commands/bmad/" 2>/dev/null || true
    echo "Updated BMAD commands -> commands/bmad/"
  fi
  if [[ -d "$BMAD_V6/config" ]] || [[ -f "$BMAD_V6/utils/helpers.md" ]]; then
    mkdir -p "${PM_ROOT}/config/bmad"
    [[ -d "$BMAD_V6/config" ]] && cp -R "$BMAD_V6/config"/* "${PM_ROOT}/config/bmad/" 2>/dev/null || true
    [[ -f "$BMAD_V6/utils/helpers.md" ]] && cp "$BMAD_V6/utils/helpers.md" "${PM_ROOT}/config/bmad/" 2>/dev/null || true
    echo "Updated BMAD config -> config/bmad/"
  fi
else
  # Dex vault: BMAD в .claude/skills|commands|config/bmad
  if [[ -d "$BMAD_V6/skills" ]]; then
    rm -rf "${VAULT_ROOT}/.claude/skills/bmad"
    mkdir -p "${VAULT_ROOT}/.claude/skills/bmad"
    for sub in "$BMAD_V6/skills"/*/; do
      [[ -d "$sub" ]] || continue
      cp -R "$sub" "${VAULT_ROOT}/.claude/skills/bmad/"
    done
    echo "Updated BMAD skills -> .claude/skills/bmad/"
  fi
  if [[ -d "$BMAD_V6/commands" ]]; then
    rm -rf "${VAULT_ROOT}/.claude/commands/bmad"
    mkdir -p "${VAULT_ROOT}/.claude/commands/bmad"
    cp "$BMAD_V6/commands"/*.md "${VAULT_ROOT}/.claude/commands/bmad/" 2>/dev/null || true
    echo "Updated BMAD commands -> .claude/commands/bmad/"
  fi
  if [[ -d "$BMAD_V6/config" ]] || [[ -f "$BMAD_V6/utils/helpers.md" ]]; then
    mkdir -p "${VAULT_ROOT}/.claude/config/bmad"
    [[ -d "$BMAD_V6/config" ]] && cp -R "$BMAD_V6/config"/* "${VAULT_ROOT}/.claude/config/bmad/" 2>/dev/null || true
    [[ -f "$BMAD_V6/utils/helpers.md" ]] && cp "$BMAD_V6/utils/helpers.md" "${VAULT_ROOT}/.claude/config/bmad/" 2>/dev/null || true
    echo "Updated BMAD config -> .claude/config/bmad/"
  fi
fi

echo "PM skills update done."
