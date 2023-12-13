#language: pt

#@pbi232125
@account
Funcionalidade: [ACCOUNT] Emitir movimentações de conta.
  Como: Renata
  Quero: transferir um valor para a conta de uma pessoa tambem titular da conta de pagamento
  Para: repassar o valor que devo a costureira que realizou um servico para mim

    #Testes de iOS estão com um bug impossibilitando de rodar (quando a vaga de dev iOS for ocupada, será resolvido)
  @and01 @ios03 @pbi232125 @integrationandroid @integrationios
  Esquema do Cenario: [Conta] - Filtrar movimentacao para ultimos <days> dias
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    E clico no atalho do carrossel "Movimentações" na tela "Conta"
    E a cliente e direcionada para a tela de "Movimentações"
    Quando clico no botao de filtrar movimentacoes
    E seleciono opcao de periodo dos ultimos "<days>" dias
    Entao devera retornar a lista de transacoes do periodo selecionado

    Exemplos:
      | days |
      | 15   |
      | 30   |
      | 60   |

    #Testes de iOS estão com um bug impossibilitando de rodar (quando a vaga de dev iOS for ocupada, será resolvido)
  @and01 @ios03 @pbi232125 @integrationandroid @integrationios
  Esquema do Cenario: [Conta] - Filtrar movimentacao entre o periodo de <startDate> a <endDate>
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    E clico no atalho do carrossel "Movimentações" na tela "Conta"
    E a cliente e direcionada para a tela de "Movimentações"
    Quando clico no botao de filtrar movimentacoes
    E seleciono opcao de periodo personalizada
    E clico para por a data de inicio
    E seleciono a data "<startDate>"
    E clico para por a data de fim
    E seleciono a data "<endDate>"
    E aplico o filtro selecionado
    Entao devera retornar a lista de transacoes do periodo selecionado

    Exemplos:
      | startDate  | endDate    |
      | 01/10/2020 | 01/11/2020 |
      | 01/10/2020 | 01/11/2021 |