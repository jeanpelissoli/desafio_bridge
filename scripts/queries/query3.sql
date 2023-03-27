--/*
--/*QUERY 3
--/*Listar todos os pedidos com data, endereço de entrega e total do pedido (soma dos preços dos itens),
--/ em ordem decrescente de data;
--/*

SELECT pur.date_, c.address AS client_address, SUM(o.price) AS total_price
FROM purchase_order pur
JOIN order_item o
ON pur.id = o.order_id
JOIN client c
ON pur.client_id = c.id
GROUP BY pur.date_, c.address
ORDER BY pur.date_ DESC;
