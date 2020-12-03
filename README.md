# Exemplo Home

![Farmers Market Finder Demo](example_home.gif)

Projeto de exemplo de uma página com dificuldade médio/difícil sem o uso de libs de terceiro.
A ideia é mostrar que com Flutter é possível fazer quase qualquer coisa na interface sem o uso de bibliotecas.

Exemplo de uma Home Page Ecomm com carrossel, scroll de componentes e a reutilização do carrossel em produtos.

## Estrutura raiz do projeto

- modules: Módulos individuais do projeto.
- shared: Itens que podem ser acessados por vários módulos.

## Estrutura dos módulos.

Cada módulo pode conter:

- controller: Controller principal do módulo.
- module: Arquivo com definição de rotas e injeção de dependências.
- page: View principal do módulo
- store: Armazena dados utilizados no módulo.
- repositories: Sincronização de dados, é possível construir modelo mockado.
- components: Views utilizadas apenas no módulo em questão.

## Uso de imagens.

Uso de imagens públicas de pessoas privadas neste projeto.
As imagens foram retiradas dos seguinte sites: 
https://icons8.com/
https://www.freepik.com/
https://www.royalcanin.com/br

Se alguma pessoa com direto sobre estas imagens se sentir prejudicado com este uso, por favor, deixe me saber e eu removerei.
Email para contato: michel1tonon@gmail.com

# Para rodar

Use o terminal para criar os arquivos gerados automáticamente do MOBX
****flutter packages pub run build_runner build****

Após tudo configurado
****flutter run****
