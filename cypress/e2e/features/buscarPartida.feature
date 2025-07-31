# language: pt
Funcionalidade: Busca de Partidas
  Como um usuário
  Eu quero poder buscar e filtrar partidas
  Para encontrar rapidamente os jogos que me interessam.

  @CT-11
  Cenário: Buscar partidas por nome de time
    Dado que eu estou na página de partidas
    Quando insiro um time "Time X" no filtro "Qual time?"
  E clico em pesquisar
    Então a lista de resultados deve exibir partidas que envolvam o "Time X".

  @CT-12
  Cenário: Buscar partidas por campeonato
    Dado que eu estou na página de partidas
    Quando seleciono um campeonato no filtro "Qual campeonato?"
    E clico em pesquisar
    Então a lista de resultados deve exibir apenas partidas deste campeonato.

  @CT-13
  Cenário: Buscar partidas por data específica
    Dado que eu estou na página de partidas
    Quando eu clico no filtro de data
    E seleciono uma data
    Então a lista de resultados deve exibir apenas partidas nessa data.

  @CT-14
  Cenário: Buscar partidas por canal de transmissão
    Dado que eu estou na página de partidas
    Quando eu seleciono um canal no filtro "Onde quer ver?"
    E clico em pesquisar
    Então a lista de resultados deve exibir apenas partidas transmitidas pelo canal.

  @CT-15
  Cenário: Buscar partidas usando múltiplos filtros
    Dado que eu estou na página de partidas
    Quando eu filtro por time, campeonato
    E por data
    Então a lista de resultados deve exibir apenas partidas correspondentes aos filtros.

  @CT-16
  Cenário: Realizar uma busca sem resultados
    Dado que eu estou na página de partidas
    Quando eu busco por um time que não tem jogos agendados
    Então o sistema deve exibir uma mensagem clara.

  @CT-17
  Cenário: Limpar os filtros de busca
    Dado que eu apliquei vários filtros de busca
    Quando eu clico em uma opção para "Limpar filtros"
    Então a busca deve ser redefinida para o seu estado inicial, exibindo as partidas padrão.