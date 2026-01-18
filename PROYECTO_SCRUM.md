# PROYECTO TECNOLÓGICO - KontraK
## Sistema de Alquiler de Maquinaria y Equipos de Construcción

---

## 1. CONTEXTO Y ORGANIZACIÓN

### 1.1 Organización
**KontraK** es una empresa peruana enfocada en facilitar el acceso a maquinaria y equipos de construcción para contratistas emergentes y pequeñas empresas constructoras. Opera en Lima Metropolitana y zonas urbanas en expansión, con el objetivo de democratizar el acceso a herramientas profesionales de construcción que normalmente tienen costos prohibitivos para emprendedores del sector.

**Sector**: Construcción y Alquiler de Equipamiento Industrial  
**Tamaño**: Empresa emergente (Startup - Proptech/Construction Tech)  
**Mercado objetivo**: Contratistas independientes, microempresas constructoras, maestros de obra y emprendedores del sector construcción (nivel socioeconómico C/D que aspiran a crecer)

### 1.2 Necesidad Identificada

**Problema**: 
Los contratistas emergentes y pequeñas empresas constructoras en Lima enfrentan barreras significativas para acceder a maquinaria profesional:
- **Alto costo de inversión inicial**: Una mezcladora industrial cuesta entre S/. 3,000 - S/. 8,000; una compactadora S/. 5,000 - S/. 15,000
- **Procesos de alquiler informales**: 80% de alquileres se realizan mediante contactos personales, llamadas telefónicas o visitas presenciales
- **Falta de transparencia**: No existe claridad en disponibilidad, precios ni condiciones de alquiler
- **Sin garantías formales**: Ausencia de contratos digitales y seguimiento de mantenimientos
- **Tiempo desperdiciado**: Los contratistas pierden 1-2 días buscando equipos disponibles
- **Desconfianza**: Maquinaria sin historial de mantenimiento visible

**Evidencia**:
- Entrevistas a 15 contratistas (Enero 2026): 87% indica que la búsqueda de maquinaria es uno de los principales cuellos de botella en sus proyectos
- Estudio de Capeco (2025): 65% de pequeños contratistas alquilan equipos al menos 2 veces al mes
- Encuesta propia: 92% preferiría una plataforma digital para ver disponibilidad y precios en tiempo real
- Pérdida estimada: 25-30% de oportunidades de negocio por no encontrar equipos a tiempo

**Contexto Sectorial**:
El sector construcción en Perú creció 8.5% en 2025 según el INEI. Los programas "Techo Propio" y "Mi Vivienda" impulsan la construcción de viviendas económicas, generando oportunidades para pequeños contratistas. Sin embargo, la inversión en maquinaria propia representa una barrera de entrada para el 70% de nuevos emprendedores del sector.

### 1.3 Objetivos del Proyecto

**Objetivo General**:
Desarrollar e implementar una plataforma web para la gestión integral de alquiler de maquinaria y equipos de construcción, que permita a contratistas emergentes consultar disponibilidad, realizar reservas en tiempo real, y a la empresa gestionar eficientemente su inventario y mantenimientos preventivos.

**Objetivos Específicos** (Estado: 18 de enero 2026):

1. **✅ COMPLETADO** - Implementar un catálogo digital de maquinaria con información técnica detallada y disponibilidad en tiempo real
   - *Estado*: Modelo de datos actualizado con campos específicos de maquinaria (categoría, potencia, capacidad, dimensiones, peso, accesorios, certificaciones, horas de uso)
   - *Pendiente*: Poblar catálogo con datos reales de al menos 15-20 equipos de distintas categorías

2. **🔄 EN PROGRESO** - Desarrollar un sistema de reservas automatizado con validación de fechas y verificación de disponibilidad
   - *Estado*: Estructura base implementada (entidad Reserva con estados, relaciones con Usuario y Vehiculo)
   - *Pendiente*: Validar lógica de disponibilidad según nuevos campos de maquinaria, actualizar controladores para workflow completo

3. **✅ COMPLETADO** - Crear un módulo de gestión de mantenimientos para garantizar equipos en óptimas condiciones
   - *Estado*: Entidades Mantenimiento y DetalleMantenimiento implementadas, formularios frontend actualizados
   - *Pendiente*: Integrar visualización de último mantenimiento en ficha de maquinaria para contratistas

4. **✅ COMPLETADO** - Implementar un sistema de autenticación con roles diferenciados
   - *Estado*: Spring Security configurado con 2 roles principales:
   
   **🔧 ROL CONTRATISTA (Cliente que alquila maquinaria)**
   - ✅ PUEDE: Ver catálogo público, ver detalles técnicos, solicitar alquileres, ver sus propias reservas, ver historial personal
   - ❌ NO PUEDE: Agregar/eliminar maquinarias, aprobar/rechazar reservas, registrar mantenimientos, ver reservas de otros
   
   **👨‍💼 ROL ADMINISTRADOR (Dueño de KontraK)**
   - ✅ PUEDE: Gestionar inventario completo (CRUD maquinarias), ver TODAS las solicitudes, aprobar/rechazar alquileres, cambiar estados (EN_USO, FINALIZADA), registrar mantenimientos, ver historial completo de todo
   - ❌ NO PUEDE: Solicitar alquileres como contratista (él presta, no alquila)
   
   - *Pendiente*: Validar permisos en todos los endpoints sensibles

5. **🔄 EN PROGRESO** - Diseñar dashboards para seguimiento de alquileres y estado de inventario
   - *Estado*: Templates base existentes (dashboard.html para cliente y propietario)
   - *Pendiente*: Actualizar con estadísticas relevantes (equipos disponibles por categoría, alquileres activos, próximos vencimientos, equipos en mantenimiento)

6. **🔄 EN PROGRESO** - Facilitar la trazabilidad completa de cada equipo (historial de vida)
   - *Estado*: Estructura de datos lista (historial de reservas, mantenimientos, estados)
   
   **¿Qué es trazabilidad?** = Ver TODO lo que le ha pasado a una maquinaria desde que se compró
   
   **Ejemplo - Mezcladora ABC-789:**
   ```
   HISTORIAL COMPLETO:
   
   ALQUILERES:
   • 05/01/2026 - 10/01/2026: Alquilada por Juan Pérez (S/. 1,800)
   • 15/01/2026 - 18/01/2026: Alquilada por María García (S/. 1,080)
   
   MANTENIMIENTOS:
   • 12/01/2026: Cambio de filtros - S/. 280
   • 03/01/2026: Reparación motor - S/. 650
   
   ESTADO ACTUAL: Disponible
   HORAS DE USO: 1,250 hrs
   ÚLTIMO MANTENIMIENTO: Hace 6 días
   ```
   
   **Beneficio**: Admin planifica mantenimientos, Contratista confía en que está bien cuidada
   
   - *Pendiente*: Crear vista consolidada de historial por equipo, reportes de uso por categoría

### 1.4 Beneficios Esperados

**Para Contratistas (Usuarios)**:
- Reducción del 70% en tiempo de búsqueda de equipos (de 1-2 días a 15 minutos)
- Acceso 24/7 a catálogo actualizado con precios transparentes
- Ahorro estimado del 40% vs. compra de maquinaria propia
- Garantía de equipos con mantenimiento verificable
- Planificación anticipada de proyectos con reservas confirmadas

**Operativos (KontraK)**:
- Reducción del 80% en tiempo de procesamiento de reservas
- Optimización del uso de inventario (reducción del 30% en tiempos ociosos)
- Trazabilidad completa de historial de alquileres y mantenimientos
- Control automático de disponibilidad y estados

**Económicos**:
- Incremento estimado del 45% en conversión de consultas a alquileres
- Reducción del 60% en costos operativos de gestión manual
- Posibilidad de escalar el negocio sin aumentar personal administrativo
- Mejor rotación de inventario

**Impacto Social**:
- Democratización del acceso a herramientas profesionales
- Apoyo al crecimiento de microempresas constructoras
- Formalización de relaciones comerciales en el sector
- Generación de confianza mediante transparencia

---

## 2. DESCRIPCIÓN DEL PRODUCTO

### 2.0 Explicación Simple del Sistema

**KontraK en una oración**: Plataforma web donde contratistas buscan y alquilan maquinaria de construcción, y un administrador gestiona el inventario y aprueba solicitudes.

---

#### **PARA EL CONTRATISTA (Usuario que alquila)**

**Flujo Completo de Uso:**

1. **Ver Catálogo (SIN LOGIN)**
   - Entra a www.kontrak.pe
   - Ve todas las maquinarias con foto, precio, categoría
   - Hace clic en "Compactadora Wacker" y ve detalles: potencia 5.5 HP, peso 85kg, S/. 180/día

2. **Registrarse/Login**
   - Crea cuenta con email y contraseña
   - Inicia sesión como CONTRATISTA

3. **Solicitar Alquiler**
   - Selecciona "Compactadora Wacker"
   - Elige fechas: Del 22 al 24 de enero (3 días)
   - Sistema calcula: 3 días × S/. 180 = **S/. 540**
   - Confirma solicitud → Estado: **PENDIENTE** (esperando aprobación del admin)

4. **Seguimiento**
   - Ve en "Mis Alquileres":
     - **PENDIENTE**: "Esperando respuesta del administrador"
     - **CONFIRMADA**: "¡Aprobada! Puedes recoger el equipo"
     - **EN_USO**: "Lo tienes actualmente en tu obra"
     - **FINALIZADA**: "Ya lo devolviste"

---

#### **PARA EL ADMINISTRADOR (Dueño de KontraK)**

**Panel de Control Completo:**

1. **Gestionar Inventario**
   - **Agregar**: "Nueva Excavadora Caterpillar 320 - 120 HP - S/. 800/día"
   - **Editar**: Cambiar precio de S/. 800 a S/. 750
   - **Eliminar**: Dar de baja equipos viejos o vendidos

2. **Revisar Solicitudes**
   - Ve lista: "Juan Pérez quiere Compactadora del 22-24 enero"
   - Revisa: ¿Está disponible? ¿Juan es cliente confiable?
   - **Aprobar** → Juan recibe confirmación
   - **Rechazar** → "Equipo no disponible" → Juan ve rechazo

3. **Control de Entregas/Devoluciones**
   - Juan recoge equipo (22/01) → Admin cambia a **EN_USO**
   - Juan devuelve (24/01) → Admin cambia a **FINALIZADA**
   - Equipo queda **DISPONIBLE** para otro

4. **Registrar Mantenimientos**
   - "Excavadora: Cambio de aceite - 18/01/2026 - S/. 350"
   - Marca como **EN_MANTENIMIENTO** (no alquilable)
   - Termina servicio → Vuelve a **DISPONIBLE**

---

#### **EJEMPLO DE FLUJO COMPLETO**

**Escenario: Juan necesita una compactadora para su obra**

| Paso | Actor | Acción | Estado Reserva | Estado Equipo |
|------|-------|--------|----------------|---------------|
| 1 | Juan (Contratista) | Ve catálogo sin login | - | DISPONIBLE |
| 2 | Juan | Se registra e inicia sesión | - | DISPONIBLE |
| 3 | Juan | Solicita Compactadora 22-24 ene | **PENDIENTE** | DISPONIBLE |
| 4 | Admin (Miguel) | Revisa solicitud | PENDIENTE | DISPONIBLE |
| 5 | Admin | Aprueba reserva | **CONFIRMADA** | DISPONIBLE |
| 6 | Juan | Recoge equipo (22/01) | **EN_USO** | **OCUPADA** |
| 7 | Juan | Trabaja 3 días con el equipo | EN_USO | OCUPADA |
| 8 | Juan | Devuelve equipo (24/01) | **FINALIZADA** | **DISPONIBLE** |
| 9 | Admin | Revisa equipo, todo OK | FINALIZADA | DISPONIBLE |

**Resultado**: 
- Juan pagó S/. 540 por 3 días
- Equipo listo para otro contratista
- Historial registrado en el sistema

---

### 2.1 Definición y Alcance

**✅ IMPLEMENTADO (Listo para pruebas)**:
- ✅ Sistema web responsive con diseño adaptado al rubro de construcción (paleta naranja/negro)
- ✅ Modelo de datos completo para maquinaria (categoria, potencia, capacidad, dimensiones, peso, accesorios, horasUso, requiereCertificacion)
- ✅ Base de datos relacional con 6 tablas (vehiculo, usuario, reserva, mantenimiento, detalle_mantenimiento, vehiculos_eliminados)
- ✅ Sistema de autenticación con Spring Security (roles: Contratista/Administrador)
- ✅ Formularios frontend actualizados para registro de maquinaria con campos específicos
- ✅ Vistas de catálogo, detalles y listado adaptadas para mostrar especificaciones técnicas
- ✅ Header moderno con navegación optimizada y sidebar con estilo industrial
- ✅ Página de inicio (landing) con secciones informativas sobre categorías de equipos
- ✅ Estructura de estados para reservas (PENDIENTE, CONFIRMADA, EN_USO, FINALIZADA, etc.)
- ✅ Módulo de mantenimientos con relaciones a equipos y usuarios

**🔄 EN DESARROLLO (Requiere ajustes)**:
- 🔄 Validación de disponibilidad de maquinaria según fechas de reserva
- 🔄 Cálculo automático de costos según días de alquiler
- 🔄 Workflow completo de aprobación/rechazo de reservas
- 🔄 Dashboard con métricas de inventario (equipos disponibles, en uso, en mantenimiento)
- 🔄 Historial consolidado de alquileres por contratista
- 🔄 Integración completa de Cloudinary para carga de imágenes
- 🔄 Filtros de catálogo por categoría, marca y precio

**⏭️ PENDIENTE (Próximos pasos)**:
- ⏭️ Migración de H2 a PostgreSQL (Azure Database o Neon DB)
- ⏭️ Población de base de datos con 15-20 equipos reales de distintas categorías
- ⏭️ Creación de usuarios de prueba (2-3 contratistas, 1 administrador)
- ⏭️ Pruebas end-to-end del flujo completo de alquiler
- ⏭️ Deploy en Azure App Service con URL pública
- ⏭️ Documentación de usuario final (manual de uso)

**No incluye (fuera de alcance)**:
- Pasarela de pagos en línea (fase futura)
- App móvil nativa
- Sistema de geolocalización GPS de equipos
- Integración con seguros para maquinaria
- Sistema de entregas y logística (se asume retiro/devolución en local)
- Módulo de capacitación de operadores
- Sistema de facturación electrónica integrada
- Chat en tiempo real

### 2.2 Características Técnicas

**Arquitectura**: Aplicación web monolítica MVC (Model-View-Controller)

**Stack Tecnológico**:
- **Backend**: Spring Boot 3.5.6 (Java 17)
- **Frontend**: Thymeleaf + HTML5 + CSS3 + Bootstrap 5
- **Base de Datos**: PostgreSQL 15
- **ORM**: Hibernate (JPA)
- **Seguridad**: Spring Security 6
- **Gestión de Imágenes**: Cloudinary API
- **Servidor Web**: Apache Tomcat (embedded)
- **Cloud Hosting**: Azure App Service + Azure Database for PostgreSQL

**Componentes Principales**:
1. **Módulo de Autenticación**: Spring Security con roles (Contratista/Administrador)
2. **Módulo de Catálogo**: Gestión CRUD de maquinaria y equipos
3. **Módulo de Reservas**: Motor de validación de disponibilidad y estados
4. **Módulo de Mantenimiento**: Registro, seguimiento y alertas
5. **Capa de Persistencia**: Repositorios JPA
6. **Capa de Servicios**: Lógica de negocio
7. **Capa de Presentación**: Vistas Thymeleaf con Bootstrap

### 2.3 Funcionalidad

**Flujo Principal - Contratista**:
1. Registro/Login en la plataforma
2. Navegación por catálogo de maquinaria y equipos
3. Aplicación de filtros (categoría: excavación, mezcla, compactación, etc.)
4. Visualización de ficha técnica detallada (potencia, dimensiones, accesorios)
5. Verificación de certificaciones requeridas para operar el equipo
6. Selección de fechas de alquiler (inicio y fin)
7. Validación automática de disponibilidad
8. Confirmación de reserva (pendiente de aprobación)
9. Visualización de historial de alquileres

**Flujo Principal - Administrador**:
1. Login con credenciales administrativas
2. Acceso a dashboard con métricas de inventario
3. Gestión de maquinaria (Alta/Baja/Modificación)
4. Revisión de solicitudes de reserva pendientes
5. Aprobación/Rechazo de reservas con justificación
6. Registro de mantenimientos preventivos y correctivos
7. Cambio de estados de equipos (Disponible/Ocupado/Mantenimiento/Fuera de servicio)
8. Consulta de historial de uso por equipo

**Motor de Estados de Reserva**:
- PENDIENTE → CONFIRMADA/RECHAZADA
- CONFIRMADA → EN_USO (equipo entregado) → FINALIZADA (equipo devuelto)
- Posibilidad de CANCELACIÓN en estados permitidos

**Estados de Maquinaria**:
- DISPONIBLE: Lista para alquilar
- OCUPADA: Actualmente en uso
- EN_MANTENIMIENTO: No disponible temporalmente
- FUERA_SERVICIO: Requiere reparación mayor

### 2.4 Usuarios del Producto

**Perfil 1: Contratista/Maestro de Obra**
- **Descripción**: Profesionales independientes o dueños de microempresas constructoras que requieren maquinaria para proyectos específicos
- **Necesidades**: Consulta rápida de disponibilidad, claridad en precios, reserva sencilla, transparencia en condiciones de equipos
- **Nivel técnico**: Básico (familiarizado con uso de apps, no técnico en IT)
- **Frecuencia de uso**: Semanal/Quincenal (según proyectos activos)
- **Puntos de dolor actuales**: Pérdida de tiempo buscando equipos, desconfianza en estado de maquinaria, falta de disponibilidad

**Perfil 2: Administrador de Inventario**
- **Descripción**: Personal de KontraK responsable de gestión operativa diaria de equipos y alquileres
- **Necesidades**: Control total de inventario, seguimiento de reservas, gestión de mantenimientos, trazabilidad
- **Nivel técnico**: Intermedio
- **Frecuencia de uso**: Diaria (8+ horas/día)
- **Tareas principales**: Aprobar reservas, actualizar estados, registrar mantenimientos, resolver incidencias

**Perfil 3: Gerente/Dueño del Negocio** (Rol Estratégico)
- **Descripción**: Propietario o gerente general de KontraK
- **Necesidades**: Visión global del negocio, métricas de uso de inventario, rentabilidad por equipo, identificación de oportunidades
- **Nivel técnico**: Básico
- **Frecuencia de uso**: Semanal (revisión de indicadores)
- **Información clave**: Tasa de ocupación, equipos más rentables, contratistas frecuentes

---

## 3. ENFOQUE METODOLÓGICO

### 3.1 Metodología de Desarrollo

**Framework**: Scrum

**Configuración del Proyecto**:
- **Duración total**: 7 semanas (3 sprints)
- **Duración de Sprint**: 2-2.5 semanas
- **Sprint Goal**: Incremento funcional y desplegable

**Eventos Scrum Aplicados**:
1. **Sprint Planning**: Inicio de cada sprint (selección de historias, descomposición en tareas, estimación)
2. **Daily Scrum**: Seguimiento diario del equipo (sincronización, progreso, impedimentos)
3. **Sprint Review**: Demo del incremento funcional al final de sprint (con stakeholders)
4. **Sprint Retrospective**: Análisis de mejora continua del proceso y trabajo del equipo

**Criterio para MVP**:
El Producto Mínimo Viable (MVP) debe permitir:
- Registro y autenticación de usuarios (contratistas y administradores)
- Catálogo funcional de maquinaria con especificaciones técnicas
- Sistema de reservas con validación automática de disponibilidad
- Workflow completo de aprobación/rechazo de reservas
- Gestión administrativa de equipos (CRUD completo)
- Módulo de mantenimientos con historial
- Despliegue en ambiente de producción accesible vía web

### 3.2 Equipo del Proyecto

| Integrante | Rol Principal | Responsabilidades |
|------------|---------------|-------------------|
| [Tu nombre] | **Scrum Master / Full-Stack Developer** | Facilitador Scrum, desarrollo backend/frontend, integración |
| [Nombre 2] | **Product Owner / Developer** | Gestión del backlog, desarrollo de módulos, validación |
| [Nombre 3] | **Developer / QA** | Desarrollo frontend, pruebas, documentación |
| [Nombre 4] | **Developer / DevOps** | Desarrollo backend, despliegue, base de datos |
| [Nombre 5] | **Developer / UX** | Diseño de interfaces, experiencia de usuario, testing |

*Nota: Los roles son flexibles; todos participan en desarrollo.*

### 3.3 Plataformas y Herramientas

**Desarrollo**:
- **IDE**: IntelliJ IDEA / Visual Studio Code
- **Control de versiones**: Git + GitHub
- **Gestión de dependencias**: Maven

**Backend**:
- **Framework**: Spring Boot 3.5.6
- **Lenguaje**: Java 17
- **ORM**: Hibernate/JPA
- **Seguridad**: Spring Security

**Frontend**:
- **Template Engine**: Thymeleaf
- **Estilos**: Bootstrap 5 / CSS3
- **Scripts**: JavaScript (vanilla/jQuery)

**Base de Datos**:
- **Motor**: PostgreSQL 15
- **Hosting**: Azure Database for PostgreSQL

**Servicios Cloud**:
- **Hosting**: Azure App Service
- **Almacenamiento de imágenes**: Cloudinary

**Gestión del Proyecto**:
- **Backlog**: Trello / Jira / GitHub Projects
- **Comunicación**: WhatsApp / Discord / Slack
- **Documentación**: Google Docs / Notion

**Pruebas y Despliegue**:
- **Testing**: JUnit, Mockito
- **CI/CD**: GitHub Actions (opcional)
- **Deployment**: Azure App Service

---

## 4. PLANIFICACIÓN DEL PRODUCTO

### 4.1 Stakeholders

| Stakeholder | Interés | Nivel de Influencia | Participación |
|-------------|---------|---------------------|---------------|
| **Gerente General (KontraK)** | Alto - Necesita solución para escalar negocio | Alto | Product Owner proxy, validación de requisitos, decisiones de negocio |
| **Administrador de Inventario** | Alto - Usuario principal del sistema | Medio | Feedback en Sprint Reviews, UAT, pruebas funcionales |
| **Contratistas (Usuarios Finales)** | Alto - Usarán la plataforma para alquilar equipos | Medio | User testing, validación de UX, entrevistas de necesidades |
| **Equipo de Desarrollo** | Alto - Responsables de construir la solución | Alto | Desarrollo, planificación, estimación, mejora continua |
| **Profesor del Curso** | Medio - Evalúa el proyecto académico | Alto | Revisión de avances, retroalimentación metodológica |
| **Proveedores de Maquinaria** | Bajo - Posibles alianzas futuras | Bajo | Consulta ocasional sobre especificaciones técnicas |
| **Asociaciones de Contratistas** | Medio - Potencial canal de difusión | Bajo | Validación de necesidad, testimonios |

### 4.2 Historias de Usuario (Biblioteca Completa)

#### Épica 1: Gestión de Usuarios y Autenticación
**HU-01**: Como contratista nuevo, quiero poder registrarme en la plataforma proporcionando mis datos personales y de mi empresa para acceder a los servicios de alquiler de maquinaria.

**HU-02**: Como usuario registrado, quiero iniciar sesión con mi correo y contraseña para acceder a mi cuenta y gestionar mis alquileres.

**HU-03**: Como administrador, quiero poder visualizar la lista de contratistas registrados para gestionar la base de clientes y validar su información.

#### Épica 2: Catálogo de Maquinaria y Equipos
**HU-04**: Como contratista, quiero ver un catálogo de maquinaria disponible con imágenes y especificaciones técnicas para elegir el equipo que necesito para mi proyecto.

**HU-05**: Como contratista, quiero filtrar maquinaria por categoría (excavación, mezcla, compactación, perforación) y precio para encontrar opciones que se ajusten a mis necesidades y presupuesto.

**HU-06**: Como administrador, quiero registrar nueva maquinaria en el sistema incluyendo especificaciones técnicas, categoría, potencia y accesorios incluidos para mantener actualizado el catálogo.

**HU-07**: Como administrador, quiero actualizar la información de los equipos (precio, estado, especificaciones) para corregir datos o reflejar cambios en el inventario.

**HU-08**: Como administrador, quiero dar de baja equipos del catálogo cuando ya no estén disponibles para registrar el motivo y mantener trazabilidad.

**HU-09**: Como contratista, quiero ver la ficha técnica completa de un equipo específico (potencia, dimensiones, peso, accesorios, certificaciones requeridas) para tomar una decisión informada antes de alquilar.

**HU-10**: Como contratista, quiero ver si un equipo requiere certificación especial para operarlo y saber si cumplo con los requisitos antes de solicitar el alquiler.

#### Épica 3: Sistema de Reservas y Alquileres
**HU-11**: Como contratista, quiero seleccionar fechas de inicio y fin de alquiler para verificar si el equipo está disponible en el período que necesito.

**HU-12**: Como contratista, quiero realizar una reserva de maquinaria para asegurar su disponibilidad en las fechas de mi proyecto y recibir confirmación.

**HU-13**: Como administrador, quiero ver todas las solicitudes de reserva pendientes con información del contratista y equipo solicitado para evaluarlas y tomar decisiones.

**HU-14**: Como administrador, quiero aprobar una reserva cuando se cumplan todos los requisitos para confirmar el alquiler al contratista.

**HU-15**: Como administrador, quiero rechazar una reserva indicando el motivo cuando no se cumplan los requisitos o el equipo no esté disponible.

**HU-16**: Como contratista, quiero ver el historial de mis alquileres (pasados y activos) para llevar un registro de los equipos que he utilizado y sus costos.

**HU-17**: Como administrador, quiero cambiar el estado de una reserva a "EN_USO" cuando el contratista retire el equipo para reflejar que está siendo utilizado.

**HU-18**: Como administrador, quiero marcar una reserva como "FINALIZADA" cuando el contratista devuelva el equipo para liberar el inventario y cerrar el ciclo de alquiler.

**HU-19**: Como contratista, quiero ver el costo total de mi alquiler calculado automáticamente según las fechas seleccionadas para saber cuánto pagaré antes de confirmar.

#### Épica 4: Gestión de Mantenimientos
**HU-20**: Como administrador, quiero registrar mantenimientos preventivos y correctivos realizados a los equipos para llevar un historial completo de servicio.

**HU-21**: Como administrador, quiero ver el historial de mantenimientos de cada equipo para planificar servicios futuros y tomar decisiones sobre renovación.

**HU-22**: Como administrador, quiero marcar un equipo como "EN_MANTENIMIENTO" para que no esté disponible para alquiler hasta completar las reparaciones.

**HU-23**: Como administrador, quiero asociar un mantenimiento a un tipo específico (preventivo, correctivo, inspección) y registrar costos para el control financiero.

**HU-24**: Como contratista, quiero ver la fecha del último mantenimiento de un equipo para confiar en que recibiré maquinaria en buen estado.

#### Épica 5: Dashboard y Control
**HU-25**: Como administrador, quiero ver un dashboard con el estado actual de todos los equipos (disponibles, ocupados, en mantenimiento) para tener visibilidad del inventario.

**HU-26**: Como administrador, quiero ver las reservas activas del día para planificar las entregas y devoluciones de equipos.

**HU-27**: Como administrador, quiero ver estadísticas de equipos más solicitados para tomar decisiones de inversión en nuevo inventario.

### 4.3 Product Backlog (Priorizado)

**Método de Priorización**: MoSCoW + Valor/Esfuerzo

| ID | Historia de Usuario | Prioridad | Sprint Asignado | Valor Negocio | Esfuerzo |
|----|---------------------|-----------|-----------------|---------------|----------|
| HU-01 | Registro de contratistas | **MUST** | Sprint 1 | Alto | Medio |
| HU-02 | Login de usuarios | **MUST** | Sprint 1 | Alto | Medio |
| HU-06 | Registrar maquinaria (Admin) | **MUST** | Sprint 1 | Alto | Alto |
| HU-04 | Ver catálogo de maquinaria | **MUST** | Sprint 1 | Alto | Medio |
| HU-09 | Ver ficha técnica completa | **MUST** | Sprint 1 | Alto | Medio |
| HU-11 | Seleccionar fechas de alquiler | **MUST** | Sprint 2 | Alto | Medio |
| HU-12 | Realizar reserva | **MUST** | Sprint 2 | Alto | Alto |
| HU-13 | Ver solicitudes de reserva (Admin) | **MUST** | Sprint 2 | Alto | Medio |
| HU-14 | Aprobar reserva (Admin) | **MUST** | Sprint 2 | Alto | Medio |
| HU-15 | Rechazar reserva (Admin) | **MUST** | Sprint 2 | Medio | Bajo |
| HU-07 | Actualizar maquinaria (Admin) | **SHOULD** | Sprint 2 | Medio | Medio |
| HU-19 | Ver costo total calculado | **MUST** | Sprint 2 | Alto | Bajo |
| HU-16 | Ver historial de alquileres | **SHOULD** | Sprint 3 | Medio | Bajo |
| HU-17 | Cambiar estado a EN_USO | **SHOULD** | Sprint 3 | Medio | Bajo |
| HU-18 | Finalizar reserva | **SHOULD** | Sprint 3 | Medio | Bajo |
| HU-20 | Registrar mantenimientos | **SHOULD** | Sprint 3 | Alto | Medio |
| HU-21 | Ver historial de mantenimientos | **SHOULD** | Sprint 3 | Medio | Bajo |
| HU-22 | Marcar equipo EN_MANTENIMIENTO | **SHOULD** | Sprint 3 | Alto | Bajo |
| HU-08 | Dar de baja equipos | **SHOULD** | Sprint 3 | Medio | Medio |
| HU-24 | Ver último mantenimiento (Contratista) | **SHOULD** | Sprint 3 | Medio | Bajo |
| HU-03 | Listar contratistas (Admin) | **COULD** | Backlog | Bajo | Bajo |
| HU-05 | Filtrar maquinaria por categoría | **COULD** | Backlog | Medio | Medio |
| HU-10 | Ver certificaciones requeridas | **COULD** | Backlog | Medio | Bajo |
| HU-23 | Registrar tipo y costo mantenimiento | **COULD** | Backlog | Bajo | Bajo |
| HU-25 | Dashboard con estado de equipos | **COULD** | Backlog | Medio | Alto |
| HU-26 | Ver reservas activas del día | **COULD** | Backlog | Bajo | Medio |
| HU-27 | Estadísticas de equipos más solicitados | **WON'T** | Backlog | Bajo | Alto |

### 4.4 Planificación de Sprints

#### **SPRINT 1** (Semanas 1-2): "Fundamentos del Sistema"
**Sprint Goal**: Establecer la base del sistema con autenticación, gestión básica de usuarios y catálogo de maquinaria visualizable con información técnica.

**Historias Incluidas**:
- HU-01: Registro de contratistas
- HU-02: Login de usuarios
- HU-06: Registrar maquinaria (Admin)
- HU-04: Ver catálogo de maquinaria
- HU-09: Ver ficha técnica completa

**Incremento Esperado**: 
Sistema con registro/login funcional, CRUD básico de maquinaria y catálogo público con fichas técnicas detalladas.

**Definición de Hecho (DoD)**:
- Usuario contratista puede registrarse e iniciar sesión
- Administrador puede agregar, editar y visualizar maquinaria
- Catálogo muestra equipos con imágenes y especificaciones
- Ficha técnica despliega toda la información del equipo
- Código desplegado en ambiente de desarrollo

#### **SPRINT 2** (Semanas 3-4): "Motor de Reservas y Alquileres"
**Sprint Goal**: Implementar el sistema completo de reservas con validación de disponibilidad, cálculo de costos y workflow de aprobación administrativa.

**Historias Incluidas**:
- HU-11: Seleccionar fechas de alquiler
- HU-12: Realizar reserva
- HU-13: Ver solicitudes de reserva (Admin)
- HU-14: Aprobar reserva (Admin)
- HU-15: Rechazar reserva (Admin)
- HU-19: Ver costo total calculado
- HU-07: Actualizar maquinaria (Admin)

**Incremento Esperado**: 
Sistema de reservas end-to-end funcional con workflow completo de aprobación, validación de disponibilidad y cálculo automático de costos.

**Definición de Hecho (DoD)**:
- Contratista puede seleccionar fechas y crear reserva
- Sistema valida disponibilidad automáticamente
- Costo se calcula según días de alquiler
- Administrador recibe y procesa solicitudes
- Estados de reserva funcionan correctamente
- Código integrado y desplegado

#### **SPRINT 3** (Semanas 5-7): "MVP Completo + Gestión de Mantenimientos"
**Sprint Goal**: Completar el MVP con gestión completa de estados de reserva, módulo de mantenimientos preventivos/correctivos y despliegue en producción.

**Historias Incluidas**:
- HU-16: Ver historial de alquileres
- HU-17: Cambiar estado a EN_USO
- HU-18: Finalizar reserva
- HU-20: Registrar mantenimientos
- HU-21: Ver historial de mantenimientos
- HU-22: Marcar equipo EN_MANTENIMIENTO
- HU-08: Dar de baja equipos
- HU-24: Ver último mantenimiento (visible para contratista)

**Incremento Esperado**: 
MVP 100% funcional con ciclo de vida completo de reservas, módulo de mantenimientos integrado y sistema desplegado en ambiente de producción (Azure).

**Definición de Hecho (DoD)**:
- Ciclo completo de reserva funcional (PENDIENTE → FINALIZADA)
- Módulo de mantenimientos operativo
- Historial de alquileres visible para contratistas
- Base de datos poblada con datos de prueba
- Sistema desplegado en Azure con URL pública
- Documentación técnica básica completa
- Pruebas de aceptación aprobadas

### 4.5 Definición del MVP

El **Producto Mínimo Viable (MVP)** de KontraK debe cumplir con las siguientes capacidades esenciales:

**Funcionalidades Core**:
1. ✅ Sistema de autenticación con roles (Contratista/Administrador)
2. ✅ Catálogo público de maquinaria con fichas técnicas completas
3. ✅ Visualización de especificaciones técnicas (potencia, dimensiones, categoría, accesorios)
4. ✅ Sistema de reservas con selección de fechas
5. ✅ Validación automática de disponibilidad de equipos
6. ✅ Cálculo automático de costo según días de alquiler
7. ✅ Workflow de aprobación/rechazo de reservas
8. ✅ Gestión administrativa de maquinaria (CRUD completo)
9. ✅ Historial de alquileres por contratista
10. ✅ Sistema de estados de reserva (ciclo de vida completo)
11. ✅ Módulo de registro y seguimiento de mantenimientos
12. ✅ Estados de maquinaria (Disponible/Ocupada/En Mantenimiento)

**Criterios de Aceptación del MVP**:
- Sistema desplegado en Azure y accesible vía URL pública
- Base de datos PostgreSQL persistente en Azure Database
- Al menos 10 equipos de distintas categorías registrados en catálogo
- Posibilidad de realizar un alquiler completo de extremo a extremo
- Interfaz responsive y usable en desktop y mobile
- Sin errores críticos en flujos principales
- Historial de mantenimientos visible para administradores

**Categorías de Maquinaria en MVP**:
- Excavación (miniexcavadoras, retroexcavadoras)
- Mezcla (mezcladoras de concreto, revolvedoras)
- Compactación (compactadoras de suelo, apisonadoras)
- Perforación (taladros, martillos neumáticos)
- Elevación (elevadores, andamios)

**Fuera del MVP (Roadmap Futuro)**:
- Pasarela de pagos en línea
- App móvil nativa
- Sistema de notificaciones automáticas (SMS/Email)
- Geolocalización de equipos con GPS
- Sistema de entregas y logística
- Integración con seguros para maquinaria
- Portal de capacitación para operadores
- Reportes avanzados y analytics
- Programa de fidelización para contratistas frecuentes

---

## Próximos Pasos (Priorizado)

### ✅ COMPLETADO
1. ✅ Estructura del proyecto definida (KontraK - Alquiler de Maquinaria de Construcción)
2. ✅ Base de datos H2 configurada con esquema completo (6 tablas)
3. ✅ Modelo Vehiculo actualizado con campos específicos de maquinaria (categoria, potencia, capacidad, dimensiones, peso, accesorios, horasUso, requiereCertificacion)
4. ✅ Frontend rebrandeado a KontraK con diseño industrial (naranja/negro)
5. ✅ Formularios de registro y visualización de maquinaria actualizados
6. ✅ Header y navegación rediseñados con UX mejorada
7. ✅ Página de inicio con secciones informativas (categorías, cómo funciona, beneficios)
8. ✅ Sistema de autenticación funcional con Spring Security

### 🔄 EN PROGRESO (Esta semana)
9. 🔄 **Validar controladores y servicios** - Asegurar que manejen correctamente los nuevos campos de maquinaria
10. 🔄 **Crear datos de prueba** - Insertar 15-20 equipos de ejemplo en distintas categorías
11. 🔄 **Probar flujo completo de reserva** - Verificar workflow end-to-end
12. 🔄 **Ajustar dashboards** - Mostrar estadísticas relevantes de inventario

### ⏭️ SIGUIENTE FASE (Semana siguiente)
13. ⏭️ **Migrar a PostgreSQL** - Configurar Neon DB (gratis) o Azure Database
14. ⏭️ **Script de inicialización SQL** - Crear `data.sql` con maquinarias reales
15. ⏭️ **Integración Cloudinary** - Configurar carga de imágenes de equipos
16. ⏭️ **Deploy Azure App Service** - Publicar aplicación con URL pública
17. ⏭️ **Pruebas de aceptación** - UAT con usuarios reales (compañeros/profesor)
18. ⏭️ **Documentación final** - README técnico y manual de usuario

---

## Diferencias Clave vs Proyecto Original

| Aspecto | Proyecto Original | KontraK |
|---------|------------------|-------------|
| **Dominio** | Alquiler de vehículos | Alquiler de maquinaria de construcción |
| **Usuario Principal** | Clientes individuales | Contratistas emergentes |
| **Propósito** | Experiencia premium | Democratizar acceso a herramientas |
| **Impacto Social** | Bajo | Alto (apoya microempresas) |
| **Categorización** | Marcas/Modelos de autos | Tipos de trabajo (excavación, mezcla, etc.) |
| **Especificaciones** | Año, color, kilometraje | Potencia, dimensiones, accesorios |
| **Certificaciones** | No aplica | Algunos equipos requieren licencia |
| **Mantenimientos** | Importante | CRÍTICO (seguridad operativa) |
| **Contexto** | Eventos, lujo | Proyectos de construcción, necesidad |

---

**Fecha de creación**: 18 de enero de 2026  
**Versión**: 2.0  
**Estado**: En Planificación  
**Enfoque**: Alquiler de Maquinaria de Construcción para Contratistas Emergentes
