#language: pt

@onboarding
Funcionalidade: [ONBOARDING_TERMOS_CONDICOES] - Visualizar e Aceitar os Termos e Condicoes da Conta Digital
  Como Cliente Orbi
  Quero acessar o Orbi
  Para visualizar termos e condicoes de uso do Orbi

  @and01 @ios01 @integrationandroid @integrationios
  Cenario: [Onboarding] - Exibir Tela "Termos e Condicoes" e Retornar para tela "Insira o seu CPF"
    Dado que e gerado uma cliente MC na Conductor
    E cadastro a cliente na WhiteList
    E que a cliente esteja na tela inicial do App
    Quando a cliente insere o CPF e selecionar o botao Continuar
    Entao a cliente e direcionada para a tela de "Termos e Condições Orbi"
    E visualizo as opcoes Voltar e Continuar
    E verifico a obrigatoriedade do aceite do termo
    Quando selecionar a opcao Voltar
    Entao a cliente e direcionada para a tela inicial do App

  @and02 @ios02 @integrationandroid @integrationios
  Cenario: [Onboarding] - Validar tela de Termos e Avancar para etapa "Biometria"
    Dado que e gerado uma cliente MC na Conductor
    E cadastro a cliente na WhiteList
    E que a cliente esteja na tela inicial do App
    Quando a cliente insere o CPF e selecionar o botao Continuar
    Entao a cliente e direcionada para a tela de "Termos e Condições Orbi"
    E visualizo as opcoes Voltar e Continuar
    E verifico o texto "MESSAGE_SCREEN_TERM_OF_USE"
    E verifico o texto "MESSAGE_TERM_ACCEPTANCE"
    E realize o aceite do termo de uso
    Entao a cliente e direcionada para a tela de "É hora da selfie!"