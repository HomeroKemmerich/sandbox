# Contratos e Campos - Master Sonda

## Campos

### Natureza do serviço

Naturezas do serviço serão cadastradas apenas na Consinco, mas devem estar disponíveis para seleção no DOX.

| Coluna               | Nome                | Descrição                                       | Origem           | Ações                    |
|----------------------|---------------------|-------------------------------------------------|------------------|--------------------------|
| `descricao`          | Descrição           | Descrição da natureza do serviço                | Consinco         | Criação, Leitura, Edição |

---

### Contrato

| Coluna                 | Nome                    | Descrição                                                             | Origem           | Ações                      |
|------------------------|-------------------------|-----------------------------------------------------------------------|------------------|----------------------------|
| `seqcontrato`          | Sequência Contrato      | Identificador único do contrato. Criado automaticamente na Consinco   | Consinco         | Leitura                    |
| `nrocontrato`          | Número Contrato         | Número do contrato                                                    | Consinco         | Leitura, Edição            |
| `descricao`            | Descrição               | Descrição do contrato                                                 | Consinco         | Criação, Leitura, Edição   |
| `versao`               | Versão Consinco         | Versão do contrato. Criado automaticamente na Consinco                | Consinco         | Leitura                    |
| `dataprimvigencia`     | Data Primeira Vigência  | Data da primeira vigência do contrato                                 | Consinco         | Leitura, Edição            |
| `datainiciovig`        | Data Início Vigência    | Data de início da vigência                                            | Consinco         | Leitura, Edição            |
| `datafimvig`           | Data Fim Vigência       | Data de término da vigência                                           | Consinco         | Leitura, Edição            |
| `dataassinatura`       | Data Assinatura         | Data da assinatura do contrato                                        | Consinco         | Leitura, Edição            |
| `categoria`            | Categoria               | Categoria do contrato                                                 | Consinco         | Leitura, Edição            |
| `situacao`             | Situação                | Situação do contrato. Criado automaticamente na Consinco              | Consinco         | Leitura                    |
| `seqnaturezaserv`      | Natureza do Serviço     | [Natureza do serviço](#natureza-do-serviço)                           | Consinco         | Edição, Leitura            |
| `status`               | Status                  | Status do contrato. Criado automaticamente na Consinco                | Consinco         | Leitura                    |
| `tpovalor`             | Tipo Valor              | Tipo de valor no contrato                                             | Consinco         | Leitura                    |
| `nroformapagto`        | Número Forma Pagamento  | Código da forma de pagamento                                          | Consinco         | Leitura                    |
| `valormulta`           | Valor Multa             | Valor da multa associado ao contrato                                  | Consinco         | Leitura                    |
| `valorfixo`            | Valor Fixo              | Valor fixo do contrato                                                | Consinco         | Leitura                    |
| `tpovariavel`          | Tipo Variável           | Tipo de valor variável                                                | Consinco         | Leitura                    |
| `vlriniciovariavel`    | Valor Início Variável   | Valor inicial da variável                                             | Consinco         | Leitura                    |
| `vlrfimvariavel`       | Valor Fim Variável      | Valor final da variável                                               | Consinco         | Leitura                    |
| `obs`                  | Observações             | Observações gerais sobre o contrato                                   | Consinco         | Leitura                    |
| `seqindicfinanc`       | Indicador Fin.          | Indicador financeiro de reajuste                                      | Consinco         | Leitura                    |
| `pmtreajuste`          | Permite Reajuste        | Permissão para reajuste automático                                    | Consinco         | Leitura                    |
| `autoreajuste`         | Auto Reajuste           | Indicador de auto reajuste                                            | Consinco         | Leitura                    |
| `dtaprevreajuste`      | Data Prevista Reajuste  | Data prevista para reajuste                                           | Consinco         | Leitura                    |
| `dtainicioavisoreajuste` | Data Início Aviso Reaj.| Data de início do aviso de reajuste                                  | Consinco         | Leitura                    |
| `dtainiciopagto`       | Data Início Pagamento   | Data de início para pagamento                                         | Consinco         | Leitura                    |
| `pagtofracionado`      | Pagamento Fracionado    | Detalhe sobre pagamento fracionado                                    | Consinco         | Leitura                    |
| `periodopagto`         | Período Pagamento       | Período de pagamento                                                  | Consinco         | Leitura                    |
| `qtdparcelaspagto`     | Quantidade Parcelas     | Quantidade de parcelas para pagamento                                 | Consinco         | Leitura                    |
| `vlrprevistopagto`     | Valor Previsto Pagamento| Valor previsto para pagamento                                         | Consinco         | Leitura                    |
| `periodovalor`         | Período Valor           | Período do valor referente                                            | Consinco         | Leitura                    |
| `usuinclusao`          | Usuário Inclusão        | Usuário que realizou a inclusão                                       | Consinco         | Leitura                    |
| `dtahorainclusao`      | Data Hora Inclusão      | Data e hora da inclusão                                               | Consinco         | Leitura                    |
| `usualteracao`         | Usuário Alteração       | Usuário que realizou a última alteração                               | Consinco         | Leitura                    |
| `dtahoraalteracao`     | Data Hora Alteração     | Data e hora da última alteração                                       | Consinco         | Leitura                    |
| `periodoreajuste`      | Período Reajuste        | Período de reajuste                                                   | Consinco         | Leitura                    |
| `indrenovaaut`         | Indica Renovação Autom. | Indicador de renovação automática                                     | Consinco         | Leitura                    |
| `dtainiciolimitemensal`| Data Início Limite Mens.| Data inicial do limite mensal de contrato                             | Consinco         | Leitura                    |
| `nroempresagertit`     | Número Empresa Geradora | Empresa geradora do título                                            | Consinco         | Leitura                    |
| `percfaturamento`      | Percentual Faturamento  | Percentual de faturamento                                             | Consinco         | Leitura                    |
| `apurapor`             | Apura Por               | Tipo de apuração                                                      | Consinco         | Leitura                    |
| `diareferencia`        | Dia Referência          | Dia de referência para o contrato                                     | Consinco         | Leitura                    |
| `mesreferencia`        | Mês Referência          | Mês de referência para o contrato                                     | Consinco         | Leitura                    |
| -                      | Documentos              | [Documentos](#documento) associados ao contrato                       | Consinco         | Leitura                    |
| -                      | Observadores            | Usuários que devem ser notificados das ações realizadas no contrato   | DOX              | Criação, Leitura, Edição   |
| -                      | Alertas                 | Alertas de datas-chave do contrato                                    | DOX              | Criação, Leitura, Edição   |
| -                      | Atividades              | Checklist de [atividades](#atividade) do contrato                     | DOX              | Criação, Leitura, Edição   |
| -                      | Contatos                | Lista de [contatos](#contato) associados ao contrato                  | DOX              | Criação, Leitura, Edição   |
| -                      | Versão DOX              | Versão de acordo com as regras de negócio do DOX                      | DOX              | Criação, Leitura, Edição   |
| -                      | Comentários             | Comentários sobre a realização das atividades                         | DOX              | Criação, Leitura, Edição   |

### Compromisso

Compromissos, embora semelhantes a contratos, exigem outro conjunto de atividades. Serão administrados exclusivamente no DOX.

| Nome                    | Descrição                                                             | Origem           | Ações                      |
|-------------------------|-----------------------------------------------------------------------|------------------|----------------------------|
| Descrição               | Descrição do compromisso                                              | DOX              | Criação, Leitura, Edição   |
| Número Compromisso      | Número do compromisso                                                 | DOX              | Leitura, Edição            |
| Versão                  | Versão do compromisso. Criado automaticamente na Consinco             | DOX              | Criação, Leitura, Edição   |
| Data Primeira Vigência  | Data da primeira vigência do compromisso                              | DOX              | Leitura, Edição            |
| Data Início Vigência    | Data de início da vigência                                            | DOX              | Leitura, Edição            |
| Data Fim Vigência       | Data de término da vigência                                           | DOX              | Leitura, Edição            |
| Data Compromisso        | Data da assinatura do início do compromisso                           | DOX              | Criação, Leitura, Edição   |
| Categoria               | Categoria                                                             | Consinco         | Leitura, Edição            |
| Situação                | Situação do compromisso                                               | DOX              | Criação, Leitura, Edição   |
| Natureza do Serviço     | [Natureza do serviço](#natureza-do-serviço)                           | Consinco, DOX    | Edição, Leitura            |
| Forma Pagamento         | Forma de pagamento                                                    | DOX              | Criação, Leitura, Edição   |
| Status                  | Status do contrato                                                    | DOX              | Criação, Leitura, Edição   |
| Tipo Valor              | Tipo de valor no contrato                                             | DOX              | Criação, Leitura, Edição   |
| Valor Multa             | Valor da multa                                                        | DOX              | Criação, Leitura, Edição   |
| Valor Fixo              | Valor fixo                                                            | DOX              | Criação, Leitura, Edição   |
| Tipo Variável           | Tipo de valor variável                                                | DOX              | Criação, Leitura, Edição   |
| Valor Início Variável   | Valor inicial variável                                                | DOX              | Criação, Leitura, Edição   |
| Valor Fim Variável      | Valor final variável                                                  | DOX              | Criação, Leitura, Edição   |
| Observações             | Observações gerais sobre o compromisso                                | DOX              | Criação, Leitura, Edição   |
| Quantidade Documento Período | Quantidade de documentos por período                             | DOX              | Criação, Leitura, Edição   |
| Indicador Fin.          | Indicador financeiro de reajuste                                      | DOX              | Criação, Leitura           |
| Permite Reajuste        | Permissão para reajuste automático                                    | DOX              | Criação, Leitura, Edição   |
| Auto Reajuste           | Indicador de auto reajuste                                            | DOX              | Criação, Leitura, Edição   |
| Data Prevista Reajuste  | Data prevista para reajuste                                           | DOX              | Criação, Leitura, Edição   |
| Data Início Aviso Reaj. | Data de início do aviso de reajuste                                   | DOX              | Criação, Leitura, Edição   |
| Data Início Pagamento   | Data de início para pagamento                                         | DOX              | Criação, Leitura, Edição   |
| Pagamento Fracionado    | Detalhe sobre pagamento fracionado                                    | DOX              | Criação, Leitura, Edição   |
| Período Pagamento       | Período de pagamento                                                  | DOX              | Criação, Leitura, Edição   |
| Quantidade Parcelas     | Quantidade de parcelas para pagamento                                 | DOX              | Criação, Leitura, Edição   |
| Valor Previsto Pagamento| Valor previsto para pagamento                                         | DOX              | Criação, Leitura, Edição   |
| Período Valor           | Período do valor referente                                            | DOX              | Criação, Leitura, Edição   |
| Usuário Inclusão        | Usuário que realizou a inclusão                                       | DOX              | Criação, Leitura           |
| Data Hora Inclusão      | Data e hora da inclusão                                               | DOX              | Criação, Leitura           |
| Usuário Alteração       | Usuário que realizou a última alteração                               | DOX              | Criação, Leitura, Edição   |
| Data Hora Alteração     | Data e hora da última alteração                                       | DOX              | Criação, Leitura, Edição   |
| Período Reajuste        | Período de reajuste                                                   | DOX              | Criação, Leitura, Edição   |
| Data Início Limite Mens.| Data inicial do limite mensal de compromisso                          | DOX              | Criação, Leitura, Edição   |
| Entidade Geradora | Entidade geradora do título                                                 | DOX              | Criação, Leitura, Edição   |
| Percentual Faturamento  | Percentual de faturamento                                             | DOX              | Criação, Leitura, Edição   |
| Apura Por               | Tipo de apuração                                                      | DOX              | Criação, Leitura, Edição   |
| Dia Referência          | Dia de referência para o compromisso                                  | DOX              | Criação, Leitura, Edição   |
| Mês Referência          | Mês de referência para o compromisso                                  | DOX              | Criação, Leitura, Edição   |
| Documentos              | [Documentos](#documento) associados ao compromisso                    | DOX              | Criação, Leitura, Edição   |
| Observadores            | Usuários que devem ser notificados das ações realizadas no compromisso| DOX              | Criação, Leitura, Edição   |
| Alertas                 | Alertas de datas-chave do compromisso                                 | DOX              | Criação, Leitura, Edição   |
| Atividades              | Checklist de [atividades](#atividade) do compromisso                  | DOX              | Criação, Leitura, Edição   |
| Contatos                | Lista de [contatos](#contato) associados ao compromisso               | DOX              | Criação, Leitura, Edição   |
| Comentários             | Comentários sobre a realização das atividades                         | DOX              | Criação, Leitura, Edição   |

### Documento

Documentos podem ser criados e associados a Contratos na Consinco ou no DOX, e devem estar atualizados em ambas as ferramentas. 
Documentos podem ser criados e associados a Compromissos apenas no DOX.

| Coluna             | Nome                | Descrição                                | Origem           | Ações                     |
|--------------------|---------------------|------------------------------------------|------------------|---------------------------|
| `seqdocumento`     | Sequência Documento | Identificador do documento               | Consinco         | Criação, Leitura          |
| `seqtpodocto`      | Sequência Tipo Doc  | [Tipo de documento](#tipo-de-documento) associado | Consinco | Leitura, Edição          |
| `descricao`        | Descrição           | Descrição do documento                   | Consinco         | Criação, Leitura, Edição  |
| `status`           | Status              | Status do documento                      | Consinco         | Criação, Leitura, Edição  |
| `usualteracao`     | Usuário Alteração   | Usuário da última alteração              | Consinco         | Criação, Leitura, Edição  |
| `dtahoraalteracao` | Data Hora Alteração | Data e hora da última alteração          | Consinco         | Criação, Leitura, Edição  |
| `usuinclusao`      | Usuário Inclusão    | Usuário que realizou a inclusão          | Consinco         | Criação, Leitura          |
| `dtahorainclusao`  | Data Hora Inclusão  | Data e hora da inclusão                  | Consinco         | Criação, Leitura          |

### Tipo de documento

Vão existir duas bases de tipos de documento diferentes. Uma da Consinco, utilizada para CONTRATOS, e uma no DOX, utilizada para COMPROMISSOS.

| Coluna             | Nome                | Descrição                                | Origem          | Ações                     |
|--------------------|---------------------|------------------------------------------|-----------------|---------------------------|
| `seqtpodocto`      | Sequência Tipo Doc  | Identificador do tipo de documento       | Consinco        | Criação, Leitura          |
| `descricao`        | Descrição           | Descrição do tipo de documento           | Consinco        | Criação, Leitura, Edição  |
| `status`           | Status              | Status do tipo de documento              | Consinco        | Criação, Leitura, Edição  |
| `usualteracao`     | Usuário Alteração   | Usuário da última alteração              | Consinco        | Criação, Leitura, Edição  |
| `dtahoraalteracao` | Data Hora Alteração | Data e hora da última alteração          | Consinco        | Criação, Leitura, Edição  |
| `usuinclusao`      | Usuário Inclusão    | Usuário que realizou a inclusão          | Consinco        | Criação, Leitura          |
| `dtahorainclusao`  | Data Hora Inclusão  | Data e hora da inclusão                  | Consinco        | Criação, Leitura          |

### Atividade

| Nome                    | Descrição                                                             | Origem           | Ações                      |
|-------------------------|-----------------------------------------------------------------------|------------------|----------------------------|
| Título                  | Breve descrição da atividade a ser realizada                          | DOX              | Criação, Leitura, Edição   |
| Descrição               | Descrição detalhada da atividade a ser realizada                      | DOX              | Criação, Leitura, Edição   |
| Atribuído               | Usuário responsável pela atividade                                    | DOX              | Criação, Leitura, Edição   |
| Alertas                 | Lista de alertas para a atividade                                     | DOX              | Criação, Leitura, Edição   |
| Responsável             | Usuários responsáveis pela verificação do cumprimento da atividade    | DOX              | Criação, Leitura, Edição   |

### Contato

| Nome                    | Descrição                                                             | Origem           | Ações                      |
|-------------------------|-----------------------------------------------------------------------|------------------|----------------------------|
| Nome                    | Nome do contato                                                       | DOX              | Criação, Leitura, Edição   |
| Telefone                | Telefone do contato                                                   | DOX              | Criação, Leitura, Edição   |
| e-mail                  | e-mail do contato                                                     | DOX              | Criação, Leitura, Edição   |
| Observações             | Observações sobre o contato                                           | DOX              | Criação, Leitura, Edição   |