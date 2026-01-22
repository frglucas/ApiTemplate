# ApiTemplate

Template para criação de Web APIs .NET com boas práticas, ferramentas de qualidade de código e suporte a Docker.

## 🚀 Características

### ✨ Funcionalidades Principais
- **ASP.NET Core 8.0** - Framework moderno para Web APIs
- **Swagger/OpenAPI** - Documentação interativa da API em `/api/swagger`
- **Minimal APIs** - Endpoints limpos e performáticos

### 🔒 Qualidade de Código
- **Husky.Net** - Git hooks para garantir qualidade antes do commit
  - Pre-commit: Valida build antes de commitar
  - Commit-msg: Valida mensagens seguindo Conventional Commits
- **Conventional Commits** - Padronização de mensagens de commit

### 🐳 Docker
- **Dockerfile** - Build otimizado multi-stage para produção
- **Dockerfile.debug** - Imagem preparada para debug remoto
- **Docker Compose** - Orquestração de containers
- **Tasks VS Code** - Comandos integrados para Docker

### 🔄 CI/CD
- **GitHub Actions** - Pipeline automática
  - Build em push/PR para `main` e `develop`
  - Execução de testes
  - Validação de código

### 🛠️ Desenvolvimento
- **VS Code Tasks** - Atalhos para build, run e docker
- **Launch Configurations** - Debug local e em container
- **.gitignore** - Configurado para .NET

## 📋 Pré-requisitos

- [.NET 8.0 SDK](https://dotnet.microsoft.com/download)
- [Docker Desktop](https://www.docker.com/products/docker-desktop) (opcional)
- [Git](https://git-scm.com/)
- [VS Code](https://code.visualstudio.com/) (recomendado)

## 🏃 Como Usar

### 1. Clone o Repositório
```bash
git clone <seu-repositorio>
cd ApiTemplate
```

### 2. Restaurar Dependências
```bash
dotnet restore
```

### 3. Executar Localmente

**Opção 1: Via .NET CLI**
```bash
cd src/ApiTemplate.Api
dotnet run
```

**Opção 2: Via VS Code**
- Pressione `F5` para rodar com debug
- Ou `Ctrl+Shift+B` e selecione a task desejada

A API estará disponível em: http://localhost:5000/api/swagger

### 4. Executar com Docker

**Desenvolvimento (com debug):**
```bash
docker compose -f docker/docker-compose.debug.yml up --build
```

**Produção:**
```bash
docker compose -f docker/docker-compose.yml up --build
```

**Via VS Code Tasks:**
- `Ctrl+Shift+B` → Selecione `docker-debug-up` ou `docker-up`

## 🧪 Testes

```bash
dotnet test
```

## 📝 Commits

Este projeto utiliza [Conventional Commits](https://www.conventionalcommits.org/). Suas mensagens devem seguir o padrão:

```
tipo(escopo): descrição

Exemplos:
feat: adiciona autenticação JWT
fix(api): corrige erro ao buscar usuários
docs: atualiza README
```

### Tipos permitidos:
- `feat` - Nova funcionalidade
- `fix` - Correção de bug
- `docs` - Documentação
- `style` - Formatação
- `refactor` - Refatoração
- `perf` - Performance
- `test` - Testes
- `build` - Build/dependências
- `ci` - CI/CD
- `chore` - Outras mudanças

**Nota:** O Husky.Net validará automaticamente suas mensagens de commit e o build antes de permitir o commit.

## 🏗️ Estrutura do Projeto

```
ApiTemplate/
├── .github/
│   └── workflows/
│       └── dotnet.yml          # Pipeline CI/CD
├── .husky/                     # Configurações Husky.Net
│   ├── pre-commit              # Hook para validar build
│   ├── commit-msg              # Hook para validar mensagem
│   ├── task-runner.json        # Configuração de tasks
│   └── validate-commit-msg.*   # Scripts de validação
├── .vscode/
│   ├── launch.json             # Configurações de debug
│   └── tasks.json              # Tasks VS Code
├── docker/
│   ├── Dockerfile              # Build de produção
│   ├── Dockerfile.debug        # Build para debug
│   ├── docker-compose.yml      # Compose produção
│   └── docker-compose.debug.yml # Compose debug
├── src/
│   └── ApiTemplate.Api/        # Projeto da API
│       ├── Program.cs          # Ponto de entrada
│       └── ApiTemplate.Api.csproj
├── .dockerignore
├── .gitignore
├── DOCKER.md                   # Documentação Docker
└── README.md
```

## 🔧 Tasks VS Code

Pressione `Ctrl+Shift+B` para acessar:

- **build** - Build do projeto (padrão)
- **watch** - Modo watch (rebuild automático)
- **docker-debug-up** - Sobe container em modo debug
- **docker-up** - Sobe container em produção

Outras tasks disponíveis via `Ctrl+Shift+P` → `Tasks: Run Task`:
- **publish** - Publica o projeto
- **docker-debug-down** - Para container debug
- **docker-down** - Para container produção

## 🐛 Debug no Docker

1. Execute a task `docker-debug-up`
2. No VS Code, vá em **Run and Debug** (`Ctrl+Shift+D`)
3. Selecione **"Docker .NET Attach"**
4. Pressione `F5`
5. Selecione o processo `dotnet`

Veja mais detalhes em [DOCKER.md](DOCKER.md)

## 📦 Endpoints

### GET /weatherforecast
Retorna uma previsão do tempo (exemplo padrão)

**Response:**
```json
[
  {
    "date": "2026-01-23",
    "temperatureC": 15,
    "temperatureF": 58,
    "summary": "Mild"
  }
]
```

## 🤝 Contribuindo

1. Crie uma branch: `git checkout -b feat/nova-funcionalidade`
2. Commit suas mudanças: `git commit -m 'feat: adiciona nova funcionalidade'`
3. Push para a branch: `git push origin feat/nova-funcionalidade`
4. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença [MIT](LICENSE).

## 🔗 Links Úteis

- [Documentação ASP.NET Core](https://docs.microsoft.com/aspnet/core)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Husky.Net](https://alirezanet.github.io/Husky.Net/)
- [Docker](https://docs.docker.com/)

---

**Feito com ❤️ usando .NET 8.0**
