Feature: Registrar usuario

  Background:
    * url 'https://serverest.dev'
    * path 'usuarios'

  @caso01

  # ❌ Caso negativo y no olvidar colocar el email que se habia registrado
  Scenario: Registrar usuario con email duplicado
    Given request
        """
  {
  "nome": "juliana ju",
  "email": "luigi15@qa.com.br",
  "password": "teste",
  "administrador": "false"
  }
  """
    When method post
    Then status 400
    And match response.message == 'Este email já está sendo usado'

    @caso02

  # ✅ Caso positivo -- ID=7wYHlQ3knwpRFdyz
  Scenario: Registrar usuario válido
    Given request
        """
  {
  "nome": "luigi",
  "email": "luigi16@qa.com.br",
  "password": "tester",
  "administrador": "true"
  }
  """
    When method post
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'

  @caso03

  Scenario: Registrar usuario con email ya existente
    Given url 'https://serverest.dev'
    And path '/usuarios'
    And request { "nome": "Luigi", "email": "luigi@test.com", "password": "1234", "administrador": "true" }
    When method post
    Then status 400
    And match response.message == 'Este email já está sendo usado'