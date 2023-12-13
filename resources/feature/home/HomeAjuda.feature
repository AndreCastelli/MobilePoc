# language: pt

@home
Funcionalidade: [HOME_AJUDA] Consultar tela de Ajuda do Orbi
  Como: Renata
  Quero: Acessar os textos de ajuda e abrir o chat para atendimento
  Para: tirar minhas dúvidas sobre o Orbi

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "48186782605"
    E insiro a senha "160421" e clico em logar

  @ios05 @integrationios @pbi293754
  Cenario: [Home] - Acessar Ajuda do Orbi
    Quando estou na tela de Home do Orbi
    E clico no botao Ajuda na Home
    Entao estou na tela de Ajuda da Home
    Entao valido o texto da lista de ajuda "O que é a conta Orbi?" e apresantado em tela
    E valido o texto da lista de ajuda "O que é o cartão virtual Orbi?" e apresantado em tela
    E valido o texto da lista de ajuda "Quais benefícios da conta Orbi?" e apresantado em tela
    E valido o texto da lista de ajuda "Qual a diferença do cartão virtual Orbi e cartão virtual MC?" e apresantado em tela
    E valido o texto da lista de ajuda "Como faço um depósito na minha conta Orbi?" e apresantado em tela
    Quando clico no texto da lista de ajuda "O que é a conta Orbi?"
    Entao estou na tela de Ajuda com titulo "O que é a conta Orbi?" com a imagem e com o texto "A conta Orbi é uma conta digital pré-paga. Isso significa que, de forma rápida e intuitiva,"
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home
    Quando clico no texto da lista de ajuda "O que é o cartão virtual Orbi?"
    Entao estou na tela de Ajuda com titulo "O que é o cartão virtual Orbi?" com a imagem e com o texto "É um cartão confiável e prático para uso exclusivo em transações em sites de compras, aplicativos e serviços on-line diversos."
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home
    Quando clico no texto da lista de ajuda "Quais benefícios da conta Orbi?"
    Entao estou na tela de Ajuda com titulo "Quais benefícios da conta Orbi?" com a imagem e com o texto "De forma simples e dinâmica, a conta Orbi oferece a possibilidade de realizar pagamentos diversos, transferências"
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home
    Quando clico no texto da lista de ajuda "Qual a diferença do cartão virtual Orbi e cartão virtual MC?"
    Entao estou na tela de Ajuda com titulo "Qual a diferença do cartão virtual Orbi e cartão virtual MC?" com a imagem e com o texto "O cartão virtual Orbi utiliza o saldo disponível na conta Orbi. Já o cartão virtual Meu Cartão utiliza o limite de crédito do Meu Cartão."
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home
    Quando clico no texto da lista de ajuda "Como faço um depósito na minha conta Orbi?"
    Entao estou na tela de Ajuda com titulo "Como faço um depósito na minha conta Orbi?" com a imagem e com o texto "É muito simples. Basta gerar um boleto para depósito e realizar o pagamento. Em até 3 dias úteis, o valor depositado estará disponível em sua conta Orbi."
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home


  @and05 @ios05 @integrationandroid @integrationios @pbi293754
  Cenario: [Home] - Acessar Ajuda pela tela Minha Conta
    Quando estou na tela de Home do Orbi
    Entao clico no botao Perfil do Usuario na Home
    E estou na tela de Minha Conta da Home
    Entao clico a opcao "Ajuda" na lista da Minha Conta da Home
    E estou na tela de Ajuda da Home
    Entao valido o texto da lista de ajuda "O que é a conta Orbi?" e apresantado em tela
    E valido o texto da lista de ajuda "O que é o cartão virtual Orbi?" e apresantado em tela
    E valido o texto da lista de ajuda "Quais benefícios da conta Orbi?" e apresantado em tela
    E valido o texto da lista de ajuda "Qual a diferença do cartão virtual Orbi e cartão virtual MC?" e apresantado em tela
    E valido o texto da lista de ajuda "Como faço um depósito na minha conta Orbi?" e apresantado em tela
    Quando clico no texto da lista de ajuda "O que é a conta Orbi?"
    Entao estou na tela de Ajuda com titulo "O que é a conta Orbi?" com a imagem e com o texto "A conta Orbi é uma conta digital pré-paga. Isso significa que, de forma rápida e intuitiva,"
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home
    Quando clico no texto da lista de ajuda "O que é o cartão virtual Orbi?"
    Entao estou na tela de Ajuda com titulo "O que é o cartão virtual Orbi?" com a imagem e com o texto "É um cartão confiável e prático para uso exclusivo em transações em sites de compras, aplicativos e serviços on-line diversos."
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home
    Quando clico no texto da lista de ajuda "Quais benefícios da conta Orbi?"
    Entao estou na tela de Ajuda com titulo "Quais benefícios da conta Orbi?" com a imagem e com o texto "De forma simples e dinâmica, a conta Orbi oferece a possibilidade de realizar pagamentos diversos, transferências"
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home
    Quando clico no texto da lista de ajuda "Qual a diferença do cartão virtual Orbi e cartão virtual MC?"
    Entao estou na tela de Ajuda com titulo "Qual a diferença do cartão virtual Orbi e cartão virtual MC?" com a imagem e com o texto "O cartão virtual Orbi utiliza o saldo disponível na conta Orbi. Já o cartão virtual Meu Cartão utiliza o limite de crédito do Meu Cartão."
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home
    Quando clico no texto da lista de ajuda "Como faço um depósito na minha conta Orbi?"
    Entao estou na tela de Ajuda com titulo "Como faço um depósito na minha conta Orbi?" com a imagem e com o texto "É muito simples. Basta gerar um boleto para depósito e realizar o pagamento. Em até 3 dias úteis, o valor depositado estará disponível em sua conta Orbi."
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home


#  -----------Mais ações mapeadas:
#    Quando clico no botao Abrir assistente virtual na Ajuda





