# language: pt

@homecards
Funcionalidade: Validar Tela Historico de Faturas

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and06 @ios01 @smokeandroid @smokeios @task-464084
  Cenario: [Cards] - Smoke - Validar Tela Historico Faturas
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    Entao valido que o botao "Faturas" do carrossel esta presente na tela
    E clico no atalho do carrossel "Faturas" na tela "Cartões"
    Entao valido que o botao Faturas Futuras esta sendo apresentado na tela
    E valido que a lista do historico de faturas esta sendo apresentado na tela

  @and06 @ios01 @integrationandroid @integrationios @task-464084
  Cenario: [Cards] - Integration - Validar Valores das Faturas na tela de Historico Faturas
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF com usuario valido
    E consulto o historico de faturas no BFF
    E estou na tela de Home de Cartoes
    E clico no atalho do carrossel "Faturas" na tela "Cartões"
    Entao valido que a data das faturas estao sendo corretas
    E valido que o valor das faturas estao sendo mostrados de forma correta
    E valido que o status das faturas estao sendo mostrados de forma correta