SELECT
    UN.id AS id_uniforme,
    UN.nome,
    CA.nome AS nome_categoria,
    UV.id AS id_uniforme_variante,
    BA.nome AS bandeira,
    GE.nome AS genero,
    CO.nome AS cor,
    TA.nome AS tamanho,
    UV.preco,
    UV.estoque_minimo,
    ES.id_loja,
    EM.nomereduzido AS loja,
    COUNT(CASE WHEN ES.flag_disponivel = 1 THEN 1 END) AS qtd_disponivel,
    MIN(ES.criado_em) AS data_primeiro_cadastro,
    dados_compra.data_compra,
    dados_compra.preco_compra,
    dados_compra.quantidade_compra,
    COUNT(CASE WHEN EH.valor_novo = 0 THEN 1 END) AS quantidade_descarte,
    CASE WHEN SUM(DU.quantidade) IS NOT NULL THEN SUM(DU.quantidade) ELSE 0 END AS quantidade_entregue,
    CASE WHEN COUNT(TR.id_estoque) IS NOT NULL THEN COUNT(TR.id_estoque) ELSE 0 END AS quantidade_terceiro
-- #region FODASE
FROM
/* busca todos os estoques e os detalhes da sua variação */
    web.sistema_rh_estoque ES
INNER JOIN 
    web.sistema_rh_uniformes_variantes UV ON ES.id_uniforme_variante = UV.id AND UV.status_registro = 1
INNER JOIN web.sistema_rh_bandeiras BA ON BA.id = UV.id_bandeira AND BA.status_registro = 1
INNER JOIN web.sistema_rh_generos GE ON GE.id = UV.id_genero AND GE.status_registro = 1
INNER JOIN web.sistema_rh_cores CO ON CO.id = UV.id_cor AND CO.status_registro = 1
INNER JOIN web.sistema_rh_tamanhos TA ON TA.id = UV.id_tamanho AND TA.status_registro = 1
INNER JOIN consinco.max_empresa EM ON EM.nroempresa = ES.id_loja
INNER JOIN web.sistema_rh_uniformes UN ON UN.id = UV.id_uniforme AND UN.status_registro = 1
INNER JOIN web.sistema_rh_categorias CA ON UN.id_categoria = CA.id AND CA.status_registro = 1
/* busca os dados da última compra de estoque (quando houver compra) */
LEFT JOIN (
    SELECT
        ES.id_uniforme_variante,
        ES.id_loja,
        ES.preco_compra,
        MAX(ES.comprado_em) AS data_compra,
        count(ES.comprado_em) AS quantidade_compra
    FROM
        web.sistema_rh_estoque ES
    WHERE
        ES.comprado_em = ( 
            SELECT MAX(comprado_em) 
            FROM web.sistema_rh_estoque data_compra 
            WHERE 
                ES.id_uniforme_variante = data_compra.id_uniforme_variante AND 
                ES.id_loja = data_compra.id_loja 
        )
    GROUP BY
        ES.id_uniforme_variante,
        ES.id_loja,
        ES.preco_compra
) dados_compra ON ES.id_uniforme_variante = dados_compra.id_uniforme_variante AND ES.id_loja = dados_compra.id_loja
/*
busca a quantidade de uniformes descartados no período:
quando houver compra o período inicia na última data de compra terminando na data atual e 
quando não houver compra o período inicia no primeiro cadastro de estoque da variação terminando na data atual (busca todo histórico de descarte)
*/
LEFT JOIN web.sistema_rh_estoque_historico EH ON
    (ES.id = EH.id_estoque AND EH.coluna_alterada = 'STATUS_REGISTRO' AND EH.valor_novo = 0 AND ES.status_registro = 0) 
    AND ((EH.criado_em BETWEEN dados_compra.data_compra AND sysdate AND dados_compra.data_compra IS NOT NULL) OR (EH.criado_em BETWEEN ES.criado_em AND sysdate AND dados_compra.data_compra IS NULL))
/*
busca a quantidade de uniformes com funcionários (entregues no período e não devolvidos):
quando houver compra o período inicia na última data de compra terminando na data atual e 
quando não houver compra o período inicia no primeiro cadastro de estoque da variação terminando na data atual (busca todo histórico de descarte)
*/
/*
-- aqui estava com bug
LEFT JOIN web.sistema_rh_documentos_uniformes DU ON ES.id = DU.id_estoque AND DU.devolvido = 0
INNER JOIN web.sistema_rh_documentos DO ON DU.id_documento = DO.id AND -- INNER JOIN para pegar somente os documentos entregues no período
    ((DO.criado_em BETWEEN dados_compra.data_compra AND sysdate AND dados_compra.data_compra IS NOT NULL) OR (DO.criado_em BETWEEN ES.criado_em AND sysdate AND dados_compra.data_compra IS NULL))
*/
LEFT JOIN(
    SELECT
        DU.id_documento,
        DO.id,
        DO.criado_em,
        DU.id_estoque,
        DU.quantidade
    FROM
        web.sistema_rh_documentos_uniformes DU
    INNER JOIN 
        web.sistema_rh_documentos DO ON DU.id_documento = DO.id
    WHERE
        DU.devolvido = 0
) DU ON ES.id = DU.id_estoque AND (
    (DU.criado_em BETWEEN dados_compra.data_compra AND sysdate AND dados_compra.data_compra IS NOT NULL) OR 
    (DU.criado_em BETWEEN ES.criado_em AND sysdate AND dados_compra.data_compra IS NULL)
)
/*
busca a quantidade de uniformes com terceiros (enviados no período e não retornados):
quando houver compra o período inicia na última data de compra terminando na data atual e 
quando não houver compra o período inicia no primeiro cadastro de estoque da variação terminando na data atual (busca todo histórico de descarte)
*/
LEFT JOIN 
    web.sistema_rh_transferencias TR ON 
        ES.id = TR.id_estoque AND 
        TR.id_status_transferencia = :status_tranferencia_pendente AND 
        TR.id_terceiro_destino > 0 AND (
            (TR.enviado_em BETWEEN dados_compra.data_compra AND sysdate AND dados_compra.data_compra IS NOT NULL) OR 
            (TR.enviado_em BETWEEN ES.criado_em AND sysdate AND dados_compra.data_compra IS NULL)
        )
WHERE ES.id_loja IN (1)
-- #endregion
GROUP BY
    UN.id,
    UN.nome,
    CA.nome,
    UV.id,
    BA.nome,
    GE.nome,
    CO.nome,
    TA.nome,
    UV.preco,
    UV.estoque_minimo,
    ES.id_loja,
    EM.nomereduzido,
    qtd_disponivel,
    data_primeiro_cadastro,
    dados_compra.data_compra,
    dados_compra.preco_compra,
    dados_compra.quantidade_compra,
    quantidade_descarte,
    quantidade_entregue,
    quantidade_terceiro
ORDER BY
    ES.id_loja, UV.id;