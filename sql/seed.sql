-- Inserindo Departamentos
INSERT INTO departamentos VALUES 
(1, 'TI'), (2, 'Vendas'), (3, 'RH'), (4, 'Financeiro'), (5, 'Marketing');

-- Inserindo Funcionários (Misturando ativos e demitidos)
INSERT INTO funcionarios VALUES
(1, 'Ana', 1, 'Analista', '2021-01-10', NULL, 5000.00),
(2, 'Bruno', 2, 'Vendedor', '2022-03-15', '2023-05-20', 3000.00),
(3, 'Carla', 1, 'Dev', '2020-06-01', '2024-01-15', 8000.00),
(4, 'Diego', 3, 'Analista RH', '2023-02-01', NULL, 4500.00),
(5, 'Elena', 2, 'Gerente', '2019-11-20', NULL, 9000.00),
(6, 'Felipe', 4, 'Analista Fin', '2022-08-10', '2023-12-01', 5500.00),
(7, 'Gabriela', 1, 'Dev', '2023-05-15', '2024-02-10', 7500.00),
(8, 'Hugo', 5, 'Social Media', '2022-01-20', NULL, 3500.00),
(9, 'Isabela', 2, 'Vendedor', '2023-07-01', '2024-03-01', 3000.00),
(10, 'João', 1, 'Dev', '2024-01-10', NULL, 7000.00),
(11, 'Karen', 3, 'Recrutador', '2021-09-15', NULL, 4000.00),
(12, 'Lucas', 2, 'Vendedor', '2022-05-10', '2024-02-20', 3200.00),
(13, 'Mariana', 4, 'Gerente', '2018-04-01', NULL, 11000.00),
(14, 'Nicolas', 5, 'Designer', '2023-10-10', '2024-01-05', 4500.00),
(15, 'Olivia', 2, 'Vendedor', '2024-02-01', NULL, 3100.00);