Feature: Checkout

  Scenario Outline: Validar email
    When preencho "<email>"
    Then vejo "<mensagem>"

    Examples:
      | email            | mensagem        |
      | teste@email.com  | Sucesso         |
      | testeemail.com   | Email inválido  |
