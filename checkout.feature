Feature: Cadastro no checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Background:
    Given que estou na tela de cadastro do checkout

  Scenario: Cadastro com sucesso
    When preencho todos os campos obrigatórios
    And clico no botão "finalizar cadastro"
    Then o cadastro deve ser realizado com sucesso

  Scenario Outline: Validar preenchimento do cadastro
    When preencho o nome "<nome>"
    And preencho o email "<email>"
    And preencho o endereço "<endereco>"
    And clico no botão "finalizar cadastro"
    Then o sistema deve exibir "<mensagem>"

    Examples:
      | nome   | email             | endereco | mensagem                             |
      | João   | joao@email.com    | Rua A    | Cadastro realizado com sucesso       |
      | Maria  | mariaemail.com    | Rua B    | Email inválido                       |
      |        | ana@email.com     | Rua C    | Campos obrigatórios não preenchidos  |
      | Carlos |                   | Rua D    | Campos obrigatórios não preenchidos  |
