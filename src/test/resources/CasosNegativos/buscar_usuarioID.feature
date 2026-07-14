Feature: Buscar usuario por ID

  Background:
    * url 'https://serverest.dev'
    * path 'usuarios'

  @caso01

  # ❌ Caso negativo
  Scenario: Buscar usuario inexistente
    * def invalidId = '1234567890ABCDEF'
    * path invalidId
    Given method get
    When status 400
    Then match response.message == 'Usuário não encontrado'

  @caso02

  # ✅ Caso positivo -- puedo colocal el ID--mv0pcMSRxMwHL4PC  --id no existente zXyiDJUgsUO5hGTO
  Scenario: Buscar usuario existente
    * def userId = 'joHS9xS5InHeywcY'
    * path userId
    Given method get
    Then status 200
    And match response._id == userId

  @caso03

  # ✅ Caso positivo--aca jala el post de registrar_ususario
  Scenario: Buscar usuario existente
    * def result = call read('registrar_usuario.feature@caso01')
    * def userId = result.response._id
    * path userId
    Given method get
    Then status 200
    And match response._id == userId