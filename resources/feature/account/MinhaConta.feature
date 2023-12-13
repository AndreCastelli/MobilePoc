#language: pt

@account
Funcionalidade: [ACCOUNT] Consultar dados da conta do usuario
  Como: usuario do app Orbi
  Quero: ver os dados da minha conta de forma fácil, rápida e resumida.
  Para: poder visualizar os dados da conta e compartilhar essas informações.

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta

  @and01 @pbi427579 @smokeandroid
  Cenario: [Conta] – Consultar dados da conta do usuario em Conta
    Quando clico no atalho do carrossel "Minha Conta" na tela "Conta"
    Entao a cliente e direcionada para a tela de "Minha Conta"
    E valido os dados do usuario "Eloá Gaspar Chaves" agencia "Agência 0001" conta "Conta 022351309-0" e banco "374 - Realize CFI S/A"

  @and02 @pbi427579 @smokeandroid
  Cenario: [Conta] - Validar botao Compartilhar os dados da conta
    E clico no atalho do carrossel "Minha Conta" na tela "Conta"
    Quando clico no botao Compartilhar dados da conta
    Entao valido texto do botao compartilhar na screen "Eloá Gaspar Chaves 374 - Realize CFI S/A Agência 0001 Conta 022351309-0"