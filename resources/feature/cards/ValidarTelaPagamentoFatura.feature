# language: pt

@homecards
Funcionalidade: Validar Tela Pagamento de Fatura

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and02 @ios02 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar Tela de Pagamento de Fatura / Tela do Boleto - Fluxo do Botao Pagar Fatura
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    Entao valido estou na tela de Home de Cartoes
    Quando clico no botao pagar para para abrir a tela de pagamento
    Entao valido que a tela de pagamento de fatura foi carregada com sucesso atraves do acesso pelo botao pagar fatura
    Quando clico na opcao "Gerar Boleto" para abrir a tela de pagamento
    Entao valido que a tela de pagamento da fatura por boleto foi carregada com sucesso

  @and02 @ios02 @smokeandroid @smokeios
  Cenario: [Cards] Smoke - Validar Tela de Pagamento de Fatura / Tela do Boleto - Fluxo da Tela de Fatura Fechada
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    Entao valido estou na tela de Home de Cartoes
    Quando clico para abrir a tela de fatura fechada
    E clico em pagar fatura
    Entao valido que a tela de pagamento de fatura foi carregada com sucesso atraves do acesso pelo botao pagar fatura
    Quando clico na opcao "Gerar Boleto" para abrir a tela de pagamento
    Entao valido que a tela de pagamento da fatura por boleto foi carregada com sucesso

  @and02 @ios02 @integrationandroid @integrationios
  Cenario: [Cards] - Integration - Validar Valores na tela Tela de Pagamento de Fatura - Fluxo do Botao Pagar Fatura
    Dado autentico no BFF informando o usuario "99530900848"
    E consulto a home de cards no BFF
    E no BFF consulto os dados do pagamento da fatura fechada pela data da fatura
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    Entao valido estou na tela de Home de Cartoes
    Quando clico no botao pagar para para abrir a tela de pagamento
    Entao valido que o valor total da fatura fechada na tela de pagamento esta correto
    E valido que o valor de pagamento minino da fatura fechada na tela de pagamento esta correto esta correto
    E valido que a data de vencimento da fatura fechada na tela de pagamento esta correta

  @and02 @ios02 @integrationandroid @integrationios
  Cenario: [Cards] - Integration - Validar Valores na tela Tela de Pagamento de Fatura - Fluxo da Tela de Fatura Fechada
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF informando o usuario "99530900848"
    E consulto a home de cards no BFF
    E no BFF consulto os dados do pagamento da fatura fechada pela data da fatura
    Entao valido estou na tela de Home de Cartoes
    Quando clico para abrir a tela de fatura fechada
    E clico em pagar fatura
    Entao valido que o valor total da fatura fechada na tela de pagamento esta correto
    E valido que o valor de pagamento minino da fatura fechada na tela de pagamento esta correto esta correto
    E valido que a data de vencimento da fatura fechada na tela de pagamento esta correta

  @and02 @ios02 @integrationandroid @integrationios
  Cenario: [Cards] - Integration - Validar Valores na tela de Boleto Gerado da Fatura Fechada - Fluxo do Botao Pagar Fatura
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF informando o usuario "99530900848"
    E consulto a home de cards no BFF
    E no BFF consulto os dados do boleto gerado para a fatura fechada
    Entao valido estou na tela de Home de Cartoes
    Quando clico no botao pagar para para abrir a tela de pagamento
    E clico na opcao "Gerar Boleto" para abrir a tela de pagamento
    Entao valido que o valor total da fatura fechada na tela do boleto gerado esta correto
    E valido que valor de pagamento minimo da fatura fechada na tela do boleto gerado esta correto
    E valido que a data de vencimento da fatura fechada na tela do boleto gerado esta correto
    E valido que a linha digital do boleto na tela do boleto gerado esta correta

  @and02 @ios02 @integrationandroid @integrationios
  Cenario: [Cards] - Integration - Validar Valores na tela de Boleto Gerado da Fatura Fechada - Fluxo da Tela de Fatura Fechada
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF informando o usuario "99530900848"
    E consulto a home de cards no BFF
    E no BFF consulto os dados do boleto gerado para a fatura fechada
    Entao valido estou na tela de Home de Cartoes
    Quando clico para abrir a tela de fatura fechada
    E clico em pagar fatura
    E clico na opcao "Gerar Boleto" para abrir a tela de pagamento
    Entao valido que o valor total da fatura fechada na tela do boleto gerado esta correto
    E valido que valor de pagamento minimo da fatura fechada na tela do boleto gerado esta correto
    E valido que a data de vencimento da fatura fechada na tela do boleto gerado esta correto
    E valido que a linha digital do boleto na tela do boleto gerado esta correta


