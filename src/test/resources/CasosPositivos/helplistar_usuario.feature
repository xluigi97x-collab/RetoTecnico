Feature: Helper para listar usuarios

  Background:
    * url 'https://serverest.dev'
    * path 'usuarios'

  @caso01

  Scenario: Listar usuarios correctamente
    Given method get
    Then status 200
    And match response contains { quantidade: '#number' }