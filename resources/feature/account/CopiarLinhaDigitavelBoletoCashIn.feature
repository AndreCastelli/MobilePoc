#language: pt
#encoding UTF-8
#PBI232071

Funcionalidade: copiar os dados da linha digitável do boleto de cash in para uso em outro APP.
  Como: Renata.
  Quero: poder copiar os dados da linha digitável do boleto que gerei para realizar um aporte de recurso no saldo de minha conta Orbi.
  Para: permitir que eu pague o mesmo através de aplicativo de outra instituição financeira ou repasse os dados da linha digitável através de outros meios/aplicativos. O objetivo final é facilitar a inclusão de recursos em minha conta Orbi.

# Premissas:
#- Onboarding finalizado com sucesso
#- Conta gerada
#- Login realizado no app

#  Background:
#  Dado que a Renata realizou o login no app Orbi
#  Quando selecionar a opção "Conta" na navbar
#  Então ela será direcionada para tela "Minha conta Orbi"
#  Quando clicar em "Depositar" no carrossel de serviços
#  Então ela será direcionada para a tela "Depositar"
#  Quando selecionar a opção "Depósito por boleto bancário"
#  Então é solicitado o preenchimento do valor desejado na tela "Depósito por boleto"
#  Quando preencher o campo com valor válido
#  E clicar em "continuar"
#  Então é direcionada para uma tela com os dados do boleto gerado
#  E visualiza a opção "Copiar código"

  @wip @pbi232041 @android
  Cenário: Renata seleciona "Copiar código"
    Dado que a Renata está na tela "Boleto gerado com sucesso!"
    Quando selecionar a opção "COPIAR CÓDIGO"
    Então uma tag de "Código copiado" será exibida no topo da tela
