Feature: Cadastro no checkout

  Scenario Outline: Validar cadastro
    Given que estou no checkout
    When preencho email "<email>"
    Then vejo "<mensagem>"

    Examples:
      | email            | mensagem        |
      | teste@email.com  | Sucesso         |
      | testeemail.com   | Email inválido  |
      |                  | Campo obrigatório |
