#language: pt

@regressão
Funcionalidade: Home Page

Contexto:
Dado que eu esteja na pagina home 

@validar_botao_login
Cenario: validar botão login
Quando eu clico no botão login
Então sou redirecionado para a tela de login

@validar_botao_cadastro
Cenario: validar botão cadastro
Quando eu clico no botão cadastro
Então sou redirecionado para a tela de cadastro

@validar_botao_carrinho
Cenario: validar botão carrinho
Quando eu clico no botão do carrinho 
Então sou redirecionado para a tela de carrinho
 
@validar_menu_departamentos
Cenario: validar botão departamento
Quando eu coloco o mouse no iten departamentos do menu 
Então abre o campo com os departamentos

@validar_itens_menu
Esquema do Cenario: validar botões do Menu
Quando eu clico no item "<nome_menu>" do menu
Então sou direcionado para a pagina "<pagina_menu>"

Exemplos:
        |nome_menu      |pagina_menu                                     |
        |LANÇAMENTOS    |https://www.kabum.com.br/lancamentos            |         
        |PC GAMER       |https://www.kabum.com.br/promocao/MENU_PCGAMER  |
        |TV             |https://www.kabum.com.br/tv                     |
        |OFERTA DO DIA  |https://www.kabum.com.br/ofertas/ofertadodia    |
        |OPENBOX        |https://www.kabum.com.br/hotsite/openbox/       |
        |SEJA PRIME     |https://www.kabum.com.br/hotsite/prime/         |
        |CARTÃO KABUM   |https://www.kabum.com.br/hotsite/cartao/        |
        |BAIXE O APP    |https://www.kabum.com.br/hotsite/app/           |


@validar_pesquisa
Esquema do Cenario: validar Pesquisa
Quando pesquiso "<item>" 
Então sou redirecionado para a página de resultado da pesquisa "<resultado_item>"

Exemplos:
        |item            |resultado_item   |
        |Memoria         |Memoria          |
        |Teclado         |Teclado          |
        |Processador     |Processador      |



@validar_item_da_pesquisa
Cenario: validar item da Pesquisa
Quando pesquiso "Monitor" e clico no terceiro item
Então sou redirecionado para página de resultado da pesquisa "Monitor"

@validar_efeitos_menu
Esquema do Cenario: Validar efeitos menu
Quando eu coloco o mouse no menu "<nome_menu>"
Então a cor do item do id "<id_menu>" muda para ficando escuro

Exemplos:
        |nome_menu      |id_menu                      |
        |Lançamentos    |#lancamentosMenuSuperior     |         
        |PC Gamer       |#promocaoPcGamerMenuSuperior |
        |TV             |#promocaoTvMenuSuperior      |
        |Oferta do Dia  |#ofertaDoDiaMenuSuperior     |
        |OpenBox        |#openBoxMenuSuperior         |
        |Seja Prime     |#sejaPrimeMenuSuperior       |
        |Cartão KaBuM!  |#cartaoKabumMenuSuperior     |
        |Baixe o App    |#appMenuSuperior             |
        