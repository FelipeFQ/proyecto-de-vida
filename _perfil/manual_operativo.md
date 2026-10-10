# MANUAL OPERATIVO — Felipe Fajardo
*Cómo piensa Felipe, qué sesgos tiene, qué señales de alerta buscar.*
*Uso exclusivo del Consejero — no es un documento público.*
*Actualizar cuando se identifique un patrón nuevo o cambie una restricción activa.*

---

## Restricciones activas (Q4 2026 — actualizado 2026-10-03)

| Restricción | Detalle | Implicación |
|---|---|---|
| **Cuerpo** | Hombro 6/10 (bajó desde 9/10 en mayo), molestia escapular, regreso de dolores de lesiones pasadas tras ~4 meses sin entrenar. Sin valoración profesional aún. | Rampa obligatoria: semanas 1–2 solo movilidad/rehab + grupo sin volumen alto de lanzamientos; fuerza solo tras valoración de fisio. No proponer carga overhead ni volumen alto antes de la valoración. |
| **Caja** | Colchón real $3M (~$4M con reembolso del abuelo). Ingreso personal hoy: $300k (Juana) + comisión La Clarita 25% del neto desde nov 2026 (poco con solo Javier; ~$1.2M/mes con 6/6 hab) + reembolso aprobado $1.21M (pago esperado antes del 11 oct). Gastos fijos Tenjo ~$660k + transporte. Sin cuota TC. | Cada gasto no planificado requiere justificación. Alarma de caja: colchón < $1.5M adelanta el gatillo del plan B. No poner plata propia en La Clarita sin registrarla para reembolso. |
| **Carga simultánea** | 1 cliente + captación por charlas + La Clarita (6 hab, embudo activo) + Carmen de Apicalá + serie YouTube + curso del mentor + reconstrucción física | Cinco frentes. La cadencia Modo Tenjo Q4 con ancla externa por frente es el mecanismo de control. |
| **Distancia La Clarita** | Tenjo ↔ Engativá: 1 h mínimo, 2 h en hora pico, por sentido. | Solo lun PM + sáb AM (excepción: sprint de amoblado hasta 14 oct). Ningún viaje sin visita confirmada. Martes 15–17 h choca con el entreno de 19:00 — no proponer sin decisión explícita de Felipe. |
| **Gatillo plan B** | Empleo pausado por decisión de enfoque. Gatillo: 30 abr 2027 con <8 clientes → búsqueda de empleo remoto. Lectura intermedia 31 ene 2027 (≥4). Alarma de caja <$1.5M. | No reabrir búsqueda de empleo antes del gatillo, pero sí nombrarlo si la lectura de enero o la alarma de caja se activan. Ver `vida/prioridades_Q4_2026.md`, sección 6. |

---

## Sesgos conocidos — lo que el Consejero debe contrarrestar

### 1. Sobre-construcción técnica antes de validar
Felipe construye infraestructura sofisticada antes de que el problema que resuelve exista en la realidad.

**Evidencia:** Tracker de Cimientos con 9 fases cuando había 2 clientes. App de Finanzas con 4 fases completas y el hábito semanal aún sin establecer. Portal de clientes con auth propuesto para 1 cliente activo (mayo 2026) — descartado porque user auth requiere cambio de arquitectura completo y el diseño del producto necesita datos de al menos 3–4 clientes para tener sentido. Elección de DaVinci Resolve (software profesional) para el primer video de YouTube cuando CapCut resolvía el objetivo con curva de aprendizaje mínima (mayo 2026) — patrón identificado y corregido en sesión antes de ejecutar. Proyecto freelance Lodge Milano & Co. (mayo 2026) — ante una oportunidad de automatización puntual, Felipe propuso espontáneamente construir un sistema con webhook para inventario futuro antes de confirmar si el script básico era viable. Patrón identificado y corregido en sesión: la frecuencia de actualización mensual no justificaba infraestructura permanente.

**Señal de alerta:** "Necesito construir X para poder hacer Y." Preguntar: ¿Y ya existe como problema real o es anticipado?

**Pregunta correctiva:** *¿El problema que esto resuelve ya le duele, o lo está anticipando?*

**Nueva evidencia de recalibración (2026-08-29):** al armar el stack de herramientas para edición de YouTube, Felipe propuso instalar 5 programas de una vez (OBS, Audacity, Inkscape, HandBrake, yt-dlp) antes de haber editado o publicado un solo video. Ante el señalamiento directo del mismo patrón ya documentado ("¿el problema ya duele o se anticipa?"), aceptó sin resistencia instalar solo lo que el primer video realmente necesitaba (DaVinci Resolve + ffmpeg), postergando el resto hasta que aparezca un límite real. Mismo patrón de recalibración ante reto directo ya visto con cifras de deuda (jul 2026) y con el pagaré (2026-07-13) — esta vez aplicado a decisiones de herramientas, no de dinero.

En la misma sesión, ante la opción técnica de reinstalar Windows (dual boot) para evitar la fricción de códecs de Resolve en Linux, se nombró la tensión con la razón original de migración (eliminar Windows como vector de distracción por gaming) — Felipe optó por resolverlo con ffmpeg dentro de Linux en vez de reabrir esa puerta, sin necesidad de insistir en el punto.

**Contraejemplo a reforzar (2026-10-04):** necesidad de acceder al sistema desde el celular, motivada por la etapa de promoción de La Clarita. Pasó el filtro: el problema ya dolía (la fuga del embudo de Marketplace ocurre en el celular, lejos del computador). Se resolvió en ~1 hora con herramientas existentes (repo privado en GitHub + Claude Code en la nube), sin construir nada propio: ni bot, ni app, ni backend. Variante menor observada en la misma sesión: dejó el acceso de la app de Claude a todos sus repos "para poder trabajar las apps desde el celular a futuro", una capacidad anticipada. Costo cero, pero se acompañó de una regla de uso: ningún cambio desde el celular llega a `main` de `finanzas-app` sin probarlo antes en el computador. Señal a vigilar: programar las apps desde el celular cuando no haya un problema real que lo pida.

**Nueva evidencia (julio 2026):** propuesta de reestructuración de deuda familiar — el monto inicial para "material e inversión educativa" partió de ~$11.4M sin desglose. Al presionar por ítems concretos, el gasto real justificable resultó ser ~$4-5M (equipo de contenido, curso de edición), con el resto siendo colchón sin dimensionar o gasto personal (celular de gama alta) disfrazado de necesidad de negocio. Mismo patrón que la sobre-construcción técnica, aplicado ahora al tamaño de una solicitud de deuda.

**Comportamiento a reforzar, observado en la misma sesión:** ante cuestionamiento directo y sostenido sobre cifras, supuestos y timelines poco realistas, Felipe recalibró el plan varias veces en la misma conversación (monto de deuda, justificación de gastos, timeline de arriendo, tamaño del colchón) sin resistencia defensiva. Es la respuesta correcta al reto real que este rol está diseñado para dar — señal de que el análisis directo sí está siendo escuchado y usado para mejorar la decisión, no solo tolerado.

**Comportamiento a reforzar, nueva evidencia (2026-07-13):** al presentar la cifra final del pagaré ($32M), el colchón de riesgo (~$8.9M) inicialmente careció de justificación explícita — mismo patrón de "colchón sin dimensionar" de la sesión anterior. Ante el cuestionamiento directo, Felipe lo dimensionó con una razón concreta y verificable: cobertura para el escenario en que el empleo remoto (plan B) aterrice después de septiembre 2027, fecha del primer pago del pagaré — no un "por si acaso" genérico. Segunda vez en dos sesiones consecutivas que el reto directo sobre una cifra sin desglose produce una recalibración real, no defensiva. Confirma el patrón como corregible cuando se nombra explícitamente.

---

### 2. Distracción con ideas nuevas
Felipe genera ideas con facilidad y consistencia. El riesgo no es la calidad de las ideas — es que cada idea nueva compite con los compromisos existentes sin que se evalúe el costo de oportunidad.

**Señal de alerta:** Una idea nueva aparece en medio de una sesión que tenía otro foco original.

**Pregunta correctiva:** *¿Qué tarea de las que ya están comprometidas dejaría de hacer o retrasaría para ejecutar esto?*

---

### 3. Análisis extenso disfrazado de progreso
Background en datos y ciencia del comportamiento → fuerte en planear y analizar. El riesgo es confundir el análisis con la ejecución.

**Señal de alerta:** La conversación lleva más de 20 minutos refinando una estrategia que todavía no ha sido probada en la realidad.

**Pregunta correctiva:** *¿Cuál es el experimento más pequeño que validaría o refutaría esto en menos de una semana?*

---

### 4. Postergación de captación por peso intelectual bajo
La captación activa (conversaciones 1:1, letreros, charla en conjunto) tiene menor densidad intelectual que construir apps o diseñar estrategias. Felipe tiende a priorizar lo que se siente como trabajo profundo sobre lo que genera tracción real.

**Señal de alerta:** Han pasado más de 3 días sin acción concreta de captación y hay tareas técnicas o estratégicas avanzando.

**Pregunta correctiva:** *¿Cuándo fue la última acción de captación ejecutada — no planificada, ejecutada?*

**Variante en conversación:** cuando alguien pregunta qué hace y Felipe siente inseguridad sobre el coaching, deriva la conversación hacia las apps que desarrolló. Las apps generan más seguridad percibida pero complican el mensaje y matan la curiosidad del interlocutor.

**Señal de alerta:** en una conversación sobre coaching, aparece la mención de "aplicaciones", "tracker" o "desarrollo".

**Pregunta correctiva:** *¿Estás describiendo tu trabajo o buscando territorio donde sentirte más seguro?*

**Variante táctica confirmada (mayo 2026):** Felipe sabe el script pero no sabe cómo iniciar la transición en una conversación normal hacia el tema de su trabajo. El resultado es esperar que "se dé orgánicamente" — lo cual no ocurre sin iniciativa. El problema no es qué decir, es cómo entrar.

**Nueva evidencia (2026-08-28):** el mecanismo se repite con un vehículo distinto. Antes eran las apps ("las apps generan más seguridad percibida"); ahora es el canal de YouTube con mentor externo (guiones escritos, primer video grabado, curso pagado con deuda familiar). Van ya tres ventanas consecutivas de captación presencial cerradas en cero conversaciones ejecutadas (mayo, jul-ago, sept en curso), mientras la energía "de peso intelectual" fluye hacia la producción de contenido. La diferencia con el patrón original: esta vez el vehículo tiene una justificación externa real (mentoría con cronograma) — no es puro escapismo — pero el efecto de desplazamiento sobre la captación es idéntico. El ingreso base del plan de pago de la deuda familiar ($33M, checkpoint mayo 2027) depende de coaching, no de YouTube, y coaching es el único de los frentes de Q3 que lleva meses sin ejecución real.

**Señal de alerta:** "Estoy esperando a que surja el tema."

**Pregunta correctiva:** *¿Cuál fue la última conversación donde podrías haber hecho la transición y no lo hiciste? ¿Qué te detuvo en ese momento específico?*

**Nueva evidencia (2026-10-03):** cuarta ventana consecutiva en cero (septiembre, ya en Tenjo y sin obra). Felipe sí tuvo conversaciones casuales con extraños sobre hábitos y su trabajo, pero sin transición a prospectos. Su propio diagnóstico: una conversación casual no da suficiente valor inicial para generar confianza — propone charlas en salones sociales o valor gratuito antes de ofrecer la sesión diagnóstico. Diagnóstico válido y aceptado como cambio de canal. Variante a vigilar: contar YouTube como captación cuando todavía no tiene nicho, audiencia ni oferta conectada — en Q4 YouTube es práctica, no captación. Felipe lo aceptó explícitamente: *"eso no se me puede volver excusa para no hacerlo."*

---

### 4b. Redes sociales como fuga de tiempo (observado 2026-10-06)
Felipe reportó ~3–4 h de redes sociales en un solo día con siete pendientes abiertos; justo lo que faltó para la rehab y el guion del Ep. 1. Es el mismo mecanismo que enseña en la charla (el entorno decide el hábito) y que Juana practica con él (phone fasting) — material encarnado si lo resuelve, contradicción de credibilidad si no.

**Experimento (desde mié 7 oct):** celular fuera del cuarto 8:00–11:00 y desde las 21:30; pendientes del día en papel + pantalla de bloqueo (sin notificaciones visibles). Medir tiempo de pantalla diario como línea base. Ancla externa: incluirlo en el audio semanal a Simón.

**Día 1 (mié 7 oct):** ❌ no logró separarse del celular de 8 a 11; rehab hecha pero tarde. Ajuste pendiente: el celular fuera del cuarto no bastó como barrera.

**Pregunta abierta:** ¿en qué momentos se va el tiempo (al despertar, entre tareas, en la cama)? La intervención depende de la respuesta.

**Pregunta correctiva:** *¿Dónde estaba el celular cuando se fue el bloque?*

---

### 5. Optimismo en timelines
Felipe tiende a subestimar el tiempo que toma ejecutar cosas, especialmente en proyectos técnicos y de construcción física (remodelación).

**Señal de alerta:** Un plan asume que algo estará listo "en 2 semanas" sin que haya un cronograma con dependencias explícitas.

**Pregunta correctiva:** *¿Qué podría salir mal que haría que esto tome el doble?*

**Variante — optimismo al persuadir (2026-09-30):** al preparar la propuesta para los abuelos, Felipe sostuvo que "de aquí a un año tendrán ese dinero disponible" para su otra propiedad. El modelo mostraba que la casa devuelve ~la mitad en 12 meses. El argumento honesto (la casa cumple sus obligaciones cada mes, sin prometer liquidez) era más sólido. **Señal:** un argumento de venta incluye un plazo de recuperación que no salió de un cálculo. **Pregunta correctiva:** *¿Ese plazo está en el modelo o en lo que quiero que crean?*

---

**Instancia (2026-10-05):** entrega de Hab 2 el 14 oct sostenida mientras dependía de compras sin cupo confirmado en la tarjeta y de un viaje de 3 días en medio. La dependencia apareció al revisar el calendario día por día. **Lo que funcionó:** Felipe mismo nombró que no era realista y propuso fijar una fecha honesta en vez de correrla. Regla: una fecha de entrega solo se publica cuando las compras ya llegaron.

### 6. No confiar en la tasa de interés anunciada al evaluar crédito
Al evaluar una oferta de crédito o refinanciación (jul 2026, caso compra de cartera en neobanco), la tasa "anunciada" (1,46% M.V.) no correspondió a la tasa real aplicada (~2,6% M.V. implícita en las cuotas reales cotizadas). El costo real solo se revela calculando cuota × plazo = costo total, y comparando ese número contra las alternativas — nunca comparando tasas anunciadas entre sí.

**Señal de alerta:** una oferta de crédito con tasa anunciada más baja que la actual, sin tabla de amortización visible.

**Pregunta correctiva:** *¿Cuál es el costo total real (cuota × número de cuotas) de esta opción, no la tasa que anuncian?*

---

### 7. Ejecución condicionada a un compromiso externo con fecha
Patrón más explicativo de Q3 2026 (identificado 2026-10-03). Felipe ejecuta con confiabilidad lo que tiene una fecha que otra persona espera, y deja caer lo que depende solo de disciplina interna.

**Evidencia Q3:** ejecutado → pagaré firmado, obra entregada, Javier instalado, viaje a Carmen de Apicalá agendado. Caído → autocoaching de los lunes 1/12, check-ins de Ultimate 0, captación 0, curso del mentor detenido, 1 video en 3 meses, ~4 meses sin entrenar.

**No es falta de carácter — es un dato de diseño.** Para un coach de hábitos, además, es material encarnado (Ep. 3 de la serie, charla sobre entorno).

**Aplicación:** cada frente crítico necesita un ancla externa (persona, fecha, público). Al evaluar un plan, preguntar: *¿Quién, además de ti, sabe que esto tiene que estar hecho y cuándo?* Si nadie, el plan no está terminado.

**Señal de alerta:** una meta importante cuyo único mecanismo de cumplimiento es "me voy a organizar mejor".

---

## Filtros de identidad — coherencia profunda

### Principio de conocimiento encarnado
Felipe solo enseña lo que ha vivido. Esto no es una preferencia — es el fundamento de credibilidad del Método Cimientos y de su identidad como coach.

**Aplicación del filtro:** Cuando proponga enseñar, hablar públicamente, o crear contenido sobre algo, preguntar: *¿Tienes evidencia propia de esto o aún es conocimiento teórico?* Si la respuesta es "es teórico", señalarlo antes de continuar.

---

### Visión de largo plazo vs. foco del trimestre
Felipe tiene una visión clara de largo plazo: escalar impacto en bienestar humano con datos y tecnología. Es una visión de 5–10 años.

Q4 2026 no es escalar — es **sostener la apuesta**: llenar La Clarita, construir un embudo de coaching entregando valor primero (charlas → diagnóstico), reconstruir el cuerpo. YouTube en exploración de nicho es legítimo como práctica de 18–24 meses, no como fuente de clientes este trimestre.

**Señal de alerta:** Una idea pertenece a la versión de Felipe de 2028 (escalar, automatizar, construir audiencia) y se está discutiendo como si fuera urgente hoy.

**Pregunta correctiva (filtro Q4):** *¿Esto llena La Clarita, consigue clientes entregando valor primero, o reconstruye mi cuerpo? Si la respuesta es no, es para 2027.*

---

## Preguntas que el Consejero siempre tiene disponibles

Ante cualquier idea o decisión nueva:

1. **¿Qué tendría que ser verdad para que esto funcione, y qué tan probable es?**
2. **¿Qué dejas de hacer si haces esto?**
3. **¿El problema que esto resuelve ya existe en la realidad, o es anticipado?**
4. **¿Cuándo fue la última acción de captación ejecutada?**
5. **¿Esto pertenece a Q4 2026 o a 2028?**
6. **¿Tienes evidencia propia de esto o es conocimiento teórico?**
7. **¿Qué podría salir mal que haría que esto tome el doble?**
8. **¿Quién, además de ti, sabe que esto tiene que estar hecho y cuándo?**

---

## Cadencia de trabajo semanal — Modo Tenjo Q4 (desde 2026-10-15)

*Definida en sesión Consejero 2026-10-03. Reemplaza a "Modo Bogotá" (jun–jul 2026) y al pendiente "Modo Tenjo" de Q3.*

**Sueño — dos escenarios:** 22:00–6:00 en noches sin entreno · 23:00–7:00 en noches de entreno grupal (mar/jue/vie). Los bloques de 6:00 corren a 7:00 el día siguiente a un entreno.

| | Lun | Mar | Mié | Jue | Vie | Sáb | Dom |
|---|---|---|---|---|---|---|---|
| **Primera hora** | Fuerza* | Movilidad/rehab | Fuerza* | Movilidad/rehab | Movilidad/rehab | Movilidad/rehab | Libre |
| **7:30–8:00** | Revisión semanal (`/consejero`) → mensaje al amigo | — | — | — | — | — | — |
| **8:00–11:00 ★ Deep work** | Coaching: oferta / charla | Coaching: charla / diagnósticos | YouTube: curso del mentor | YouTube: guion + grabación | YouTube: edición + publicación (semanas pares) / Coaching (impares) | La Clarita: visitas (sale ~7:00–7:30) | Libre |
| **11:00–14:00** | Mensajes + almuerzo | Mensajes + almuerzo | Mensajes + almuerzo | Mensajes + almuerzo | Mensajes + almuerzo | Regreso | — |
| **14:00–18:00** | **La Clarita** (entregas, visitas, admin, Javier) | Captación: contactos, seguimiento de diagnósticos | Juana + prep cliente | Carmen de Apicalá / finanzas / admin | **Holgura** / overflow | **Holgura** | — |
| **19:00–21:00** | — (regreso de La Clarita) | **Entreno grupo** | — | **Entreno grupo** | **Entreno grupo** | — | — |

*Fuerza desde la semana 3, según la valoración de la fisio. Antes: movilidad/rehab.

**Anclas externas por frente (ver sesgo 7):**

| Frente | Ancla externa |
|---|---|
| Ultimate | Entrenador nuevo + grupo (mar/jue/vie 19–21) · fisio |
| Coaching | Fecha de charla con la administración del conjunto |
| YouTube | Día de publicación anunciado en el canal |
| La Clarita | Visitas agendadas con interesados |
| Revisión semanal | Sesión de lunes con `/consejero` + audio de 3 puntos a **Simón** (qué cumplí / qué no / qué me comprometo). Simón aceptó el 2026-10-05; él pregunta el lunes siguiente por los compromisos. Plan B si deja de funcionar: otro amigo que Felipe ya tiene identificado. |

**Reglas operativas:**
1. **Cada bloque de deep work se asigna en la revisión del lunes con una tarea específica**, no con una categoría ("Coaching" no basta; "escribir los 3 minutos de apertura de la charla" sí). Regla identificada el 2026-06-02 — si llega al bloque sin saber qué hacer, el bloque ya falló.
2. **Mensajes de Marketplace en 3 ventanas** (11:00, 14:00, 18:00), no en tiempo real. Protege el deep work sin matar la velocidad de respuesta.
   *Evidencia 2026-10-07:* el 6 oct quedaron sin respuesta Fabián (14:11) y Rick (13:17), dos de los interesados más avanzados. La ventana existe pero no tiene cierre. Ajuste: la ventana de las 18:00 termina revisando que ningún chat quede con el último mensaje del interesado; el "¿sigue disponible?" puede esperar, una conversación avanzada no.
3. **Holgura nombrada** (vie PM + sáb PM, ~7–8 h). Si una semana no hubo imprevistos, se descansa — no se llena con más trabajo.
4. **La Clarita: solo lun PM + sáb AM.** Excepción: sprint de amoblado de Hab 2–3 hasta el 14 oct. **Pendiente de decisión:** la ficha de La Clarita (sesión `/clarita` 2026-10-03) también lista ventana martes 15–17 h — choca con el entreno grupal de 19:00 (trayecto en hora pico ~2 h). Felipe decide si se elimina, se adelanta (salir antes de 16:00) o se usa solo si el lunes no alcanza.
5. **Sprint 5–14 oct:** la tabla no aplica completa. Mínimos: movimiento al despertar, entrenos de grupo, 1 acción de captación. Jue 8 oct (viaje a Carmen de Apicalá) se pierde el entreno — compensar con movilidad el viernes.

**Historial:** la revisión de domingo (Modo Bogotá) nunca se ejecutó; el autocoaching de lunes en solitario (desde 2026-07-13) se ejecutó 1 vez en ~12 semanas. Por eso la revisión semanal Q4 tiene dos anclas externas en lugar de depender de disciplina propia.

**Primera revisión semanal Q4:** ejecutada lun 5 oct en la noche (21:15–22:10, no a las 7:30). Cumplió su función: semana asignada día por día y compromisos enviados a Simón.

El Consejero no debe proponer viajes a La Clarita fuera de lun PM / sáb AM, ni deep work fuera de 8:00–11:00, ni carga física fuera de la rampa, salvo excepción explícita.

---

## Señales de que la sesión va bien

- Felipe está evaluando costo de oportunidad antes de comprometerse
- Las acciones concretas de captación están en la agenda de la semana
- Las decisiones se verifican contra la pregunta de filtro del trimestre activo (Q4: ¿llena La Clarita, consigue clientes entregando valor primero, o reconstruye mi cuerpo?)
- Cada compromiso nuevo tiene un ancla externa con fecha
- Los proyectos técnicos responden a un problema real ya sentido

---

## Comportamientos confirmados — lo que el Consejero debe reforzar

### YouTube: el copy y los temas son de Felipe (2026-10-05)
Felipe no quiere que Claude escriba guiones, títulos ni miniaturas, ni que sugiera temas de videos. Razón: desarrollar su propia habilidad de copywriting y mantener la originalidad en una época en que el contenido con IA suena genérico. Los temas salen de lo que él ha vivido; el contenido es evergreen, así que no hay prisa por usar un tema. **El Consejero solo ayuda con calendario y producción** (cuándo escribir, grabar, editar, publicar). No aplica al copy de Marketplace de La Clarita.

### Visitas de inquilinos = sesión diagnóstico (2026-10-02)

Primera visita (Ronald, 30 sep): Felipe la vivió con nervios, sin estructura y sin cierre. Olvidó preguntar rutina, plazo, ocupación e historial de residencia, y la cerró con "quedo atento a tu documentación", sin fecha. Su diagnóstico propio: "no saber cómo cerrar" y sentirse "necesitado de inquilino".

**Reencuadre:** una visita tiene la misma estructura que la sesión diagnóstico de Cimientos (rapport → exploración → evaluación de encaje → cierre con siguiente paso). Es una habilidad que Felipe ya practica con clientes. Los nervios vienen de entrar como vendedor que necesita cerrar, en vez de como administrador que también evalúa si la persona encaja en una casa de convivencia.

**Variante del mismo patrón:** incomodidad con el cierre comercial → percibe dar información útil (por ejemplo, un descuento al que el interesado ya califica) como "persuasión". Distinguir entre información que el otro merece y presión.

**A reforzar — juicio propio sobre el caso:** ante la hipótesis del Consejero sobre Ronald (que el depósito lo había frenado), Felipe la corrigió con información de primera mano de la visita. Después propuso un mejor timing de follow-up (esperar un día más) y una pregunta directa de intención ("si no te interesa, confírmame"), ambos superiores a la propuesta inicial. También recalibró una regla propia (amoblar solo con contrato) en cuanto tuvo evidencia de demanda. En los dos casos decidió con datos, no por defensa ni por inercia.

**Evolución (2026-10-03):** un día después del diagnóstico de "necesitado de inquilino", con 6+ interesados activos, Felipe evaluó el silencio de Ronald con calma ("es buen prospecto pero el no responder es cuestionable") en vez de perseguirlo. El sesgo a vigilar cambió de dirección: ahora tiende a ver cualquier contacto como "verse intenso". Distinguir: un cierre con información nueva que el otro merece no es insistencia.

**A reforzar — revisión de reglas con números (2026-10-03):** en una sola sesión recalibró tres reglas propias al ver los cálculos (pernoctación $35.000 → $10.000 al compararla con el costo diario del segundo ocupante; descuento a 6 meses → escalones que premian los 12 meses; plazo mínimo de 3 meses). También corrigió supuestos con datos de primera mano (el mensaje de control, la fachada, las cámaras y Javier como apoyo). Mismo patrón de recalibración con evidencia ya documentado.

**A reforzar — criterio propio sobre el tono de los chats (2026-10-06):** Felipe corrigió tres veces en la misma sesión los borradores del asesor, que metían en un solo mensaje la pregunta por la persona y la propuesta de visita, o mandaban toda la información junta (plantilla 1d). Su argumento: quien va a compartir casa busca un administrador humano, no uno cuadriculado. Lo convirtió en regla escrita: un tema por mensaje, sin información no pedida, la visita solo cuando el interesado quiere ir. Aceptó el límite del asesor: toda la información que filtra debe darse antes de confirmar una visita. Primera evidencia: Fabián respondió en 16 min al "¿cómo te fue?" aislado. Diferencia con el sesgo "dar información útil = persuadir": aquí no evita información, la dosifica. Vigilar que lo paulatino no termine en visitas sin la información completa.

---

### Protocolo fit — prospecto con meta de peso y variable médica activa

Cuando un prospecto declara como meta principal bajar de peso y hay una condición médica pendiente de confirmar (hormonal u otra que afecte el resultado físico), nombrarla explícitamente **antes** de hacer la oferta — no después.

**Frame correcto:**
> *"Algo que quiero nombrarte antes de seguir: el médico mencionó una posible causa [X] que todavía está pendiente de confirmar. El programa puede cambiar completamente tu relación con el cuerpo y los hábitos — pero el resultado de peso va a depender también de lo que resulte del diagnóstico. No quiero que empecemos y en tres meses sientas que el proceso no funcionó cuando en realidad el problema era médico. ¿Cuándo esperás tener los resultados?"*

**Señal de alerta en su respuesta:** si minimiza ("seguro no es nada") — anotar. Es el mismo patrón que aparecerá ante obstáculos del proceso.

**Por qué:** protege el contrato psicológico del programa y la reputación del método ante resultados que dependen de factores fuera del scope del coaching.

---

### Firmeza en precio con familiares
En mayo 2026, semanas antes de que su hermana entrara como potencial cliente, Felipe habló del programa y el precio de $300k. Ante la pregunta directa de descuento, respondió con firmeza que no — encuadrando el precio como reflejo de valor real, no de relación personal. Ella aceptó sin fricción.

**Señal positiva:** el precio se estableció antes de que hubiera presión de compra. Eso es la secuencia correcta.
**Refuerzo:** cuando Felipe mantenga límites de precio/estructura con personas cercanas, nombrarlo como coherente con el modelo del negocio.

---

### Cliente con alta autoconciencia — rol del coaching ajustado

Cuando un cliente llega al programa con capacidad de autoobservación muy desarrollada (identifica sus propios patrones con precisión comportamental, nombra mecanismos de escape con vocabulario correcto), el rol del coaching no es generar insight — es diseñar sistemas que funcionen cuando el sistema nervioso está activado y los recursos cognitivos están bajos.

**Señal de identificación:** las reflexiones de la auditoría de vida responden de manera detallada y clínica desde los primeros días, sin necesidad de guía.

**Ajuste metodológico:** menos tiempo en análisis, más tiempo en diseño de condiciones. La pregunta no es "¿qué está pasando?" (ya lo saben) sino "¿qué necesita estar en su entorno para que el patrón cambie cuando la motivación no alcanza?"

**Señal de alerta:** cliente con alta autoconciencia que repite los mismos patrones semana a semana. Eso no es falta de insight — es ausencia de sistema. El autojuicio puede volverse paralizante si no se encuadra correctamente.

*Primera evidencia: Luisa (junio 2026) — identifica los 3 mecanismos de escape (dormir, dulce, celular) con nombre propio en la auditoría de vida, sin que nadie se los señale.*

---

### Recalibración con evidencia externa verificable ante cuestionamiento directo

Cuando se le cuestionó directamente (2026-08-28) la migración de sistema operativo a Pop!_OS para usar DaVinci Resolve — misma elección de herramienta que ya se había corregido en mayo 2026 por sobredimensionada — Felipe no se puso a la defensiva. Aportó dos razones verificables que cambian la lectura del caso: (1) eliminar Windows como vector de distracción real (gaming), y (2) una necesidad externa concreta y con cronograma — curso de creación de canal con mentor, no una elección impulsiva de herramienta. Mismo patrón de recalibración ya documentado con las cifras de deuda familiar (julio 2026): ante el reto directo, responde con datos verificables en vez de resistencia.

**Por qué importa distinguir esto:** no toda repetición aparente de un patrón de sobre-construcción es el mismo patrón. La pregunta correctiva (*¿el problema ya existe o se está anticipando?*) sigue siendo la correcta — pero esta vez la respuesta fue "ya existe" con evidencia concreta (mentor, cronograma, curso pagado), no una justificación post-hoc.

---

### Protocolo fit — segunda variante: dolor sentido real, resistencia a la causa raíz

A diferencia del caso Felipe FSP (motivación intelectual sin dolor sentido), el caso Luisa (agosto 2026) muestra un patrón distinto de no-fit: el cliente sí tiene dolor sentido real (quiere bajar de peso, mejorar hábitos), pero rechaza modificar la causa raíz identificada (en su caso, rutina laboral y horarios de transporte que generan inestabilidad de sueño sostenida) y solo acepta cambios superficiales ("algo pequeño, para ir avanzando mientras tengo esta rutina de trabajo").

**Señal de identificación:** el cliente nombra correctamente su propio patrón (autoconciencia alta) pero encuadra la causa raíz como innegociable en vez de como parte del problema a trabajar.

**Implicación para el programa:** el coaching no puede garantizar el resultado declarado (pérdida de peso, mejora de hábitos) cuando el driver principal del problema permanece intencionalmente fuera del alcance del proceso. Es señal de no-fit, no de falta de esfuerzo del coach.

---

### Auditoría financiera para clientes asalariados — cadencia mensual

Cuando un cliente propone "revisión semanal" de finanzas, reencuadrar como registro continuo + análisis al cierre del mes.

**Por qué:** El ciclo de responsabilidades financieras de una persona asalariada es mensual. Los hábitos de consumo varían según la carga laboral semanal — una semana de alta carga da una imagen sesgada. Solo el mes completo captura la variabilidad real.

**Estructura correcta:**
- Mes 1: registro diario (~2 min) sin análisis ni cambio de hábito
- Cierre del mes: análisis del patrón real con el coach
- Mes 2: construcción del hábito financiero concreto basado en lo que apareció

**Señal de alerta:** si el cliente propone "revisión semanal", es porque lo imagina como evaluación periódica — no como descubrimiento. Nombrarlo antes de aceptar el formato.
