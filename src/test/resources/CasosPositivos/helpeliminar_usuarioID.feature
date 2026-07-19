Feature: Eliminar usuario

  Background:
    * url 'https://serverest.dev'
    * path 'usuarios'

  @caso01
  Scenario: Eliminar usuario existente
    * def result = call read('helpregistrar_usuario.feature@caso01')
    * def userId = result.response._id
    * path userId
    Given method delete
    Then status 200
    And match response.message == 'Registro excluído com sucesso'