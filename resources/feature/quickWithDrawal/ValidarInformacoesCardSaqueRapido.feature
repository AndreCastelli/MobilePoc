# language: pt

#@saquerapido
Funcionalidade: [SAQUE_RAPIDO] Exibir card de Saque Rapido para cliente com Limite de emprestimo
  Como um cliente Orbi
  Quero visualizar informacoes de Saque Rapido
  Para que eu possa ter a opcao de adquirir um emprestimo

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99348715488"
    E insiro a senha "010203" e clico em logar

 # @and05 @ios05 @smokeandroid @smokeios @pbi428884
  Cenario: Validar exibição do card 'Saque Rapido' para cliente com Limite disponivel
    Quando estou na tela de Home do Orbi
    E realizo o swipe para baixo da home
    Entao o card Saque Rapido e apresentado
    E o texto "Limite pré-aprovado disponível" de emprestimo do cliente deve ser apresentado

#  @and05 @ios05 @smokeandroid @smokeios @pbi428884
  Cenario: Validar que as informacoes do card 'Saque Rapido' estao ocultas
    Quando clico no botao para ocultar os dados
    E realizo o swipe para baixo da home
    Entao as informacoes do card Saque Rapido nao sao apresentadas

 # @and05 @ios05 @smokeandroid @smokeios @pbi428884
  Cenario: Validar direcionamento para o fluxo de 'Como funciona?'
    Quando estou na tela de Home do Orbi
    E realizo o swipe para baixo da home
    E clico no botao Como funciona?
    Entao sou direcionado para a tela com as dicas de como funciona o Saque Rapido

 # @and05 @ios05 @smokeandroid @smokeios @pbi428884
  Cenario: Validar direcionamento para o fluxo de 'Ver detalhes?'
    Quando estou na tela de Home do Orbi
    E realizo o swipe para baixo da home
    E clico no botao Ver detalhes
    Entao sou direcionado para a tela de menu do Saque Rapido

#  @and05 @ios05 @integrationios @integrationandroid @pbi428884
#  Cenario: Validar valor de Limite apresentado no card 'Saque Rapido'
#    Quando autentico no BFF um usuario com limite de Saque Rapido
#      ## E autentico no BFF com usuario valido
#    E consulto os limites de Saque Rapido do cliente
#      ## E consulto a home de cards no BFF
#      ## E valido que o valor do limite disponivel presente na tela da home de cartoes esta correto
#    E realizo o swipe para baixo da home
#    Entao o valor do limite deve condizer com o limite de emprestimo real disponivel para o cliente
