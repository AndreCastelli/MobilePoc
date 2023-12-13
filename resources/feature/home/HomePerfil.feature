# language: pt

@home
Funcionalidade: [HOME_PERFIL] Consultar perfil do usuario
  Como: Renata
  Quero: Consultar os dados do perfil, alterar dados do perfil
  Para: Permitir que acesse meus dados do perfil e edite dados do perfil

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "48186782605"
    E insiro a senha "160421" e clico em logar

  @ios04 @and04 @integrationandroid @integrationios @pbi291871
  Cenario: [Home] - Validar dados pessoais do perfil do usuario
    Quando estou na tela de Home do Orbi
    Entao clico no botao Perfil do Usuario na Home
    E estou na tela de Minha Conta da Home
    Entao clico a opcao "Perfil" na lista da Minha Conta da Home
    Quando estou na tela de Perfil do usuario
    Entao clico na opcao "Dados pessoais" do Perfil da Home
    E estou na tela de "Dados pessoais" dentro de Perfil da Home
    E valido o nome "Giovanna Martins Marinho" cpf "***.***.826-05" e data nascimento "02/06/1996" dos dados do usuario no Perfil

  @and04 @ios03 @integrationandroid @integrationios @pbi263415
  Cenario: [Home] - Alterar nome de preferencial do perfil do usuario
    Quando estou na tela de Home do Orbi
    Entao clico no botao Perfil do Usuario na Home
    E estou na tela de Minha Conta da Home
    Entao clico a opcao "Perfil" na lista da Minha Conta da Home
    Quando estou na tela de Perfil do usuario
    Entao clico na opcao "Nome de preferência" do Perfil da Home
    E estou na tela de "Alterar nome de preferência" dentro de Perfil da Home
    Quando insiro o novo nome de preferencia "Gi " no Perfil
    E clico no botao Atualizar nome no Perfil
    Entao verifico que o nome foi alterado na tela do Perfil
    E estou em Perfil retorno para a tela "Minha conta"
    Quando estou na tela de Minha Conta da Home
    E estou em Minha conta retorno para a tela Home
    Quando estou na tela de Home do Orbi
    E verifico que o nome foi alterado na Home do Orbi