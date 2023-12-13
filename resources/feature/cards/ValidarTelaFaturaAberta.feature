# language: pt

@homecards
Funcionalidade: Validar Tela Fatura Aberta

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and01 @ios01 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar Tela de Fatura Aberta
    Quando estou na tela de Home do Orbi
    Entao clico no botao do menu Cartoes
    Quando estou na tela de Home de Cartoes
    E clico para abrir a tela de fatura aberta
    Entao valido que a tela de fatura aberta foi carregada com sucesso

  @and01 @ios01 @integrationandroid @integrationios
  Cenario: [Cards] - Integrtion - Validar Valores da Fatura Aberta e Resumo da Fatura na tela da Fatura Aberta
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF informando o usuario "99530900848"
    E consulto a home de cards no BFF
    E no BFF consulto a fatura aberta pela data
    E clico para abrir a tela de fatura aberta
    Entao valido que o valor da fatura aberta presente na tela de fatura esta correto
    E valido que a data do fechamento da fatura esta correta
    E valido que o valor da fatura anterior esta correto
    E valido que o valor de Pagamentos-Creditos esta correto
    E valido que o valor de Compras-Debitos esta correto