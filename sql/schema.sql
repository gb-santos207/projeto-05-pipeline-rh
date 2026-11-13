CREATE TABLE departamentos (
    dept_id INT PRIMARY KEY,
    nome_dept VARCHAR(50)
);

CREATE TABLE funcionarios (
    func_id INT PRIMARY KEY,
    nome VARCHAR(100),
    dept_id INT,
    cargo VARCHAR(50),
    data_admissao DATE,
    data_demissao DATE, -- Se estiver NULL, o funcionário está ativo
    salario DECIMAL(10,2),
    FOREIGN KEY (dept_id) REFERENCES departamentos(dept_id)
);