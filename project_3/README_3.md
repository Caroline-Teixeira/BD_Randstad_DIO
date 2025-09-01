# Sistema E-commerce - Projeto de Banco de Dados

## 📋 Descrição do Projeto

Este projeto implementa um sistema de banco de dados para e-commerce, gerenciando clientes (pessoa física e jurídica), fornecedores, produtos, estoques, pedidos, pagamentos e entregas.

## 🏗️ Estrutura do Banco de Dados

### Scripts

- Ecommerce_Script - criação do banco de dados [📁 Ver Script 1](./assets/Ecommerce_Script.sql) 
- Ecommerce_Pop - populando banco de dados [📁 Ver Script 2](./assets/Ecommerce_Pop.sql)
- Ecommerce_Operations - script de consultas (desafio)  [📁 Ver Script 3](./assets/Ecommerce_Operations.sql)  

### Principais Tabelas

- **Cliente**: Dados básicos (nome, endereço)
- **Cliente_CPF / Cliente_CNPJ**: Especialização para PF e PJ
- **Fornecedor**: Dados dos fornecedores (tipo: loja ou terceiro)
- **Fornecedor_CPF / Fornecedor_CNPJ**: Especialização para PF e PJ
- **Produto**: Catálogo de produtos (nome, categoria, preço)
- **Estoque**: Locais de armazenamento
- **Pedido**: Pedidos dos clientes
- **Pagamento**: Dados de pagamento
- **Entrega**: Controle de entregas com rastreamento

## 🔍 Queries Implementadas

### Perguntas Respondidas:

1. **Quantos pedidos por cliente?**
2. **Algum fornecedor também é cliente?**
3. **Relação produtos-fornecedores-estoques**
4. **Relação fornecedores-produtos**

### Conceitos SQL Demonstrados:

- **SELECT simples**: Busca básica de dados
- **WHERE**: Filtro por ID específico  
- **Atributos derivados**: Cálculo com ROUND()
- **ORDER BY**: Ordenação por preço
- **HAVING**: Filtro em grupos (quantidade > 20)
- **JOINs**: Relacionamentos entre tabelas

