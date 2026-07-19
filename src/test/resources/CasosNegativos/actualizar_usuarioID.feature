Feature: Actualizar usuario

  Background:
    * url 'https://serverest.dev'
    * path 'usuarios'

  @caso01

  # ❌ Caso negativo
  Scenario: Actualizar usuario invalidoooooo
    * def invalidId = ''
    * path invalidId
    Given request
      """
  {
  "nome": "Luigi Actualizado1",
  "email": "luigiact4@update.com",
  "password": "tester",
  "administrador": "true"
  }
  """
    When method put
    Then status 405
    And match response.message contains 'Não é possível realizar PUT'

 # @caso02

  # ✅ Caso positivo
 # Scenario: Actualizar datos válidos
 #   * def userId = 'joHS9xS5InHeywcY'
 #   * path userId
 #   Given request
 # """
 # {
 # "nome": "Luigi Actualizado1",
 # "email": "luigiact13@update.com",
 # "password": "tester",
 # "administrador": "true"
 # }
 # """
 #   When method put
 #   Then status 200
 #   And match response.message == 'Registro alterado com sucesso'