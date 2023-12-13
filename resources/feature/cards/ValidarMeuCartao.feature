# language: pt

@homecards
Funcionalidade: Meu Cartao Home de Cards

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and05 @smokeandroid @smokeios @ios01
  Cenario: [Cards] - Smoke - Validar informacao do meu cartao na home de cartoes
    Quando estou na tela de Home do Orbi
    Entao clico no botao do menu Cartoes
    Quando estou na tela de Home de Cartoes
    Então valido que o Meu Cartao esta sendo mostrado na home de cartoes
    E valido o final do numero "Final 2472" do meu cartao na home de cartoes

  @and06 @integrationandroid @integrationios @ios01
  Cenario: [Cards] - Integration - Validar informacao correta do meu cartao na home de cartoes
    Quando estou na tela de Home do Orbi
    Quando clico no botao do menu Cartoes
    E autentico no BFF com usuario valido
    E consulto os cartoes desse usuario no BFF
    Entao valido que o Meu Cartao esta sendo mostrado com o nome correto
    E valido que os quatro ultimos digitos do MC estao corretos
