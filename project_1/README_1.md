# 🛒 Narrativa E-Commerce

## 🎁 Produto:

- Os produtos são vendidos por uma única plataforma online. Contudo, estes podem ter vendedores distintos (terceiros).
- Cada produto possuí um fornecedor.
- Um ou mais produtos podem compor um pedido.

## 🧑‍💼🙋 Cliente:

- O cliente pode se cadastrar no site com seu CPF ou CNPJ.
- O endereço do cliente irá determinar o valor do frete. (em caso de extorno)
- Um cliente pode comprar mais de um pedido. Este tem um período de carência para devolução do produto.

## 📝 Pedido: 

- Os pedidos são criados por clientes e possuem informações de compra, endereço e status de entrega.
- Um produto ou mais compõem o pedido.
- O pedido pode ser cancelado.

## 🚚 Fornecedor:

- Possui CPF ou CNPJ.
- Razão Social

## 🏬 Estoque:

- Informar a quantidade dos produtos em estoque.
- Informar local, pois pode estar em locais distintos.

## ✨ Refinamento

- Cliente PJ e PF — Uma conta pode ser PJ ou PF, mas não pode ter as duas informações
- Pagamento — Pode ter cadastrado mais de uma forma de pagamento
- Entrega — Possui status e código de rastreio

## 🧩 Modelo sem Refinamento

<img src="assets/E-commerce original.png" alt="E-commerce">

## 📐 Modelo Refinado

<img src="assets/E-commerce refinado.png" alt="E-commerce refinado">

## 📖 Explicação
### 🧑‍💼🙋 Cliente (CPF/CNPJ)

- Cada cliente deve ser Pessoa Física (CPF) ou Pessoa Jurídica (CNPJ).
- CPF e CNPJ devem ser chaves únicas (UNIQUE), garantindo que não haja duplicidade.
- Isso evita que o mesmo cliente seja cadastrado duas vezes com o mesmo documento.

#### Modelagem usada:
- Cliente (dados comuns)
- ClientePF (dados de PF, ligado ao Cliente por idCliente UNIQUE) -> herança
- ClientePJ (dados de PJ, ligado ao Cliente por idCliente UNIQUE) -> herança
- Cardinalidade: 1:1 (um Cliente só pode ser CPF ou PJ).

### 💰 Pagamento

O Pagamento depende totalmente do Pedido. Sem Pedido, não existe Pagamento. Por isso, o pagamento é uma entidade fraca:
- A PK é formada pelo mesmo idPedido (PK + FK).
- Relação: 1 Pedido ↔ 1 Pagamento.
- Mesmo que seja cartão, Pix ou boleto, tudo é tratado como um pagamento vinculado ao pedido.

### 📦 Entrega

A Entrega também depende totalmente do Pedido ou seja sem pedido, não existe entrega. Por isso, também é uma entidade fraca:
- Usa idPedido como PK + FK.
- Relação: 1 Pedido ↔ 1 Entrega.
- Contém dados como: status, código de rastreio, datas de envio e entrega.