Feature: Eliminar usuario

  Background:
    * url 'https://serverest.dev'
    * path 'usuarios'

  @caso01

  # ❌ Caso negativo
  Scenario: Eliminar usuario inexistente
    * def invalidId = 'zXyiDJUgsUO5hGTO'
    * path invalidId
    Given method delete
    When status 200
    Then match response.message == 'Nenhum registro excluído'

  @caso02

  # ✅ Caso positivo
  Scenario: Eliminar usuario existente
    * def userId = 'ES6ZhEZKPrA3NbCN'
    * path userId
    Given method delete
    When status 200
    Then match response.message == 'Registro excluído com sucesso'