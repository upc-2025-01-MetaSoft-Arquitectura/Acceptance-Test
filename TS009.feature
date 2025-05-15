Feature: Autenticación de usuario en la app móvil mediante IAM
    Como desarrollador
    Quiero integrar un sistema de autenticación IAM en la app móvil
    Para garantizar que solo los usuarios autenticados puedan acceder y realizar acciones dentro de la aplicación

#-------------------------------------------------------------------------------------------
    Scenario: Inicio de sesión con IAM
        Given que la app móvil está conectada al servicio de autenticación IAM
        When el usuario introduce sus credenciales correctamente
        Then el sistema autentica al usuario mediante IAM
        And le concede acceso a la app


#-------------------------------------------------------------------------------------------
    Scenario: Error de autenticación debido a credenciales incorrectas
        Given que el usuario intenta iniciar sesión en la app móvil
        When el usuario introduce credenciales incorrectas
        Then el sistema deniega el acceso
        And muestra un mensaje de error indicando que las credenciales son incorrectas


#-------------------------------------------------------------------------------------------
    Scenario: Expiración de sesión y reautenticación
        Given que el usuario está autenticado en la app móvil
        When la sesión expira
        Then el sistema solicita la reautenticación del usuario
        And no permite continuar con sus acciones en la app hasta que se autentique nuevamente

