# Especificaciones técnicas — Cimientos Coach Tracker
*Documento para desarrollo con Claude Code*

---

## 1. Contexto del proyecto

**Método Cimientos** es un programa de coaching de hábitos basado en neurociencia, operado por un coach individual (Felipe) con un cupo máximo de 4–5 clientes recurrentes. El programa tiene 6 fases (0–5) con duración total de 4 a 8 meses por cliente.

Esta herramienta es el panel de seguimiento interno del coach. No es una app de cliente — es una herramienta de uso exclusivo del coach para:

- Registrar diariamente el reporte de cada cliente (cumplimiento de hábitos, nivel de exploración, observaciones)
- Identificar patrones de resistencia, facilidad y factores externos semana a semana
- Llegar preparado a cada sesión semanal con una lectura consolidada del progreso

La herramienta existe actualmente como un widget de React embebido en Claude.ai. El objetivo de este documento es especificar su reconstrucción como una aplicación web standalone, con mejor usabilidad, interfaz más pulida y funcionalidades adicionales.

---

## 2. Stack tecnológico recomendado

- **Frontend:** React 18 + TypeScript
- **Estilos:** Tailwind CSS
- **Persistencia:** `localStorage` (sin backend, sin autenticación — uso individual en un solo dispositivo)
- **Exportación:** generación de PDF o texto plano desde el navegador (librería `jsPDF` o `html2canvas`)
- **Build:** Vite

No se requiere backend, base de datos ni autenticación. La aplicación es de uso local por un único usuario (el coach).

---

## 3. Modelo de datos

Toda la data se guarda en `localStorage` como JSON serializado.

### 3.1 Clientes

```typescript
interface Client {
  id: string;          // uuid generado al crear
  name: string;        // nombre editable
  phase: 0 | 1 | 2 | 3 | 4 | 5;  // fase actual del programa
  startDate: string;   // ISO date del inicio del programa
  habits: string[];    // lista de nombres de hábitos activos
}
```

### 3.2 Registro diario (grid)

```typescript
type Status = null | 'si' | 'parcial' | 'no';

interface DayCell {
  status: Status;       // cumplió, cumplió parcialmente, no cumplió, sin dato
  exploration: boolean; // fue más allá de la instrucción — exploró por cuenta propia
  note: string;         // observación libre del reporte de WhatsApp
}

// Estructura de almacenamiento:
// grid[clientId][weekKey][dayIndex][habitName] = DayCell
// weekKey formato: "2026-W17" (ISO 8601)
// dayIndex: 0 = lunes, 6 = domingo
type GridStore = Record<string, Record<string, Record<number, Record<string, DayCell>>>>;
```

### 3.3 Resumen semanal del coach

```typescript
interface WeeklySummary {
  progression: 'avanzó' | 'se mantuvo' | 'retrocedió' | null;
  mainResistance: string;   // mayor resistencia de la semana
  mainFacility: string;     // mayor facilidad de la semana
  externalFactors: string;  // personas, contextos o rutinas que facilitaron o dificultaron
  nextFocus: string;        // foco para la próxima semana
  sessionNotes: string;     // notas libres de la sesión (nuevo campo)
}

// Almacenamiento:
// summaries[clientId][weekKey] = WeeklySummary
type SummaryStore = Record<string, Record<string, WeeklySummary>>;
```

### 3.4 Alertas de seguimiento (nuevo)

```typescript
interface TrackingAlert {
  clientId: string;
  type: 'no_report' | 'regression_streak' | 'stagnation';
  triggeredAt: string;    // ISO timestamp
  weekKey: string;
  resolved: boolean;
}
```

---

## 4. Funcionalidades actuales (versión base en Claude.ai)

La versión actual hace lo siguiente:

- Selector de cliente con tabs (doble clic para renombrar)
- Navegación por semanas (← → + botón "Hoy")
- Tres pestañas por cliente: Registro / Resumen sesión / Hábitos
- **Registro:** grilla con hábitos en filas y días (Lun–Dom) en columnas. Cada celda permite: ciclar estado con clic (null → Sí → ½ → No → null), marcar exploración con un punto clickeable, agregar nota con un campo que se expande inline
- **Resumen sesión:** botones de progresión (avanzó / se mantuvo / retrocedió) + cuatro campos de texto libre (resistencia, facilidad, factores externos, foco próxima semana) + métricas calculadas automáticamente (% cumplimiento, día más difícil, total de exploraciones)
- **Hábitos:** lista editable por cliente, agregar y eliminar hábitos individualmente
- Persistencia entre sesiones vía Storage API de Claude
- Cálculo automático de: hábito con más fallos, hábito con más éxitos, día con más fallos, total de exploraciones

---

## 5. Mejoras a implementar

### 5.1 Usabilidad del grid (prioridad alta)

**Problema actual:** las celdas son pequeñas y el ciclo de estado con un solo clic no es intuitivo — el usuario no sabe en qué estado va a quedar antes de hacer clic.

**Solución propuesta:** al hacer clic en una celda, abrir un popover o pequeño panel contextual que muestre los tres estados posibles (Sí / Parcial / No) como botones separados, más el toggle de exploración y el campo de nota. El estado actual se muestra como activo. Cerrar al seleccionar o hacer clic fuera.

**Adicional:** en mobile, el popover debe convertirse en un bottom sheet que ocupe el ancho completo de la pantalla.

### 5.2 Vista de progresión histórica (prioridad alta)

**Problema actual:** solo se puede ver una semana a la vez. No hay manera de ver cómo ha evolucionado un cliente semana a semana sin navegar manualmente.

**Solución propuesta:** una cuarta pestaña llamada **"Progresión"** que muestre:

- **Heatmap por hábito:** una fila por hábito, con columnas que representan las últimas 8–12 semanas. Cada celda coloreada según el % de cumplimiento de esa semana (verde oscuro = 100%, rojo = 0%, gris = sin datos). Similar al heatmap de contribuciones de GitHub.
- **Gráfica de cumplimiento semanal:** línea de tiempo del % de cumplimiento total semana a semana.
- **Contador de exploraciones:** barras por semana que muestran cuántas exploraciones registró el cliente.
- **Indicador de progresión:** iconos que muestran la progresión registrada en cada semana (avanzó / se mantuvo / retrocedió).

### 5.3 Sistema de alertas de seguimiento (prioridad alta)

**Contexto:** el coach necesita saber de manera preventiva cuándo un cliente empieza a fallar antes de que el problema se profundice. Hay tres patrones que requieren intervención distinta:

**Alerta 1 — Sin reporte:**
- Trigger: el cliente no ha enviado reporte en 2 días consecutivos (no hay ninguna celda registrada en esos días)
- Visual: badge rojo sobre el tab del cliente + banner en la parte superior del panel de ese cliente
- Acción sugerida: mostrar un texto recordatorio de qué hacer (contacto de seguimiento, no análisis — el análisis es para la sesión)

**Alerta 2 — Racha de incumplimiento:**
- Trigger: 3 o más días consecutivos con estado "No" en el mismo hábito
- Visual: ícono de alerta sobre ese hábito en el grid + entrada automática en el resumen semanal señalando el patrón
- Acción sugerida: mostrar el encuadre de intervención de estancamiento del protocolo del programa

**Alerta 3 — Retroceso al introducir nuevos hábitos:**
- Trigger: la semana actual tiene un % de cumplimiento menor en hábitos anteriores que la semana previa, coincidiendo con la adición de un hábito nuevo
- Visual: banner amarillo en el panel del cliente
- Acción sugerida: nota recordando revisar si hay sobrecarga cognitiva

Todas las alertas deben poder marcarse como "resueltas" por el coach.

### 5.4 Exportación de resumen semanal (prioridad media)

El coach necesita poder revisar el resumen antes de la sesión sin tener que abrir la app. 

**Formato de exportación:** texto plano estructurado (o PDF simple) con:
- Nombre del cliente y semana
- Estado de cada hábito por día (tabla compacta)
- Métricas calculadas (% cumplimiento, día más difícil, exploraciones)
- Los cuatro campos del resumen del coach
- Notas de sesión

**Implementación:** botón "Exportar resumen" en la pestaña de Resumen sesión. Genera un archivo `.txt` o `.pdf` descargable.

### 5.5 Campo de fase del programa (prioridad media)

Cada cliente debe tener un indicador visible de en qué fase del programa está (0–5). Esto ayuda al coach a contextualizar el registro — los hábitos esperados y el nivel de autonomía cambian según la fase.

- Selector de fase editable en el perfil del cliente
- La fase se muestra de manera visible en el header del panel del cliente
- En la vista de progresión histórica, marcar con una línea vertical cuándo cambió de fase

### 5.6 Gestión de múltiples clientes (prioridad media)

**Problema actual:** solo existen dos clientes hardcodeados. No se pueden agregar clientes nuevos ni archivar los que terminan el programa.

**Solución:**
- Botón para agregar nuevo cliente (abre un modal con nombre + fecha de inicio + hábitos iniciales)
- Opción para archivar cliente (mantiene su historial pero lo saca del panel principal)
- Vista de clientes archivados accesible desde configuración

### 5.7 Identidad visual (prioridad media)

La herramienta actual usa el sistema de diseño de Claude.ai. En la versión standalone, aplicar una identidad visual coherente con Método Cimientos:

- Paleta de colores: tonos tierra, fondos neutros cálidos, sin colores saturados excepto para estados de alerta
- Tipografía: una fuente serif para encabezados (evoca solidez y profundidad), una sans-serif limpia para datos y UI
- El nombre "Método Cimientos" visible en el header de la app
- Favicon con la inicial del programa

---

## 6. Estructura de pantallas

```
App
├── Header (nombre del programa + selector de cliente activo)
├── Panel de cliente
│   ├── Header de cliente (nombre, fase, fecha de inicio, alertas activas)
│   ├── Navegador de semana (← semana → + botón Hoy)
│   └── Tabs
│       ├── Registro (grid hábitos × días)
│       ├── Resumen sesión (formulario coach + métricas)
│       ├── Progresión (heatmap + gráficas históricas)
│       └── Hábitos (lista editable)
└── Sidebar o modal de gestión de clientes (agregar, archivar, ver archivados)
```

---

## 7. Comportamiento de datos entre fases

Cuando el cliente avanza de fase, los hábitos pueden cambiar. La herramienta debe manejar esto sin perder el historial:

- Los hábitos se pueden agregar o eliminar en cualquier momento
- El historial de semanas anteriores conserva los hábitos que existían en ese momento (no retroactivo)
- La vista de progresión histórica puede mostrar hábitos que ya no están activos en gris, para mantener la continuidad visual

---

## 8. Restricciones y consideraciones

- **Sin backend:** toda la data vive en `localStorage`. El coach usa la app en un solo dispositivo (computador de escritorio o laptop). No se requiere sincronización entre dispositivos en esta etapa.
- **Sin autenticación:** la app no tiene login. Es de uso personal del coach.
- **Privacidad:** los nombres de los clientes son reales. El archivo de `localStorage` no sale del dispositivo. En versiones futuras se puede agregar encriptación local.
- **Máximo de clientes:** el cupo del programa es 4–5 clientes activos simultáneamente. La app no necesita escalar más allá de 10 clientes totales (activos + archivados) en esta etapa.
- **Idioma:** toda la UI en español (Colombia). Los textos de interfaz, etiquetas, alertas y exportaciones van en español.

---

## 9. Lo que esta herramienta NO es

- No es una app para el cliente — el cliente nunca la ve ni la usa
- No es un CRM ni un sistema de facturación
- No es una plataforma de comunicación — el canal de comunicación con el cliente es WhatsApp, separado de esta herramienta
- No reemplaza las notas de sesión del coach — es un complemento estructurado para el seguimiento de hábitos específicamente

---

---

## 10. Estado de implementación — Fase B pendiente

La app base (Fase A) está construida en `app/`. Las siguientes funcionalidades de la sección 5 están pendientes de implementar:

- [ ] **#18** — Sistema de alertas (sección 5.3): alerta sin reporte 2 días, racha de "No" en mismo hábito, retroceso al agregar hábito nuevo
- [ ] **#19** — Exportación `.txt` del resumen semanal (sección 5.4): para revisar antes de sesión sin abrir la app
- [ ] **#20** — Pestaña Progresión con heatmap (sección 5.2): heatmap de cumplimiento por hábito, 8–12 semanas

*Versión 1.0 — Abril 2026*
*Desarrollado en el contexto de Método Cimientos — programa de coaching de hábitos*
