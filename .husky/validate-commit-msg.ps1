#!/usr/bin/env pwsh
param($commitMsgFile)

$commitMsg = Get-Content $commitMsgFile -Raw

# Conventional Commits pattern
$pattern = '^(feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert)(\(.+\))?: .{1,}'

if ($commitMsg -notmatch $pattern) {
    Write-Host ""
    Write-Host "❌ Commit message inválida!" -ForegroundColor Red
    Write-Host ""
    Write-Host "A mensagem deve seguir o padrão Conventional Commits:" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "  tipo(escopo opcional): descrição" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Tipos permitidos:" -ForegroundColor Yellow
    Write-Host "  feat:     Nova funcionalidade" -ForegroundColor Green
    Write-Host "  fix:      Correção de bug" -ForegroundColor Green
    Write-Host "  docs:     Documentação" -ForegroundColor Green
    Write-Host "  style:    Formatação, ponto e vírgula, etc" -ForegroundColor Green
    Write-Host "  refactor: Refatoração de código" -ForegroundColor Green
    Write-Host "  perf:     Melhoria de performance" -ForegroundColor Green
    Write-Host "  test:     Adição ou correção de testes" -ForegroundColor Green
    Write-Host "  build:    Mudanças no build ou dependências" -ForegroundColor Green
    Write-Host "  ci:       Mudanças na CI" -ForegroundColor Green
    Write-Host "  chore:    Outras mudanças" -ForegroundColor Green
    Write-Host "  revert:   Reverter um commit" -ForegroundColor Green
    Write-Host ""
    Write-Host "Exemplos:" -ForegroundColor Yellow
    Write-Host "  feat: adiciona autenticação JWT" -ForegroundColor Cyan
    Write-Host "  fix(api): corrige erro ao buscar usuários" -ForegroundColor Cyan
    Write-Host "  docs: atualiza README" -ForegroundColor Cyan
    Write-Host ""
    exit 1
}

exit 0
