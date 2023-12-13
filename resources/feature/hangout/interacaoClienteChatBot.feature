# language: pt

@hangout
Funcionalidade: [ASSISTENTE_VIRTUAL] 2 interação do cliente no Bot -  cadastro de chaves Pix
  Como: Vinicius
  Quero: Informacoes
  Para: Possa obter ajuda para erros - duvidas - sugestoes

  Contexto: Logar - Acesso o Orbi com um usuario


  @and02 @integrationandroid @pbi375987
  Cenario: [Hangout]-  Fluxo no Chatbot caso o usuario nao tenha chave pix
    Dado que me autentico no app Orbi utilizando o usuario "52317619316"
    E insiro a senha "687017" e clico em logar
    E estou na tela de Home do Orbi
    E clico no botao Ajuda na Home
    E estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_CARDS_REGISTER_PIX"


  @and02 @integrationandroid @pbi375987
  Cenario: [Hangout] - Fluxo no Chatbot caso o usuario tenha chave pix
    Dado que me autentico no app Orbi utilizando o usuario "64446578227"
    E insiro a senha "687017" e clico em logar
    E estou na tela de Home do Orbi
    E clico no botao Ajuda na Home
    E estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_WELLCOME"