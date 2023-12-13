# language: pt

@hangout
Funcionalidade: [ASSISTENTE_VIRTUAL] FAQ dos Produtos Ofertados
  Como: Vinicius
  Quero: Acessar a FAQ dos produtos ofertados
  Para: tirar minhas duvidas sobre os produtos

  Contexto: Logar - Acesso o Orbi com um usuario ativo e entrar na FAQ para tirar duvidas
    Dado que me autentico no app Orbi utilizando o usuario "88511937706"
    E insiro a senha "687017" e clico em logar
    Quando clico no botao Ajuda na Home
    E estou na tela de Ajuda da Home
    Quando clico no botao Abrir assistente virtual na Ajuda
    
  @and02 @integrationandroid @pbi419870 @pbi460130
  Cenario: [Hangout] - Fluxo da FAQ sobre "O que é open Banking?"
    Quando envio a mensagem "O que e open banking ?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_HOW_OPEN_BANK"
    E valido se o video esta aparecendo
    
  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "O que é seguro?"
    Quando envio a mensagem "O open banking é seguro?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_OPEN_BANK_SECURITY"

  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "Como os dados são controlados?"
    Quando envio a mensagem "Como os dados são controlados?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_CONTROLER_DATA"

  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "Como o outro banco recebera as minhas informações"
    Quando envio a mensagem "Como o outro banco receberá as minhas informações?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_OPEN_INFO_SHARE"

  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "Quais as vantagens do Open Banking?"
    Quando envio a mensagem "Quais as vantagens do Open Banking?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_OPEN_BENEFITS"

  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "Quais dados posso compartilhar com o Open Banking?"
    Quando envio a mensagem "Quais dados posso compartilhar com o Open Banking?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_OPEN_DATA_SHARE"

  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "Quais sao as orientacoes para autorizar o compartilhamento dos meus dados"
    Quando envio a mensagem "Quais são as orientações para autorizar o compartilhamento dos meus dados no Open Banking?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_GUIDELINES_INFOS"

  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "O Pix faz aprte do Open Banking?"
    Quando envio a mensagem "O Pix faz parte do Open Banking?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_DIFFERENCE_PIX_OPEN"

  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "Posso usar o Open Banking se nao uso o APP ou Internet Banking?"
    Quando envio a mensagem "Posso usar o Open Banking se não uso o App ou Internet Banking?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_USE_INFO"

  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "O open Banking tem algum custo pra mim?"
    Quando envio a mensagem "O Open Banking tem algum custo pra mim?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_PRICE_INFO"

  @and02 @integrationandroid @pbi419870
  Cenario: [Hangout] - Fluxo da FAQ sobre "Quais sao os canis de ajuda?"
    Quando envio a mensagem "Preciso de mais informações. Quais são os canais de ajuda?"
    Entao verifico as respostas do cliente "Vinicius" com "MESSAGE_FAQ_ACCOUNT_FEATURES_CENTER_HELP"
