#language: pt

@account @cancel
Funcionalidade: [ACCOUNT] Encerrar Conta.
  Como: Renata
  Quero: solicitar o encerramento da minha conta de pagamento no Orbi.
  Para: encerrar a conta, uma vez que não tenho mais interesse em operar com esta conta.

  @and05 @ios05 @pbi24962 @pbi392458 @integrationios @integrationandroid @regressionandroid
  Cenario: [Conta] Validar a tela de Solicitacao de cancelamento
    Dado que estou logado no app Orbi com usuario "username_account_without_transactions" e senha "password_account" e estou na tela Home
    E clico no botao Perfil do Usuario na Home
    Quando clico a opcao "Cancelar Conta" na lista da Minha Conta da Home
    Entao sera direcionada para a tela Cancelar Conta
    E e exibida a opcao para Cancelar minha conta
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_GOOD_BYE_MESSAGE"
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_CONFIRMATION_MESSAGE"

  @and02 @ios04 @pbi235192 @pbi392462 @integrationandroid @integrationios
  Cenario: [Conta] Apresenta pendencia e nao permite avancar no cancelamento quando cliente possui saldo
    Dado que estou logado no app Orbi com usuario "username_account_balance" e senha "password_account_balance" e estou na tela Home
    E clico no botao Perfil do Usuario na Home
    E clico a opcao "Cancelar Conta" na lista da Minha Conta da Home
    Quando clicar no botao Cancelar Minha Conta
    Entao sera direcionada para a tela Cancelar Conta Pendencias
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES"
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES_BALANCE"
    E valida a mensagem informando ao usuario "Para possibilitar o encerramento da conta, transfira todo o saldo."
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES_PIX_KEYS"
    E o botao Cancelar Conta esta desabilitado da tela de pendencias

  @and04 @ios01 @pbi235192 @pbi392462 @integrationandroid @integrationios
  Cenario: [Conta] Apresenta pendencia e nao permite avancar no cancelamento quando cliente possui chave pix
    Dado que estou logado no app Orbi com usuario "username_account_pix_key" e senha "password_account" e estou na tela Home
    E clico no botao Perfil do Usuario na Home
    E clico a opcao "Cancelar Conta" na lista da Minha Conta da Home
    Quando clicar no botao Cancelar Minha Conta
    Entao sera direcionada para a tela Cancelar Conta Pendencias
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES"
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES_BALANCE"
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES_PIX_KEYS"
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES_PIX_KEYS_DESCRIPTION"
    E o botao Cancelar Conta esta desabilitado da tela de pendencias

  @and02 @ios02 @pbi235192 @pbi392462 @integrationandroid @regressionandroid @integrationios
  Cenario: [Conta] Apresenta pendencia e nao permite avancar no cancelamento quando cliente possui saldo e chave pix
    Dado que estou logado no app Orbi com usuario "username_account_balance_pix_key" e senha "password_account_balance" e estou na tela Home
    E clico no botao Perfil do Usuario na Home
    E clico a opcao "Cancelar Conta" na lista da Minha Conta da Home
    Quando clicar no botao Cancelar Minha Conta
    Entao sera direcionada para a tela Cancelar Conta Pendencias
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES"
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES_BALANCE"
    E valida a mensagem informando ao usuario "Para possibilitar o encerramento da conta, transfira todo o saldo."
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES_PIX_KEYS"
    E valido a mensagem "ENCERRAR_CONTA_SCREEN_PENDENCIES_PIX_KEYS_DESCRIPTION"
    E o botao Cancelar Conta esta desabilitado da tela de pendencias

  @and06 @ios01 @pbi342298 @pbi392463 @integrationandroid @integrationios
  Cenario: [Conta] Validar a lista de motivos de cancelamento
    Dado que estou logado no app Orbi com usuario "username_account_without_transactions" e senha "password_account" e estou na tela Home
    E clico no botao Perfil do Usuario na Home
    E clico a opcao "Cancelar Conta" na lista da Minha Conta da Home
    E clicar no botao Cancelar Minha Conta
    E sera direcionada para a tela Cancelar Conta Pendencias
    Quando clicar no botao Cancelar Conta na tela de pendencias
    Entao sera direcionada para a tela Qual o motivo do cancelamento
    E valido a mensagem "ENCERRAR_CONTA_REASON_INFORM_THE_REASON"
    E valido a mensagem "ENCERRAR_CONTA_REASON_I_ALREADY_HAVE"
    E valido a mensagem "ENCERRAR_CONTA_REASON_DID_NOT_MEET_NEEDS"
    E valido a mensagem "ENCERRAR_CONTA_REASON_ACCOUNT_VERY_CONFUSING"
    E valido a mensagem "ENCERRAR_CONTA_REASON_OPENED_ACCOUNT_BY_ACCIDENT"
    E valido a mensagem "ENCERRAR_CONTA_REASON_RATHER_NOT_ANSWER"
    E valido a mensagem "ENCERRAR_CONTA_REASON_ANOTHER_MOTIVE"
    E o botao "Continuar" da tela esta desabilitado

  @and01 @ios02 @pbi342298 @pbi392463 @integrationandroid @integrationios
  Cenario: [Conta] Ao selecionar um motivo de cancelamento diferente de "outro" habilita o botao Continuar
    Dado que estou logado no app Orbi com usuario "username_account_without_transactions" e senha "password_account" e estou na tela Home
    E clico no botao Perfil do Usuario na Home
    E clico a opcao "Cancelar Conta" na lista da Minha Conta da Home
    E clicar no botao Cancelar Minha Conta
    E sera direcionada para a tela Cancelar Conta
    E clicar no botao Cancelar Conta na tela de pendencias
    E sera direcionada para a tela Qual o motivo do cancelamento
    Quando seleciona o primeiro motivo
    E o botao "Continuar" da tela esta habilitado

  @and02 @ios03 @pbi342298 @pbi392463 @integrationandroid @integrationios
  Cenario: [Conta] Ao selecionar um motivo de cancelamento igual a "outro" e informar o campo Motivo habilita o botao Continuar
    Dado que estou logado no app Orbi com usuario "username_account_without_transactions" e senha "password_account" e estou na tela Home
    E clico no botao Perfil do Usuario na Home
    E clico a opcao "Cancelar Conta" na lista da Minha Conta da Home
    E clicar no botao Cancelar Minha Conta
    E sera direcionada para a tela Cancelar Conta
    E clicar no botao Cancelar Conta na tela de pendencias
    E sera direcionada para a tela Qual o motivo do cancelamento
    Quando seleciona outro motivo
    Entao informa a descricao do motivo "Motivo para cancelamento informado"
    E o botao "Continuar" da tela esta habilitado

  @and06 @ios03 @PBI267701 @integrationandroid @integrationios
  Cenario: [Conta] Validar os termos de cancelamentos e elementos na tela
    Dado que estou logado no app Orbi com usuario "username_account_without_transactions" e senha "password_account" e estou na tela Home
    E clico no botao Perfil do Usuario na Home
    E clico a opcao "Cancelar Conta" na lista da Minha Conta da Home
    E clicar no botao Cancelar Minha Conta
    E sera direcionada para a tela Cancelar Conta
    E clicar no botao Cancelar Conta na tela de pendencias
    E sera direcionada para a tela Qual o motivo do cancelamento
    E seleciona o primeiro motivo
    Quando clicar no botao Continuar da tela de motivos
    Entao sera direcionada para a tela Termos de cancelamento de conta
    E valido a mensagem "TITLE_TERM_CANCELLATION"
    E valido se contem o trecho "MESSAGE_TERM_CANCELLATION"
    E valido a mensagem "CHECKBOX_TERM_CANCELLATION"
    E a checkbox dos termos esta desmarcada
    E o botao "Continuar" da tela esta desabilitado

  @and02 @ios03 @PBI267701 @integrationandroid @integrationios
  Cenario: [Conta] Validar aceite dos termos de cancelamentos
    Dado que estou logado no app Orbi com usuario "username_account_without_transactions" e senha "password_account" e estou na tela Home
    E clico no botao Perfil do Usuario na Home
    E clico a opcao "Cancelar Conta" na lista da Minha Conta da Home
    E clicar no botao Cancelar Minha Conta
    E sera direcionada para a tela Cancelar Conta
    E clicar no botao Cancelar Conta na tela de pendencias
    E sera direcionada para a tela Qual o motivo do cancelamento
    E seleciona o primeiro motivo
    E clicar no botao Continuar da tela de motivos
    E sera direcionada para a tela Termos de cancelamento de conta
    Quando aceitar os termos de cancelamento
    E clicar no botao Continuar da tela dos termos
    Entao a cliente e direcionada para a tela de informar a senha
