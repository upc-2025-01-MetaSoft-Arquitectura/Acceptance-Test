Feature: Registro de actividades de campo en modo offline
  Como trabajador de campo
  Quiero registrar mis actividades de manera local cuando no haya conexión a internet
  Para asegurar que los datos se guarden correctamente y se sincronicen automáticamente al recuperar la conexión

# -------------------------------------------------------------------------------------------
  Scenario: Registro de actividades en modo offline
    Given que el dispositivo no cuenta con conexión a internet
    When el trabajador registra una actividad de campo
    Then el sistema debe almacenar la información localmente en el dispositivo

# -------------------------------------------------------------------------------------------
  Scenario: Sincronización automática al recuperar conexión
    Given que el dispositivo ha recuperado la conexión a internet
    When el sistema detecta registros pendientes
    Then el sistema sincroniza automáticamente los datos locales con la base de datos central

# -------------------------------------------------------------------------------------------
  Scenario: Indicador de sincronización pendiente
    Given que existen actividades registradas sin conexión
    When el trabajador accede al listado de tareas
    Then el sistema muestra un indicador visual de que hay datos pendientes de sincronizar