-- Pergunta 1: Qual a taxa de turnover por departamento?
WITH turnover AS (
	SELECT
	d.nome_dept,
	COUNT(f.func_id) AS total_func,
	COUNT(f.data_demissao) AS total_demitido
	FROM funcionarios f
	JOIN departamentos d
	ON d.dept_id = f.dept_id
	GROUP BY d.nome_dept
)

SELECT
	nome_dept,
	total_func,
	total_demitido,
 	ROUND((total_demitido::numeric / NULLIF(total_func, 0)) * 100, 2) AS taxa_turnover
FROM turnover
ORDER BY taxa_turnover DESC;

-- Pergunta 2: Qual a média salarial por departamento (apenas dos funcionários ativos)?
WITH media_ativo AS (
	SELECT
	d.nome_dept,
	ROUND(AVG(f.salario), 2) AS media_salarial
	FROM funcionarios f
	JOIN departamentos d
	ON d.dept_id = f.dept_id
	WHERE f.data_demissao IS NULL
	GROUP BY d.nome_dept
	ORDER BY media_salarial DESC
)

SELECT
	*
FROM media_ativo

-- Pergunta 3: Qual o tempo médio de casa (em dias) dos funcionários que pediram demissão?
SELECT 
    ROUND(AVG(data_demissao - data_admissao), 2) AS media_dias_casa
FROM funcionarios
WHERE data_demissao IS NOT NULL;