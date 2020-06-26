class ListaPage < SitePrism::Page
  set_url '/iphone-xr/b'
  element :frm_iphonexr, '#nm-product-11656724'

  def acessar_detalhe
    frm_iphonexr.click
  end

end

