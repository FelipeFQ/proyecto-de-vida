# LABORATORIO DE PREDICCIÓN — Mercados vs. encuestas
*Manual v3. Definido en sesión Consejero 2026-10-26.*
*Documento vivo; la tabla de registro (sección 6) es acumulativa: agregar filas, nunca borrar.*

---

## Origen

- **Jun 2026:** apuesta grande en la 2.ª vuelta de Colombia (Cepeda ~12¢). Perdida. Generó deuda y un préstamo de los padres (ya saldado). Sin sistema ni límite de monto.
- **Oct 2026:** Brasil, 2.º turno. Felipe creía que ganaba Lula y no apostó por miedo a perder de nuevo. Ganó Lula.
- **Manual v2:** desarrollado con Gemini. Revisado con el Consejero → v3 (este documento). Cambios frente a v2:
  - El *favorite-longshot bias* no sirve de justificación: el sesgo documentado dice que los longshots están sobrevalorados, no al revés.
  - Las etiquetas "statu quo / cambio" se asignaban después del resultado (Lula era el presidente en ejercicio; Cepeda era el oficialismo). Ahora la hipótesis no usa etiquetas.
  - El rango fijo de 12–22¢ dejaba por fuera los casos que respaldan la tesis. Ahora se mide la brecha.
  - El ROI no es criterio de confirmación (con pagos asimétricos, la suerte produce ROI enormes).
  - Las cifras de "backtest" de Gemini (~$15.000 con $1.000 por caso) salen de casos elegidos con el resultado conocido. No son meta ni referencia.

---

## 1. Hipótesis

> *Cuando las encuestas están empatadas (diferencia ≤3 puntos) y el mercado de predicción da ≥65/35, el que va perdiendo en el mercado gana más seguido de lo que dice su precio.*

- Una sola hipótesis, con datos de todo el mundo.
- La etiqueta (derecha / izquierda · statu quo / cambio) es una **columna del registro**, no un criterio de entrada. Con el tiempo dirá *dónde* está el sesgo (p. ej., si en Latinoamérica el mercado infla a la derecha).
- La intuición de Felipe ("el patrón se repite en todo el mundo") se registra en la columna de intuición y se audita con los resultados.

---

## 2. Criterios de entrada (deben cumplirse todos)

| Variable | Criterio |
|---|---|
| Tipo de votación | Presidencial / ejecutivo directo, o referendo de dos opciones. **Fuera:** parlamentarias y legislativas (las encuestas miden votos, no escaños) y "decisiones" sin encuestas (Fed, guerras, leyes). |
| Encuestas | Promedio de **≥3 firmas distintas**, publicadas en los últimos 14 días, en votos válidos. Diferencia **≤3 puntos**. |
| Mercado | Favorito **≥65%** → el que va perdiendo cuesta **≤35¢**. |
| Liquidez | Volumen del mercado **≥ USD 500.000**. |
| Ventana | Entre **7 y 14 días** antes de la votación. Una sola entrada. |
| Salida | Se mantiene hasta la resolución. **No se opera la noche electoral.** |

Si falla uno, no se opera (se registra igual como "no cumple" si llegó al paso 4 de la lista de verificación).

---

## 3. Lista de verificación — primer lunes del mes (10 min)

1. **Calendario:** revisar el calendario electoral del mundo de los próximos 60 días (basta Wikipedia, "National electoral calendar"). Anotar solo las votaciones que entran por tipo.
2. **Ventana:** ¿alguna cae dentro de 7–14 días? Si cae entre dos revisiones mensuales, agendar la fecha exacta de revisión. Si no hay ninguna → se cierra el mes.
3. **Encuestas:** calcular el promedio de ≥3 firmas.
4. **Mercado:** abrir Polymarket **solo en ese mercado**. Anotar precio y volumen.
5. **Si cumple todo:** escribir la intuición **antes** de comprar → comprar USD 10 del que va perdiendo → registrar la fila → avisar a Simón en el audio semanal ("aposté USD 10 en X, cumple la regla").

**Ver noticias no cuenta como trabajo del laboratorio.** El laboratorio son 10 minutos con datos: precio, promedio de encuestas y fecha.

---

## 4. Montos y regla de confirmación

**Monto por operación:** USD 10 fijos, hasta que la regla de confirmación diga "subir".

**Tope del fondo:** se revisa una vez al año (octubre) según las finanzas del momento. Es el máximo que se podría perder completo sin que cambie nada del mes. Las finanzas ponen el techo; la evidencia da el permiso. Se necesitan las dos.

**Regla de confirmación (a las 8 operaciones con dinero real, tarden lo que tarden):**
- La métrica es **aciertos frente a aciertos esperados** (suma de los precios pagados). El ROI no es criterio.
- Se calcula la probabilidad de que la suerte sola (el mercado tiene razón) produzca esos aciertos o más.

| Resultado | Acción |
|---|---|
| Probabilidad de suerte **<5%** (ej.: ≥4 aciertos en 8 comprando a ~15¢) | **Subir** el monto |
| Por encima de lo esperado, pero no concluyente (ej.: 2–3 aciertos en 8 a ~15¢) | **Seguir** con USD 10 hasta 15 operaciones y volver a evaluar |
| En lo esperado o por debajo (ej.: ≤1 acierto en 8 a ~15¢) | **Cerrar el laboratorio.** Sin "una más". |

Referencia (8 apuestas, sin ningún sesgo real en el mercado):

| Precio | ≥2 aciertos por suerte | ≥3 | ≥4 | ≥5 |
|---|---|---|---|---|
| 15¢ | 34% (ROI +67%) | 10% (ROI +150%) | 2% (ROI +233%) | 0,3% |
| 20¢ | 50% (ROI +25%) | 20% (ROI +88%) | 6% (ROI +150%) | 1% |
| 30¢ | 75% (ROI −17%) | 45% (ROI +25%) | 19% (ROI +67%) | 6% |

**Análisis definido de antemano (cobertura mediática):** en cada evaluación (8 y 15 operaciones), comparar los aciertos de los mercados con volumen total al cierre **≥ USD 5M** contra los de menos. La hipótesis (2026-10-26): el sesgo se concentra en elecciones muy conocidas, donde entra más dinero de narrativa. Se mide con el volumen, no con "sale en los noticieros", que depende de las noticias que ve Felipe. Se vuelve regla de entrada solo si los datos la respaldan.

**Si se sube:**
- Como máximo, un cuarto de lo que indica la fórmula de Kelly, aplicado al fondo y siempre bajo el tope anual.
- Se reevalúa con la misma regla cada 8 operaciones nuevas (la ventaja puede desaparecer si el sesgo se vuelve conocido).
- Nunca crédito, préstamo ni plata ajena.

**Pendientes de revisar una vez:**
- Legalidad de usar Polymarket desde Colombia (Coljuegos). Brasil prohibió los contratos electorales en mayo de 2026.
- Tributación: las ganancias de loterías, rifas y apuestas probablemente tributan como ganancia ocasional al 20% (no 15%). Confirmar con un contador y declarar.

---

## 5. Alarmas que cierran el laboratorio (cualquiera de ellas)

- Apostar en un mercado que no cumple la matriz, aunque sea "solo esta vez".
- Apostar en deportes, cripto u otros mercados de Polymarket.
- Subir el monto después de una pérdida, o fuera de la regla de confirmación.
- Revisar Polymarket fuera del calendario mensual o de una ventana agendada.
- Usar crédito o plata ajena.
- No contarle a Simón una operación.

**Ancla externa:** Simón conoce estas reglas. Una línea por operación en el audio semanal, y otra si se activa una alarma.

---

## 6. Registro

Las filas marcadas como **referencia** son anteriores al sistema y **no cuentan** para las 8 operaciones.

| # | Fecha entrada | Votación (fecha) | Favorito mercado (precio) | Perdedor mercado (precio) | Encuestas (diferencia) | ¿Cumple? | Etiqueta del perdedor | Volumen total al cierre (USD) | Intuición (antes de comprar) | Dinero | Resultado | Error de encuestas | P&L |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| R1 | jun 2026 | Colombia 2.ª vuelta (21 jun 2026) | De la Espriella ~87–89% | Cepeda ~12–14¢ | Empate técnico (según Felipe; <1 pt en agregados) | Referencia | Izquierda · oficialismo | ~10–11M (según Felipe) | — | Real, fuera de sistema | Ganó De la Espriella (~0,96 pts, según Felipe) | Por registrar | Pérdida total |
| R2 | — | Brasil 2.º turno (25 oct 2026) | Flávio Bolsonaro ~80–83% | Lula ~18–20¢ | MDA: Flávio 50,7 / Lula 49,3 | Referencia (papel) | Izquierda · gobierno | ~10–11M (según Felipe) | "Creo que gana Lula" — no apostó por miedo | Ninguno | Ganó Lula (~51,8% según parcial del TSE; confirmar) | Por registrar | Papel: ~+400% |
| R3 | — | EE. UU. presidencial (5 nov 2024) | Trump ~60–65% | Harris ~35–40¢ | Empate (~1 pt) | Referencia, límite (favorito justo en el umbral) | Centro-izquierda · partido en el gobierno | Muy alto (por registrar) | — | Ninguno | Ganó Trump | Por registrar | Papel: pérdida total |
| R4 | — | Ecuador 2.ª vuelta (13 abr 2025) | Por verificar | Por verificar | Encuestas divididas (Comunicaliza: Noboa +7,6; N&E: González +5); 1.ª vuelta 44,3 / 43,8 | Referencia, por verificar | Izquierda · oposición | Por verificar | — | Ninguno | Ganó Noboa (~11 pts, según memoria del Consejero; confirmar) | Posible subestimación de la derecha | Por verificar |

### 6b. Ejercicio en papel: midterms de EE. UU. (3 nov 2026)

*Sin dinero real. Registrado el 2 nov en la noche, antes de que abran las urnas. No cuenta para las 8 operaciones ni activa la regla de confirmación: fuera de ventana, y el Senado aún no entra por tipo.*

**Regla de Felipe:** USD 10 por el que va perdiendo en Polymarket, en cada carrera con asimetría (favorito ≥65). Precios leídos por Felipe el 2 nov. Encuestas: rango entre promedios disponibles (FiftyPlusOne, RCP, 270toWin, Texpolls); FiftyPlusOne no muestra fechas ni número de encuestas.

| Canasta | Carrera | Apuesta (precio) | Encuestas | Pago si gana | Resultado | P&L |
|---|---|---|---|---|---|---|
| A | Sen. Texas | Paxton (26¢) | D+2,2 a 3,7 | $38,46 | | |
| A | Sen. Maine | Collins (28¢) | D+1,7 a 4,7 | $35,71 | | |
| A | Gob. Ohio | Ramaswamy (17¢) | D+2,6 a 4,5 | $58,82 | | |
| A | Sen. Ohio | Husted (28¢) | D+2,6 a 2,9 | $35,71 | | |
| A | Sen. Carolina del Sur | Andrews (32¢) | Empate | $31,25 | | |
| A | Sen. Nebraska | Osborn (28¢) | R+1,9 | $35,71 | | |
| A | Gob. Nevada | Lombardo (25¢) | D+0,6 | $40,00 | | |
| A | Gob. Kansas | Holscher (36¢) | D+0,1 | $27,78 | | |
| B | Sen. Michigan | Rogers (20¢) | D+3,5 a 5,5 | $50,00 | | |
| B | Gob. Florida | Jolly (36¢) | R+4,4 | $27,78 | | |
| B | Sen. Minnesota | Tafoya (8¢) | D+6,2 | $125,00 | | |
| B | Gob. Arizona | Biggs (7¢) | D+7,1 | $142,86 | | |
| B | Sen. Florida | Nixon (14¢) | R+6,1 | $71,43 | | |
| B | Sen. Georgia | Collins (3¢) | D+9,6 | $333,33 | | |
| B | Gob. Michigan | James (5¢) | D+8,7 | $200,00 | | |
| B | Sen. New Hampshire | Sununu (6¢) | D+8,8 | $166,67 | | |
| C | Sen. Montana | Independiente (9¢) | Sin dato | $111,11 | | |
| C | Sen. Mississippi | Colom (14¢) | Sin dato | $71,43 | | |

- **Canasta A:** asimetría con encuestas dentro de 3 puntos en al menos un promedio; 8 apuestas, USD 80, aciertos esperados por precio 2,20. Es la hipótesis de la sección 1.
- **Canasta B:** asimetría sin empate; 8 apuestas, USD 80, aciertos esperados 0,99.
- **Canasta C:** sin promedio de encuestas encontrado; 2 apuestas, USD 20, aciertos esperados 0,23.
- **Total:** 18 apuestas, USD 180, aciertos esperados 3,42.

**Fuera de las 18, se siguen aparte** porque también tienen encuestas empatadas y Felipe no alcanzó a listarlas: Sen. Alaska (Sullivan 27,5¢; D+1,2 a 2,3) y Gob. Georgia (Jackson 30,5¢; D+0,3).

**Cómo se lee (definido antes del resultado):**
1. Métrica principal: aciertos frente a aciertos esperados, por canasta. El balance en dólares se reporta, pero no decide.
2. La pregunta: ¿la canasta A supera lo esperado por su precio más que la B?
3. Una sola noche no confirma ni descarta nada: las carreras comparten el mismo error nacional de las encuestas. Cuenta como una observación.
4. Las carreras que tarden en resolverse (Alaska y Maine por voto preferencial, conteos largos) quedan abiertas hasta su resultado oficial.
