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
  Cenário: Favoritar uma partida no modo grade
    Dado que estou no listagem de partidas no modo grade
    Quando clico no botão de favoritar partida do modo grade
    Então a partida deve ser favoritada

  @CT-06 @only
  Cenário: Favoritar uma partida no modo lista
    Dado que estou no listagem de partidas no modo lista
    Quando clico no botão de favoritar partida do modo lista
    Então a partida deve ser favoritada

  @CT-07
  Cenário: Desfavoritar uma partida
    Dado que estou no calendário
    E tenho partidas marcadas como favoritas
    Quando clico no card de uma partida
    E clico no botão ". . ."
    E clico em Desfavoritar
    Então a partida deve ser ocultada da aba de favoritos.

  @CT-08
  Cenário: Verificar persistência dos favoritos após logout
    Dado que eu tenho times favoritados
    Quando eu faço logout
    E faço login novamente
    Então a minha lista de times favoritos deve permanecer a mesma.

  @CT-09
  Cenário: Tentar adicionar um time que já é favorito
    Dado que o "Time X" já está na minha lista de favoritos
    Quando eu pesquiso por "Time X" no modal de adição
    Então o botão "Add" ao lado do time deve estar desabilitado ou indicar que já foi adicionado.

  @CT-10
  Cenário: Adicionar times favoritos e não clicar em salvar
    Dado que adiciono um time aos meus favoritos
    Quando ignoro o botão salvar
    E atualizo a página
    Então o time não deve ser adicionado.

  @CT-11
  Cenário: Remover times favoritos e não clicar em salvar
    Dado que tenho times adicionados aos meus favoritos
    Quando removo um time
    E ignoro o botão salvar
    E atualizo a página
    Então o time deve permanecer nos favoritos.