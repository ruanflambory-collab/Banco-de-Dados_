CREATE DATABASE clinica_veterinaria;

USE clinica_veterinaria;

-- Tabela Cliente
CREATE TABLE Cliente (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    Telefone VARCHAR(15)
);

-- Tabela Animais
CREATE TABLE animais (
    id_animais INT PRIMARY KEY AUTO_INCREMENT,
    raca VARCHAR(45) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    ano DATE,
    cliente_CPF VARCHAR(11) NOT NULL,

    FOREIGN KEY (cliente_CPF)
        REFERENCES Cliente(CPF)
);

-- Tabela Veterinários
CREATE TABLE veterinarios (
    id_veterinarios INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    data_de_admissao DATE,
    salario INT
);

-- Tabela Consulta
CREATE TABLE consulta (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    data_e_horario DATETIME NOT NULL,
    motivo VARCHAR(45),

    veterinarios_id_veterinarios INT NOT NULL,
    animais_id_animais INT NOT NULL,

    FOREIGN KEY (veterinarios_id_veterinarios)
        REFERENCES veterinarios(id_veterinarios),

    FOREIGN KEY (animais_id_animais)
        REFERENCES animais(id_animais)
);