#language: pt
#encoding UTF-8
#PBI232000

Funcionalidade: criação de tela onde será exibido o boleto de cash in.
  Como: Renata.<br>
  Quero: visualizar o boleto que gerei para realizar um aporte de recurso no saldo de minha conta Orbi.<br>
  Para: conferir os dados do boleto e permitir que eu pague o mesmo na rede bancária com a finalidade de adicionar valor ao meu saldo e, posteriormente, utilizar este valor em minhas transações.<br>

# Premissas:
#- Onboarding finalizado com sucesso
#- Conta gerada
#- Login realizado no app

#  Contexto:
#    Dado que a Renata realizou o login no app Orbi
#    Quando selecionar a opção "Conta" na navbar
#    Então ela será direcionada para tela "Minha conta Orbi"
#    Quando clicar em "Depositar" no carrossel de serviços
#    Então ela será direcionada para a tela "Depositar"
#    Quando selecionar a opção "Depósito por boleto bancário"
#    Então é solicitado o preenchimento do valor desejado na tela "Depósito por boleto"

  @wip @pbi232000 @android
  Cenário: Renata seleciona continuar
    #Dado que a Renata está na tela "Depósito por boleto"
    #E digitou um valor válido
    #Quando selecionar a opção "continuar"
    Então será exibida a tela "Boleto gerado com sucesso!"
    E os dados de valor, data de vencimento, código de barras
    E a opção "COPIAR CÓDIGO"
    E um texto informativo sobre os prazos de registro e compensação de boletos
    E a opção "Voltar para início"
    E a opção "Fazer um novo depósito"

  @wip @pbi232000 @android
  Cenário: Renata Clica no X no header da página
    Dado que a Renata está na tela "Boleto gerado com sucesso!"
    Quando selecionar a opção "X" no header da página
    Então ela será direcionada para a tela "Minha conta Orbi"

  @wip @pbi232000 @android
  Cenário: Renata Clica na opção "Voltar para o início"
    Dado que a Renata está na tela "Boleto gerado com sucesso!"
    Quando selecionar a opção "Voltar para início"
    Então ela será direcionada para a tela "Minha conta Orbi"

  @wip @pbi232000 @android
  Cenário: Renata Clica na opção "Gerar novo boleto"
    Dado que a Renata está na tela "Boleto gerado com sucesso!"
    Quando selecionar a opção "Fazer um novo depósito"
    Então ela será direcionada para a tela "Depósito por boleto"
