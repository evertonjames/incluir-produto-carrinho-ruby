class ProdutoPage < SitePrism::Page

  #set_url '/'
  element :btn_comprar, '#btnAdicionarCarrinho'

    def clicar_comprar
      btn_comprar.click
    end
  end


