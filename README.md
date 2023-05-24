## Automação Web no site da kaBum com Cucumber | Capybara | Ruby

## Introdução

Este guia descreve os passos necessários para execução da automação.

## Instalando o Ruby

1. Faça o download do instalador do Ruby da página oficial do [Ruby Installer](https://rubyinstaller.org/).

2. Execute o instalador e siga as instruções na tela para instalar o Ruby.

3. Abra o Prompt de Comando e execute o seguinte comando para verificar se o Ruby foi instalado corretamente:

`ruby -v`


## Instalando o Chromedrive

1. Faça o download da versão mais recente do [ChromeDriver](https://chromedriver.chromium.org/downloads).

2. Descompacte o arquivo baixado.

3. Copie o executável do ChromeDriver para um local acessível pelo PATH do sistema.

4. Verifique se o ChromeDriver foi instalado corretamente executando o seguinte comando no Prompt de Comando:

`chromedriver -v`

O comando deve retornar a versão do ChromeDriver instalada.


## Instalando o Bundler

1. Abra o Prompt de Comando navegue até a pasta dos arquivos e execute o seguinte comando para instalar o Bundler:

`gem install bundler`

2. Verifique se o Bundler foi instalado corretamente executando o seguinte comando:

`bundle -v`

O comando deve retornar a versão do Bundler instalada.

3. No Prompt de Comando execute o seguinte comando para instalar as dependências:

`bundler install`

## Iniciando a automação

1. Execute o comando abaixo no Prompt de comando para iniciar a automação

`bundler exec cucumber`


