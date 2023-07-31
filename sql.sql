create database if not exists ecommerce;
use ecommerce;

-- drop database ecommerce_refinado;

-- cria tabela cliente

create table clients(
		idClient int auto_increment,
        idPClient INT, 
        Fname varchar(20) not null,
        Minit char(3),
        Lname varchar(20) not null,
        CPF_CNPJ varchar(14) not null,
        Address varchar(255),
        primary key(idClient,idPClient),
        constraint unique_cpf_cnpj_cliente unique(CPF_CNPJ)
);

alter table clients auto_increment=1;

-- cria tabela produto

-- size = dimensão do produto
create table product(
		idProduct int auto_increment primary key,
        Pname varchar(40) not null,
        productDescription varchar(255),
        category ENUM('Eletrônicos', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis', 'Livros') default 'Eletrônicos' not null,
        avaliation float default 0,
        size varchar(25) default null,
        priceUnit float not null
);
CREATE INDEX idx_product_idProduct ON product (idProduct);
-- cria tabela pagamentos
create table payments(
        idPayment int auto_increment,
        idPPayment INT,
        typepayment enum('Boleto', 'Cartão', 'Dois cartões', 'PIX'),
        limitavailable float,
        expirationDate date,
        primary key(idPayment, idPPayment)
);

-- cria relacionamento cliente e forma de pagamento 
CREATE INDEX idx_clients_idPClient ON clients (idPClient);
CREATE INDEX idx_payments_idPPayment ON payments (idPPayment);

CREATE TABLE paymentClient (
  idPClient INT,
  idPPayment INT,
  primary key (idPClient, idPPayment),
  constraint fk_paymentClient_clients FOREIGN KEY (idPClient) REFERENCES clients(idPClient),
  constraint fk_paymentClient_payments FOREIGN KEY (idPPayment) REFERENCES payments(idPPayment)
);

-- cria tabela pedido
create table orders(
		idOrder int auto_increment primary key,
        idOrdersClient int,
        statusOrder enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
        descriptionOrder varchar(255),
        shippingCost float default 10,
        productValue float not null,
        idPayment int,
        constraint fk_orders_client foreign key (idOrdersClient) references clients(idClient),
        constraint fk_orders_payment foreign key (idPayment) references paymentClient(idPPayment)
);

-- cria tabela estoque

create table productInventory(
		idInventoryProduct int auto_increment primary key,
        locationInventory varchar(255), 
        quantity int default 0   
);

-- cria tabela fonecedor

create table suppliers(
		idSupplier int auto_increment primary key,
        SocialName varchar(255) not null,
        CNPJ char(14) not null,
        contact char(11) not null,
        constraint unique_suppliers unique(CNPJ)
);

-- cria tabela vendedor
create table sellers(
		idSeller int auto_increment,
        idPSeller INT,
        SocialName varchar(255) not null,
        tradename varchar(255),
        CPF_CNPJ varchar(14) not null,
        location varchar(255),
        contact char(11) not null, 
        primary key(idSeller, idPSeller),
        constraint unique_cpf_cnpj_seller unique (CPF_CNPJ)
);

CREATE INDEX idx_sellers_idPSeller ON sellers (idPSeller);
-- cria tabela entrega

create table deliverys(
		idDelivery int auto_increment primary key,
        idOrder int,
        trackingNumber varchar(25),
        statusDelivery ENUM('Saiu para entrega', 'Entregue', 'Em processamento') default 'Em processamento',
        constraint fk_deliverys_order foreign key(idOrder) references orders(idOrder)
);

-- criando tabelas de relacionamento N para M
create table productSeller(
		idPSeller int,
        idPSproduct int,
        prodQuantity int default 1,
        primary key (idPSeller, idPSproduct),
        constraint fk_product_seller foreign key(idPSproduct) references sellers(idPSeller),
        constraint fk_product_product foreign key(idPSproduct) references product(idProduct)
);

create table productoder(
		idPOproduct int,
        idPOOrder int,
        poQuantity int default 1,
        poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
        primary key (idPOproduct, idPOOrder),
        constraint fk_productorder_product foreign key(idPOproduct) references product(idProduct),
        constraint fk_productorder_order foreign key(idPOOrder) references orders(idOrder)
);

create table localproduct(
		idLProduct int,
        idLInventory int,
        location varchar(255) not null,
        primary key (idLProduct, idLInventory),
        constraint fk_local_inventory_product foreign key(idLProduct) references product(idProduct),
        constraint fk_local_inventory_inventory foreign key(idLInventory) references productInventory(idInventoryProduct)
);

CREATE TABLE productSuppliers (
		idPsSuppliers INT,
		idPsProduct INT,
		quantity INT NOT NULL,
		primary key (idPsSuppliers, idPsProduct),
		constraint fk_product_suppliers_suppliers FOREIGN KEY (idPsSuppliers) REFERENCES Suppliers(idSupplier),
		constraint fk_product_suppliers_product FOREIGN KEY (idPsProduct) REFERENCES product(idProduct)
);


desc productSuppliers;

show tables;

show databases;
use information_schema;
show tables;
desc table_constraints;

select * from referential_constraints 
	where constraint_schema = 'ecommerce';