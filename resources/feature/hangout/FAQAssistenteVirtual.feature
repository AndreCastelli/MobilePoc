# language: pt

@hangout
Funcionalidade: [ASSISTENTE_VIRTUAL] FAQ dos Produtos Ofertados
  Como: Renata
  Quero: Acessar a FAQ dos produtos ofertados
  Para: tirar minhas dúvidas sobre os produtos

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

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre cartao de debito da conta orbi do Assistente Virtual
    Quando envio a mensagem "A minha conta Orbi terá cartão de débito?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_CARD_DEBIT"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre aumento de limite do cartao de credito da conta orbi do Assistente Virtual
    Quando envio a mensagem "Posso solicitar aumento de limite do cartão de crédito Orbi?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_CARD_CREDIT_LIMIT"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre sacar dinheiro da conta orbi do Assistente Virtual
    Quando envio a mensagem "Posso sacar dinheiro da minha conta Orbi?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_WITHDRAW_CASH"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre habilitar cartao virtual da conta orbi do Assistente Virtual
    Quando envio a mensagem "Como faço para habilitar o cartão virtual da conta digital?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ENABLE_VIRTUAL_CARD"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre bloqueio do cartao de virtual da conta orbi do Assistente Virtual
    Quando envio a mensagem "Se eu não quiser mais utilizar o cartão virtual posso bloquear?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_LOCK_VIRTUAL_CARD"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre o cartao de virtual da conta orbi do Assistente Virtual
    Quando envio a mensagem "O que é cartão virtual?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_VIRTUAL_CARD"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre atraso da fatura da conta orbi do Assistente Virtual
    Quando envio a mensagem "Se estiver em atraso com a fatura do Meu cartão, a minha conta Orbi será bloqueada?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_INVOICE_DELAY"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre exclui o cartao virtual do Assistente Virtual
    Quando envio a mensagem "Exclui meu cartão virtual, o que acontece com as minhas compras?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_DELETE_VIRTUAL_CARD"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre cartao fisico pelo App orbi do Assistente Virtual
    Quando envio a mensagem "Será possível solicitar o cartão físico pelo APP ?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_PHYSICAL_CARD"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre cartao virtual da conta digital para compras do Assistente Virtual
    Quando envio a mensagem "Como utilizar o cartão virtual da conta digital para compras?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_VIRTUAL_CARD_PURCHASES"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre consultar extrato do Assistente Virtual
    Quando envio a mensagem "Como faço para consultar o extrato?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_EXTRACT"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre atualizar o cadastro do Assistente Virtual
    Quando envio a mensagem "Como realizar a atualização do meu cadastro?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_UPDATE"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre gastos do cartao virtual do Assistente Virtual
    Quando envio a mensagem "Onde vão aparecer os gastos que realizar com o cartão virtual?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_VIRTUAL_CARD_SPENDING"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre alterar a data de vencimento da fatura pelo App orbi do Assistente Virtual
    Quando envio a mensagem "Consigo alterar a data de vencimento da fatura pelo APP?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_INVOICE_DUE_DATE"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre depositar dinheiro na conta orbi do Assistente Virtual
    Quando envio a mensagem "Como eu faço para colocar dinheiro na minha conta Orbi?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_DEPOSIT_CASH"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre pagar contas com a conta orbi do Assistente Virtual
    Quando envio a mensagem "Como eu faço para pagar contas com a minha conta Orbi?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_PAY_BILLS"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre parcelar fatura pelo App orbi do Assistente Virtual
    Quando envio a mensagem "É possível parcelar a fatura pelo APP ?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_INVOICE_INSTALLMENT"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre acessar o historico das faturas pelo App orbi do Assistente Virtual
    Quando envio a mensagem "É possível acessar histórico de faturas ?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_INVOICE_HISTORY"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre pagar a fatura do MC usando saldo da conta orbi do Assistente Virtual
    Quando envio a mensagem "Posso pagar a fatura do MC utilizando o saldo da minha conta Orbi?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_INVOICE_BALANCE"
    E validados as respostas quero resetar a conversa "Até mais"

  @and02 @integrationandroid @pbi329675
  Cenario: [Hangout] - Fluxo da FAQ sobre funcionalidades do MC do app orbi do Assistente Virtual
    Quando envio a mensagem "Quais funcionalidades do MC estão disponíveis no app Orbi?"
    Entao verifico as respostas do cliente "Gael" com "MESSAGE_FAQ_ACCOUNT_FEATURES"
    E validados as respostas quero resetar a conversa "Até mais"