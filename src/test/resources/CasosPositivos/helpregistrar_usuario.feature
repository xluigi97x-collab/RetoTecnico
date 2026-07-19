Feature: Registrar usuario

  Background:
    * url 'https://serverest.dev'
    * path 'usuarios'

  @caso01
  Scenario: Registrar usuario válido
    * def random = java.util.UUID.randomUUID().toString()
    * def email = 'luigi' + random + '@qa.com.br'
    Given request
  """
  {
    "nome": "luigi helper",
    "email": "#(email)",
    "password": "tester",
    "administrador": "true"
  }
  """
    When method post
    Then status 201
    * def result = { id: response._id, email: email }
    * karate.set('result', result)