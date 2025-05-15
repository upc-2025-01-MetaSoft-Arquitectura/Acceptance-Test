Feature: Gestión de perfiles según rol para vinicultores
    Como vinicultor
    Quiero gestionar perfiles de usuario diferenciados según su rol
    Para garantizar que cada tipo de usuario tenga acceso únicamente a las funciones necesarias

#-------------------------------------------------------------------------------------------
    Scenario: Asignación de roles al crear usuario
            Given que se está creando un nuevo usuario
            When el vinicultor selecciona el tipo de usuario trabajador o vinicultor
            Then el sistema asigna permisos predefinidos según el rol


#-------------------------------------------------------------------------------------------
    Scenario: Acceso diferenciado por rol
        Given que un usuario ha iniciado sesión
        When accede al sistema
        Then solo puede ver y utilizar las funcionalidades permitidas según su rol
        And el sistema web está disponible para vinicultores
        And la aplicación móvil está disponible para trabajadores de campo