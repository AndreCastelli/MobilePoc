#language: pt

Funcionalidade: [SmokeTest] - Navegar nas telas da Home
  Como Renata
  Quero navegar nas telas de home do Orbi

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "12077106441"
    E insiro a senha "160421" e clico em logar

  @and01 @ios01 @smokeandroid @smokeios
  Cenario: [SmokeTest] Acessar a Home o Perfil e a Ajuda
    Quando estou na tela de Home do Orbi
    Entao valido o componente de cartoes na Home
    E realizo o swipe para baixo da home
    Entao valido o anuncio "Conta digital" com texto "Facilidade para pagar contas, receber e transferir dinheiro. Orbi é a conta digital que faz seu mundo girar."
    Entao clico no botao Perfil do Usuario na Home
    E estou na tela de Minha Conta da Home
    Entao clico a opcao "Perfil" na lista da Minha Conta da Home
    Quando estou na tela de Perfil do usuario
    E estou em Perfil retorno para a tela "Minha conta"
    Quando estou na tela de Minha Conta da Home
    Entao clico a opcao "Ajuda" na lista da Minha Conta da Home
    Quando estou na tela de Ajuda da Home
    E estou em Ajuda retorno para a tela "Minha conta"
    Quando estou na tela de Minha Conta da Home
    Entao clico no botao Sair do App
    E confirmo o logout do Orbi a mensagem "Você sempre poderá entrar novamente."
    E que estou na tela de login do orbi deslogada