# language: pt

@onboarding
Funcionalidade: [ONBOARDING] - Fluxos de migracao de criacao conta Orbi

  @and01 @regressionandroid
  Cenario: [Onboarding] - Criacao de Conta Orbi para cliente Meu Cartao
    Dado que e gerado uma cliente MC na Conductor
    E cadastro a cliente na WhiteList
    E que a cliente esteja na tela inicial do App
    Quando a cliente insere o CPF e selecionar o botao Continuar
    E realize o aceite do termo de uso
    E cadastre a biometria 1:1
    E cadastra a senha para utilizar no login do App
    Entao a cliente e direcionada para a Home

  @and01 @regressionandroid
  Cenario: [Onboarding] - Onboarding fluxo de migração CCR/MC
    Dado que e gerado uma cliente MC na Conductor
    E cadastro a cliente na WhiteList
    E crio uma Conta Digital para a cliente informando a origin "MIGRACAO_CBR_LOJA"
    E que a cliente esteja na tela inicial do App
    Quando a cliente insere o CPF e selecionar o botao Continuar
    E cadastre a biometria 1:1
    E cadastra a senha para utilizar no login do App
    Entao a cliente e direcionada para a Home
