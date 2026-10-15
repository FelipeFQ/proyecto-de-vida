# INSTRUCCIONES — Proyecto Finanzas e Inversiones
*Cómo opera Claude en este subproyecto*

---

## Activación

Este contexto se activa cuando el usuario menciona: `finanzas`, `plata`, `bienes raíces`, `propiedad`, `apicalá`, `remodelación`, `inquilinos`, `deuda`, `inversión`, `flujo de caja`, `clarita`, `marketplace`, `coliving`.

Archivos a leer al inicio de cada sesión:
1. Este archivo
2. `finanzas/finanzas_personales.md` — situación de caja actual
3. `finanzas/metas_inversiones.md` — prioridades y metas financieras activas

Archivos adicionales según el tema:
- Propiedad abuelos / remodelación: `finanzas/administracion_propiedad.md`
- Venta Carmen de Apicalá / comisiones: `finanzas/comercializacion_inmuebles.md`
- Análisis o cálculos: `finanzas/herramientas_financieras.md`
- Operación del coliving (interesados, inquilinos, marketing, contrato): usar la skill `/clarita` → `finanzas/clarita/`

---

## Propósito del subproyecto

Gestionar ingresos, gastos, deudas e inversiones inmobiliarias de Felipe con criterio estratégico. Tres pilares activos:

1. **Defensivo:** Ingresos actuales (comisión de administración La Clarita en transición + coaching en construcción)
2. **Ofensivo:** La Clarita en llenado → comisión de Felipe del 25% del neto desde nov 2026 (~$1.2M/mes con 6/6 hab) + comisión Carmen de Apicalá ($6–7.5M)
3. **Expansivo (futuro):** Adquirir propiedad propia para arriendo una vez que pilares 1 y 2 estén consolidados

---

## Documentos del subproyecto

| Archivo | Carácter | Contenido |
|---|---|---|
| `finanzas_personales.md` | Vivo | Ingresos, gastos fijos, deuda, flujo neto actual |
| `administracion_propiedad.md` | Vivo | Arrendamiento actual, proyecto remodelación, proyecciones |
| `comercializacion_inmuebles.md` | Vivo | Venta Carmen de Apicalá, estado gestión, comisión proyectada |
| `herramientas_financieras.md` | Referencia | Inventario de plantillas disponibles en Google Drive |
| `metas_inversiones.md` | Trimestral | Prioridades Q2 2026, metas ingreso 12 meses, plan pago deuda |
| `herramientas_tbr/` | Referencia | Plantillas .xlsx del Taller de Bienes Raíces |
| `clarita/` | Vivo | Coliving La Clarita: ficha_inmueble, interesados, inquilinos, marketing, contrato borrador, rendición (build_clarita.py → xlsx) |
| `cotizaciones/` | Archivo | PDFs de cotizaciones de remodelación |

---

## Comportamiento de Claude en este contexto

- **Análisis sobre validación.** Si los números no cuadran, decirlo directamente.
- **Prioridad Q4 2026** (`vida/prioridades_Q4_2026.md`): La Clarita es prioridad 1 (≥4/6 hab al 31 dic + comisión formalizada antes del 31 oct); Carmen de Apicalá es prioridad 3 (evento puntual). Vigilar la alarma de caja: colchón <$1.5M adelanta el gatillo del plan B.
- **Decisiones de inversión:** No recomendar inversiones que requieran capital que Felipe no tiene. El horizonte de inversión agresiva (CDTs, portafolio propio) viene después de que el coaching genere ingresos estables.
- **Deuda:** pagaré familiar único de $33M (firmado 15 jul 2026; absorbió la TC y la deuda familiar de $10M). Gracia hasta el 15 ago 2027, luego 12 cuotas de ~$3.3M. Candidatas para abonar: comisión de Carmen de Apicalá o excedentes.
- **Herramientas:** Si se necesita un cálculo (rentabilidad, préstamo, flujo), señalar cuál plantilla de `herramientas_tbr/` aplica.

---

## KPIs a monitorear

| Métrica | Estado actual | Meta |
|---|---|---|
| Flujo de caja neto | Negativo: ~$300k de ingreso vs ~$660k fijos + transporte | Positivo sostenido cuando coaching escale |
| Ingreso coaching | $300k/mes (solo Juana) | 3 clientes al 31 dic 2026 · 8 al 30 abr 2027 (gatillo) |
| Clientes coaching | 1 activo (Juana) | ≥4 al 31 ene 2027 · 8 al 30 abr 2027 |
| Estado venta Carmen de Apicalá | Precio único $220M. Video grabado (8–10 oct); letrero lo instala Felipe en persona | Anuncio reactivado con video + letrero instalado en Q4 |
| Estado La Clarita | ✅ Obra pagada ($124.7M). 1/6 arrendadas; Hab 2 desde 24 oct; Hab 3 se compra al firmar Hab 2 | ≥4/6 al 31 dic 2026 (aspiración 6/6) |
| Deuda familiar | Pagaré $33M, gracia hasta 15 ago 2027 | Cuotas de ~$3.3M desde ago 2027 |
