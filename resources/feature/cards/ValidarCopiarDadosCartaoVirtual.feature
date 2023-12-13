# language: pt

@homecards
Funcionalidade: Copiar dados do Cartao Virtual da conta

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and02 @ios02 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar funcionalidade de copiar dados do cartao virtual da conta
    Quando estou na tela de Home do Orbi
    E autentico no BFF com usuario valido
    E valido que o cartao virtual da conta esta com o status de "UNBLOCKED"
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    E acesso a tela do cartao virtual da conta
    Entao valido que o cartao virtual esta desbloqueado
    Quando clico no botao para copiar os dados do cartao virtual
    Entao valido que os dados do cartao virtual foram copiados com sucesso