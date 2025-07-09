Feature: Registro rápido de incidencias
  Como trabajador de campo
  Quiero registrar rápidamente una incidencia como una plaga o problema técnico
  Para que el vinicultor pueda tomar acción cuanto antes

# -------------------------------------------------------------------------------------------
  Scenario: Creación rápida de reporte
    Given el trabajador detecta una incidencia
    When accede al formulario de reporte
    Then puede ingresar descripción, foto y ubicación del problema

# -------------------------------------------------------------------------------------------
  Scenario: Envío y notificación
    Given un reporte ha sido completado
    When lo envía
    Then el vinicultor es notificado inmediatamente con los datos ingresados