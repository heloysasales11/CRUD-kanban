CREATE TABLE Usuario (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Tarefa (
  id_tarefa INT PRIMARY KEY AUTO_INCREMENT,
  descricao TEXT NOT NULL,
  setor VARCHAR(50) NOT NULL,
  prioridade ENUM('baixa', 'média', 'alta') NOT NULL,
  status ENUM('a fazer', 'fazendo', 'pronto') NOT NULL DEFAULT 'a fazer',
  id_usuario INT NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

