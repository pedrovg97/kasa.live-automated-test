# language: pt
Funcionalidade: Melhores Momentos

  Como um usuário
  Eu quero poder assistir e vídeos de melhores momentos
  Para rever os lances importantes das partidas

  Contexto:
    Dado que estou logado no sistema


  @CT-18 
  Cenário: Reproduzir um vídeo de melhores momentos
    Dado que estou na aba "Melhores Momentos"
    Quando eu clico na miniatura de um vídeo
    Então um player de vídeo deve abrir e iniciar a reprodução

  @CT-18 
  Cenário: Fechar um vídeo de melhores momentos
    Dado que estou na aba "Melhores Momentos"
    Quando eu clico na miniatura de um vídeo
    E fecho a reproduçao do video
    Então devo voltar para a lista de melhores momentos


