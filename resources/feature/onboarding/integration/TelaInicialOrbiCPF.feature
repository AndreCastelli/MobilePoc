#language: pt

@onboarding
Funcionalidade: [ONBOARDING_TELAS_INICIAIS] - Validacao telas de onboarding do Orbi
  Como Cliente Orbi
  Quero acessar as telas de onboarding (iniciais) antes de logar no Orbi
  Para validar definir o fluxo a ser seguido no Orbi

  @and01 @ios01 @integrationandroid @integrationios @pbi228912
  Esquema do Cenario: [Onboarding] - Retornar Erro quando inserir um CPF incorreto
    Dado que a cliente esteja na tela inicial do App
    E valida que o botao Continuar esta "<STATUS BOTAO>"
    Quando a cliente insere o cpf "<CPF>"
    Entao visualiza a mensagem de erro "<MENSAGEM>"
    E o botao Continuar deve ficar "<RESULTADO ESPERADO>"

    Exemplos:
      | STATUS BOTAO | CPF          | MENSAGEM     | RESULTADO ESPERADO |
      | desabilitado | 22150720167  |              | habilitado         |
      | desabilitado | 17734532493  | CPF inválido | desabilitado       |
      | desabilitado | QWERT0720167 |              | desabilitado       |
      | desabilitado |              |              | desabilitado       |

  @and02 @ios02 @integrationandroid @integrationios @pbi228912
  Cenario: [Onboarding] - Fluxo de Migracao CCR para MC no BB "1º acesso com criação de senha"
    Dado que e gerado uma cliente MC na Conductor
    E cadastro a cliente na WhiteList
    E crio uma Conta Digital para a cliente informando a origin "MIGRACAO_CBR_LOJA"
    E que a cliente esteja na tela inicial do App
    Quando a cliente insere o CPF e selecionar o botao Continuar
    Entao a cliente e direcionada para a tela de "É hora da selfie!"

  @and03 @ios03 @integrationandroid @integrationios @pbi228912
  Cenario: [Onboarding] - Avancar para fluxo "Criacao da conta", cliente Meu Cartao
    Dado que e gerado uma cliente MC na Conductor
    E cadastro a cliente na WhiteList
    E que a cliente esteja na tela inicial do App
    Quando a cliente insere o CPF e selecionar o botao Continuar
    Entao a cliente e direcionada para a tela de "Termos e Condições Orbi"

  @and04 @ios04 @integrationandroid @integrationios @pbi228912
  Cenario: [Onboarding] - Aguardar contratacao da conta no App Orbi - Usuario MC e esta na Whitelist
    Dado que e gerado uma cliente MC na Conductor
    E que a cliente esteja na tela inicial do App
    Quando a cliente insere o CPF e selecionar o botao Continuar
    Entao verifico o texto "HOME_SCREEN_ERROR_MESSAGE"

  @and04 @ios04 @integrationandroid @integrationios @pbi228912
  Cenario: [Onboarding] - Aguardar contratacao da conta no App Orbi - CPF nao e MC
    Quando que me autentico no app Orbi utilizando o usuario "17798200037"
    Entao verifico o texto "HOME_SCREEN_ERROR_MESSAGE"

  @and04 @ios04 @integrationandroid @integrationios @pbi228912
  Cenario: [Onboarding] - Avancar para o fluxo "Insira sua senha"
    Quando que me autentico no app Orbi utilizando o usuario "12077106441"
    Entao a cliente e direcionada para a tela de "Olá Antonella, insira sua senha Orbi"