Funcionalidade: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto
  Para inserir no carrinho

  Contexto:
    Dado que estou na página de produto

  Cenário: Selecionar produto com sucesso
    Quando seleciono cor, tamanho e quantidade
    Então o produto deve ser adicionado ao carrinho

  Cenário: Campos obrigatórios não preenchidos
    Quando não seleciono cor, tamanho ou quantidade
    Então deve exibir mensagem de erro de campos obrigatórios

  Cenário: Limite máximo de produtos
    Quando seleciono uma quantidade maior que 10
    Então deve exibir mensagem "Quantidade máxima permitida é 10"

  Cenário: Limpar seleção
    Quando clico no botão "limpar"
    Então o produto volta ao estado original
