--/*
--/*QUERY 5
--/*Listar possíveis produtos com nome replicado e a quantidade de replicações, em
--ordem decrescente de quantidade de replicações;
--/*

SELECT name, COUNT(name) AS number_of_replicated_names
FROM product
GROUP BY name
HAVING COUNT(name) > 1
ORDER BY number_of_replicated_names DESC;
