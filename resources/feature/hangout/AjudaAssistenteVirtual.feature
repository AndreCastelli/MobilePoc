# language: pt

@hangout
Funcionalidade: [ASSISTENTE_VIRTUAL] Consultar tela de Ajuda do Orbi
  Como: Renata
  Quero: abrir o chat para atendimento
  Para: tirar minhas dúvidas sobre o Orbi

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "64621280031"
    E insiro a senha "160421" e clico em logar
    Entao estou na tela de Home do Orbi
    Quando clico no botao Ajuda na Home
    Entao estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    Entao a cliente e direcionada para a tela de "Assistente virtual"

  @and02 @integrationandroid @pbi300538
    Cenario: [Hangout] - Iniciar o fluxo de ajuda do Assistente Virtual
      Quando envio a mensagem "Olá"
      E clico no botao "Tirar uma dúvida!" no assistente virtual
      Entao verifico as respostas do cliente "Gael" com "MESSAGE_HELP"
      Quando envio a mensagem "Como uso o cartão virtual?"
      Entao verifico as respostas do cliente "Gael" com "MESSAGE_HELP_RETURN"
      E validados as respostas quero resetar a conversa "Até mais"
