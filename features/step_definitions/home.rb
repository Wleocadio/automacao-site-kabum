Dado('que eu esteja na pagina home') do
    commun.load    
end
  
Quando('eu clico no botão login') do
    home.buttonLogin
end

Então('sou redirecionado para a tela de login') do
    expect(page).to have_current_path('https://www.kabum.com.br/login?redirect_uri=https://www.kabum.com.br/')
end

Quando('eu clico no botão cadastro') do
    home.buttonCadastro
end
  
Então('sou redirecionado para a tela de cadastro') do
    expect(page).to have_current_path('https://www.kabum.com.br/cadastro')
end

Quando('eu clico no botão do carrinho') do
    home.buttonCarrinho
end
  
Então('sou redirecionado para a tela de carrinho') do
    expect(page).to have_current_path('https://www.kabum.com.br/carrinho', url: true)
    expect(page).to have_css('b', :text => 'O seu carrinho está vazio.')
end

Quando('eu coloco o mouse no iten departamentos do menu') do
    home.menuDepartamentos
end
  
Então('abre o campo com os departamentos') do
    expect(page).to have_css('[data-testid="departments-column"]',:visible => true)
end
  
Quando('eu clico no item {string} do menu') do |nome_menu|
    home.buttonMenu(nome_menu)
end
  
Então('sou direcionado para a pagina {string}') do |pagina_menu|
    expect(page).to have_current_path(pagina_menu, url: true)
end
  
  
Quando('pesquiso {string}') do |item|
    home.campoPesquisa(item)
    home.buttonBusca
    home.buttonListaComprar
end
  
Então('sou redirecionado para a página de resultado da pesquisa {string}') do |resultado_item|
    page.has_text?(resultado_item)
    home.validarCarrinho
end

Quando('pesquiso {string} e clico no terceiro item') do |string|
    home.campoPesquisa(string)
    home.listaPesquisa
end
  
Então('sou redirecionado para página de resultado da pesquisa {string}') do |string|
    page.has_text?(string)
end

Quando('eu coloco o mouse no menu {string}') do |string|
    home.efeitoMenu(string)
end
  
Então('a cor do item do id {string} muda para ficando escuro') do |string|
    home.verificaEfeito(string)
end