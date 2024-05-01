-- Script para popular a tabela CLIENTE
-- Inserindo 5 clientes de teste

INSERT INTO CLIENTE (NOME, ENDERECO, TELEFONE, EMAIL)
VALUES
  ('João Silva', 'Rua das Flores, 123', '(11) 9999-8888', 'joaosilva@email.com'),
  ('Maria Gomes', 'Avenida Paulista, 456', '(11) 9999-7777', 'mariagomes@email.com'),
  ('Pedro Oliveira', 'Rua Tiradentes, 789', '(11) 9999-6666', 'pedrooliveira@email.com'),
  ('Ana Souza', 'Alameda Santos, 1011', '(11) 9999-5555', 'anasouza@email.com'),
  ('Carlos Pereira', 'Rua Augusta, 1213', '(11) 9999-4444', 'carlospereira@email.com');


-- Script para popular a tabela VEICULO
-- Inserindo 3 veículos para os clientes da tabela CLIENTE

INSERT INTO VEICULO (PLACA, MODELO, ANO, COR, ID_CLIENTE)
VALUES
  ('ABC-1234', 'Fiat Argo', 2020, 'Branco', 1),
  ('DEF-5678', 'Chevrolet Onix', 2021, 'Prata', 2),
  ('GHI-9012', 'Volkswagen Polo', 2022, 'Preto', 3);

-- Script para popular a tabela EQUIPE_MEC
-- Inserindo 3 equipes de mecânicos

INSERT INTO EQUIPE_MEC (NOME_EQUIPE)
VALUES
  ('Equipe Águia'),
  ('Equipe Falcão'),
  ('Equipe Tigre');

-- Script para popular a tabela MECANICO
-- Inserindo 6 mecânicos e relacionando-os com as equipes

INSERT INTO MECANICO (NOME, ESPECIALIDADE, TELEFONE, ID_EQUIPE_MEC)
VALUES
  ('João Batista', 'Mecânico Geral', '(11) 9999-3333', 1),
  ('Maria Costa', 'Eletricista Automotiva', '(11) 9999-2222', 1),
  ('Pedro Silva', 'Especialista em Freios', '(11) 9999-1111', 2),
  ('Ana Oliveira', 'Especialista em Suspensão', '(11) 9999-0000', 2),
  ('Carlos Souza', 'Especialista em Motores', '(11) 9888-9999', 3),
  ('Denise Pereira', 'Lubrificadora', '(11) 9888-8888', 3);

-- Script para popular a tabela ORDEM_SERVICO
-- Inserindo 5 ordens de serviço com datas, valores, status, veículos atendidos, equipes responsáveis e mecânicos que trabalharam em cada ordem

INSERT INTO ORDEM_SERVICO (DATA_EMISSAO, VALOR_TOTAL, STATUS, ID_VEICULO, ID_EQUIPE_MEC)
VALUES
  ('2024-04-20', 1200.00, 'Em Andamento', 1, 1),
  ('2024-04-25', 850.00, 'Concluída', 2, 2),
  ('2024-04-27', 500.00, 'Aberta', 3, 3),
  ('2024-04-29', 1500.00, 'Em Andamento', 1, 2),
  ('2024-04-30', 300.00, 'Concluída', 2, 1);

-- Script para popular a tabela ITEM_OS
-- Inserindo itens para as ordens de serviço, incluindo quantidades, serviços realizados e peças utilizadas

INSERT INTO ITEM_OS (QUANTIDADE, SERVICO_REALIZADO, ID_OS, ID_PEÇA)
VALUES
  (2, 'Troca de óleo', 1, 1),
  (1, 'Revisão de freios', 1, 2),
  (3, 'Troca de pneus', 2, 3),
  (1, 'Alinhamento e balanceamento', 3, 4),
  (2, 'Troca de pastilhas de freio', 4, 5),
  (1, 'Calibragem de pneus', 5, 6);

-- Script para popular a tabela PEÇA
-- Inserindo peças com descrições, valores unitários e quantidades em estoque

INSERT INTO PEÇA (DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE)
VALUES
  ('Óleo Lubrificante 10W40', 35.00, 10),
  ('Filtro de Óleo', 15.00, 8),
  ('Filtro de Ar', 20.00, 12),
  ('Pastilhas de Freio', 80.00, 6),
  ('Pneus', 150.00, 4),
  ('Amortecedor Dianteiro', 250.00, 2),
  ('Amortecedor Traseiro', 220.00, 3),
  ('Bateria', 300.00, 5),
  ('Lâmpada Farol Alto', 10.00, 15),

  ('Lâmpada Farol Baixo', 8.00, 20);
