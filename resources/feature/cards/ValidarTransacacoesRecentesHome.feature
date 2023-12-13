# language: pt

@homecards
Funcionalidade: Consultar Transacoes Recentes na Home cartoes

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and04 @ios01 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar transacaoes do meu cartao na home de cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    Quando estou na tela de Home de Cartoes
    Entao valido que transacoes recentes estao presentes na home de cartoes

  @and01 @ios01 @integrationios @integrationandroid
  Cenario: [Cards] - Integracao - Validar valores das transacaoes recentes do meu cartao na home de cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF com usuario valido
    E consulto a home de cards no BFF
   Entao valido os valores das transacoes recentes se estao corretos
