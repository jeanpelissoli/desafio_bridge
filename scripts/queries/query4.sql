--/*
--/*QUERY 4
--/*Listar todos os produtos que já foram vendidos em pelo menos um pedido, com
--/nome, descrição, preço e quantidade total vendida, em ordem decrescente de
--/quantidade total vendida;
--/*

SELECT p.name, p.description, p.price, SUM(o.amount) AS total_amount
FROM product p JOIN order_item o
ON p.id = o.product_id
GROUP BY p.name, p.description, p.price
ORDER BY total_amount DESC;
