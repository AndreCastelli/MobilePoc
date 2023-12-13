# language: pt

@homecards
Funcionalidade: Melhor Dia de Compra na Home de Cartoes

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and06 @smokeandroid @pbi-431277
  Cenario: [Cards] - Smoke - Validar informacao da data do melhor dia de compra na home cartoes
    Quando estou na tela de Home do Orbi
    Entao clico no botao do menu Cartoes
    E valido que a data do melhor dia para compra esta presente na tela na home cartoes

  @and06 @integrationandroid @pbi-431277
  Cenario: [Cards] - Integration - Validar data correta do melhor dia de compra na home cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF com usuario valido
    E consulto a home de cards no BFF
    Entao valido se data do melhor dia para compra na home de cartoes esta correto