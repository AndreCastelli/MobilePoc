#language: pt

@onboarding
Funcionalidade: [ONBOARDING_SENHA] Criacao de senha do app Orbi
  Como Cliente Orbi
  Quero criar uma senha para acesso ao app Orbi
  Para poder fazer login no app com segurança

  @and01 @integrationandroid @pbi243669
  Cenario: [Onboarding] - Cadastro de senha app com sucesso no fluxo migracao
    Dado que e gerado uma cliente MC na Conductor
    E cadastro a cliente na WhiteList
    E crio uma Conta Digital para a cliente informando a origin "MIGRACAO_CBR_LOJA"
    E que a cliente esteja na tela inicial do App
    Quando a cliente insere o CPF e selecionar o botao Continuar
    E cadastre a biometria 1:1
    Dado que visualizo as regras de criacao da senha
    Quando cadastra a senha para utilizar no login do App
    Entao a cliente e direcionada para a Home

  @and02 @integrationandroid @pbi243669
  Cenario: [Onboarding] - Criacao da conta e cadastro da senha app com sucesso
    Dado que e gerado uma cliente MC na Conductor
    E cadastro a cliente na WhiteList
    E que a cliente esteja na tela inicial do App
    E a cliente insere o CPF e selecionar o botao Continuar
    E realize o aceite do termo de uso
    E cadastre a biometria 1:1
    Quando cadastra a senha para utilizar no login do App
    Entao a cliente e direcionada para a Home

  @and03 @integrationandroid @pbi243669
  Cenario: [Onboarding] - Criacao senha fora do padrao ou divergente dos campos
    Dado que e gerado uma cliente MC na Conductor
    E cadastro a cliente na WhiteList
    E que a cliente esteja na tela inicial do App
    E a cliente insere o CPF e selecionar o botao Continuar
    E realize o aceite do termo de uso
    E cadastre a biometria 1:1
    Quando cadastra a senha "12345" e confirmacao de senha "12345"
    Entao o botao Criar senha continua desabilitado
    E visualizo a mensagem "Sua senha precisa ter 6 dígitos"
    Quando cadastra a senha "687017" e confirmacao de senha "019283"
    E visualizo a mensagem "As senhas não coincidem. Tente novamente"