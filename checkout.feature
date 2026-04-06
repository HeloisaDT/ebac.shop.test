Funcionalidade: Cadastro no checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na tela de cadastro do checkout

  Cenário: Cadastro com sucesso
    Quando preencho todos os campos obrigatórios e clico em "finalizar cadastro"
    Então o cadastro deve ser realizado com sucesso

  Esquema do Cenário: Validar preenchimento do cadastro
    Quando preencho o nome "<nome>", email "<email>", endereço "<endereco>" e clico no botão "finalizar cadastro"
    Então o sistema deve exibir "<mensagem>"

    Exemplos:
      | nome   | email             | endereco | mensagem                             |
      | João   | joao@email.com    | Rua A    | Cadastro realizado com sucesso       |
      | Maria  | mariaemail.com    | Rua B    | Email inválido                       |
      |        | ana@email.com     | Rua C    | Campos obrigatórios não preenchidos  |
      | Carlos |                   | Rua D    | Campos obrigatórios não preenchidos  |
