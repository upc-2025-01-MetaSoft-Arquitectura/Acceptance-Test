Feature: Registro de tareas asignadas a trabajadores de campo
    Como desarrollador backend
    Quiero crear un endpoint para registrar tareas asignadas por el vinicultor
    Para asegurar la planificación y trazabilidad del trabajo agrícola

#-------------------------------------------------------------------------------------------
    Scenario: Registro exitoso de tarea
        Given que el vinicultor tiene los datos completos de la tarea (trabajador, parcela, tipo, fecha)
        When envía una solicitud POST al endpoint correspondiente
        Then el sistema registra la tarea
        And responde con un código 201 Created y los detalles de la tarea

#-------------------------------------------------------------------------------------------
    Scenario: Registro fallido por datos incompletos
        Given que el vinicultor omite campos obligatorios al enviar la solicitud
        When el sistema procesa la petición
        Then responde con un código 400 Bad Request
        And muestra un mensaje indicando los campos faltantes

#-------------------------------------------------------------------------------------------
    Scenario: Usuario no autorizado intenta registrar tarea
        Given que un usuario con rol distinto al de vinicultor intenta acceder al endpoint
        When se envía la solicitud POST
        Then el sistema responde con un código 403 Forbidden
        And muestra un mensaje de acceso denegado por falta de permisos
