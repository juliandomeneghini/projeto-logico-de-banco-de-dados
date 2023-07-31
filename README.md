# Construindo seu Primeiro Projeto Lógico de Banco de Dados
## Descrição do Desafio
Neste projeto, realizaremos a modelagem do banco de dados para um cenário de e-commerce. Vamos replicar a estrutura lógica do banco de dados, levando em conta as definições de chaves primárias, chaves estrangeiras e as constraints necessárias para o cenário modelado. No modelo, teremos relacionamentos presentes no modelo EER (Enhanced Entity-Relationship).

Além disso, aplicaremos o mapeamento dos modelos aos refinamentos propostos no módulo de modelagem conceitual. Realizaremos a criação de um script SQL para criar o esquema do banco de dados e, em seguida, faremos a persistência de dados para realizar testes.

## Também vamos elaborar queries SQL mais complexas do que as apresentadas durante a explicação do desafio, abrangendo as seguintes cláusulas:

* Recuperações simples com SELECT Statement
* Filtros com WHERE Statement
* Criação de expressões para gerar atributos derivados
* Ordenações dos dados com ORDER BY
* Condições de filtros aos grupos com HAVING Statement
* Junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

## Objetivo

O objetivo é refinar o modelo apresentado acrescentando os seguintes pontos:

* Cliente PJ e PF - Uma conta pode ser PJ (Pessoa Jurídica) ou PF (Pessoa Física), mas não pode ter as duas informações.
* Pagamento - Um cliente pode ter cadastrado mais de uma forma de pagamento.
* Entrega - Possui status e código de rastreio.

## Perguntas a serem respondidas pelas queries SQL
Durante a realização das consultas, vamos buscar responder perguntas relacionadas ao cenário do e-commerce, tais como:

* Quantos pedidos foram feitos por cada cliente?
* Algum vendedor também é fornecedor?
* Relação de produtos fornecedores e estoques.
* Relação de nomes dos fornecedores e nomes dos produtos.
  
