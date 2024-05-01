# projlogos
Projeto Lógico Ordem de Serviço Oficina

Descrição Detalhada do Projeto Lógico:

Entidades:

CLIENTE:
  Atributos:
    ID_CLIENTE (chave primária)
    NOME
    ENDEREÇO
    TELEFONE
    EMAIL
  Relacionamentos:
    Possui (0,N) VEÍCULO(S)

VEÍCULO:
  Atributos:
    ID_VEÍCULO (chave primária)
    PLACA (chave única)
    MODELO
    ANO
    COR
    ID_CLIENTE (chave estrangeira)
  Relacionamentos:
    Pertence a um CLIENTE
    Está presente em (0,N) ORDEM_SERVICO(S)

EQUIPE_MEC:
  Atributos:
    ID_EQUIPE_MEC (chave primária)
    NOME_EQUIPE
  Relacionamentos:
    Possui (0,N) MECÂNICO(S)
    Participa em (0,N) ORDEM_SERVICO(S)

MECÂNICO:
  Atributos:
    ID_MECÂNICO (chave primária)
    NOME
    ESPECIALIDADE
    TELEFONE
    ID_EQUIPE_MEC (chave estrangeira)
  Relacionamentos:
    Pertence a uma EQUIPE_MEC
    Trabalha em (0,N) ORDEM_SERVICO(S)

ORDEM_SERVICO:
  Atributos:
    ID_OS (chave primária)
    DATA_EMISSAO
    VALOR_TOTAL
    STATUS
    ID_VEÍCULO (chave estrangeira)
    ID_EQUIPE_MEC (chave estrangeira)
  Relacionamentos:
    É realizado em um VEÍCULO
    É realizado por uma EQUIPE_MEC
    Possui (0,N) ITEM_OS

ITEM_OS:
  Atributos:
    ID_ITEM_OS (chave primária)
    QUANTIDADE
    SERVICO_REALIZADO
    ID_OS (chave estrangeira)
    ID_PEÇA (chave estrangeira)
  Relacionamentos:
    Pertence a uma ORDEM_SERVICO
    Utiliza (0,1) PEÇA

PEÇA:
  Atributos:
    ID_PEÇA (chave primária)
    DESCRICAO
    VALOR_UNITARIO
    QUANTIDADE_ESTOQUE
  Relacionamentos:
    Pode ser utilizada em (0,N) ITEM_OS

Relacionamentos Entre Entidades:

CLIENTE: Possui (0,N) VEÍCULO(S): Um cliente pode ter nenhum ou vários veículos. Um veículo pertence a um único cliente.

VEÍCULO: Está presente em (0,N) ORDEM_SERVICO(S): Um veículo pode ter nenhuma ou várias ordens de serviço. Uma ordem de serviço é realizada em um único veículo.

EQUIPE_MEC: Possui (0,N) MECÂNICO(S): Uma equipe pode ter nenhum ou vários mecânicos. Um mecânico pertence a uma única equipe.

EQUIPE_MEC: Participa em (0,N) ORDEM_SERVICO(S): Uma equipe pode participar de nenhuma ou várias ordens de serviço. Uma ordem de serviço é realizada por uma única equipe.

MECÂNICO: Trabalha em (0,N) ORDEM_SERVICO(S): Um mecânico pode trabalhar em nenhuma ou várias ordens de serviço. Uma ordem de serviço tem a participação de um ou mais mecânicos.

ORDEM_SERVICO: Possui (0,N) ITEM_OS: Uma ordem de serviço pode ter nenhum ou vários itens. Um item pertence a uma única ordem de serviço.

ITEM_OS: Utiliza (0,1) PEÇA: Um item pode utilizar nenhuma ou uma peça.
