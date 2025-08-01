## Como rodar os testes

### 1. Clone o repositório

```bash
git clone https://github.com/seu-usuario/seu-repo.git
cd seu-repo

### 2. Instale as dependências

```bash
npm install

### 3. Crie o arquivo .env na raiz do projeto

CYPRESS_email=seu@email.com
CYPRESS_password=sua_senha

### 4. Execute os testes

#### 4.1 Modo interface gráfica

npx cypress open

#### 4.2 Modo headless

npx cypress run

#### 4.3 Rodar por tag

npx cypress run --env TAGS='@login'

#### 4.3 Rodar sem uma tag específica

npx cypress run --env TAGS='not @login'
