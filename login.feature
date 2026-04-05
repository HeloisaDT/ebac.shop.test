Feature: Login

  Como cliente da EBAC-SHOP
  Quero fazer login
  Para ver meus pedidos

  Scenario: Login válido
    Given que estou na tela de login
    When insiro dados válidos
    Then acesso o checkout

  Scenario: Login inválido
    Given que estou na tela de login
    When insiro dados inválidos
    Then vejo a mensagem "Usuário ou senha inválidos"
