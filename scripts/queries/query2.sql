--/*
--/*QUERY 2
--/*Listar todas as categorias com nome e número de produtos associados, em ordem alfabética crescente;
--/*

SELECT c.name, COUNT(p.id) number_of_associated_products
FROM category c JOIN product p
ON c.id = p.category_id
GROUP BY c.id, c.name
ORDER BY c.name ASC;
