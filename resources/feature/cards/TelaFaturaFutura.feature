# language: pt

@homecards
Funcionalidade: Validar Tela Fatura Futura

  @ios02
  Cenario: [Cards] - Smoke - Validar Tela Fatura Futura Vazia
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    Entao valido que o botao "Faturas" do carrossel esta presente na tela
    Quando clico no atalho do carrossel "Faturas" na tela "Cartões"
    E clico no botao Ver Fatura Futura para abrir a tela de fatura futura
    Entao valido que a tela de Fatura Futura esta mostrando a mensagem de listagem de faturas vazia

  @ios02
  Cenario: [Cards] - Smoke - Validar Tela Fatura Futura
    Dado que me autentico no app Orbi utilizando o usuario "70352662166"
    E insiro a senha "123456" e clico em logar
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    Entao valido que o botao "Faturas" do carrossel esta presente na tela
    Quando clico no atalho do carrossel "Faturas" na tela "Cartões"
    E clico no botao Ver Fatura Futura para abrir a tela de fatura futura
    Entao valido que a tela de fatura futura foi carregada com sucesso


  @ios02 @andre
  Cenario: [Cards] - Integration - Validar Tela Fatura Futura
    Dado que me autentico no app Orbi utilizando o usuario "99515203325"
    E insiro a senha "123456" e clico em logar
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E autentico no BFF um usuario com fatura futura
    E consulto as faturas futuras no BFF
    E estou na tela de Home de Cartoes
    Entao valido que o botao "Faturas" do carrossel esta presente na tela
    Quando clico no atalho do carrossel "Faturas" na tela "Cartões"
    E clico no botao Ver Fatura Futura para abrir a tela de fatura futura
    Entao valido que a data das faturas futuras estao sendo mostradas de forma correta
    E valido que o valor das faturas futuras estao sendo mostrados de forma correta
    E valido que o status das faturas futuras estao sendo mostrados de forma correta