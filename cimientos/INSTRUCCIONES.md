# INSTRUCCIONES — Proyecto Cimientos
*Cómo opera Claude en este subproyecto*

---

## Activación

Este contexto se activa cuando el usuario menciona: `cimientos`, `coaching`, `clientes`, `método`, `programa`, `tracker`, `hábitos`.

Archivos a leer al inicio de cada sesión (según el tipo de trabajo):

**Sesión estratégica (negocio, captación, clientes):**
1. Este archivo
2. `cimientos/NEGOCIO.md`
3. `cimientos/CAPTACION.md`
4. `_perfil/perfil_felipe.md` — sección "Decisiones estratégicas activas"
5. `vida/prioridades_Q4_2026.md` — prioridades activas del trimestre (Q2 y Q3 cerrados, se conservan como histórico)

**Sesión de metodología (sesiones, protocolos, fases):**
1. Este archivo
2. `cimientos/SERVICIO.md`
3. `cimientos/FILOSOFIA.md`

**Sesión técnica (tracker app):**
1. Este archivo
2. `cimientos/app/` — código fuente (la app está completa, sesiones técnicas son mejoras o bugs)

**Sesión de materiales cliente (entregables, plantillas):**
1. Este archivo
2. `cimientos/BIBLIOTECA.md`
3. `cimientos/SERVICIO.md` — para contexto de en qué fase se usa cada material

---

## Propósito del subproyecto

**Método Cimientos** es un programa de coaching de hábitos basado en neurociencia, operado por Felipe con cupo máximo de 4–5 clientes recurrentes. Tiene 6 fases (0–5), duración 4–8 meses por cliente, precio $300.000 COP/mes.

Meta del negocio: **gatillo (2026-10-03): 8 clientes activos al 30 abr 2027**; si no, se activa la búsqueda de empleo remoto. Lectura intermedia 31 ene 2027 (≥4). Meta Q4: 3 clientes pagando al 31 dic. Reemplaza al umbral original de 10 clientes en 12 meses desde abril 2026.

---

## Documentos del subproyecto

| Archivo | Carácter | Contenido |
|---|---|---|
| `FILOSOFIA.md` | Estable | Identidad del programa, cliente ideal, diferenciador |
| `SERVICIO.md` | Estable-vivo | Metodología completa: fases 0–5, protocolos, estructura de sesión |
| `NEGOCIO.md` | Vivo | Precio, modelo, operación, métricas |
| `CAPTACION.md` | Vivo | Canales, lenguaje, protocolo de sesión diagnóstico |
| `BIBLIOTECA.md` | En construcción | Entregables del programa para clientes (plantillas, protocolos) |
| `app/` | Operativo ✅ | Tracker standalone completo — React 18/TS/Vite/Tailwind, puerto 5173 |

---

## Comportamiento de Claude en este contexto

- **Para trabajo de negocio/captación:** actualizado 2026-08-28 — Luisa terminó (no-fit), solo Juana activa ($300k/mes tras aumento ejecutado). Captación presencial lleva tres ventanas consecutivas sin ejecución (mayo, jul-ago, sept en curso). Meta de largo plazo sin cambio: 10 clientes en 12 meses desde abril 2026 — hoy en 1, a 16 meses de arrancar el conteo. Evaluar cualquier decisión contra la ventana operativa Tenjo (retorno pospuesto a principios de septiembre).
- **Para trabajo de metodología:** el programa opera desde neurociencia aplicada — no hacer sugerencias que rompan la lógica de las fases ni la filosofía de experimentación consciente.
- **Para trabajo técnico (tracker):** la app está completa (v1). Stack: React 18 + TypeScript + Tailwind + Vite. Sin backend. localStorage (`cimientos_v1`). UI en español (Colombia). Módulos: Inicio (dashboard), Clientes (con tabs Registro/Sesión/Mensual/Historial/Progresión/Perfil), Captación (con módulo de Sesión Diagnóstico), Negocio, Configuración. Campos nuevos en `Client`: `archiveReason`, `archiveNote`, `archivedAt`. Campo nuevo en `Habit`: `consolidatedDate`. Nuevo estado en `AppState`: `monthlySummaries`. Campo nuevo en `Prospect`: `diagnosticSession?: DiagnosticSession`. Tipos nuevos: `FitSignal`, `CheckState`, `FeedbackReaction`, `DiagnosticSession`. Componente nuevo: `src/components/captacion/DiagnosticSessionModal.tsx`. Modal base (`Modal.tsx`) con scroll: `max-h-[90vh]` + `overflow-y-auto` en el contenido. Sesión diagnóstico: auto-guarda borrador en `cimientos_diagnostic_draft_<prospectName>` — se limpia al guardar o cerrar explícitamente; sobrevive cierre accidental del modal.
- **Para materiales de cliente:** cada entregable debe tener contexto de: a quién va, en qué fase se entrega, propósito específico.
- Señalar cuando una decisión compromete la calidad del servicio por escalar antes de tiempo.

---

## Métricas de seguimiento activas

- Clientes activos: 1 — Juana (miércoles, $300k/mes, aumento ejecutado desde $170k)
- Cliente Felipe (FSP): ❌ no-fit confirmado (2026-05-06). Causa: resistencia estructural y motivación intelectual sin dolor sentido real.
- Cliente Luisa: ❌ no-fit confirmado (~agosto 2026). Causa: incompatibilidad entre objetivo declarado y resistencia a modificar la causa raíz (rutina laboral/sueño). Ver detalle en `vida/estado_actual.md`.
- Ingreso mensual recurrente: $300k/mes
- Meta Q2 coaching (histórica): ✅ CUMPLIDA en su momento — 2 clientes activos (Juana + Luisa). Desde entonces bajó a 1.
- Próximo hito: 3 clientes al 31 dic 2026 → ≥4 al 31 ene 2027 → 8 al 30 abr 2027 (gatillo). Captación: 4 ventanas consecutivas en 0 (may, jul-ago, sep). Canal Q4: charlas en salón social → diagnóstico (ver `CAPTACION.md`, Canal 2).
