# language: pt

@hangout
Funcionalidade: [ASSISTENTE_VIRTUAL] Exibir video de boas vindas
  Como: GLEYDIANA
  Quero: Que me mostre o video das funcionalidades
  Para: Saber das funcionalidades

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar
    Quando estou na tela de Home do Orbi
    E clico no botao Ajuda na Home
    Entao estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda

  @and02 @integrationandroid @pbi294995
  Cenario: [Hangout] - Fluxo para exibir o video
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_WELLCOME"
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_FAQ_ACCOUNT_FEATURES_VIDEO"
    Quando clico no botao "Sim, por favor." no assistente virtual
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_FAQ_ACCOUNT_FEATURES_VIDEO_YES"
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_EVALUATION_MENU_YES"


  @and02 @integrationandroid @pbi294995
  Cenario: [Hangout] - Fluxo para não exibir o video
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_WELLCOME"
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_FAQ_ACCOUNT_FEATURES_VIDEO"
    Quando clico no botao "Agora não." no assistente virtual
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_FAQ_ACCOUNT_FEATURES_VIDEO_NO"
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_EVALUATION_MENU_YES"