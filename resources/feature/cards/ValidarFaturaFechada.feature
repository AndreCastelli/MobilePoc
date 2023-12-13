# language: pt

@homecards
Funcionalidade: Fatura Fechada na Home de Cartoes

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and02 @ios01 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar informacao de Fatura Fechada na home de cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    Quando estou na tela de Home de Cartoes
    Entao valido o titulo de "Fatura Fechada" na home de cartoes
    E valido que o valor da fatura fechada esta presente na tela
    E valido o o texto do vencimento vencimento da fatura esta presente na tela

  @and02 @ios02 @integrationandroid @integrationios
  Cenario: [Cards] - Integration - Validar valor correto da Fatura Fechada na home cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF com usuario valido
    E consulto a home de cards no BFF
    Entao valido que o valor da fatura fechada presente na tela da home de cartoes esta correto
    E valido que o texto de vencimento da fatura esta presente na tela da home de cartoes esta correto
