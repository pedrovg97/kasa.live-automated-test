## Como Rodar os Testes

### 1. Clone o Repositório

```bash
git clone https://github.com/seu-usuario/seu-repo.git
```
### 2. Instale as Dependências
```bash
npm install
```

### 3. Configure as Variáveis de Ambiente
```bash
CYPRESS_email=seu@email.com
CYPRESS_password=sua_senha
```

### 4. Execute os testes

#### 4.1 Modo interface gráfica
```bash
npx cypress open
```
#### 4.2 Modo headless
```bash
npx cypress run
```
#### 4.3 Rodar por tag
```bash
npx cypress run --env TAGS='@login'
```
#### 4.3 Rodar sem uma tag específica
```bash
npx cypress run --env TAGS='not @login'
```
