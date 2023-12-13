# language: pt

@homecards
Funcionalidade: Fatura Aberta na Home de Cartoes

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and06 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar informacao de Fatura Aberta na home cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    Entao valido que o valor da fatura aberta esta presente na tela
    E valido que o texto de fechamento da fatura esta presente na tela

  @and06 @integrationandroid @integrationios
  Cenario: [Cards] - Integration - Validar valor correto da Fatura Aberta na home cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF com usuario valido
    E consulto a home de cards no BFF
    Entao valido que o valor da fatura aberta presente na tela da home de cartoes esta correto
    E valido que o texto de fechamento da fatura esta presente na tela da home de cartoes esta correto


