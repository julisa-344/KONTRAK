[TS-1] Registrar Vehiculo  Creada: 04/oct/25  Actualizada: 14/oct/25  Resuelta: 14/oct/25
Estado:
Finalizada
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
Miguel Angel Garcia Narciso


Enlaces de incidencias:

Relates
relates to
TS-41
Creacion del prototipo de BD para el ...
Finalizada



Sprint:
Sprint 1
Acceptance Criteria:
El sistema debe permitir registrar un vehículo solo si se ingresan todos los campos obligatorios.
Si falta algún dato, debe mostrar un mensaje de validación indicando el error.
Una vez registrado correctamente, el sistema debe mostrar el vehículo en el listado de disponibles para renta.
Debe dar una confirmación del registro con un mensaje (ejemplo: “Vehículo registrado correctamente”).


 Descripción 




Como propietario del vehiculo, quiero registrar un vehiculo para rentarlo en el sistema.





[TS-2] Modificar Vehiculo  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Enlaces de incidencias:

Relates
relates to
TS-6
Mostrar catalogo de Vehiculos
Tareas por hacer



Sprint:


Acceptance Criteria:
El usuario debe poder modificar los campos.
Todos los campos obligatorios deben validarse antes de guardar los cambios.
Al guardar, el sistema debe actualizar la información en la base de datos.
El sistema debe mostrar un mensaje de confirmación indicando que la modificación fue exitosa.
Si ocurre un error (por ejemplo, datos incompletos), el sistema debe mostrar un mensaje indicando el motivo.


 Descripción 
 


Como propietario del vehiculo, quiero modificar los campos de un vehículo para actualizar su información en el sistema.





[TS-3] Eliminar Vehiculo  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Enlaces de incidencias:

Relates
relates to
TS-6
Mostrar catalogo de Vehiculos
Tareas por hacer



Sprint:


Acceptance Criteria:
El sistema debe permitir seleccionar un vehículo existente en el listado.
Antes de eliminar, el sistema debe mostrar un mensaje de confirmación (ejemplo: “¿Está seguro de eliminar este vehículo?”).
Al confirmar, el sistema debe retirar el vehículo del catálogo de disponibles para renta.
El sistema debe mostrar un mensaje confirmando la eliminación exitosa.
Si ocurre un error (por ejemplo, vehículo no encontrado), el sistema debe mostrar un mensaje indicando el motivo.
El catálogo debe actualizarse inmediatamente para reflejar la eliminación.


 Descripción 
 


Como propietario del vehiculo, quiero eliminar un vehículo para que ya no aparezca en el sistema de renta.





[TS-4] Mostrar detalles de un Vehiculo  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Enlaces de incidencias:

Blocks
blocks
TS-9
Reservar Vehiculo
Tareas por hacer
Relates
relates to
TS-6
Mostrar catalogo de Vehiculos
Tareas por hacer



Sprint:


Acceptance Criteria:
El sistema debe permitir seleccionar un vehículo desde el catálogo.
Al seleccionar, el sistema debe mostrar la información detallada del vehículo.
La vista de detalles debe ser clara y diferenciada del listado general.
El sistema debe permitir regresar fácilmente al catálogo de vehículos.
Si el vehículo no está disponible o ha sido eliminado, el sistema debe mostrar un mensaje adecuado (ejemplo: “El vehículo ya no se encuentra disponible”).


 Descripción 
 


Como cliente conductor, quiero ver los detalles de un vehículo para conocer su información completa antes de rentarlo.





[TS-6] Mostrar catalogo de Vehiculos  Creada: 04/oct/25  Actualizada: 08/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Enlaces de incidencias:

Relates
relates to
TS-2
Modificar Vehiculo
Tareas por hacer
relates to
TS-3
Eliminar Vehiculo
Tareas por hacer
relates to
TS-4
Mostrar detalles de un Vehiculo
Tareas por hacer



Sprint:
Sprint 1
Acceptance Criteria:
El sistema debe mostrar un listado de todos los vehículos disponibles para renta.
El sistema debe permitir identificar claramente si un vehículo está disponible o no.
El catálogo debe actualizarse automáticamente cuando se registre, modifique o elimine un vehículo.
El sistema debe permitir al usuario seleccionar un vehículo del catálogo para continuar con el proceso de renta.


 Descripción 
 


Como cliente conductor, quiero visualizar el catálogo de vehículos para elegir uno disponible para rentar.





[TS-7] Buscar Vehiculos  Creada: 04/oct/25  Actualizada: 05/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
La búsqueda debe ser rápida.
Si no existen vehículos que cumplan con los criterios, el sistema debe mostrar un mensaje indicando “No hay vehículos disponibles según su búsqueda”.


 Descripción 
 


Como usuario , quiero buscar vehículos según mis preferencias, para encontrar el que se adapte a mis necesidades.





[TS-8] Filtrar Vehiculos  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-9] Reservar Vehiculo  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Enlaces de incidencias:

Blocks
blocks
TS-10
Modificar Reserva
Tareas por hacer
blocks
TS-11
Mostrar Resumen de reserva
Tareas por hacer
is blocked by
TS-4
Mostrar detalles de un Vehiculo
Tareas por hacer



Sprint:


Acceptance Criteria:
El cliente debe poder visualizar los vehículos disponibles con información como marca, modelo, precio y estado.
El sistema debe permitir seleccionar las fechas y horas de inicio y fin de la reserva.
El sistema debe permitir seleccionar las fechas y horas de inicio y fin de la reserva.


 Descripción 
 


Como cliente conductor, quiero reservar el transporte de mi preferencia, para asegurar la fecha y hora según mi necesidad.





[TS-10] Modificar Reserva  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Enlaces de incidencias:

Blocks
is blocked by
TS-9
Reservar Vehiculo
Tareas por hacer



Rank:
0|i0000u:r
Sprint:


Acceptance Criteria:
El cliente debe poder acceder a la lista de sus reservas activas.
Se podrá modificar:
Fecha de inicio y fin del alquiler.
Vehículo seleccionado (si está disponible).
Método de pago (opcional).
Al guardar los cambios, el sistema actualizará la reserva y notificará al usuario mediante un mensaje o correo.


 Descripción 
 


Como cliente conductor, quiero modificar una reserva existente, para actualizar datos de la reserva.





[TS-11] Mostrar Resumen de reserva  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar
Resolución:
Sin resolver
Votos:
0
Etiquetas:
Ninguno


Enlaces de incidencias:

Blocks
is blocked by
TS-9
Reservar Vehiculo
Tareas por hacer



Sprint:


Acceptance Criteria:
El sistema debe mostrar un resumen con los siguientes datos:
Vehículo seleccionado (marca, modelo, imagen, categoría).
Fecha y hora de recogida y devolución.
Lugar de entrega y devolución.
Precio total (detallando tarifa base, impuestos y seguros).
Políticas de cancelación
El usuario debe poder regresar a modificar la reserva si encuentra un error.
El resumen debe mostrarse antes de la confirmación final o el pago.


 Descripción 
 


Como cliente conductor, quiero ver un historial de mi reserva antes de confirmar , para verificar que la información ingresada sea correcta.





[TS-12] Eliminar Reserva  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
El sistema debe mostrar la lista de reservas activas del usuario.
El sistema debe permitir seleccionar una reserva para eliminar.
Al eliminar la reserva, el sistema debe mostrar un mensaje de confirmación antes de proceder (“¿Está seguro de eliminar esta reserva?”).
Una vez confirmada la eliminación, la reserva debe desaparecer de la lista de reservas del arrendatario.
El vehículo asociado a la reserva debe quedar nuevamente disponible para otros clientes.
Si la reserva no existe o ya fue eliminada, el sistema debe mostrar un mensaje de advertencia.
El sistema debe registrar en el historial que la reserva fue cancelada, con fecha y hora.


 Descripción 
 


Como cliente conductor, quiero poder eliminar una reserva previamente realizada para cancelar el alquiler de un vehículo que ya no deseo utilizar





[TS-13] Dar de baja a Vehiculo  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
El sistema debe permitir seleccionar un vehículo existente en el listado.
Al darlo de baja, el sistema debe cambiar el estado del vehículo a “Fuera de servicio”.
Un vehículo dado de baja no debe mostrarse en el catálogo de vehículos disponibles para renta.
El historial del vehículo (alquileres previos, mantenimientos, documentos) debe permanecer accesible para consulta administrativa.
El sistema debe permitir registrar un motivo de baja (ejemplo: vendido, siniestro, mantenimiento prolongado).
El sistema debe mostrar un mensaje de confirmación indicando que el vehículo fue dado de baja exitosamente.


 Descripción 
 


Como usuario, quiero dar de baja un vehículo para que deje de estar disponible en el sistema de renta sin perder su historial.





[TS-14] Registrar mantenimiento de vehiculo  Creada: 04/oct/25  Actualizada: 14/oct/25  Resuelta: 14/oct/25
Estado:
Finalizada
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:
Sprint 1
Acceptance Criteria:
El sistema debe permitir seleccionar un vehículo existente para asociarle un mantenimiento.
El sistema debe permitir registrar los siguientes datos obligatorios:
Nombre de mantenimiento
Fecha
Descripción del servicio realizado
Una imagen o archivo del documento de mantenimiento (ej. boleta, orden de servicio, comprobante del taller).
Todos los campos obligatorios deben validarse antes de guardar.
Al guardar, el sistema debe asociar el registro al vehículo seleccionado y marcarlo automáticamente con el estado “En revisión”.
Si ocurre un error (datos incompletos, archivo inválido o vehículo inexistente), el sistema debe mostrar un mensaje de advertencia indicando el motivo.
El sistema debe mostrar un mensaje de confirmación cuando el mantenimiento se registre correctamente.


 Descripción 
 


Como propietario del vehiculo, quiero registrar el mantenimiento de un vehículo para asociar su información y documento correspondiente





[TS-15] Registrar Usuario con Email  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-16] Modificar Usuario  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-17] Eliminar Usuario  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-18] Mostrar Perfil de Usuario  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-19] Elegir tipo de Usuario  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-20] Acceso de Administrador  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
El Administrador debe poder ingresar con su usuario y contraseña.
Sistema debe validar datos en la BD.
La sesión debe mantenerse activa hasta que el administrador cierre sesión o expire el tiempo definido.


 Descripción 
 


Como administrador, quiero acceder al sistema con mi credencial, para controlar los usuarios, vehículos y otros registros ingresados.





[TS-21] Panel de Vendedor  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
El vendedor debe poder iniciar sesión con su usuario y contraseña.
Una vez autenticado, el sistema mostrará un panel con opciones:
Registrar nueva reserva.
Consultar disponibilidad de autos.
Gestionar clientes.
Visualizar historial de alquileres
El vendedor no debe tener acceso a funciones exclusivas del administrador (como reportes globales o configuración del sistema).


 Descripción 
 


Como propietario del vehiculo, quiero tener un panel de control, para gestionar las reservas, registrar clientes y consultar la disponibilidad de vehículos





[TS-22] Panel de Comprador  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
El comprador (cliente), puede acceder a este panel , después de iniciar sesión.
El panel debe mostrar:
Información del perfil del usuario.
Historial de alquileres realizados.
Reservas activas y su estado (pendiente, en curso, finalizada).
Debe existir una opción para cancelar reservas activas antes de la fecha de inicio.


 Descripción 
 


Como cliente conductor, quiero tener en mi perfil una opción donde pueda ver mis reservas e historial, para tener control de mis operaciones.





[TS-23] Control de Accesos por Rol  Creada: 04/oct/25  Actualizada: 05/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
El sistema debe permitir crear, editar y eliminar roles.
Cada usuario debe tener asignado un rol específico.
El sistema debe restringir automáticamente las funcionalidades según el rol del usuario:
Administrador: acceso total (gestión de usuarios, vehículos, reservas, reportes).
Empleado: acceso parcial (gestión de reservas y clientes).
Cliente: acceso limitado (crear y visualizar sus reservas).


 Descripción 
 


Como Administrador del sistema, quiero asignar roles (administrador, cliente, vendedor), para controlar las acciones y accesos de cada usuario.





[TS-24] Recuperar Contraseña  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-25] Estadisticas de Reservas como administrador  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-26] Estadisticas de Reservas como vendedor  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-27] Crear Rol  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-28] Modificar Rol  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-29] Eliminar Rol  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-30] Registrar incidencias con usuarios  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-31] Recibir notificaciones sobre entrega  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-32] Recibir notificaciones sobre reserva  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-33] Seleccionar método de pago  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
El sistema debe mostrar las opciones de métodos de pago disponibles (ejemplo: tarjeta de crédito/débito, transferencia bancaria, billetera digital, efectivo en oficina).
El cliente debe poder seleccionar solo un método de pago por reserva.
El sistema debe validar los datos ingresados para el pago (ejemplo: número de tarjeta válido, fecha de vencimiento, código CVV).
En caso de seleccionar efectivo en oficina, no se deben pedir datos adicionales.
El sistema debe mostrar un mensaje de confirmación una vez registrado el método de pago.
Si el cliente no selecciona un método de pago, no debe poder finalizar la reserva.
El sistema debe guardar el método de pago asociado a la reserva en la base de datos.
En caso de error en la validación de datos de pago, el sistema debe mostrar un mensaje de advertencia y no permitir continuar hasta corregirlo.


 Descripción 
 


Como cliente conductor, quiero elegir el método de pago que prefiera al confirmar mi reserva para completar el proceso de alquiler de manera cómoda y segura





[TS-34] Procesar Pago Seguro  Creada: 04/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
El sistema debe procesar el pago utilizando una pasarela segura (ejemplo: cifrado SSL/TLS).
Los datos sensibles del cliente (número de tarjeta, CVV, etc.) no deben almacenarse en el sistema.
Si el pago es aprobado por la pasarela, el sistema debe:
Registrar la transacción con un número de operación único.
Cambiar el estado de la reserva a Confirmada.
Notificar al cliente con un mensaje de éxito.
Si el pago es rechazado, el sistema debe mostrar un mensaje claro (ejemplo: “Fondos insuficientes”, “Tarjeta inválida”) y mantener la reserva en estado Pendiente de pago.
El sistema debe permitir reintentar el pago en caso de error o rechazo.
Todas las operaciones de pago deben quedar registradas en un historial de transacciones asociado al cliente.
En caso de error técnico en la pasarela, el sistema debe mostrar un mensaje de advertencia y no confirmar la reserva hasta que se complete el pago.


 Descripción 
 


Como cliente conductor quiero realizar el pago de mi reserva de manera segura para garantizar que la transacción sea protegida y la reserva quede confirmada





[TS-35] Notificar confirmación del pago  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-36] Historial de Alquileres  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-37] Solicitud de Devolución  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-38] Chat de Soporte  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-39] Página Web Responsiva  Creada: 04/oct/25  Actualizada: 04/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:







[TS-40] Reactivar Vehiculo  Creada: 05/oct/25  Actualizada: 06/oct/25
Estado:
Tareas por hacer
Proyecto:
AutoRent


Tipo:
Historia
Informador:
Miguel Angel Garcia Narciso
Persona asignada:
sin asignar


Sprint:


Acceptance Criteria:
El sistema debe permitir consultar el listado de vehículos dados de baja.
El sistema debe permitir seleccionar un vehículo inactivo para reactivarlo.
Al reactivarlo, el estado del vehículo debe cambiar a “Activo” y volver a mostrarse en el catálogo de vehículos disponibles para renta.
El sistema debe validar que el vehículo tenga toda la información y documentación vigente antes de reactivarlo (ejemplo: mantenimiento y seguro en regla).
El sistema debe mostrar un mensaje de confirmación indicando que el vehículo fue reactivado exitosamente.
Si ocurre un error (vehículo inexistente, documentación vencida, etc.), el sistema debe mostrar un mensaje de advertencia con el motivo.


 Descripción 
 


Como usuario, quiero reactivar un vehículo dado de baja para que vuelva a estar disponible en el sistema de renta.


