# language: pt

@login @onboarding
Funcionalidade: [ONBOARDING_LOGIN] Efetuar login no app Orbi
  Como Cliente Orbi
  Quero logar no Orbi com a senha correta
  Para poder validar o acesso corretamente

  @and02 @integrationandroid @pbi250601
  Esquema do Cenario: [Onboarding] Usuaria deseja acessar o App Orbi (Android) - Senha correta, incorreta ou bloqueada.
    Quando que me autentico no app Orbi utilizando o usuario "42138658430"
    Entao redireciona para a tela de senha
    Quando insiro a senha "<SENHA>" e clico em logar
    Entao verifica mensagem de login "<MENSAGEM>"

    Exemplos:
      | SENHA  | MENSAGEM                            |
      | 687017 |                                     |
      | 123456 | LOGIN_FIRST_ATTEMPTS_ERROR_MESSAGE  |
      | 123456 | LOGIN_SECOND_ATTEMPTS_ERROR_MESSAGE |
      | 123456 | LOGIN_THIRD_ATTEMPTS_ERROR_MESSAGE  |

  @ios02 @integrationios @pbi250601
  Esquema do Cenario: [Onboarding] Usuaria deseja acessar o App Orbi (iOS) - Senha correta, incorreta ou bloqueada.
    Quando que me autentico no app Orbi utilizando o usuario "11447411650"
    Entao redireciona para a tela de senha
    Quando insiro a senha "<SENHA>" e clico em logar
    Entao verifica mensagem de login "<MENSAGEM>"

    Exemplos:
      | SENHA  | MENSAGEM                            |
      | 687017 |                                     |
      | 123456 | LOGIN_FIRST_ATTEMPTS_ERROR_MESSAGE  |
      | 123456 | LOGIN_SECOND_ATTEMPTS_ERROR_MESSAGE |
      | 123456 | LOGIN_THIRD_ATTEMPTS_ERROR_MESSAGE  |