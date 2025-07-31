# language: pt
Funcionalidade: Gerenciamento de Favoritos
  Como um usuário do sistema
  Eu quero poder adicionar e remover times e partidas da minha lista de favoritos
  Para que eu possa acompanhar facilmente o que é mais importante para mim.

  @CT-01 
  Cenário: Adicionar um novo time aos favoritos
    Dado que eu estou na aba favoritos
    Quando clico em "Favoritar time"
    E pesquiso pelo time "Olaria"
    E clico em "Add"
    E clico em "Concluir"
    Então o novo time deve aparecer na minha lista de "Times favoritos".

  @CT-02
  Cenário: Remover um time da lista de favoritos
    Dado que um time já está na minha lista de favoritos
    Quando clico em "Editar"
    E clico no "X" abaixo do time
    E depois clico em "Salvar"
    Então o time não deve mais aparecer na minha lista de "Times favoritos"

  @CT-03
  Cenário: Visualizar partidas dos times favoritos
    Dado que adiciono um time como favorito
    Quando desativo o toggle "Partidas favoritas"
    E estou na listagem de partidas favoritas
    Então devo ver os jogos dos meu time favorito

  @CT-04
  Cenário: Partidas do time são ocultadas das favoritas após remove-lo dos times favoritos  
    Dado que tenho um time como favorito
    Quando removo o time dos favoritos
    E desativo o toggle "Partidas favoritas"
    Então as partidas desse time não devem aparecer na lista de partidas favoritas


  @CT-05
  Cenário: Verificar persistência dos favoritos após logout
    Dado que eu tenho times favoritados
    Quando eu faço logout
    E faço login novamente
    Então a minha lista de times favoritos deve permanecer a mesma.

 