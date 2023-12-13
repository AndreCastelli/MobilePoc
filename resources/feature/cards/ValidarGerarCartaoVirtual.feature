# language: pt

@homecards
Funcionalidade: Gerar Cartao Virtual da Conta

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que e gerado uma cliente MC na Conductor
    Quando cadastro a cliente na WhiteList
    E gero um novo device Id
    E cadastro a senha "036559" para a conta criada
    E que me autentico no app Orbi utilizando o usuario criado
    E insiro a senha "036559" e clico em logar

  @and01 @ios01 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar Tela Gerar Cartao Virtual da Conta
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    E acesso a tela para gerar o cartao virtual da conta
    Entao valido que a tela de gerar cartao virtual foi carregada com sucesso
    Quando clico para ativar o cartao virtual da conta
#    E informo a senha transacional para ativar o cartao virtual da conta
    Entao valido que a tela de sucesso na ativacao do cartao virtual foi carregada com sucesso

  @and01 @ios01 @integrationandroid @integrationios
  Cenario: [Cards] - Integration - Validar Cartao Virtual da Conta gerado
    Quando estou na tela de Home do Orbi
    E clico no botao do menu Cartoes
    E estou na tela de Home de Cartoes
    E autentico no BFF com usuario criado recentemente
    E acesso a tela para gerar o cartao virtual da conta
    Entao valido que a tela de gerar cartao virtual foi carregada com sucesso
    Quando clico para ativar o cartao virtual da conta
#    E informo a senha transacional para ativar o cartao virtual da conta
    Entao valido que a tela de sucesso na ativacao do cartao virtual foi carregada com sucesso
    E consulto no BFF os cartoes criados desse usuario
    E valido que o cartao virtual da conta foi criado corretamente
