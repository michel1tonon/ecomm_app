# Ecomm App

![Farmers Market Finder Demo](example_home.gif)

Projeto de exemplo de página com dificuldade médio/difícil sem o uso de libs de terceiro.
A ideia é mostrar que com Flutter é possível fazer qualquer interface sem o uso de bibliotecas externas.

Exemplo de um App Ecomm com carrossel, scroll de componentes e a reutilização do carrossel em produtos.

## Estrutura raiz do projeto

- modules: Módulos individuais do projeto.
- shared: Itens que podem ser acessados por vários módulos.

## Estrutura dos módulos.

Cada módulo pode conter:

- controller: Controller principal, deve conter as regras de negócio da página.
- module: Arquivo com definição de rotas e injeção de dependências.
- page: View principal do módulo
- store: Armazena dados utilizados no módulo.
- repositories: Sincronização de dados, é possível construir modelo mockado.
- components: Views utilizadas apenas no módulo em questão.

## Uso de imagens.

Uso de imagens públicas de pessoas privadas neste projeto.
As imagens foram retiradas dos seguinte sites: <br/> 
https://icons8.com/  <br/>
https://www.freepik.com/ <br/>
https://www.royalcanin.com/br 

Se alguma pessoa com direto sobre estas imagens se sentir prejudicado com este uso, por favor, deixe me saber e eu removerei.
Email para contato: michel1tonon@gmail.com

# Para rodar

Use o terminal para criar os arquivos gerados automáticamente do MOBX
****flutter packages pub run build_runner build****

Após tudo configurado
****flutter run****
