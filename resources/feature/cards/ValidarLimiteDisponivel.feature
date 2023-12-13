# language: pt

@homecards
Funcionalidade: Limite Disponivel na Home de Cartoes - Visualizar Melhor dia de Compra

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and06 @ios01 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar informacao de limite disponivel/Melhor dia de compra na home cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    Entao valido que a informacao do valor de limite disponivel esta presente na home de cartoes
    E valido que a data do melhor dia para compra esta presente na tela na home cartoes

  @and06 @ios01 @integrationandroid @integrationios
  Cenario: [Cards] - Integration - Validar valor correto do limite disponivel/Data Melhor dia de compra na home cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF com usuario valido
    E consulto a home de cards no BFF
    Entao valido que o valor do limite disponivel presente na tela da home de cartoes esta correto
    E valido se data do melhor dia para compra na home de cartoes esta correto



