# language: pt

# @saquerapido
Funcionalidade: [SAQUE_RAPIDO] Apresentar explicacao de como funciona o Saque Rapido
  Como um cliente Orbi
  Quero saber como o Saque Rapido funciona
  Para que eu possa conhecer o produto e assim contrata-lo

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99348715488"
    E insiro a senha "010203" e clico em logar

 # @and05 @ios05 @smokeandroid @smokeios @pbi432949
  Cenario: Validar navegacao das imagens na tela de 'Como funciona?' o Saque Rapido
    Quando estou na tela de Home do Orbi
    E realizo o swipe para baixo da home
    E clico no botao Como funciona?
    Entao valido o texto "Você solicita o saque pelo app e recebe o dinheiro sem sair de casa"
    E valido o texto do botão "Avançar"
    E navego no carrosel de imagens da tela
    E valido o texto do botão "Avançar"
    E valido o texto "Escolhe quanto quer sacar e simula as melhores condições disponíveis"
    E navego no carrosel de imagens da tela
    E valido o texto do botão "Simular agora"
    E valido o texto "Depois, informa onde quer receber (em sua conta Orbi ou outra conta bancária) e pronto: o valor estará disponível para usar como quiser!"

 # @and05 @ios05 @smokeandroid @smokeios @pbi432949
  Cenario: Validar redirecionamento para simulacao de Saque Rapido a partir da tela 'Como funciona?'
    Quando estou na tela de Home do Orbi
    E realizo o swipe para baixo da home
    E clico no botao Como funciona?
    E navego ate a ultima tela do carrossel
    E clico no botao Sair
    Entao o card Saque Rapido e apresentado

#  @and05 @ios05 @smokeandroid @smokeios @pbi432949
  Cenario: Validar redirecionamento para simulacao de Saque Rapido a partir da tela 'Como funciona?'
    Quando estou na tela de Home do Orbi
    E realizo o swipe para baixo da home
    E clico no botao Como funciona?
    E navego ate a ultima tela do carrossel
    E clico no botao Simular
    Entao sou direcionado para a tela de menu do Saque Rapido