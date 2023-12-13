# language: pt

@hangout
Funcionalidade: [ASSISTENTE_VIRTUAL] Consultar tela de Ajuda do Orbi
  Como: Renata
  Quero: Acessar os textos de ajuda e abrir o chat para atendimento
  Para: tirar minhas dúvidas sobre o Orbi

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "64621280031"
    E insiro a senha "160421" e clico em logar
    Entao estou na tela de Home do Orbi

  @and02 @integrationandroid @pbi258050
  Cenario: [Hangout] - Acessar Assistente Virtual atravez da Ajuda do Orbi
    Quando clico no botao Ajuda na Home
    Entao estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    Entao a cliente e direcionada para a tela de "Assistente virtual"

  @and02 @integrationandroid @pbi258050
  Cenario: [Hangout] - Acessar Assistente Virtual pela tela Minha Conta
    Quando clico no botao Perfil do Usuario na Home
    E estou na tela de Minha Conta da Home
    Entao clico a opcao "Ajuda" na lista da Minha Conta da Home
    E estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    Entao a cliente e direcionada para a tela de "Assistente virtual"

  @and02 @integrationandroid @pbi258050
  Cenario: [Hangout] - Iniciar uma conversa com a Assistente Virtual
    Quando clico no botao Ajuda na Home
    Entao estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    Entao a cliente e direcionada para a tela de "Assistente virtual"
    Quando envio a mensagem "Olá"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_WELLCOME"
    E validados as respostas quero resetar a conversa "Até mais"