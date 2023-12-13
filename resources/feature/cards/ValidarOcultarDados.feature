# language: pt

@homecards
Funcionalidade: Ocultados dados do Cartao Virtual

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and01 @ios01 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar funcionalidade de ocultar dados do cartão virtual da conta na home de cartoes
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    E clico no botao para ocultar os dados do cartao
    Entao valido que os dados da home de cards foram ocultados

  @and01 @ios01 @integrationandroid @integrationios
  Cenario: [Cards] - Smoke - Validar funcionalidade ocultar dados do cartão virtual na tela do cartao virtual
    Quando estou na tela de Home do Orbi
    E autentico no BFF com usuario valido
    E valido que o cartao virtual da conta esta com o status de "UNBLOCKED"
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    E acesso a tela para gerar o cartao virtual da conta
    E clico no botao para ocultar os dados do cartao
    Entao valido que os dados da tela do cartao virtual foram ocultados