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

### 1b. Hipótesis 2 (H2): coaliciones después del escrutinio
*Aprobada el 27 nov 2026. Va con dinero real (USD 10), con registro propio y conteo propio de 8 (sección 6c). No se mezcla con la hipótesis 1.*

> *En un sistema parlamentario, cuando el partido con más escaños no tiene una suma posible para la mayoría con partidos que no lo han vetado, el mercado sigue sobrevalorando a su candidato: el precio se ancla en "quién ganó" y no en las cuentas de la coalición.*

**Regla de 5 pasos:**
1. Esperar el escrutinio oficial de escaños.
2. Sumar el bloque del favorito del mercado: su partido más los partidos que **no lo hayan vetado públicamente** durante la campaña. Los vetos se anotan **antes** de mirar el mercado.
3. Si el bloque llega a la mayoría, el mercado está alineado: **no se opera**.
4. Si no llega, el rival sí tiene una suma posible y el favorito sigue con ≥65%: **USD 10 al rival**, mantenido hasta la resolución.
5. Antes de entrar, leer cómo resuelve el mercado si se repiten las elecciones o si nadie logra la investidura.

**Diferencia con la hipótesis 1:** la H1 compara encuestas contra el mercado *antes* de votar; la H2 compara la cuenta de escaños contra el mercado *después* de votar. Aplican la misma regla de confirmación (sección 4), las mismas alarmas (sección 5) y el mismo monto.

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
| A | Sen. Texas | Paxton (26¢) | D+2,2 a 3,7 | $38,46 | Ganó Talarico (D) | −$10,00 |
| A | Sen. Maine | Collins (28¢) | D+1,7 a 4,7 | $35,71 | Ganó Troy Jackson (D) | −$10,00 |
| A | Gob. Ohio | Ramaswamy (17¢) | D+2,6 a 4,5 | $58,82 | Ganó Acton (D) | −$10,00 |
| A | Sen. Ohio | Husted (28¢) | D+2,6 a 2,9 | $35,71 | Ganó Sherrod Brown (D) | −$10,00 |
| A | Sen. Carolina del Sur | Andrews (32¢) | Empate | $31,25 | ✅ Ganó Andrews (D) | +$21,25 |
| A | Sen. Nebraska | Osborn (28¢) | R+1,9 | $35,71 | Ganó Ricketts (R) | −$10,00 |
| A | Gob. Nevada | Lombardo (25¢) | D+0,6 | $40,00 | Ganó Ford (D) | −$10,00 |
| A | Gob. Kansas | Holscher (36¢) | D+0,1 | $27,78 | ✅ Ganó Holscher (D), proyección de CNN; carrera cerrada | +$17,78 |
| B | Sen. Michigan | Rogers (20¢) | D+3,5 a 5,5 | $50,00 | Ganó El-Sayed (D) | −$10,00 |
| B | Gob. Florida | Jolly (36¢) | R+4,4 | $27,78 | Ganó Donalds (R) | −$10,00 |
| B | Sen. Minnesota | Tafoya (8¢) | D+6,2 | $125,00 | Ganó Flanagan (D) | −$10,00 |
| B | Gob. Arizona | Biggs (7¢) | D+7,1 | $142,86 | Ganó Hobbs (D) | −$10,00 |
| B | Sen. Florida | Nixon (14¢) | R+6,1 | $71,43 | Ganó Moody (R) | −$10,00 |
| B | Sen. Georgia | Collins (3¢) | D+9,6 | $333,33 | Ganó Ossoff (D) | −$10,00 |
| B | Gob. Michigan | James (5¢) | D+8,7 | $200,00 | Ganó Benson (D) | −$10,00 |
| B | Sen. New Hampshire | Sununu (6¢) | D+8,8 | $166,67 | Ganó Pappas (D) | −$10,00 |
| B | Sen. Montana | Independiente, Bodnar (9¢) | Alme +7,9 sobre Bodnar (encuestas recientes divididas) | $111,11 | Ganó Alme (R); Bodnar 2.º | −$10,00 |
| C | Sen. Mississippi | Colom (14¢) | Sin dato | $71,43 | ✅ Ganó Colom (D) | +$61,43 |

**Agregadas a pedido de Felipe (2 nov).** Precios del agregador de Polymarket (polymarkettrader.com), corte 20:56 hora de Colombia.

| Canasta | Carrera | Apuesta (precio) | Encuestas o referencia | Pago si gana | Resultado | P&L |
|---|---|---|---|---|---|---|
| A | Sen. Alaska | Sullivan (27,5¢) | D+1,2 a 2,3 | $36,36 | Ganó Peltola (D) | −$10,00 |
| A | Gob. Georgia | Jackson (30,5¢) | D+0,3; volumen $460k | $32,79 | Ganó Bottoms (D) | −$10,00 |
| A | Gob. Oregon | Drazan (16,5¢) | Kotek +2 a Drazan +1; encuestas de sep-oct, viejas; volumen $268k | $60,61 | Ganó Kotek (D) | −$10,00 |
| C | Gob. Alaska | Wilson (10,5¢) | Sin dato | $95,24 | Ganó Kreiss-Tomkins (D), mayoría en 1.ª ronda | −$10,00 |
| C | Gob. Vermont | Janoo (29,9¢) | Sin dato | $33,44 | Scott (R) adelante 52,4–45,8 con 100% escrutado (NBC); sin proyección formal encontrada | −$10,00 |
| D | Cámara CA-22 | Valadao (6,5¢) | Cook: empate | $153,85 | Ganó Villegas (D) | −$10,00 |
| D | Cámara FL-14 | Beltran (21,5¢) | Cook: empate | $46,51 | Ganó Castor (D) | −$10,00 |
| D | Cámara FL-22 | Askar (26,5¢) | Cook: empate | $37,74 | Ganó Dandiya (D) | −$10,00 |
| D | Cámara IA-02 | Mitchell (27,5¢) | Cook: empate | $36,36 | Ganó Lindsay James (D) | −$10,00 |
| D | Cámara MI-07 | Barrett (20,5¢) | Cook: empate | $48,78 | Ganó Lawrence (D) | −$10,00 |
| D | Cámara MI-10 | Bouchard (25,5¢) | Cook: empate | $39,22 | Ganó Hines (D) | −$10,00 |
| D | Cámara NC-01 | Buckhout (11,5¢) | Cook: empate | $86,96 | Ganó Davis (D) | −$10,00 |
| D | Cámara OH-07 | Miller (12¢) | Cook: empate, sin verificar en la tabla | $83,33 | Ganó Poindexter (D) | −$10,00 |
| D | Cámara TX-15 | Monica De La Cruz (11,5¢) | Cook: empate, sin verificar en la tabla | $86,96 | Ganó Pulido (D) | −$10,00 |
| D | Cámara TX-35 | Carlos De La Cruz (27,5¢) | Cook: empate, sin verificar en la tabla | $36,36 | Ganó Garcia (D) | −$10,00 |
| D | Cámara VA-01 | Wittman (32,5¢) | Cook: empate, sin verificar en la tabla | $30,77 | Ganó Taylor (D), llamada de AP 5 nov | −$10,00 |

- **Canasta A:** asimetría con encuestas dentro de 3 puntos en al menos un promedio; 11 apuestas, USD 110, aciertos esperados por precio 2,95. Es la hipótesis de la sección 1.
- **Canasta B:** asimetría sin empate; 9 apuestas, USD 90, aciertos esperados 1,08.
- **Canasta C:** sin promedio de encuestas encontrado; 3 apuestas, USD 30, aciertos esperados 0,54.
- **Canasta D:** Cámara con Cook en empate y favorito ≥65. Cook no es una encuesta: es un sustituto, porque no hay promedios por distrito. Todas por debajo de USD 500.000 de volumen y todas apuestan por el republicano. 11 apuestas, USD 110, aciertos esperados 2,23.
- **Total:** 34 apuestas (las 18 de Felipe + 16 agregadas), USD 340, aciertos esperados 6,80.
- **Montana** pasó de C a B al encontrar el promedio de FiftyPlusOne (antes de conocer el resultado).
- **Quedaron fuera por no estar empatadas o no llegar a 65:** el resto de carreras con encuestas; Cámara con Cook en empate y favorito <65 (CO-05, KY-06, MI-04, MT-01, NY-17, PA-01, SC-01).

**Resultados llenados el 27 nov 2026** (se había previsto el 9 nov). Fuentes: NBC News, CBS News, PBS, Washington Post, VPM, Alaska Public Media. Son proyecciones de medios, no resultados certificados. Kansas (gobernador) y Vermont (gobernador) quedan marcados para confirmar.

| Canasta | Apuestas | Aciertos | Esperados por precio | Pagos | P&L |
|---|---|---|---|---|---|
| A (empate + asimetría) | 11 | 2 (Andrews, Holscher) | 2,95 | $59,03 | −$50,97 (−46%) |
| B (asimetría sin empate) | 9 | 0 | 1,08 | $0 | −$90,00 (−100%) |
| C (sin encuestas) | 3 | 1 (Colom) | 0,54 | $71,43 | +$41,43 (+138%) |
| D (Cámara, Cook en empate) | 11 | 0 | 2,23 | $0 | −$110,00 (−100%) |
| **Total** | **34** | **3** | **6,80** | **$130,46** | **−$209,54 (−62%)** |

**Lectura (27 nov):**
- A acertó 2 de 2,95 esperados y B 0 de 1,08. A le ganó a B solo porque las dos quedaron por debajo de lo esperado. El que iba perdiendo en las carreras empatadas no superó su precio.
- En las carreras empatadas el mercado favoreció a los demócratas (9 de las 11 apuestas de A eran por republicanos o por el independiente Osborn), y el resultado fue aún más demócrata: hubo una ola nacional. Las encuestas subestimaron al ganador y el mercado estuvo más cerca de la realidad, igual que en Colombia 2026.
- No hubo sesgo del mercado hacia la derecha en EE. UU. Cuenta como una observación en contra de la versión global de la tesis. La de Latinoamérica sigue abierta.
- Es una sola observación: las 34 carreras compartieron el mismo error nacional de las encuestas. El riesgo que deja ver es real: cuando la ola va en contra, se pierde en todas a la vez.

**Intuición de Felipe (registrada después del resultado, el 27 nov):** antes de la votación esperaba que los demócratas arrasaran, por la baja popularidad del gobierno Trump y el ambiente generalizado, en EE. UU. y en el mundo, de castigo a los republicanos. Se sentía inseguro carrera por carrera, porque no seguía las noticias locales de cada estado, y lo hizo como ejercicio informativo. Su intuición general acertó; la regla mecánica, que apostaba contra la ola, perdió. Esta intuición no se escribió antes del resultado, así que no cuenta como dato de la columna B.

**Lección:** el laboratorio se queda en lo que pide la sección 2: elecciones grandes de ejecutivo (presidenciales) y referendos de dos opciones. Las elecciones de mitad de mandato y las legislativas por distrito no entran, ni siquiera en papel: son muchas carreras con un mismo error nacional, sin información local para auditarlas.

**Cómo se lee (definido antes del resultado):**
1. Métrica principal: aciertos frente a aciertos esperados, por canasta. El balance en dólares se reporta, pero no decide.
2. La pregunta: ¿la canasta A supera lo esperado por su precio más que la B?
3. Una sola noche no confirma ni descarta nada: las carreras comparten el mismo error nacional de las encuestas. Cuenta como una observación.
4. Las carreras que tarden en resolverse (Alaska y Maine por voto preferencial, conteos largos) quedan abiertas hasta su resultado oficial.

### 6c. Registro de la H2 (coaliciones después del escrutinio)

| # | Votación | Mayoría | Bloque del favorito (escaños) | Vetos anotados antes | Favorito mercado (precio) | Rival (precio) | ¿Cumple? | Intuición (antes del resultado) | Dinero | Resultado | P&L |
|---|---|---|---|---|---|---|---|---|---|---|---|
| H2-1 | España, generales (29 nov 2026) | 176 de 350 | Por llenar con el escrutinio (PP + Vox; encuestas privadas: 187–190) | Por anotar antes de mirar el mercado: Junts y PNV han rechazado gobiernos con Vox | Feijóo ~90% (27 nov, según Felipe) | Sánchez (por llenar) | Por decidir con el escrutinio | Ver abajo | USD 10 real si cumple | | |
| H2-P1 | Israel, Knesset (27 oct 2026) | 61 de 120 | Eisenkot: bloque de 48 + otros por verificar · Netanyahu: bloque de 53 | Por verificar | Eisenkot ~80% (27 nov, según Felipe; no verificado) | Netanyahu ~20% | Papel. Se opera solo si el bloque de Eisenkot no tiene una suma posible para llegar a 61 | No registrada | Ninguno (papel) | | |

**Regla de España, escrita antes del escrutinio (27 nov):**

| Escaños de PP + Vox | Acción |
|---|---|
| 176 o más | No se opera: el mercado está alineado |
| Menos de 176, Feijóo depende de Junts o del PNV, y sigue con ≥65% | USD 10 a Sánchez, mantenido hasta la resolución |

**Intuición de Felipe (27 nov, antes del resultado):** "PP y Vox no van a llegar a los 176." Sobre quién termina de presidente: el pueblo español quiere un cambio, pero no hacia la derecha del todo; si PP + Vox no llegan a 176, la más favorecida sería Ada Colau, y la segunda opción Pedro Sánchez. Si después del escrutinio Polymarket sigue siendo Feijóo contra Sánchez, la apuesta correcta es Sánchez, porque el PSOE, como fuerza grande, es el que más fácil reúne a los partidos pequeños.
*Nota del Consejero:* según lo verificado hasta el 27 nov, Colau no encabeza ninguna lista al Congreso y no aparece como candidata a la investidura. Se registra la intuición tal como la dijo Felipe.
