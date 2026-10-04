# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Qué es este workspace

Sistema operativo de vida de Felipe Fajardo. No es un proyecto de software convencional — es un sistema de documentos estructurados que integra todas las áreas de vida de manera estratégica, más un conjunto de herramientas técnicas para potenciarlas.

---

## ROUTING POR PALABRA CLAVE

Cuando el usuario mencione una de estas palabras al inicio de la sesión, leer inmediatamente el archivo indicado antes de responder:

| Palabra clave | Archivo a leer primero |
|---|---|
| `cimientos` / `coaching` / `clientes` | `cimientos/INSTRUCCIONES.md` |
| `ultimate` / `deporte` / `entrenamiento` / `hombro` | `ultimate/INSTRUCCIONES.md` |
| `clarita` / `inquilinos` / `marketplace` / `coliving` | Sugerir la skill `/clarita`, o leer `finanzas/clarita/ficha_inmueble.md` + `interesados.md` |
| `finanzas` / `plata` / `bienes raíces` / `propiedad` / `apicalá` | `finanzas/INSTRUCCIONES.md` |
| `estudios` / `aprendizaje` / `ruta` | `estudios/INSTRUCCIONES.md` |
| `vida` / `revisión` / `quincenal` / `prioridades` | `vida/identidad_vision.md` + `vida/prioridades_Q4_2026.md` + `vida/registro_revisiones.md` |
| (sin keyword) | Explicar el sistema y preguntar en qué área trabajamos hoy |

Cada `INSTRUCCIONES.md` de subproyecto especifica qué archivos adicionales leer para tener contexto completo.

---

## Estructura del workspace

```
Proyecto de vida/
├── CLAUDE.md                    ← Este archivo (router + reglas globales)
├── _perfil/
│   ├── perfil_felipe.md         ← Fuente única de identidad, valores, características
│   └── manual_operativo.md      ← Sesgos, filtros de identidad, restricciones activas (para el Consejero)
├── vida/                        ← Proyecto paraguas
│   ├── identidad_vision.md      ← Visión a 10 años por área
│   ├── prioridades_Q4_2026.md   ← Prioridades activas (actualizar cada trimestre; Q2/Q3 = histórico)
│   ├── estado_actual.md         ← Snapshot vivo de todos los subproyectos (actualizar con cada cambio)
│   └── registro_revisiones.md  ← Log quincenal acumulativo — solo agregar, nunca borrar
├── cimientos/                   ← Subproyecto: programa de coaching de hábitos
│   ├── INSTRUCCIONES.md
│   └── app/                     ← Tracker standalone (React/TS/Vite)
├── ultimate/                    ← Subproyecto: entrenamiento y rendimiento atlético
│   └── INSTRUCCIONES.md
├── finanzas/                    ← Subproyecto: finanzas personales y bienes raíces
│   └── INSTRUCCIONES.md
└── estudios/                    ← Subproyecto: rutas de aprendizaje
    └── INSTRUCCIONES.md
```

---

## Comportamiento global de Claude

- **Análisis directo y honesto.** Felipe prefiere análisis real sobre validación. Si algo no tiene sentido, decirlo.
- **Coherencia estratégica.** Las prioridades activas están en `vida/prioridades_Q4_2026.md`. Señalar cuando una petición se desvía de ellas.
- **Proponer antes de modificar.** Ante cualquier cambio en documentos estructurales, proponer el texto nuevo antes de escribirlo.
- **No asumir — preguntar.** Si hay ambigüedad sobre qué documento actualizar o en qué área cae algo, preguntar primero.
- **Perspectiva integradora.** Este workspace ve la vida completa. Las decisiones en un área afectan las demás.
- **Documentación continua.** En cualquier sesión donde surja información nueva, una decisión tomada, o un cambio de estado relevante al sistema de vida, proponer concretamente qué archivo actualizar y con qué texto. No esperar a que Felipe lo pida — señalarlo en el momento en que aparece.

## Regla de documentos estables vs actualizables

| Tipo | Ejemplos | Criterio de actualización |
|---|---|---|
| **Estables** | `_perfil/perfil_felipe.md`, `vida/identidad_vision.md` | Solo ante cambios trascendentales de identidad/visión |
| **Trimestrales** | `vida/prioridades_Q4_2026.md` | Cada trimestre o ante cambio mayor de circunstancias |
| **Acumulativos** | `vida/registro_revisiones.md`, `ultimate/checkins.md`, `ultimate/registro_metricas.md` | Agregar entradas, nunca borrar |
| **Vivos** | `vida/estado_actual.md`, todos los demás archivos de subproyectos | Actualizar cuando cambia el estado real |

---

## Cadencia del sistema

| Frecuencia | Qué se hace |
|---|---|
| Quincenal | Revisión general: estado de cada área + nueva entrada en `vida/registro_revisiones.md` |
| Trimestral | Crear `vida/prioridades_QN_AAAA.md` del nuevo trimestre (el anterior queda como histórico) + actualizar las referencias en este archivo, en las `INSTRUCCIONES.md` y en `.claude/commands/consejero.md` + evaluar avance de metas |
| Ante cambio trascendental | Actualizar `_perfil/perfil_felipe.md` y/o `vida/identidad_vision.md` |
