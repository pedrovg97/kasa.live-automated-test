# language: pt
Funcionalidade: Login
  Como um usuário
  Eu quero acessar minha conta
  Para utilizar as funcionalidades exclusivas do sistema

 Contexto:
    Dado que estou na página inicial

  @CT-31 @happy_path @login
  Cenário: Login com credenciais válidas
    Quando faço login com o email "valido" e senha "valida"
    Então devo ver meu perfil logado

  @CT-32 @happy_path @login
  Cenário: Login com senha errada
    Quando faço login com o email "valido" e senha "senhaErrada"
    Então devo ver uma mensagem de erro de autenticação


  @CT-33 @happy_path @login
  Cenário: Login com email vazio
    Quando faço login com o email " " e senha "valida"
    Então devo ver uma mensagem de erro no campo de email

  @CT-34 @happy_path @login
  Cenário: Login com senha vazia
    Quando faço login com o email "valido" e senha " "
    Então devo ver uma mensagem de erro no campo de senha

  @CT-35 @happy_path @login
  Cenário: Fazer logout
    Dado que estou logado no sistema
    Quando acesso as informações do meu perfil
    E clico em sair
    Então devo ver novamente a opção de entrar no site