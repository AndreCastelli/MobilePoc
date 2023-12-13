# language: pt

@homecards
Funcionalidade: Validar Tela de Limite Total

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and06 @ios01 @smokeandroid @smokeios @task-455505
  Cenario: [Cards] - Smoke - Validar Tela Limite Total
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    Entao valido que o botao "Limite" do carrossel esta presente na tela
    E clico no atalho do carrossel "Limite" na tela "Cartões"
    Entao valido que a tela do limite disponivel foi carregada com sucesso

  @and06 @ios01 @integrationandroid @integrationios @task-455505
  Cenario: [Cards] - Integration - Validar Valores na Tela de Limite Total
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF com usuario valido
    E consulto a home de cards no BFF
    E estou na tela de Home de Cartoes
    Entao valido que o botao "Limite" do carrossel esta presente na tela
    Quando clico no atalho do carrossel "Limite" na tela "Cartões"
    E valido que o valor do limite disponivel para uso esta correto
    E valido que o valor do limite total esta correto