# language: pt
Funcionalidade: Integração com Google Calendar
  Como um usuário
  Eu quero poder sincronizar as partidas com minha agenda do Google
  Para ser notificado e não perder nenhum jogo importante.

  @CT-23
  Cenário: Conectar a conta do Google Calendar com sucesso
    Dado que eu não tenho uma conta Google conectada
    Quando clico em "Conectar com Google Calendar", no menu de perfil
    E completo o fluxo de autorização do Google
    Então o sistema deve exibir uma mensagem de sucesso e indicar que a minha conta está conectada.

  @CT-24
  Cenário: Sincronizar partidas de time favorito
    Dado que minha conta Google Calendar está conectada
    Quando favorito um time "Time Y"
    Então as partidas do time devem ser adicionadas como eventos na minha agenda do Google.

  @CT-25
  Cenário: Sincronizar partidas favoritadas
    Dado que minha conta Google Calendar está conectada
    Quando favorito uma "Partida X"
    Então a partida deve ser adicionada como evento na minha agenda do Google.

  @CT-26
  Cenário: Verificar detalhes do evento no Google Calendar
    Dado que uma partida foi sincronizada com a minha agenda
    Quando eu abro o evento no Google Calendar
    Então o título, a data, a hora e o link para a partida no site devem estar corretos.

  @CT-27
  Cenário: Remover evento da agenda ao desfavoritar time
    Dado que as partidas do "Time Y" estão na minha agenda
    Quando eu removo o time dos meus favoritos
    Então os eventos correspondentes às partidas do time devem ser removidos da minha agenda do Google.

  @CT-28
  Cenário: Desconectar a conta do Google Calendar
    Dado que minha conta Google Calendar está conectada
    Quando eu clico na opção "Desconectar", no menu de perfil
    Então o sistema deve desvincular a minha conta e parar futuras sincronizações.