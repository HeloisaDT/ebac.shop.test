Feature: Configurar produto

  Scenario: Selecionar produto corretamente
    Given que estou na página de produto
    When seleciono cor, tamanho e quantidade
    Then o produto deve ser adicionado ao carrinho
