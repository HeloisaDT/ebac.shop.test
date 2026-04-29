Funcionalidade: Login na plataforma

  Como cliente da EBAC-SHOP
  Quero fazer login
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na tela de login

  Cenário: Login com dados válidos
    Quando insiro usuário e senha válidos e clico no botão "login"
    Então sou direcionado para a tela de checkout

  Cenário: Login com dados inválidos
    Quando insiro usuário ou senha inválidos e clico no botão "login"
    Então vejo a mensagem "Usuário ou senha inválidos"
