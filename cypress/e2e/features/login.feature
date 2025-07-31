# language: pt
Funcionalidade: Login
  Como um usuário
  Eu quero acessar minha conta
  Para utilizar as funcionalidades exclusivas do sistema.

  @CT-29
  Cenário: Login com credenciais válidas
    Dado que estou na página inicial
    Quando faço login com o email "pedrotestesrma@gmail.com" e senha "userteste"
    Então devo ver meu perfil logado

  @CT-30
  Cenário: Login com senha inválida
    Dado que estou na página inicial
    Quando faço login com o email "usuario@teste.com" e senha "senhaErrada"
    Então devo ver uma mensagem de erro de autenticação
