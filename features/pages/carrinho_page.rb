class CarrinhoPage < SitePrism::Page

  set_url'https://carrinho.casasbahia.com.br/'
  element :btn_continuar,  '.a.ecline-button'
  element :btn_comprar_mais, '#btnComprarMaisProdutos'
  element :txt_name_produto, '.strong.name'

end

def continuar
  btn_continuar.click
end

def continuar_comprando
  element :btn_comprar_mais, '#btnComprarMaisProdutos'
end

