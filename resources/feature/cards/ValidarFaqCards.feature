# language: pt

@homecards
Funcionalidade: Validar Tela da FAQ de Cards

  Contexto: Logar - Acesso o Orbi com um usuario
    Dado que me autentico no app Orbi utilizando o usuario "99530900848"
    E insiro a senha "122356" e clico em logar

  @and02 @ios02 @smokeandroid @smokeios
  Cenario: [Cards] - Smoke - Validar Tela FAQ Cards
    Quando estou na tela de Home do Orbi
    E clico no botao Ajuda na Home
    Entao estou na tela de Ajuda da Home
    E valido o texto da lista de ajuda "O que é o cartão virtual Orbi?" e apresantado em tela
    E valido o texto da lista de ajuda "Qual a diferença do cartão virtual Orbi e cartão virtual MC?" e apresantado em tela
    Quando clico no texto da lista de ajuda "O que é o cartão virtual Orbi?"
    Entao estou na tela de Ajuda com titulo "O que é o cartão virtual Orbi?" com a imagem e com o texto "É um cartão confiável e prático para uso exclusivo em transações em sites de compras, aplicativos e serviços on-line diversos."
    Quando retorno para a tela anterior em Ajuda
    Entao estou na tela de Ajuda da Home
    Quando clico no texto da lista de ajuda "Qual a diferença do cartão virtual Orbi e cartão virtual MC?"
    Entao estou na tela de Ajuda com titulo "Qual a diferença do cartão virtual Orbi e cartão virtual MC?" com a imagem e com o texto "O cartão virtual Orbi utiliza o saldo disponível na conta Orbi. Já o cartão virtual Meu Cartão utiliza o limite de crédito do Meu Cartão."
