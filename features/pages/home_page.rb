class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :btn_login, '#linkLoginHeader'
    element :btn_cadastro, '#linkCadastroHeader'
    element :btn_carrinho, '#linkCarrinhoHeader'
    element :btn_lancamentos, '#lancamentosMenuSuperior'
    element :btn_pcGmaner, '#promocaoPcGamerMenuSuperior'
    element :btn_tv, '#promocaoTvMenuSuperior'
    element :btn_ofertasDoDia, '#ofertaDoDiaMenuSuperior'
    element :btn_openBox, '#openBoxMenuSuperior'
    element :btn_sejaPrime, '#sejaPrimeMenuSuperior'
    element :btn_cartaoKaBum, '#cartaoKabumMenuSuperior'
    element :btn_baixeOApp, '#appMenuSuperior'
    element :btn_sejaNinja, '#sejaPrimeMenuSuperior'
    element :cmp_buscar, 'input#input-busca'
    element :btn_buscar, '.IconHeaderSearch'
    element :btn_cookies, '#onetrust-accept-btn-handler'
    element :close, '#Layer_1'

    def buttonLogin
        btn_login.click
    end

    def buttonCadastro
        btn_cadastro.click        
    end

    def buttonCarrinho
        btn_carrinho.click        
    end

    def buttonBusca
        btn_buscar.click
    end

    def buttonListaComprar
        find('.XpvUA').all(:css,'.productCard')[2].hover.first(:css,'button', :text => 'COMPRAR').click
        #mudar para a class da main
    end

    def menuDepartamentos
        find('span', :text => 'DEPARTAMENTOS').hover      
    end

    def buttonMenu(menu)
        
        case menu

        when 'LANÇAMENTOS'
            btn_lancamentos.click

        when 'PC GAMER'
            btn_pcGmaner.click

        when 'TV'
            btn_tv.click

        when 'OFERTA DO DIA'
            btn_ofertasDoDia.click

        when 'OPENBOX'
            btn_openBox.click

        when 'SEJA PRIME'
            btn_sejaPrime.click

        when 'CARTÃO KABUM'
            btn_cartaoKaBum.click

        else
            btn_baixeOApp.click
        end

    end

    def campoPesquisa(item)
        cmp_buscar.send_keys(item)
        sleep 1
    end

    def listaPesquisa
        numero_aleatorio = rand(1..5)

        find('.DropdownSearchbar').all(:css,'a')[numero_aleatorio].click
    end

    def validarCarrinho
        expect(page).to have_css('strong', :text => 'PRODUTO ADICIONADO NO CARRINHO', :visible => true)
        expect(page).to have_css('#linkCarrinhoHeader>div>span', :text => '1', :visible => true)
    end

    def efeitoMenu(nome_menu)

        case nome_menu
        when 'Lançamentos'
            btn_lancamentos.hover
        when 'PC Gamer'
            btn_pcGmaner.hover
        when 'TV'
            btn_tv.hover
        when 'Oferta do Dia'
            btn_ofertasDoDia.hover
        when 'OpenBox'
            btn_openBox.hover
        when 'Seja Prime'
            btn_sejaPrime.hover
        when 'Cartão KaBuM!'
            btn_cartaoKaBum.hover
        when 'Baixe o App'
            btn_baixeOApp.hover
        end
    end

    def verificaEfeito(string)
      find(string).has_css?('.hovered')
            
    end
    
end