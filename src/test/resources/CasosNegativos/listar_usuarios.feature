Feature: Listar usuarios
  Background:
    * url 'https://serverest.dev'
    * path 'usuarios'


  @caso01

  # ❌ Caso negativo
  Scenario: Intentar listar usuarios con endpoint incorrecto
    * path 'usuarios_inexistente'
    Given method get
    When status 400
    And match response.id == 'id deve ter exatamente 16 caracteres alfanuméricos'

  @caso02

  # ✅ Caso positivo
  Scenario: Obtener lista de usuarios correctamente
    Given method get
    When status 200
    Then match response contains { "quantidade": "#number" }