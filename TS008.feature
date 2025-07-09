Feature: Soporte offline en campo
  Como trabajador de campo
  Quiero poder registrar y consultar mis actividades de trabajo sin depender de una conexión a internet
  Para asegurar la continuidad del trabajo y la precisión en los registros, incluso en zonas donde no hay cobertura de red

# -------------------------------------------------------------------------------------------
  Scenario: Registro de actividades sin conexión a internet
    Given que el trabajador está en una zona sin conexión a internet
    When el trabajador registra una actividad (por ejemplo, tarea agrícola o reporte de condición de campo)
    Then el sistema almacena los datos de forma local en el dispositivo, asegurando que la información no se pierda

# -------------------------------------------------------------------------------------------
  Scenario: Sincronización automática al reconectar
    Given que el trabajador está fuera de línea y los datos han sido almacenados localmente
    When el dispositivo recupera la conexión a internet
    Then el sistema sincroniza automáticamente los datos locales con el servidor central sin intervención del usuario

# -------------------------------------------------------------------------------------------
  Scenario: Visualización de registros almacenados sin conexión
    Given que el trabajador está en una zona sin conexión a internet
    When el trabajador abre la aplicación para consultar registros pasados (por ejemplo, historial de tareas o comentarios)
    Then el sistema muestra los datos previamente sincronizados o almacenados localmente, sin requerir conexión

# -------------------------------------------------------------------------------------------
  Scenario: Notificación de sincronización exitosa
    Given que el trabajador ha terminado de registrar actividades y hay datos almacenados localmente
    When el dispositivo se conecta a internet y realiza la sincronización
    Then el sistema notifica al trabajador que la sincronización se ha completado con éxito

# -------------------------------------------------------------------------------------------
  Scenario: Gestión de errores durante la sincronización
    Given que el trabajador ha registrado actividades sin conexión y el dispositivo ha intentado sincronizar
    When ocurre un error durante la sincronización (por ejemplo, falla de conexión temporal o conflicto de datos)
    Then el sistema muestra un mensaje de error y permite al trabajador reintentar la sincronización más tarde, asegurando la integridad de los datos