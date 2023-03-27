--/*
--/*QUERY 5
--/*Listar todos os pedidos feitos por um determinado cliente, filtrando-os por um
--/determinado período, em ordem alfabética crescente do nome do cliente e ordem
--/crescente da data do pedido;
--/*

SELECT c.name, p.date_
FROM client c JOIN purchase_order p
ON c.id = p.client_id
WHERE (c.name = 'Client6' AND p.date_ > '01/03/2023' AND p.date_ < '25/03/2023')
ORDER BY c.name ASC, p.date_ ASC;
