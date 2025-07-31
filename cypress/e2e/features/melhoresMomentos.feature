# language: pt
Funcionalidade: Melhores Momentos
  Como um usuário
  Eu quero poder assistir e filtrar vídeos de melhores momentos
  Para rever os lances mais importantes das partidas.



  @CT-18
  Cenário: Reproduzir um vídeo de melhores momentos
    Dado que estou na aba "Melhores Momentos"
    Quando eu clico na miniatura de um vídeo
    Então um player de vídeo deve abrir e iniciar a reprodução.

  @CT-19
  Cenário: Filtrar melhores momentos por time
    Dado que estou na aba "Melhores Momentos"
    Quando eu seleciono um "Time X" no filtro de "Times"
    Então a listagem de vídeos deve ser atualizada para exibir apenas os melhores momentos de partidas do time selecionado.

  @CT-20
  Cenário: Filtrar melhores momentos por campeonato
    Dado que estou na aba "Melhores Momentos"
    Quando eu seleciono um "Campeonato X" no filtro de "Campeonatos"
    Então a listagem de vídeos deve ser atualizada para exibir apenas os melhores momentos de partidas do campeonato selecionado.

  @CT-21
  Cenário: Combinar filtros de time e campeonato
    Dado que estou na aba "Melhores Momentos"
    Quando eu seleciono um "Time X"
    E seleciono um campeonato que o time participa
    Então a listagem deve exibir apenas os melhores momentos do time no campeonato selecionado.

  @CT-22
  Cenário: Verificar filtro sem resultados
    Dado que estou na aba "Melhores Momentos"
    Quando eu aplico um filtro que não retorna vídeos
    Então o sistema deve exibir uma mensagem clara, como "Nenhum vídeo encontrado para os filtros selecionados".