Feature: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto
  Para inserir no carrinho

  Background:
    Given que estou na página de produto

  Scenario: Selecionar produto com sucesso
    When seleciono a cor "azul"
    And seleciono o tamanho "M"
    And seleciono a quantidade "2"
    Then o produto deve ser adicionado ao carrinho

  Scenario: Campos obrigatórios não preenchidos
    When não seleciono cor, tamanho ou quantidade
    Then deve exibir mensagem de erro de campos obrigatórios

  Scenario: Limite máximo de produtos
    When seleciono uma quantidade maior que 10
    Then deve exibir mensagem "Quantidade máxima permitida é 10"

  Scenario: Limpar seleção
    When clico no botão "limpar"
    Then o produto volta ao estado original
