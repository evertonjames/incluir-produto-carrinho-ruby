class HomePage < SitePrism::Page
  set_url ''
  element :cmp_busca, '#strBusca'
  element :btn_busca, '#btnOK'
  element :frm_itens_carrinho, '#itensCarrinho'

  def buscar_produto(produto)
    cmp_busca.set  produto
    btn_busca.click
  end

  def acessar_carrinho
    frm_itens_carrinho.click
  end
end

