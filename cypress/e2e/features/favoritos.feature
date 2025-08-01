# language: pt
Funcionalidade: Gerenciamento de Favoritos

  Como um usuário do sistema
  Eu quero poder adicionar e remover times da minha lista de favoritos
  Para que eu possa acompanhar facilmente o que é mais importante para mim

  Contexto:
    Dado que estou logado no sistema

  @CT-01 @happy_path @favoritos
  Cenário: Adicionar um novo time aos favoritos
    Quando eu adiciono o time "Olaria" aos favoritos
    Então o time "Olaria" deve aparecer na minha lista de "Times favoritos"

  @CT-02 @happy_path @favoritos
  Cenário: Remover um time da lista de favoritos
    Dado que o time "Maringá FC" está na minha lista de favoritos
    Quando eu removo o time "Maringá FC" dos favoritos
    Então o time "Maringá FC" não deve mais aparecer na minha lista de "Times favoritos"

  @CT-03 @happy_path @favoritos
  Cenário: Visualizar partidas de um time favorito
    Dado que o time "Maringá FC" está na minha lista de favoritos
    Quando eu navego para a aba de favoritos
    E eu desativo o toggle "Partidas favoritas"
    Então devo ver os jogos do time "Maringá FC"

