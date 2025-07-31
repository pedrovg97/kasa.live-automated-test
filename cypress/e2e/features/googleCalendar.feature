# language: pt
Funcionalidade: Integração com Google Calendar
  Como um usuário
  Eu quero ter a opção de conectar meu Google Calendar
  Para que eu possa sincronizar minhas partidas e eventos diretamente no meu calendário

  Contexto:
    Dado que estou logado no sistema
    
  @only
  Cenário: Disponibilidade do botão de conectar ao Google Calendar
    Quando acesso as informações do meu perfil
    Então vejo a opção de "Conectar com seu Google Calendar"


