Feature: Eliminación de una campaña vitivinícola por ID
    Como desarrollador backend
    Quiero crear un endpoint que elimine campañas por su identificador único
    Para mantener actualizados los registros del sistema

#-------------------------------------------------------------------------------------------
    Scenario: Eliminación exitosa de una campaña
        Given que existe una campaña registrada con ID válido
        When el usuario envía una solicitud DELETE al endpoint con ese ID
        Then el sistema elimina la campaña correspondiente
        And responde con un código 200 OK y un mensaje de confirmación

#-------------------------------------------------------------------------------------------
    Scenario: Campaña no encontrada
        Given que el usuario envía un ID de campaña que no existe
        When el sistema intenta buscarla
        Then responde con un código 404 Not Found
        And muestra un mensaje de error indicando “Campaña no encontrada”

#-------------------------------------------------------------------------------------------
    Scenario: Error de formato en el ID
        Given que el usuario envía una solicitud con un ID malformado (por ejemplo, vacío o no numérico)
        When el sistema recibe la solicitud DELETE
        Then responde con un código 400 Bad Request
        And muestra un mensaje indicando “Formato de ID inválido”
