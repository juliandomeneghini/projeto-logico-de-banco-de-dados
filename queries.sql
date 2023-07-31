use ecommerce;

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
