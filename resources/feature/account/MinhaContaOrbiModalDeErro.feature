#language: pt
#encoding UTF-8
#PBI232109

Funcionalidade: Minha conta Orbi - Modal de erro
  Como: Renata.
  Quero: ter uma resposta amigável quando houver erro ao acessar os serviços disponíveis no carrossel da tela Minha conta Orbi
  Para: que eu consiga entender a falha a partir de uma comunicação simples e descomplicada

#  Background:+.
#  Dado que a Renata realizou o login no app Orbi
#  Quando selecionar a opção "Conta" na navbar
#  Então ela será direcionada para tela "Minha conta Orbi"

  @wip @pbi232109 @android
  Cenário: Falha ao acessar serviços
    Dado que a Renata selecionou alguma opção no carrossel de serviços
    Então Será exibida um modal informando que houve uma falha ao executar a solicitação
    E uma opção "Canais de atendimento"
    E a tela "minha conta Orbi" não ficará acessível

  @wip @pbi232109 @android
  Cenário: Sair do modal de falha
    Dado que a Renata selecionou alguma opção no carrossel de serviços
    E Será exibida um modal informando que houve uma falha ao executar a solicitação
    Quando selecionar a opção de sair "X"
    Então a usuária será direcionada para a "Home" do app

  @wip @pbi232109 @android
  Cenário: Seleção da opção "Ver canais de atendimento"
    Dado que a Renata selecionou alguma opção no carrossel de serviços
    E Será exibida um modal informando que houve uma falha ao executar a solicitação
    Quando selecionar a opção "Canais de atendimento"
    Então ela será direcionada para a tela "Canais de atendimento"

            # Obs.: A tela "Nossos canais de atendimento" não será construída neste momento e é de responsabilidade de outra squad.

