Feature: Login na plataforma

  Como cliente da EBAC-SHOP
  Quero fazer login
  Para visualizar meus pedidos

  Background:
    Given que estou na tela de login

  Scenario: Login com dados válidos
    When insiro usuário válido
    And insiro senha válida
    And clico no botão "login"
    Then sou direcionado para a tela de checkout

  Scenario: Login com dados inválidos
    When insiro usuário ou senha inválidos
    And clico no botão "login"
    Then vejo a mensagem "Usuário ou senha inválidos"
