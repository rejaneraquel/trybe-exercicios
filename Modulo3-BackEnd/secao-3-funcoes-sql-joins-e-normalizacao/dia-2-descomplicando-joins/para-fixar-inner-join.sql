# 1) Monte uma query que exiba o id do ator, nome do ator e ido do filme que ja atuou usando as tabelas actor e film_actor
-- actor_id está nas duas tabelas;
    -- SELECT a.actor_id, a.first_name, b.film_id
    -- FROM sakila.actor a
	-- INNER JOIN sakila.film_actor b
    -- ON a.actor_id = b.actor_id

# 2) Use JOIN para exibir o nome, sobrenome e endereço de cada um dos funcionários do banco. Use as tabelas staff e address.
	-- SELECT a.first_name, a.last_name, b.address
	-- FROM sakila.staff a
	-- INNER JOIN sakila.address b
	-- ON a.address_id = b.address_id;

# 3) Exiba o id do cliente, nome e email dos primeiros 100 clientes, ordenados pelo nome em ordem decrescente, juntamente com o id do endereço e o nome da rua onde o cliente mora. Essas informações podem ser encontradas nas tabelas customer e address.
-- sakila.address; #address_id address 
-- sakila.customer; #customer_id first_name email address_id
	-- SELECT a.customer_id, a.first_name, a.email, b.address_id, b.address
	-- FROM sakila.customer a
	-- INNER JOIN sakila.address b
	-- ON a.address_id = b.address_id
	-- ORDER BY first_name DESC
	-- LIMIT 100;

# 4) Exiba o nome, email, id do endereço, endereço e distrito dos clientes que moram no ctdistrito da California e que contêm “rene” em seus nomes. As informações podem ser encontradas nas tabelas address e customer.
-- sakila.address = b; #address_id address district=California
-- sakila.customer = a; #customer_id first_name:contem"rene" email address_id
	-- SELECT a.first_name, a.email, b.address_id, b.address, b.district
	-- FROM sakila.customer a
	-- INNER JOIN sakila.address b
	-- ON a.address_id = b.address_id 
	-- WHERE 
	-- district = "California" AND
	-- a.first_name LIKE '%rene%';
    
# 5) Exiba o nome, o sobrenome e a quantidade de filmes alugados por cada cliente cadastrado. Ordene seus resultados por nome e sobrenome de forma decrescente. Exiba somente os clientes ativos. As informações podem ser encontradas nas tabelas customer e rental.
-- CUSTOMER c: first_name last_name active customer_id
-- RENTAL r: customer_id film rental_id
	-- SELECT 
		-- c.first_name, 
		-- c.last_name,
		-- COUNT(r.rental_id) AS 'Quantidade de filmes alugados'
	-- FROM 
		-- sakila.customer c
	-- INNER JOIN
		-- sakila.rental r
	-- ON
		-- r.customer_id = c.customer_id
	-- WHERE
		-- c.active = 1
	-- GROUP BY
		-- c.customer_id
	-- ORDER BY
		-- c.first_name DESC,
		-- c.last_name DESC;

# 6) Monte uma query que exiba o nome, sobrenome e a media de pagamento (amount) paga aos funcionários no ano de 2006. Use as tabelas payment e staff. Os resultados devem estar agrupados pelo nome e sobrenome do funcionário.
	-- SELECT
		-- s.first_name,
		-- s.last_name,
	   -- ROUND(AVG(p.amount), 2) AS 'media de pagamento'
	-- FROM
		-- sakila.staff s
	-- INNER JOIN
		-- sakila.payment p
	-- ON
		-- s.staff_id = p.staff_id
	-- WHERE
		-- YEAR(p.payment_date) = 2006
	-- GROUP BY
		-- s.first_name,
		-- s.last_name;
        
# 7) Monte uma query que exiba o id do ator, nome, id do filme e título do filme, usando as tabelas actor, film_actor e film. Dica: você precisará fazer mais de um JOIN na mesma query. 
	-- SELECT
		-- a.actor_id,
		-- a.first_name,
		-- f.film_id,
		-- f.title
	-- FROM 
		-- sakila.actor a
	-- INNER JOIN 
		-- sakila.film_actor fa ON a.actor_id = fa.actor_id
	-- INNER JOIN
		-- sakila.film f ON f.film_id = fa.film_id;
	