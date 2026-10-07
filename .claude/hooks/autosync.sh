#!/usr/bin/env bash
# Stop hook: si quedan cambios sin commit o commits sin push, no deja cerrar el turno
# hasta que Claude documente, haga commit y suba a main. Corre igual en local y en la nube.
input=$(cat)
case "$input" in *'"stop_hook_active":true'*|*'"stop_hook_active": true'*) exit 0 ;; esac
cd "${CLAUDE_PROJECT_DIR:-.}" 2>/dev/null || exit 0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0
dirty=$(git status --porcelain 2>/dev/null)
unsynced=""
git merge-base --is-ancestor HEAD origin/main 2>/dev/null || unsynced=1
if [ -n "$dirty" ] || [ -n "$unsynced" ]; then
  cat <<'JSON'
{"decision":"block","reason":"Sincronización automática: hay cambios del sistema de vida sin subir a main (archivos sin commit, commits sin push, o la sesión está en una rama distinta de main). Antes de cerrar: (1) revisa si en esta sesión hubo decisiones, cambios de estado o formas de operar sin documentar y aplícalos en el archivo correcto (si son cambios nuevos que Felipe no ha aprobado, propónlos con [DOC] y no los escribas); (2) haz commit de lo aprobado y push a main (si estás en otra rama, intégrala a main y súbela). Si el push falla, dilo explícitamente."}
JSON
fi
exit 0
