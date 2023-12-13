# language: pt

@hangout
Funcionalidade: [ASSISTENTE_VIRTUAL] Alterar o Fluxo do cliente
  Como: Eloa
  Quero: Verificar a sequencia do chat
  Para: Ocultar apresentacao do card "como realizar depósito por boleto"

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and02 @integrationandroid @pbi380881
  Cenario: [Hangout] - Exibicao da mensagem melhor dia de compra
    Quando estou na tela de Home do Orbi
    E clico no botao Ajuda na Home
    Entao estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    Entao verifico as respostas do cliente "GLEYDIANA" com "MESSAGE_WELLCOME"