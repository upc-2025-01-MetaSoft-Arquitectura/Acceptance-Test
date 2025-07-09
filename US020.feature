Feature: Modo Simplificado con Íconos Grandes
  Como trabajador con poca experiencia digital
  Quiero una interfaz con íconos grandes y pasos guiados
  Para poder usar la app sin confundirme o perderme

# -------------------------------------------------------------------------------------------
  Scenario: Activación del modo simplificado
    Given que el trabajador accede a la aplicación móvil
    When elige el modo de uso simplificado desde la configuración o pantalla de inicio
    Then la interfaz muestra íconos grandes y navegación guiada
    And las funcionalidades se presentan de forma clara y accesible

# -------------------------------------------------------------------------------------------
  Scenario: Flujo asistido para registrar una tarea
    Given que el modo simplificado está activado
    When el trabajador selecciona la opción “Registrar tarea”
    Then el sistema le muestra instrucciones paso a paso para completar el registro correctamente
    And cada paso incluye textos simples y elementos visuales de apoyo