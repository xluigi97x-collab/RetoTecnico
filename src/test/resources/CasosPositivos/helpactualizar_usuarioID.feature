Feature: Actualizar usuario

  Background:
    * url 'https://serverest.dev'
    * path 'usuarios/'

  @caso01

  Scenario: Actualizar datos válidos
    * def registro = call read('helpregistrar_usuario.feature@caso01')
    * def userId = registro.response._id
    * def email = 'luigiUpdate' + java.util.UUID.randomUUID().toString() + '@qa.com.br'
    Given path userId
    And request
  """
  {
    "nome": "Luig15",
    "email": "#(email)",
    "password": "tester",
    "administrador": "true"
  }
  """
    When method put
    Then status 200
    * print registro
    * print userId
    And match response.message == 'Registro alterado com sucesso'