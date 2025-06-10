CREATE TABLE contato
(
    id        INT             NOT NULL    AUTO_INCREMENT,
    nome      VARCHAR(350)    NOT NULL,
    email     VARCHAR(150)    NOT NULL,    
    datahora  TIMESTAMP       DEFAULT     CURRENT_TIMESTAMP,
    mensagem  TEXT            NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO contato (nome, email, mensagem) VALUES
('João da Silva', 'joao@example.com', 'Olá, gostaria de saber mais sobre os seus serviços.'),
('Maria Oliveira', 'maria@example.com', 'Estou interessada em agendar uma consulta.'),
('Carlos Souza', 'carlos@example.com', 'Preciso de ajuda com um problema específico.');
