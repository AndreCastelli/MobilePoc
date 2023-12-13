#language: pt

#@pbi232248
@account
Funcionalidade: [ACCOUNT] Realizar uma transferencia P2P.
  Como: Renata
  Quero: transferir um valor para a conta de uma pessoa tambem titular da conta de pagamento
  Para: repassar o valor que devo a costureira que realizou um servico para mim

  @and01 @pbi232248 @integrationandroid
  Cenario: [Conta] - Ao selecionar a opcao "Transferir" na tela de conta sera direcionado para tela Transferir Conta Orbi
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    Quando clico no atalho do carrossel "Transferir" na tela "Conta"
    Entao sera direcionada para a tela Transferir
    E visualizo a opcao Transferir para conta Orbi

  @and02 @pbi232248 @integrationandroid
  Cenario: [Conta] - Ao selecionar a opcao "Transferir para conta Orbi" sera direcionado para a Tela de Consulta CPF
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    Entao sera direcionada para a tela Transferir
    Quando selecionar a opcao Transferir para conta Orbi
    Entao sera exibida a tela de consulta por CPF
    E um campo para inserir o CPF desejado
    E o botao Continuar da tela de transferencia esta desabilitado

  @and03 @pbi232248 @integrationandroid
  Cenario: [Conta] - Ao digitar um CPF invalido verifica deve apresentar a mensagem correta
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    E sera direcionada para a tela Transferir
    E selecionar a opcao Transferir para conta Orbi
    Quando digitar um CPF "12312312312" na tela de transferencia
    Entao o botao Continuar da tela de transferencia esta desabilitado
    E uma mensagem de "CPF inválido" sera exibida abaixo do campo de consulta
    E uma caixa de texto com informacoes do erro sera exibida
    E o texto apresentado e "O CPF digitado é invalido ou não possui uma conta Orbi. Verifique os dados e tente novamente."

  @and04 @pbi232248 @integrationandroid
  Cenario: [Conta] - Ao digitar um CPF valido e apresenta as informacoes da conta de destino
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    E sera direcionada para a tela Transferir
    E selecionar a opcao Transferir para conta Orbi
    E sera exibida a tela de consulta por CPF
    E digitar um CPF "93836954044" na tela de transferencia
    Quando clicar no botao Continuar da transferencia
    Entao e apresentada a mensagem "A transferência será realizada para a seguinte conta:"
    E um componente com Nome "Thales Gabriel da Mota"
    E conta Orbi  e Agencia  sera exibido "Conta Orbi: 636708400-9 Agência: 0001"
    E apresenta a informacao de alerta "Transferências entre contas Orbi são livres de taxas e o crédito é instantâneo 24 horas por dia!"
    E o botao Continuar da tela de transferencia esta habilitado

  @and05 @pbi232248 @integrationandroid
  Cenario: [Conta] - Apos confirmar os dados da conta destino sera direcionado para a tela Inserir o valor a ser transferido
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    E clico no olho para obter o saldo do usuario na Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    E sera direcionada para a tela Transferir
    E selecionar a opcao Transferir para conta Orbi
    E sera exibida a tela de consulta por CPF
    E digitar um CPF "93836954044" na tela de transferencia
    E clicar no botao Continuar da transferencia
    E e apresentada a mensagem "A transferência será realizada para a seguinte conta:"
    Quando clicar no botao Continuar da transferencia
    Entao ela sera direcionada para uma tela de valor desejado com o texto "Insira o valor a ser transferido"
    E clico no olho para validar se o saldo da conta e igual ao saldo na tela de trasferencia
    E um campo para preencher o valor formatado para moeda
    E o botao Continuar da tela de transferencia esta desabilitado

  @and06 @pbi232248 @integrationandroid
  Esquema do Cenario: [Conta] - Ao inserir um valor invalido igual a <valor> sera apresentada a mensagem de validacao
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    E sera direcionada para a tela Transferir
    E selecionar a opcao Transferir para conta Orbi
    E sera exibida a tela de consulta por CPF
    E digitar um CPF "93836954044" na tela de transferencia
    E clicar no botao Continuar da transferencia
    E e apresentada a mensagem "A transferência será realizada para a seguinte conta:"
    E clicar no botao Continuar da transferencia
    E ela sera direcionada para uma tela de valor desejado com o texto "Insira o valor a ser transferido"
    E clico no olho para validar se o saldo da conta foi carregado em tela
    Quando inserir um valor de transferencia igual a "<valor>"
    Entao o texto apresentado e "O valor inserido precisa ser igual ou menor que o valor do seu saldo em conta."
    E uma mensagem de "Campo Inválido!" sera exibida abaixo do campo de consulta
    E o botao Continuar da tela de transferencia esta desabilitado

    Exemplos:
      | valor     |
      | 0,00      |
      | 200000,00 |

  @and01 @pbi232248 @integrationandroid
  Esquema do Cenario: [Conta] - Ao inserir um valor valido e ao confirmar apresenta a tela com a Confirmacao de dados de sua transferencia
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    E sera direcionada para a tela Transferir
    E selecionar a opcao Transferir para conta Orbi
    E sera exibida a tela de consulta por CPF
    E digitar um CPF "93836954044" na tela de transferencia
    E clicar no botao Continuar da transferencia
    E e apresentada a mensagem "A transferência será realizada para a seguinte conta:"
    E clicar no botao Continuar da transferencia
    E ela sera direcionada para uma tela de valor desejado com o texto "Insira o valor a ser transferido"
    E clico no olho para validar se o saldo da conta foi carregado em tela
    E inserir um valor de transferencia igual a "<valor>"
    E o botao Continuar da tela de transferencia esta habilitado
    Quando clicar no botao Continuar da transferencia
    Entao sera direcionada para uma tela de "Confirme os dados da sua transferência" dos dados de transferencia
    E componente com o valor "R$ <valor>" da tranferencia
    E um componente com a informacao do destinatario "TEF para Thales Gabriel da Mota"
    E um os dados da conta "Conta Orbi: 636708400-9" e agencia "Agência: 0001" serao exibidos
    E apresenta a informacao de alerta "Transferindo para uma conta Orbi você não paga nenhuma taxa e o dinheiro cai na hora, em qualquer horário do dia!"
    E o botao Confirmar da tela de transferencia fica habilitado

    Exemplos:
      | valor     |
      | 2,00      |

  @and02 @pbi232248 @integrationandroid
  Cenario: [Conta] -  Ao confirmar uma transferencia com dados validos sera apresentada a tela de Transferencia processada com sucesso
    Dado que estou logado no app Orbi com usuario "93836954044" e senha "010121" e estou na tela Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    E sera direcionada para a tela Transferir
    E selecionar a opcao Transferir para conta Orbi
    E sera exibida a tela de consulta por CPF
    E digitar um CPF "70460682326" na tela de transferencia
    E clicar no botao Continuar da transferencia
    E e apresentada a mensagem "A transferência será realizada para a seguinte conta:"
    E clicar no botao Continuar da transferencia
    E ela sera direcionada para uma tela de valor desejado com o texto "Insira o valor a ser transferido"
    E clico no olho para validar se o saldo da conta foi carregado em tela
    E inserir um valor de transferencia igual a "2,00"
    E clicar no botao Continuar da transferencia
    E sera direcionada para uma tela de "Confirme os dados da sua transferência" dos dados de transferencia
    Quando clicar no botao em Confirmar da tela de tranferencia
    Entao exibira uma animacao enquanto aguarda com a informacao "Aguarde um minutinho." "A transferência está sendo validada."
    E sera direcionada para uma tela "Deu tudo certo" dos dados de transferencia realizada
    E sera apresentada a informacao "A transferência foi realizada com sucesso! Você pode acessar e compartilhar o seu comprovante clicando no botão abaixo."
    E o botao Ver Comprovante esta habilitado
    E o botao Fazer nova transferencia esta habilitado

  @and03 @pbi232248 @integrationandroid
  Cenario: [Conta] - Verificar se ao clicar no botao Fazer nova Transferencia e direcionado para a tela Transferir
    Dado que estou logado no app Orbi com usuario "70460682326" e senha "010121" e estou na tela Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    E sera direcionada para a tela Transferir
    E selecionar a opcao Transferir para conta Orbi
    E sera exibida a tela de consulta por CPF
    E digitar um CPF "93836954044" na tela de transferencia
    E clicar no botao Continuar da transferencia
    E e apresentada a mensagem "A transferência será realizada para a seguinte conta:"
    E clicar no botao Continuar da transferencia
    E ela sera direcionada para uma tela de valor desejado com o texto "Insira o valor a ser transferido"
    E clico no olho para validar se o saldo da conta foi carregado em tela
    E inserir um valor de transferencia igual a "2,00"
    E clicar no botao Continuar da transferencia
    E sera direcionada para uma tela de "Confirme os dados da sua transferência" dos dados de transferencia
    E clicar no botao em Confirmar da tela de tranferencia
    Quando clicar no botao Fazer nova transferencia
    Entao sera direcionada para a tela Transferir

  @and04 @pbi232248 @integrationandroid @regressionandroid
  Esquema do Cenario: [Conta] - Verificar se o saldo da conta de Origem foi atualizado
    Dado que estou logado no app Orbi com usuario "93836954044" e senha "010121" e estou na tela Conta
    E clico no olho para obter o saldo do usuario na Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    E sera direcionada para a tela Transferir
    E selecionar a opcao Transferir para conta Orbi
    E sera exibida a tela de consulta por CPF
    E digitar um CPF "70460682326" na tela de transferencia
    E clicar no botao Continuar da transferencia
    E e apresentada a mensagem "A transferência será realizada para a seguinte conta:"
    E clicar no botao Continuar da transferencia
    E ela sera direcionada para uma tela de valor desejado com o texto "Insira o valor a ser transferido"
    E clico no olho para validar se o saldo da conta foi carregado em tela
    E inserir um valor de transferencia igual a "<valor>"
    E clicar no botao Continuar da transferencia
    E sera direcionada para uma tela de "Confirme os dados da sua transferência" dos dados de transferencia
    E clicar no botao em Confirmar da tela de tranferencia
    Quando clica no botao fechar transferencia
    Entao estou na tela de Conta
    E valido se o saldo da conta foi atualizado diminuindo o valor da transferencia
    E a ultima transacao no valor de "R$ <valor>"
    E apresenta a data de hoje com a descricao "Hoje"
    E a descricao "Transf entre Contas-Remetente"

    Exemplos:
      | valor     |
      | 2,20      |

  @and05 @pbi232248 @integrationandroid
  Esquema do Cenario:  [Conta] - Verificar se o saldo da conta de Destino foi atualizado
    Dado que estou logado no app Orbi com usuario "<cpfDestino>" e senha "<senhaDestino>" e estou na tela Conta
    E clico no olho para obter o saldo do usuario na Conta
    E me posiciono na Home e deslogo o usuario
    E que estou logado no app Orbi com usuario "<cpfOrigem>" e senha "<senhaOrigem>" e estou na tela Conta
    E clico no atalho do carrossel "Transferir" na tela "Conta"
    E sera direcionada para a tela Transferir
    E selecionar a opcao Transferir para conta Orbi
    E sera exibida a tela de consulta por CPF
    E digitar um CPF "<cpfDestino>" na tela de transferencia
    E clicar no botao Continuar da transferencia
    E e apresentada a mensagem "A transferência será realizada para a seguinte conta:"
    E clicar no botao Continuar da transferencia
    E ela sera direcionada para uma tela de valor desejado com o texto "Insira o valor a ser transferido"
    E clico no olho para validar se o saldo da conta foi carregado em tela
    E inserir um valor de transferencia igual a "<valor>"
    E clicar no botao Continuar da transferencia
    E sera direcionada para uma tela de "Confirme os dados da sua transferência" dos dados de transferencia
    E clicar no botao em Confirmar da tela de tranferencia
    E o botao Fazer nova transferencia esta habilitado
    E clica no botao fechar transferencia
    E estou na tela de Conta
    E me posiciono na Home e deslogo o usuario
    Quando que estou logado no app Orbi com usuario "<cpfDestino>" e senha "<senhaDestino>" e estou na tela Conta
    Entao a ultima transacao no valor de "R$ <valor>"
    E apresenta a data de hoje com a descricao "Hoje"
    E a descricao "Transf entre Contas-Favorecido"
    E valido se o saldo da conta foi atualizado somando o valor da transferencia

    Exemplos:
      | valor     | cpfOrigem   | senhaOrigem   | cpfDestino  | senhaDestino   |
      | 2,10      | 70460682326 | 010121        | 93836954044 | 010121         |