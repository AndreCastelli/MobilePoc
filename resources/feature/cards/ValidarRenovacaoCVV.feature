# language: pt

@homecards
Funcionalidade: Bloquear Temporariamente o Cartao Virtual da conta

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and02 @ios02 @smokeandroid @smokeios @integrationandroid @integrationios
  Cenario: [Cards] - Smoke/Integration - Validar funcionalidade de renovar cvv do cartao virtual da conta
    Quando estou na tela de Home do Orbi
    E autentico no BFF com usuario valido
    E valido que o cartao virtual da conta esta com o status de "UNBLOCKED"
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    E acesso a tela do cartao virtual da conta
    E clico no botao para renovar o cvv do cartao
    Entao valido que a pop up de renovar o codigo de seguranca do cartao virtual esta visivel na tela
    Quando clico em renovar Codigo de Seguranca
    Entao valido que o cvv foi renovado com sucesso