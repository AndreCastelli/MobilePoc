# language: pt

@hangout
Funcionalidade: [ASSISTENTE_VIRTUAL] Avaliar FAQ dos Produtos Ofertados
  Como: Renata
  Quero: Acessar a FAQ dos produtos ofertados
  Para: tirar minhas dúvidas sobre os produtos e avaliar

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "64621280031"
    E insiro a senha "160421" e clico em logar
    Entao estou na tela de Home do Orbi
    Quando clico no botao Ajuda na Home
    Entao estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    Entao a cliente e direcionada para a tela de "Assistente virtual"
    Quando envio a mensagem "Olá"
    E clico no botao "Tirar uma dúvida!" no assistente virtual
    Quando envio a mensagem "Como uso o cartão virtual?"

  @and02 @integrationandroid @pbi302646
  Cenario: [Hangout] - Iniciar o fluxo de avaliacao de resposta do Assistente Virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION"
    Quando clico no botao "Sim, era isso!" no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_YES"
    Quando clico no botao "Sim, por favor!" no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_MENU_YES"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi302646
  Cenario: [Hangout] - Fluxo de avaliacao de resposta com resposta util do Assistente Virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION"
    Quando clico no botao "Sim, era isso!" no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_YES"
    Quando clico no botao "Não, era só isso." no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_MENU_NO"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi302646
  Cenario: [Hangout] - Fluxo de avaliacao de resposta com resposta nao util do Assistente Virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION"
    Quando clico no botao "Infelizmente não :(" no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_NO"
    Quando clico no botao "Sim, por favor!" no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_HELP"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi302646
  Cenario: [Hangout] - Fluxo de avaliacao de resposta com resposta nao util dando sugestao do Assistente Virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION"
    Quando clico no botao "Infelizmente não :(" no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_NO"
    Quando clico no botao "Não precisa." no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_RESPONSE"
    Quando clico no botao "Quero dar uma sugestão!" no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_SUGGESTION"
    Quando envio a mensagem "Alguma sugestão"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_SUGGESTION_RESPONSE"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi302646
  Cenario: [Hangout] - Fluxo de avaliacao de resposta com resposta nao util sem sugestao do Assistente Virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION"
    Quando clico no botao "Infelizmente não :(" no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_NO"
    Quando clico no botao "Não precisa." no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_RESPONSE"
    Quando clico no botao "Agora não ;)" no assistente virtual
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_EVALUATION_SUGGESTION_NO"
    E validados as respostas quero resetar a conversa "Até mais"