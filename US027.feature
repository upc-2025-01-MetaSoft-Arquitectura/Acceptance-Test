Feature: Consulta de historial de incidencias por parcela
  Como vinicultor
  Quiero consultar el historial de incidencias reportadas por parcela
  Para identificar patrones y tomar decisiones preventivas

# -------------------------------------------------------------------------------------------
  Scenario: Filtro por parcela
    Given el vinicultor accede a la sección de incidencias
    When selecciona una parcela específica
    Then el sistema muestra todas las incidencias registradas en esa ubicación

# -------------------------------------------------------------------------------------------
  Scenario: Visualización de detalles
    Given se selecciona una incidencia del historial
    When el vinicultor revisa la información
    Then puede ver la fecha, descripción, trabajador que la reportó y estado de atención