
SELECT 
    p.id_pedido,
    c.nome AS nome_cliente,
    p.status,
    p.data_pedido
FROM PEDIDO p
JOIN CLIENTE c ON p.id_client = c.id_client;
