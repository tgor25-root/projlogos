--Identificar os 5 clientes que mais geraram receita para a oficina em ordens de serviço concluídas.
SELECT
  c.NOME AS Nome_Cliente,
  SUM(os.VALOR_TOTAL) AS Valor_Total_Gasto
FROM CLIENTE c
JOIN VEICULO v ON c.ID_CLIENTE = v.ID_CLIENTE
JOIN ORDEM_SERVICO os ON v.ID_VEICULO = os.ID_VEICULO
WHERE os.STATUS = 'Concluída'
GROUP BY c.ID_CLIENTE
ORDER BY Valor_Total_Gasto DESC
LIMIT 5;

--Calcular a lucratividade de cada equipe de mecânicos, considerando o valor total das ordens de serviço concluídas e o custo das peças utilizadas.

SELECT
  e.NOME_EQUIPE AS Nome_Equipe,
  SUM(os.VALOR_TOTAL) AS Receita_Total,
  SUM(i.QUANTIDADE * p.VALOR_UNITARIO) AS Custo_Pecas,
  SUM(os.VALOR_TOTAL) - SUM(i.QUANTIDADE * p.VALOR_UNITARIO) AS Lucro
FROM EQUIPE_MEC e
JOIN MECANICO m ON e.ID_EQUIPE_MEC = m.ID_EQUIPE_MEC
JOIN ORDEM_SERVICO os ON m.ID_MECANICO = os.ID_MECANICO
JOIN ITEM_OS i ON os.ID_OS = i.ID_OS
JOIN PEÇA p ON i.ID_PEÇA = p.ID_PEÇA
WHERE os.STATUS = 'Concluída'
GROUP BY e.ID_EQUIPE_MEC;



--Identificar os 5 serviços mais solicitados pelos clientes, com base na quantidade de itens nas ordens de serviço.

SELECT
  s.SERVICO_REALIZADO AS Servico,
  COUNT(*) AS Quantidade_Vezes_Solicit
