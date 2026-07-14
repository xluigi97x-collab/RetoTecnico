Feature: Buscar usuario por ID

  Background:
    * url 'https://serverest.dev'
    * path 'usuarios'

  @caso01
  Scenario: Buscar usuario existente
    * def result = call read('helpregistrar_usuario.feature@caso01')
    * def userId = result.response._id
    * path userId
    Given method get
    Then status 200
    And match response._id == userId