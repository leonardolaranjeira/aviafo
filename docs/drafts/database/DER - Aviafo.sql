CREATE TABLE [Categoria] (
  [CategoriaID] int PRIMARY KEY,
  [Nome] String UNIQUE,
  [Descricao] String,
  [CategoriaPaiID] int,
  [Ativo] boolean
)
GO

CREATE TABLE [Produto] (
  [produtoID] int PRIMARY KEY,
  [categoriaID] int,
  [sku] nvarchar(255),
  [descricao] text,
  [preco] decimal,
  [ativo] boolean,
  [dataCriacao] datetime,
  [dataAtualizacao] datetime
)
GO

CREATE TABLE [Estoque] (
  [estoqueID] int PRIMARY KEY,
  [produtoID] int,
  [quantidade] int,
  [quantidadeMinima] int,
  [quantidadeMaxima] int,
  [dataAtualizacao] datetime
)
GO

CREATE TABLE [Carrinho] (
  [carrinhoID] int PRIMARY KEY,
  [clienteID] int,
  [dataCriacao] datetime,
  [dataAtualizacao] datetime
)
GO

CREATE TABLE [CarrinhoItem] (
  [carrinhoItemID] int PRIMARY KEY,
  [carrinhoID] int,
  [produtoID] int,
  [quantidade] int,
  [precoUnitario] decimal
)
GO

CREATE TABLE [Pedido] (
  [pedidoID] int PRIMARY KEY,
  [cupomID] int,
  [clienteID] int,
  [enderecoID] int,
  [numeroPedido] String UNIQUE,
  [status] String,
  [subtotal] decimal,
  [frete] decimal,
  [desconto] decimal,
  [total] decimal,
  [dataPedido] datetime,
  [dataEntrega] datetime
)
GO

CREATE TABLE [Avaliacao] (
  [avaliacaoID] int PRIMARY KEY,
  [produtoID] int,
  [clienteID] int,
  [nota] int,
  [comentario] text,
  [dataAvaliacao] datetime
)
GO

CREATE TABLE [Cupom] (
  [cupomID] int PRIMARY KEY,
  [codigo] nvarchar(255) UNIQUE,
  [tipoDesconto] nvarchar(255),
  [valorDesconto] decimal,
  [dataValidade] datetime,
  [ativo] boolean
)
GO

CREATE TABLE [PedidoItem] (
  [pedidoitemID] int PRIMARY KEY,
  [pedidoID] int,
  [produtoID] int,
  [quantidade] int,
  [precoUnitario] decimal,
  [subtotal] decimal
)
GO

CREATE TABLE [Pagamento] (
  [pagamentoID] int PRIMARY KEY,
  [pedidoID] int,
  [clienteID] int,
  [tipoPagamento] String,
  [valor] decimal,
  [status] String,
  [dataPagamento] datetime,
  [datetime] dataVencimento
)
GO

CREATE TABLE [Cliente] (
  [clienteID] int PRIMARY KEY,
  [email] String UNIQUE,
  [nome] String,
  [telefone] String,
  [cpf] String UNIQUE,
  [dataCriacao] datetime,
  [dataAtualizacao] datetime
)
GO

CREATE TABLE [Endereco] (
  [enderecoID] int PRIMARY KEY,
  [clienteID] int,
  [rua] String,
  [numero] String,
  [complemento] String,
  [bairro] String,
  [cidade] String,
  [estado] String,
  [cep] String,
  [tipo] String,
  [ativo] boolean
)
GO

CREATE TABLE [Newsletter] (
  [newsletterID] int PRIMARY KEY,
  [clienteID] int,
  [email] String,
  [ativo] boolean,
  [dataInscricao] datetime,
  [dataDesinscricao] datetime
)
GO

ALTER TABLE [Categoria] ADD FOREIGN KEY ([CategoriaPaiID]) REFERENCES [Categoria] ([CategoriaID])
GO

ALTER TABLE [Produto] ADD FOREIGN KEY ([categoriaID]) REFERENCES [Categoria] ([CategoriaID])
GO

ALTER TABLE [Estoque] ADD FOREIGN KEY ([produtoID]) REFERENCES [Produto] ([produtoID])
GO

ALTER TABLE [Carrinho] ADD FOREIGN KEY ([clienteID]) REFERENCES [Cliente] ([clienteID])
GO

ALTER TABLE [CarrinhoItem] ADD FOREIGN KEY ([carrinhoID]) REFERENCES [Carrinho] ([carrinhoID])
GO

ALTER TABLE [CarrinhoItem] ADD FOREIGN KEY ([produtoID]) REFERENCES [Produto] ([produtoID])
GO

ALTER TABLE [Pedido] ADD FOREIGN KEY ([cupomID]) REFERENCES [Cupom] ([cupomID])
GO

ALTER TABLE [Pedido] ADD FOREIGN KEY ([clienteID]) REFERENCES [Cliente] ([clienteID])
GO

ALTER TABLE [Pedido] ADD FOREIGN KEY ([enderecoID]) REFERENCES [Endereco] ([enderecoID])
GO

ALTER TABLE [Avaliacao] ADD FOREIGN KEY ([produtoID]) REFERENCES [Produto] ([produtoID])
GO

ALTER TABLE [Avaliacao] ADD FOREIGN KEY ([clienteID]) REFERENCES [Cliente] ([clienteID])
GO

ALTER TABLE [PedidoItem] ADD FOREIGN KEY ([pedidoID]) REFERENCES [Pedido] ([pedidoID])
GO

ALTER TABLE [PedidoItem] ADD FOREIGN KEY ([produtoID]) REFERENCES [Produto] ([produtoID])
GO

ALTER TABLE [Pagamento] ADD FOREIGN KEY ([pedidoID]) REFERENCES [Pedido] ([pedidoID])
GO

ALTER TABLE [Pagamento] ADD FOREIGN KEY ([clienteID]) REFERENCES [Cliente] ([clienteID])
GO

ALTER TABLE [Endereco] ADD FOREIGN KEY ([clienteID]) REFERENCES [Cliente] ([clienteID])
GO

ALTER TABLE [Newsletter] ADD FOREIGN KEY ([clienteID]) REFERENCES [Cliente] ([clienteID])
GO

ALTER TABLE [Estoque] ADD FOREIGN KEY ([quantidade]) REFERENCES [Estoque] ([quantidadeMinima])
GO

ALTER TABLE [Estoque] ADD FOREIGN KEY ([quantidade]) REFERENCES [Estoque] ([produtoID])
GO
