CREATE DATABASE IF NOT EXISTS EstoqueDB;

USE EstoqueDB;

CREATE TABLE IF NOT EXISTS Estoque (
`Produto_ID` INT AUTO_INCREMENT PRIMARY KEY,
`Nome_Produto` VARCHAR(50) NOT NULL,
`Preço` DOUBLE NOT NULL,
`Qntd_Estoque` INT NOT NULL
);

INSERT INTO Estoque (Produto_ID, Nome_Produto, Preço, Qntd_Estoque) VALUES
(1, 'Smartphone', 799.99, 20),
(2, 'Tablet', 349.99, 10),
(3, 'Fone de ouvido', 49.99, 50);

UPDATE Estoque SET Preço = 849.99, Qntd_Estoque = 25 WHERE Produto_ID = 1;

UPDATE Estoque SET Qntd_Estoque = Qntd_Estoque - 5 WHERE Produto_ID = 2;

UPDATE Estoque SET Qntd_Estoque = Qntd_Estoque - 10 WHERE Produto_ID = 3;

SELECT * FROM Estoque;