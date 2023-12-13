# language: pt

@hangout
Funcionalidade: [ASSISTENTE_VIRTUAL] Exibição da mensagem melhor dia de compra
  Como: Eloa
  Quero: Informacoes
  Para: obter a mensagem para melhor dia de compra

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and02 @integrationandroid @pbi323976
  Cenario: [Hangout] - Exibicao da mensagem melhor dia de compra
    Quando estou na tela de Home do Orbi
    E clico no botao Ajuda na Home
    Entao estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_FAQ_ACCOUNT_FEATURES"