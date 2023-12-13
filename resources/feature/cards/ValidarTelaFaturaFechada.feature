# language: pt

@homecards
Funcionalidade: Validar Tela Fatura Fechada

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and02 @ios02 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar Tela de Fatura Fechada
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    E clico para abrir a tela de fatura fechada
    Entao valido que a tela de fatura fechada foi carregada com sucesso

  @and02 @ios02 @integrationandroid @integrationios
  Cenario: [Cards] - Integration - Validar Valores da Fatura Fechada e Resumo da Fatura na tela da Fatura Fechada
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF informando o usuario "99530900848"
    E consulto a home de cards no BFF
    E no BFF consulto a fatura fechada pela data
    E clico para abrir a tela de fatura fechada
    Entao valido que o valor da fatura fechada presente na tela de fatura esta correto
    E valido que o valor de pagamento minino da fatura fechada esta correto
    E valido que a data de vencimento da fatura fechada esta correta
    E valido que o valor da fatura fechada anterior esta correto
    E valido que o valor de Pagamentos-Creditos da fatura fechada esta correto
    E valido que o valor de Compras-Debitos da fatura fechada esta correto

