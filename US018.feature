Feature: Visualización de tareas asignadas desde el móvil
  Como trabajador de campo
  Quiero ver las tareas que me han sido asignadas en mi celular
  Para saber qué actividades debo realizar en el día y dónde

# -------------------------------------------------------------------------------------------
  Scenario: Lista de tareas diarias
    Given el trabajador inicia sesión en su dispositivo
    When accede a su perfil
    Then ve las tareas asignadas con fecha, ubicación e instrucciones

# -------------------------------------------------------------------------------------------
  Scenario: Gestión del estado de tareas
    Given el trabajador realiza una tarea
    When actualiza el estado
    Then puede marcarla como “En progreso” o “Completada”