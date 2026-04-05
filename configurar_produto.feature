Feature: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto
  Para inserir no carrinho

  Scenario: Selecionar produto corretamente
    Given que estou na página de produto
    When seleciono cor, tamanho e quantidade
    Then o produto deve ser adicionado ao carrinho

  Scenario: Limite de produtos
    When seleciono mais de 10 produtos
    Then deve aparecer mensagem de erro

  Scenario: Limpar seleção
    When clico no botão limpar
    Then o produto volta ao estado original
