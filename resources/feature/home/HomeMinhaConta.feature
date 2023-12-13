# language: pt

@home
Funcionalidade: [HOME_MINHA_CONTA] Consultar dados da conta do usuario
  Como: Renata
  Quero: Consultar os dados da conta, compartilhar dados, consultar Perfil e sair do Orbi
  Para: Permitir que acesse meus dados da conta e perfiil e compartilhe os dados da conta

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "12077106441"
    E insiro a senha "160421" e clico em logar

#  @and05 @ios05 @regressionandroid @regressionios @pbi273508 avaliar porque está falhando @janaina
#  Cenario: [Home] - Validar informacoes da conta do usuario Orbi
#    Quando estou na tela de Home do Orbi
#    Entao clico no botao Perfil do Usuario na Home
#    E estou na tela de Minha Conta da Home
#    E valido os dados do usuario "Antonella Felix Domingues" agencia "Agência 0001" conta "Conta 089985303-6" e banco "374 - Realize CFI S/A"
#    Entao clico a opcao "Perfil" na lista da Minha Conta da Home
#    Quando estou na tela de Perfil do usuario
#    Entao clico na opcao "Dados pessoais" do Perfil da Home
#    E estou na tela de "Dados pessoais" dentro de Perfil da Home
#    E estou em Dados pessoais retorno para a tela "Perfil"
#    Quando estou na tela de Perfil do usuario
#    E estou em Perfil retorno para a tela "Minha conta"
#    Quando estou na tela de Minha Conta da Home
#    Entao clico a opcao "Ajuda" na lista da Minha Conta da Home
#    Quando estou na tela de Ajuda da Home
#    E estou em Ajuda retorno para a tela "Minha conta"
#    Quando estou na tela de Minha Conta da Home
#    Entao clico no botao Sair do App
#    E confirmo o logout do Orbi a mensagem "Você sempre poderá entrar novamente."
#    E que estou na tela de login do orbi deslogada

  @and05 @ios05 @integrationandroid @integrationios @pbi273508
  Cenario: [Home] - Validar informacao dos dados da conta do usuario do Orbi
    Quando estou na tela de Home do Orbi
    Entao clico no botao Perfil do Usuario na Home
    E estou na tela de Minha Conta da Home
    E valido os dados do usuario "Antonella Felix Domingues" agencia "Agência 0001" conta "Conta 089985303-6" e banco "374 - Realize CFI S/A"

  @and02 @integrationandroid @pbi273508
  Cenario: [Home] - Validar botao Compartilhar os dados da conta
    Quando estou na tela de Home do Orbi
    Entao clico no botao Perfil do Usuario na Home
    E estou na tela de Minha Conta da Home
    E clico no botao Compartilhar dados da conta
    E valido texto do botao compartilhar na screen "Antonella Felix Domingues 374 - Realize CFI S/A Agência 0001 Conta 089985303-6"

  @and03 @ios03 @integrationandroid @integrationios @pbi263411
  Cenario: [Home] - Validar Logout do Orbi
    Quando estou na tela de Home do Orbi
    Entao clico no botao Perfil do Usuario na Home
    E estou na tela de Minha Conta da Home
    Entao clico no botao Sair do App
    E confirmo o logout do Orbi a mensagem "Você sempre poderá entrar novamente."
    E que estou na tela de login do orbi deslogada