SELECT
    d_divisao.nome_divisao,
    d_divisao.id_nrodivisao,
    d_empresa.nome_reduzido,
    COALESCE(SUM(f.preco_total_produto - f.valor_total_devolucao), 0) AS valor_realizado,
    COALESCE(SUM(f.valor_total_devolucao), 0) AS valor_devolucao,
    COALESCE(SUM(f.valor_total_despesa), 0) AS valor_despesa,
    COALESCE(SUM(f.valor_total_verba_promo), 0) AS valor_promo,
    COALESCE(valor_realizado_ano_passado, 0) AS valor_realizado_ano_passado,
    COALESCE(valor_devolucao_ano_passado, 0) AS valor_devolucao_ano_passado,
    COALESCE(valor_despesa_ano_passado, 0) AS valor_despesa_ano_passado,
    COALESCE(valor_promo_ano_passado, 0) AS valor_promo_ano_passado
FROM
    fato_distribuicao_divisao_dia AS f
LEFT JOIN dim_empresa AS d_empresa ON f.id_dim_empresa = d_empresa.id
LEFT JOIN dim_divisao AS d_divisao ON f.id_dim_divisao = d_divisao.id
LEFT JOIN dim_calendario AS d_calendario ON f.id_dim_calendario = d_calendario.data_key
LEFT JOIN(
    SELECT
        id_dim_empresa,
        id_dim_divisao,
        SUM(preco_total_produto - valor_total_devolucao) AS valor_realizado_ano_passado,
        SUM(valor_total_devolucao) AS valor_devolucao_ano_passado,
        SUM(valor_total_despesa) AS valor_despesa_ano_passado,
        SUM(valor_total_verba_promo) AS valor_promo_ano_passado
    FROM
        fato_distribuicao_divisao_dia 
    WHERE
        registro_ativo = TRUE
        -- Calendario Key recebido menos um ano
        AND id_dim_calendario BETWEEN 20241001 -10000 
        -- Calendario Key recebido menos um ano
        AND 2024-10-31 -10000
    GROUP BY 
        id_dim_empresa,
        id_dim_divisao
    ) AS f_old ON f_old.id_dim_empresa = f.id_dim_empresa AND f_old.id_dim_divisao = f.id_dim_divisao
WHERE
    f.registro_ativo = TRUE
    -- Calendario Key recebido menos um ano
    AND id_dim_calendario BETWEEN 20241001
    -- Calendario Key recebido menos um ano
    AND 20241031
GROUP BY 
    d_divisao.nome_divisao,
    d_divisao.id_nrodivisao,
    d_empresa.nome_reduzido,
    valor_realizado_ano_passado,
    valor_devolucao_ano_passado,
    valor_despesa_ano_passado,
    valor_promo_ano_passado