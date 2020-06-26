     #language: pt
     @regressivo
     Funcionalidade: Adicionar produto ao carrinho
       Como cliente das Casas Bahia
       Quero adicionar um produto no carrinho
       Para reservar meu produto

       @usuario_deslogado
       Esquema do Cenário: Adicionar produto no carrinho
         Dado  que acesso o detalhe do <produto> desejado no site da Casas Bahia
         E sigo para tela de compra
         Quando retorno para continuar comprando
         Entao o sisitema adiciona o produto com sua <descricao> no carrinho
         Exemplos:
           | produto    | descricao                                                                                                                       |
           |"Iphone XR" | "iPhone XR Apple Branco 64GB, Tela Retina LCD de 6,1”, iOS 12, Câmera Traseira 12MP, Resistente à Água e Reconhecimento Facial" |