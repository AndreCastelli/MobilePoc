# language: pt

@homecards
Funcionalidade: Bloquear Temporariamente o Cartao Virtual da conta

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and02 @ios02 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar funcionalidade de bloquear temporariamente o cartão virtual da conta
    Quando estou na tela de Home do Orbi
    E autentico no BFF com usuario valido
    E valido que o cartao virtual da conta esta com o status de "UNBLOCKED"
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    E acesso a tela do cartao virtual da conta
    Entao valido que o cartao virtual esta desbloqueado
    Quando clico no switch para bloquear-desbloquear o cartao virtual da conta
    Entao valido que a pop up de bloquear o cartao virtual esta visivel na tela
    Quando clico no botao para bloquear o cartao virtual da conta
#    E informo a senha transacional para bloquear-desbloquear o cartao virtual da conta
    Entao valido que o cartao virtual foi bloqueado com sucesso

  @and02 @ios02 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar funcionalidade de desbloquear o cartão virtual da conta
    Quando estou na tela de Home do Orbi
    E valido que o cartao virtual da conta esta com o status de "BLOCKED"
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    E acesso a tela do cartao virtual da conta
    E autentico no BFF com usuario valido
    Entao valido que o cartao virtual esta bloqueado
    Quando clico no switch para bloquear-desbloquear o cartao virtual da conta
    Entao valido que a pop up de desbloquear o cartao virtual esta visivel na tela
    Quando clico no botao para desbloquear o cartao virtual da conta
#    E informo a senha transacional para bloquear-desbloquear o cartao virtual da conta
    Entao valido que o cartao virtual foi desbloqueado com sucesso