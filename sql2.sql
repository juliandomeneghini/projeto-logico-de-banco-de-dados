use ecommerce;
-- Inserido dados na tabela clientes
INSERT INTO clients (idPClient, Fname, Minit, Lname, CPF_CNPJ, Address) VALUES
(1, 'João', 'S', 'Silva', '123.456.789-00', 'Rua A, 123'),
(2, 'Maria', 'R', 'Santos', '987.654.321-00', 'Avenida B, 456'),
(3, 'Pedro', 'C', 'Oliveira', '111.222.333-44', 'Praça C, 789'),
(4, 'Ana', 'G', 'Souza', '555.666.777-88', 'Rua D, 987'),
(5, 'José', 'A', 'Ferreira', '999.888.777-66', 'Avenida E, 654'),
(6, 'Carla', 'P', 'Rocha', '333.444.555-99', 'Rua F, 321'),
(7, 'Antônio', 'M', 'Almeida', '777.888.999-11', 'Praça G, 987'),
(8, 'Mariana', 'T', 'Melo', '000.111.222-33', 'Avenida H, 321'),
(9, 'Rafael', 'L', 'Gomes', '222.333.444-55', 'Rua I, 654'),
(10, 'Patrícia', 'N', 'Pereira', '666.777.888-00', 'Praça J, 789');

INSERT INTO product (Pname, productDescription, category, avaliation, size, priceUnit) VALUES
('Smartphone', 'Celular inteligente', 'Eletrônicos', 4.5, '6.2 polegadas', 1200),
('Camiseta', 'Camiseta de algodão', 'Vestimenta', 4.0, 'M', 50),
('Boneca', 'Boneca de pano', 'Brinquedos', 4.8, '25cm', 30),
('Arroz', 'Arroz branco', 'Alimentos', 5.0, '1kg', 5),
('Sofá', 'Sofá de couro', 'Móveis', 4.2, '3 lugares', 800),
('Harry Potter', 'Livro de ficção', 'Livros', 4.6, '14x21cm', 35),
('Notebook', 'Notebook ultrafino', 'Eletrônicos', 4.9, '13.3 polegadas', 2000),
('Vestido', 'Vestido de festa', 'Vestimenta', 4.7, 'G', 120),
('Carrinho', 'Carrinho de controle remoto', 'Brinquedos', 4.3, '20cm', 40),
('Chocolate', 'Chocolate ao leite', 'Alimentos', 4.5, '200g', 4);

INSERT INTO payments (idPPayment, typepayment, limitavailable, expirationDate) VALUES
(1, 'Boleto', 500, '2023-08-15'),
(2, 'Cartão', 1000, '2023-09-10'),
(3, 'PIX', 200, '2023-08-25'),
(4, 'Dois cartões', 1500, '2023-08-20'),
(5, 'PIX', 300, '2023-08-30'),
(6, 'Boleto', 600, '2023-09-05'),
(7, 'Cartão', 800, '2023-08-18'),
(8, 'Dois cartões', 1200, '2023-09-01'),
(9, 'Boleto', 400, '2023-08-28'),
(10, 'Cartão', 700, '2023-08-22');

INSERT INTO payment_clients (idPClient, idPPayment) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO orders (idOrdersClient, descriptionOrder, productValue, idPayment) VALUES
(1, 'Pedido 1', 100, 1),
(2, 'Pedido 2', 70, 2),
(3, 'Pedido 3', 50, 3),
(4, 'Pedido 4', 200, 4),
(5, 'Pedido 5', 300, 5),
(6, 'Pedido 6', 80, 6),
(7, 'Pedido 7', 150, 7),
(8, 'Pedido 8', 90, 8),
(9, 'Pedido 9', 120, 9),
(10, 'Pedido 10', 180, 10);

INSERT INTO productInventory (locationInventory, quantity) VALUES
('Depósito A', 100),
('Depósito B', 50),
('Depósito C', 200),
('Depósito D', 80),
('Depósito E', 120),
('Depósito F', 70),
('Depósito G', 30),
('Depósito H', 90),
('Depósito I', 60),
('Depósito J', 40);

INSERT INTO suppliers (SocialName, CNPJ, contact) VALUES
('Fornecedor 1', '12.345.678/0001-00', '11 98765-4321'),
('Fornecedor 2', '98.765.432/0001-01', '22 98877-6655'),
('Fornecedor 3', '11.223.344/0001-02', '33 99123-4545'),
('Fornecedor 4', '55.666.777/0001-03', '44 99988-7766'),
('Fornecedor 5', '99.888.777/0001-04', '55 98123-4433'),
('Fornecedor 6', '33.444.555/0001-05', '66 97777-2211'),
('Fornecedor 7', '77.888.999/0001-06', '77 99911-6677'),
('Fornecedor 8', '00.111.222/0001-07', '88 98765-1234'),
('Fornecedor 9', '22.333.444/0001-08', '99 91234-5678'),
('Fornecedor 10', '66.777.888/0001-09', '00 98123-4567');

INSERT INTO sellers (idPSeller, SocialName, tradename, CPF_CNPJ, location, contact) VALUES
(1, 'Vendedor 1', 'Vend1', '123.456.789-00', 'Loja A', '11 98765-4321'),
(2, 'Vendedor 2', 'Vend2', '987.654.321-00', 'Loja B', '22 98877-6655'),
(3, 'Vendedor 3', 'Vend3', '111.222.333-44', 'Loja C', '33 99123-4545'),
(4, 'Vendedor 4', 'Vend4', '555.666.777-88', 'Loja D', '44 99988-7766'),
(5, 'Vendedor 5', 'Vend5', '999.888.777-66', 'Loja E', '55 98123-4433'),
(6, 'Vendedor 6', 'Vend6', '333.444.555-99', 'Loja F', '66 97777-2211'),
(7, 'Vendedor 7', 'Vend7', '777.888.999-11', 'Loja G', '77 99911-6677'),
(8, 'Vendedor 8', 'Vend8', '000.111.222-33', 'Loja H', '88 98765-1234'),
(9, 'Vendedor 9', 'Vend9', '222.333.444-55', 'Loja I', '99 91234-5678'),
(10, 'Vendedor 10', 'Vend10', '666.777.888-00', 'Loja J', '00 98123-4567');


INSERT INTO deliverys (idOrder, trackingNumber, statusDelivery) VALUES
(1, 'ABCD1234', 'Entregue'),
(2, 'EFGH5678', 'Em processamento'),
(3, 'IJKL9101', 'Saiu para entrega'),
(4, 'MNOP1213', 'Entregue'),
(5, 'QRST1415', 'Em processamento'),
(6, 'UVWX1617', 'Saiu para entrega'),
(7, 'YZAB1819', 'Entregue'),
(8, 'CDEF2021', 'Em processamento'),
(9, 'GHIJ2223', 'Saiu para entrega'),
(10, 'KLMN2425', 'Entregue');

INSERT INTO product_seller (idPSeller, idPSproduct, prodQuantity) VALUES
(1, 1, 20),
(2, 2, 50),
(3, 3, 30),
(4, 4, 40),
(5, 5, 25),
(6, 6, 15),
(7, 7, 10),
(8, 8, 12),
(9, 9, 18),
(10, 10, 22);

INSERT INTO product_suppliers (idPsSuppliers, idPsProduct, quantity) VALUES
(1, 1, 50),
(2, 3, 100),
(3, 2, 70),
(4, 5, 200),
(5, 4, 120),
(6, 7, 30),
(7, 6, 80),
(8, 10, 90),
(9, 8, 60),
(10, 9, 40);

INSERT INTO product_order (idPOproduct, idPOOrder, poQuantity, poStatus) VALUES
(1, 1, 2, 'Disponível'),
(2, 2, 1, 'Sem estoque'),
(3, 3, 3, 'Disponível'),
(4, 4, 2, 'Disponível'),
(5, 5, 1, 'Disponível'),
(6, 6, 4, 'Disponível'),
(7, 7, 2, 'Disponível'),
(8, 8, 3, 'Sem estoque'),
(9, 9, 1, 'Disponível'),
(10, 10, 2, 'Disponível');

INSERT INTO local_product (idLProduct, idLInventory, location) VALUES
(1, 1, 'São Paulo - Estoque 1'),
(2, 2, 'Rio de Janeiro - Estoque 2'),
(3, 1, 'São Paulo - Estoque 1'),
(4, 3, 'Belo Horizonte - Estoque 3'),
(5, 2, 'Rio de Janeiro - Estoque 2'),
(6, 1, 'São Paulo - Estoque 1'),
(7, 4, 'Brasília - Estoque 4'),
(8, 3, 'Belo Horizonte - Estoque 3'),
(9, 4, 'Brasília - Estoque 4'),
(10, 1, 'São Paulo - Estoque 1');

-- Recuperações simples com SELECT Statement
SELECT * FROM clients;
select * FROM product;
select * FROM sellers;
select * FROM suppliers;
select * FROM product_Suppliers;
select * from product_order;

-- Filtros com WHERE Statement
SELECT * FROM clients WHERE Lname = 'Silva';

-- Crie expressões para gerar atributos derivados
SELECT o.idOrder, (p.priceUnit + o.shippingCost) AS totalValue
FROM orders o
JOIN product_order po ON o.idOrder = po.idPOOrder
JOIN product p ON po.idPOproduct = p.idProduct
LIMIT 0, 1000;

-- Defina ordenações dos dados com ORDER BY
SELECT * FROM product ORDER BY avaliation DESC;

-- Condições de filtros aos grupos – HAVING Statement
SELECT idOrder, productValue + shippingCost AS totalValue FROM orders
HAVING totalValue < 500;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
SELECT CONCAT(c.Fname, ' ', c.Minit, ' ', c.Lname) AS fullName,
       p.Pname AS productName,
       pa.typepayment AS paymentType
FROM clients c
JOIN orders o ON c.idClient = o.idOrdersClient
JOIN product_order po ON o.idOrder = po.idPOOrder
JOIN product p ON po.idPOproduct = p.idProduct
JOIN payments pa ON o.idPayment = pa.idPayment
LIMIT 0, 1000;


-- Quantos pedidos foram feitos por cada cliente?
SELECT c.idClient, c.Fname, c.Lname, COUNT(o.idOrder) AS total_orders
FROM clients c
LEFT JOIN orders o ON c.idClient = o.idOrdersClient
GROUP BY c.idClient, c.Fname, c.Lname;

-- Algum vendedor também é fornecedor?
SELECT s.idSeller,
       s.SocialName AS sellerName,
       IF(s.idSeller IN (SELECT idPSeller FROM product_suppliers), 'Yes', 'No') AS isSupplier
FROM sellers s
LIMIT 0, 1000;

-- Relação de produtos fornecedores e estoques;
SELECT p.idProduct,
       p.Pname AS productName,
       CONCAT(s.SocialName, ' - ', s.tradename) AS supplierName,
       pi.quantity AS stockQuantity
FROM product p
JOIN product_seller ps ON p.idProduct = ps.idPSProduct
JOIN sellers s ON ps.idPSeller = s.idSeller
JOIN local_product lp ON p.idProduct = lp.idLProduct
JOIN productInventory pi ON lp.idLInventory = pi.idInventoryProduct;

-- Relação de nomes dos fornecedores e nomes dos produtos;
SELECT s.idSeller,
       CONCAT(s.SocialName, ' - ', p.idProduct, ' - ', p.Pname) AS sellerProductName
FROM sellers s
JOIN product_seller ps ON s.idSeller = ps.idPSeller
JOIN product p ON ps.idPSproduct = p.idProduct;
