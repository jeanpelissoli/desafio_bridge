do $$
DECLARE 
	startIndexCategory int; endingIndexCategory int;
	startIndexProduct int; endingIndexProduct int;
	startIndexClient int; endingIndexClient int;
	startIndexPurchaseOrder int; endingIndexPurchaseOrder int;
	startIndexOrderItem int; endingIndexOrderItem int;
	
	randomCat int; randomCatAux int;
	randomClient int; randomClientAux int; randomDate int;
	_date varchar;
	randomProduct int; randomProductAux int;
	randomOrder int; randomOrderAux int;
	randomAmount int;
BEGIN

	--/*
	--/*Populando a tabela category */--
	startIndexCategory := 1;
	endingIndexCategory := 51; --/*Mude aqui para a quantidade de registros desejados em category;
	LOOP
		INSERT INTO category(id, name, description)
		VALUES(startIndexCategory,
			concat('Category', startIndexCategory),
			concat('Description', startIndexCategory));
			
		startIndexCategory := startIndexCategory + 1;
		EXIT WHEN startIndexCategory = endingIndexCategory;
	END LOOP;
	
	
	
	--/*
	--/*Populando a tabela product */--
	startIndexProduct := 1;
	endingIndexProduct := 51; --/*Mude aqui para a quantidade de registros desejados em product;
	
	IF endingIndexCategory - 10 > 20 THEN
		randomCatAux := endingIndexCategory - 10;
	ELSE
		randomCatAux := endingIndexCategory;
	END IF;
		
	LOOP
		SELECT random()*(randomCatAux - 1) + 1 INTO randomCat;
		INSERT INTO product(id, name, description, price, category_id)
		VALUES(startIndexProduct,
			concat('Product', startIndexProduct),
			concat('Description', startIndexProduct),
			randomCat + 25.50, randomCat);
			
		startIndexProduct := startIndexProduct + 1;
		EXIT WHEN startIndexProduct = endingIndexProduct;
	END LOOP;
	
	
	
	--/*
	--/*Populando a tabela client */--
	startIndexClient := 1;
	endingIndexClient := 51; --/*Mude aqui para a quantidade de registros desejados em client;
	LOOP
		INSERT INTO client(id, name, address)
		VALUES(startIndexClient,
			concat('Client', startIndexClient),
			concat('Address', startIndexClient));
			
		startIndexClient := startIndexClient + 1;
		EXIT WHEN startIndexClient = endingIndexClient;
	END LOOP;
	
	
	
	--/*
	--/*Populando a tabela purchase_order */--
	startIndexPurchaseOrder := 1;
	_date := '/03/2023';
	endingIndexPurchaseOrder := 51; --/*Mude aqui para a quantidade de registros desejados em purchase_order;
	
	IF endingIndexClient - 10 > 20 THEN
		randomClientAux := endingIndexClient - 10;
	ELSE
		randomClientAux := endingIndexClient;
	END IF;
		
	LOOP
		SELECT random()*(randomClientAux - 1) + 1 INTO randomClient;
		SELECT random()*(31 -1) + 1 INTO randomDate;
		INSERT INTO purchase_order(id, date_, client_id)
		VALUES(startIndexPurchaseOrder,
			TO_DATE(concat(randomDate, _date), 'DD/MM/YYYY'),
			randomClient);
			
		startIndexPurchaseOrder := startIndexPurchaseOrder + 1;
		EXIT WHEN startIndexPurchaseOrder = endingIndexPurchaseOrder;
	END LOOP;
	
	
	
	--/*
	--/*Populando a tabela order_item */--
	startIndexOrderItem := 1;
	endingIndexOrderItem := 51; --/*Mude aqui para a quantidade de registros desejado em order_item;
	
	IF endingIndexProduct - 10 > 20 THEN
		randomProductAux := endingIndexProduct - 10;
	ELSE
		randomProductAux := endingIndexProduct;
	END IF;
		
	IF endingIndexClient - 10 > 20 THEN
		randomOrderAux := endingIndexClient - 10;
	ELSE
		randomOrderAux := endingIndexClient;
	END IF;
		
	LOOP
		SELECT random()*(randomProductAux - 1) + 1 INTO randomProduct;
		SELECT random()*(randomOrderAux - 1) + 1 INTO randomOrder;
		SELECT random()*(4 - 1) + 1 INTO randomAmount;
		INSERT INTO order_item(id, price, amount, product_id, order_id)
		VALUES(startIndexOrderItem,
			NULL, randomAmount,
			randomProduct, randomOrder);
			
		startIndexOrderItem := startIndexOrderItem + 1;
		EXIT WHEN startIndexOrderItem = endingIndexOrderItem;
	END LOOP;
	
	
	--/*
	--/*Definindo os preços na tabela order_item
	UPDATE order_item 
	SET price = (
		SELECT SUM(order_item.amount * p.price)
		FROM product p
		WHERE order_item.product_id = p.id
	);
	
	--/*
	--/*Definindo alguns produtos com nomes replicados
	INSERT INTO product(id, name, description, price, category_id)
	VALUES(51, 'Product1', 'Description', 33.3, 10),
		(52, 'Product1', 'Descrip', 33.4, 12),
		(53, 'Product1', 'Descrip', 33.4, 12),
		(54, 'Product2', 'Descript', 33.5, 18);
END $$
