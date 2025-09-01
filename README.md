# 📊 Bootcamp Randstad - Análise de Dados

![Feito com SQL](https://img.shields.io/badge/Feito%20com-SQL-blue?style=for-the-badge&logo=postgresql)
<!--![Feito com Excel](https://img.shields.io/badge/Feito%20com-Excel-green?style=for-the-badge&logo=microsoftexcel)-->


## 📖 Descrição

Este repositório contém os projetos desenvolvidos durante o **Bootcamp Randstad - Análise de Dados** oferecido pela **DIO (Digital Innovation One)**. O programa abrange todo o fluxo de análise de dados com ETL, desde a coleta de dados até sua transformação em insights valiosos, utilizando IA e Machine Learning.

O bootcamp foca no desenvolvimento de habilidades práticas utilizando ferramentas de ponta como **SQL**, **Excel** e **Microsoft Copilot** para criar análises que impactam diretamente os negócios, trabalhando com bases reais e desenvolvendo dashboards profissionais.

## 🎯 Objetivos do Bootcamp

- ✅ Dominar o fluxo completo de análise de dados com ETL
- ✅ Utilizar ferramentas como SQL, Excel e Microsoft Copilot
- ✅ Desenvolver dashboards profissionais
- ✅ Trabalhar com bases de dados reais
- ✅ Criar análises que geram insights de negócio
- ✅ Aplicar IA e Machine Learning na análise de dados
- ✅ Construir um portfólio robusto com 6 projetos práticos

## 🛠️ Tecnologias e Ferramentas

- **SQL** - Manipulação e consulta de bases de dados
- **Excel** - Análise e visualização de dados
- **Microsoft Copilot** - Inteligência Artificial para análise
- **MySQL Workbench** - Modelagem de banco de dados
- **Git/GitHub** - Controle de versão e portfólio


## 🚀 Projetos Desenvolvidos

### 📊 Projeto 1: Refinando um Projeto Conceitual de Banco de Dados – E-COMMERCE
Refinamento de modelo conceitual de banco de dados para e-commerce, implementando melhorias na estrutura de dados para clientes PJ/PF, sistema de pagamentos múltiplos e controle de entregas com rastreamento.

**Principais implementações:**
- Separação de Cliente PJ e PF com herança
- Sistema de múltiplas formas de pagamento
- Controle de entrega com status e código de rastreio
- Modelagem utilizando MySQL Workbench

[📁 Ver Projeto 1](./project_1/)

### 📊 Projeto 2: Construindo um Esquema Conceitual para Banco De dados
Criação de um modelo conceitual para uma Oficina Mecânica a partir de uma narrativa.

**Principais implementações:**
- Separação de Cliente PJ e PF com herança
- Criação e indetificação das entidades:
    1. Cliente
    2. Veículo 
    3. Ordem de Serviço (OS)
    4. Mecânico
    5. Equipe
    6. Peças
    7. Serviços_de_Referência
- Modelagem utilizando MySQL Workbench

[📁 Ver Projeto 2](./project_2/)

### 📊 Projeto 3: Construindo seu Primeiro Projeto Lógico de Banco de Dados
 Primeiro projeto lógico de banco de dados utilizando o MySQL. O objetivo é replicar a modelagem de um banco de dados para um cenário de e-commerce (com base no projeto 1).

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

[📁 Ver Projeto 3](./project_3/)


### 📊 Projeto 4: Constrindo um Projeto Lógico de Banco de Dados do Zero
 Esquema lógico de um contexto de oficina, utilizando o esquema conceitual desenvolvido no projeto 2.

### Principais Tabelas

- **Cliente**: Dados dos clientes (nome, CPF, endereço)
- **Veiculo**: Informações dos veículos (modelo, placa, ano) vinculados aos clientes
- **Equipe**: Equipes de trabalho organizadas por função especializada
- **Mecanico**: Dados dos mecânicos e suas especialidades, vinculados às equipes
- **Peca**: Catálogo de peças com descrição e valores unitários
- **Servico_Referencia**: Tabela de preços de referência para serviços padrão
- **OS**: Ordens de serviço com controle de datas, status e responsáveis
- **Referencia_OS**: Relacionamento entre ordens de serviço e serviços realizados
- **Peca_OS**: Controle de peças utilizadas em cada ordem de serviço
- **Autorizacao**: Controle de autorizações dos clientes para execução dos serviços

[📁 Ver Projeto 4](./project_4/)

## 🎓 Competências Desenvolvidas

- **Modelagem de Banco de Dados** - Criação e refinamento de modelos conceituais
- **SQL Avançado** - Consultas complexas e otimização de queries


<!--
- **ETL (Extract, Transform, Load)** - Processos de extração e transformação de dados
- **Análise de Dados** - Interpretação e geração de insights
- **Visualização de Dados** - Criação de dashboards e relatórios
- **Inteligência Artificial** - Aplicação de IA na análise de dados
- **Machine Learning** - Implementação de algoritmos de aprendizado 
-->


## 🔗 Links Úteis

- [DIO - Digital Innovation One](https://dio.me)
- [Randstad](https://www.randstad.com.br)
- [Documentação MySQL](https://dev.mysql.com/doc/)
- [Microsoft Copilot](https://copilot.microsoft.com)


## 👨‍💻 Autor

<a href="https://github.com/Caroline-Teixeira">Caroline 💙</a>

---

📌 *Projeto desenvolvido para o desafio da DIO (Digital Innovation One).*