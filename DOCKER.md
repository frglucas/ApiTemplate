# Docker Debug - ApiTemplate

## Rodar aplicação em modo debug no Docker

### 1. Subir o container em modo debug:
```bash
docker-compose -f docker/docker-compose.debug.yml up --build
```

### 2. Debugar no VS Code:
1. Vá para a aba **Run and Debug** (Ctrl+Shift+D)
2. Selecione **"Docker .NET Attach"** no dropdown
3. Pressione **F5**
4. Selecione o processo `dotnet` na lista

### 3. Parar o container:
```bash
docker-compose -f docker/docker-compose.debug.yml down
```

## Rodar em modo produção

```bash
docker-compose -f docker/docker-compose.yml up --build
```

## Comandos úteis

```bash
# Ver logs
docker-compose -f docker/docker-compose.debug.yml logs -f

# Entrar no container
docker exec -it apitemplate-debug bash

# Rebuildar sem cache
docker-compose -f docker-compose.debug.yml build --no-cache
```
