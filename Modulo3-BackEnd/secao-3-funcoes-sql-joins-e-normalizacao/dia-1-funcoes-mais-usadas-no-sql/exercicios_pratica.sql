# 1) Maior salário da tabela
	-- SELECT MAX(salary) FROM hr.employees;
# 2)Escreva uma query que exiba a diferença entre o maior e o menor salário.
	-- SELECT MAX(salary) - MIN(salary) FROM hr.employees;
# 3) Média job_id, ordenado pela média salarial, ordem decrescente
	-- SELECT job_id, AVG(salary) AS 'media_salarial'
	-- FROM hr.employees
	-- GROUP BY job_id
	-- ORDER BY media_salarial DESC;
# 4) Escreva uma query que exiba a quantidade de dinheiro necessária para realizar o pagamento de todas as pessoas funcionárias.
	-- SELECT SUM(salary) AS total FROM hr.employees;
# 5) Escreva uma query que exiba quatro informações: o maior salário, o menor salário, a soma de todos os salários e a média dos salários. Todos os valores devem ser formatados para ter apenas duas casas decimais.
	-- SELECT 
		-- MAX(salary) AS "maior", 
		-- MIN(salary) AS "menor",
		-- SUM(salary) AS "soma",
		-- ROUND(AVG(salary),2) AS "media"
	-- FROM hr.employees;
# 6) Escreva uma query que exiba a quantidade de pessoas que trabalham como pessoas programadoras (it_prog)
	-- SELECT job_id , COUNT(*)
		-- AS 'total'
		-- FROM hr.employees
		-- WHERE job_id = "it_prog"; 
# 7) Escreva uma query que exiba a quantidade de dinheiro necessária para efetuar o pagamento de cada profissão (job_id).
	-- SELECT job_id, SUM(salary)
		-- FROM hr.employees
		-- GROUP BY job_id;
# 8) Utilizando a query anterior, faça as alterações para que seja exibido somente a quantidade de dinheiro necessária para cobrir a folha de pagamento das pessoas programadoras (it_prog).
	-- SELECT job_id, SUM(salary)
		-- FROM hr.employees
		-- GROUP BY job_id
		-- HAVING job_id = "it_prog";
# 9) Escreva uma query que exiba em ordem decrescente a média salarial de todos os cargos, exceto das pessoas programadoras (it_prog).
	-- SELECT job_id, ROUND(AVG(salary),2)
		-- FROM hr.employees
        -- GROUP BY job_id
        -- HAVING job_id <> "it_prog"
        -- ORDER BY salary DESC;
# 10) Escreva um query que exiba média salarial e o número de funcionários de todos os departamentos com mais de dez funcionários. Dica: agrupe pelo department_id.
	-- SELECT department_id, ROUND(AVG(salary),2) AS "salary", COUNT(*) AS "funcionarios"
		-- FROM hr.employees
		-- GROUP BY department_id
		-- HAVING funcionarios > 10;
# 11) Escreva uma query que atualize a coluna phone_number, de modo que todos os telefones iniciados por 515 agora devem iniciar com 777.
# OBS: Se o modo "safe modo" do MySQL estiver habilitado, o MYSQL não executa UPDATE ou DELETE sem uma instrução WHERE que não inclua uma PRIMARY KEY. Podemos desabilitar o "safe mode" com:
-- SET SQL_SAFE_UPDATES = ;
# e depois das modificações o habilitarmos novamente com:
-- SET SQL_SAFE_UPDATES = 1;
	-- UPDATE hr.employees
	-- SET phone_number = REPLACE(phone_number, '515', '777')
	-- WHERE phone_number LIKE '515%';
	-- SELECT phone_number FROM hr.employees;
# 12) Escreva uma query que só exiba as informações dos funcionários cujo o primeiro nome tenha oito ou mais caracteres
	-- SELECT * FROM hr.employees
		-- WHERE LENGTH(first_name) >= 8; 
# 13) Escreva uma query que exiba as seguintes informações de cada funcionário: id, primeiro nome e ano no qual foi contratado (somente o ano)
	-- SELECT employee_id, first_name, YEAR(hire_date) FROM hr.employees;
	-- or
    -- SELECT .... LEFT(hire_date,4) 'hire_year' ...
    -- or
    -- SELECT ... MID(hire_date, 1, 4) 'hire_year' ... - O MID() é equivalente a função substring()
# 14) Escreva uma query que exiba as seguintes informações de cada funcionário: id, primeiro nome, dia do mês no qual foi contratado(somente dia)
	-- SELECT employee_id, first_name, DAY(hire_date) FROM hr.employees;
	-- OR
	-- SELECT employee_id, first_name, RIGHT(hire_date, 2) 'hire_day'
	-- FROM hr.employees;
	-- OR 
	-- SELECT employee_id, first_name, MID(hire_date, 9, 2) 'hire_day'
	-- FROM hr.employees;
	-- MID() é equivalente a função SUBSTRING()
# 15) Query que exiba dos funcionários: id, primeiro nome e somente o mês no qual foi contratado
	-- SELECT employee_id, first_name, SUBSTRING(hire_date, 6, 2) 'hire_month'
	-- FROM hr.employees;
	-- OR 
	-- SELECT employee_id, first_name, MONTH(hire_date) 'hire_month'
	-- FROM hr.employees;
# 16) Query que exiba os nomes dos funcionário com letras maiusculas
	-- SELECT UPPER(CONCAT(first_name, " ", last_name)) AS "Nome e Sobrenome"
	-- FROM hr.employees;
# 17) Escreva uma query que exiba o sobrenome e a data de contratação de todos os funcionários contratados em julho de 1987
	-- SELECT last_name, hire_date
	-- FROM hr.employees
	-- WHERE hire_date BETWEEN '1987-07-01' AND '1987-07-31';
	-- Ou 
	-- SELECT last_name, hire_date
	-- FROM hr.employees
	-- WHERE MONTH(hire_date)=7 and YEAR(hire_date)=1987;
# 18) Escreva uma query que exiba as seguintes informações de cada funcionário: nome, sobrenome, tempo que trabalha na empresa (em dias).
	-- SELECT first_name, last_name, DATEDIFF(CURRENT_DATE() , hire_date) 'days_worked'
	-- FROM hr.employees;
