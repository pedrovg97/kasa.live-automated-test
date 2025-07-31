# language: pt
Funcionalidade: Filtragem de Partidas
  Como um usuário do site
  Eu quero poder filtrar a lista de partidas por diferentes critérios
  Para que eu possa encontrar rapidamente os jogos do meu interesse

Contexto:
  Dado que estou logado no sistema
  E que estou na página de partidas

@filtro_time 
Cenário: Buscar partidas por nome de time
  Quando eu insiro o time "Maringá FC" no filtro "Qual time?"
  E clico em pesquisar
  Então devo ver os resultados para o time "Maringá FC"

@filtro_campeonato
Cenário: Buscar partidas por campeonato
  Quando eu insiro o campeonato "Copa Libertadores" no filtro "Qual campeonato?"
  E clico em pesquisar
  Então devo ver os resultados para o campeonato "Copa Libertadores"

@filtro_canal 
Cenário: Buscar partidas por canal de transmissão
  Quando eu seleciono o canal "ESPN" no filtro "Onde quer ver?"
  E clico em pesquisar
  Então devo ver os resultados para o canal "ESPN"

@filtro_multiplo
Cenário: Buscar partidas usando múltiplos filtros
  Quando eu insiro o time "Palmeiras" no filtro "Qual time?"
  E eu insiro o campeonato "Copa Libertadores" no filtro "Qual campeonato?"
  E clico em pesquisar
  Então devo ver os resultados para o time "Palmeiras"
  E devo ver os resultados para o campeonato "Copa Libertadores"
