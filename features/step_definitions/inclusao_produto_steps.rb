Dado("que acesso o detalhe do {string} desejado no site da Casas Bahia") do |produto|
  @home_page = HomePage.new
  @home_page.load
  @home_page.buscar_produto(produto)
  @lista_page.acessar_detalhe

end

When(/^sigo para tela de compra$/) do
  @produto_page.clicar_comprar
end

When(/^retorno para continuar comprando$/) do
  @carrinho_page.continuar
  @carrinho_page.continuar_comprando
end

Entao("o sisitema adiciona o produto com sua {string} no carrinho") do |descricao|
  @home_page.acessar_carrinho
  expect(@carrinho_page).to have_content descricao
end