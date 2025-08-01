# language: pt
Funcionalidade: Login
  Como um usuário
  Eu quero acessar minha conta
  Para utilizar as funcionalidades exclusivas do sistema

 Contexto:
    Dado que estou na página inicial

  @CT-29
  Cenário: Login com credenciais válidas
    Quando faço login com o email "pedrotestesrma@gmail.com" e senha "userteste"
    Então devo ver meu perfil logado

  @CT-30
  Cenário: Login com senha inválida
    Quando tento fazer login com o email "emailErrado@teste.com" e senha "senhaErrada"
    Então devo ver uma mensagem de erro de autenticação


  @CT-30
  Cenário: Login com email vazio
    Quando tento fazer login com o email " " e senha "senhaErrada"
    Então devo ver uma mensagem de erro no campo de email

  @CT-30
  Cenário: Login com senha vazia
    Quando tento fazer login com o email "emailErrado@teste.com" e senha " "
    Então devo ver uma mensagem de erro no campo de senha

  @CT-30 @only
  Cenário: Fazer logout
    Dado que estou logado no sistema
    Quando acesso as informações do meu perfil
    E clico em sair
    Então devo ver novamente a opção de entrar no site