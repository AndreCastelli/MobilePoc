# language: pt

@home
Funcionalidade: [HOME] Consultar Home do Orbi
  Como: Renata
  Quero: Consultar o saldo da conta, o cartao e os anuncios da home
  Para: Permitir que navegue na home do Orbi

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "12077106441"
    E insiro a senha "160421" e clico em logar


  @ios01 @and04 @regressionandroid @regressionios @pbi261992
  Cenario: [Home] - Validar navegacao do usuario na home e efetuar logoff
    Quando estou na tela de Home do Orbi
    E estou na Home com a saudacao do usuario "Olá, Antonella"
    Entao valido o componente de cartoes na Home
    E visualizo o saldo "R$ 1.245,13" do usuario na Home
    E valido o final do cartao "Final 9586" na Home
    E realizo o swipe para baixo da home
    Entao valido o anuncio "Conta digital" com texto "Facilidade para pagar contas, receber e transferir dinheiro. Orbi é a conta digital que faz seu mundo girar."
    E valido o anuncio "Do seu jeito" com texto "Não tem mistério. Com apenas alguns cliques é possível realizar transações com autonomia e segurança."
    Entao realizo o swipe no componente de anuncios da home
    E valido o anuncio "Meu Cartão" com texto "Praticidade nas compras do dia a dia em nossas lojas, no app Renner ou onde você quiser."
    Entao clico no botao Perfil do Usuario na Home
    E estou na tela de Minha Conta da Home
    Entao clico no botao Sair do App
    E confirmo o logout do Orbi a mensagem "Você sempre poderá entrar novamente."
    E que estou na tela de login do orbi deslogada


#  @ios01 @and01 @integrationandroid @integrationios @pbi261992 #bug na tela da home @janaina.lavarda
#  Cenario: [Home] - Validar saldo da conta do usuario na Home
#    Quando estou na tela Home e valido todos elementos
#    E estou na Home com a saudacao do usuario "Olá, Antonella"
#    Entao valido o componente de cartoes na Home
#    E visualizo o saldo "R$ 1.245,13" do usuario na Home


  @ios03 @and03 @integrationandroid @integrationios @pbi263719
  Cenario: [Home] - Validar componente de Anuncios da Home
    Quando estou na tela de Home do Orbi
    E realizo o swipe para baixo da home
    Entao valido o anuncio "Conta digital" com texto "Facilidade para pagar contas, receber e transferir dinheiro. Orbi é a conta digital que faz seu mundo girar."
    E valido o anuncio "Do seu jeito" com texto "Não tem mistério. Com apenas alguns cliques é possível realizar transações com autonomia e segurança."
    Entao realizo o swipe no componente de anuncios da home
    E valido o anuncio "Meu Cartão" com texto "Praticidade nas compras do dia a dia em nossas lojas, no app Renner ou onde você quiser."


  @ios02 @and02 @integrationandroid @integrationios @pbi276553
  Cenario: [Home] - Validar componente de Cartoes da Home
    Quando estou na tela de Home do Orbi
    Entao valido o componente de cartoes na Home
    E valido que tem um valor de limite disponivel no cartao na Home
    E valido que tem um valor de fatura aberta no cartao na Home
    E valido o final do cartao "Final 9586" na Home


  @and06 @integrationandroid @pbi303790
  Cenario: [Home] - Validar componente de atalhos na home
    Quando estou na tela de Home do Orbi
    Entao valido o componente de atalhos na home
    E valido o atalho "Pagar conta" na home
    E valido o atalho "Transferir" na home
    E valido o atalho "Depositar" na home
    E valido o atalho "Meus limites" na home
    E valido o atalho "Movimentações" na home


  @and01 @integrationandroid @pbi303791
  Cenario: [Home] - Validar tela de edicao de atalhos da home
    Quando estou na tela de Home do Orbi
    Entao valido o componente de atalhos na home
    E clico no atalho do carrossel "Editar atalhos" na tela "home"
    E valido a tela de edicao de atalho da home
    E valido a mensagem "HOME_SCREEN_SHORTCUT_MESSAGE"



#  -----------Mais ações mapeadas:
#   Entao clico no botao Ajuda na Home
#   Entao clico no botao do menu Home
#   Entao clico no botao do menu Cartoes
#   Entao clico no botao do menu Conta

