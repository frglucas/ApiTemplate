#!/bin/sh
commitMsgFile=$1
commitMsg=$(cat "$commitMsgFile")

# Conventional Commits pattern
pattern='^(feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert)(\(.+\))?: .{1,}'

if ! echo "$commitMsg" | grep -qE "$pattern"; then
    echo ""
    echo "❌ Commit message inválida!"
    echo ""
    echo "A mensagem deve seguir o padrão Conventional Commits:"
    echo ""
    echo "  tipo(escopo opcional): descrição"
    echo ""
    echo "Tipos permitidos:"
    echo "  feat:     Nova funcionalidade"
    echo "  fix:      Correção de bug"
    echo "  docs:     Documentação"
    echo "  style:    Formatação"
    echo "  refactor: Refatoração"
    echo "  perf:     Performance"
    echo "  test:     Testes"
    echo "  build:    Build"
    echo "  ci:       CI"
    echo "  chore:    Outras mudanças"
    echo "  revert:   Reverter commit"
    echo ""
    echo "Exemplos:"
    echo "  feat: adiciona autenticação JWT"
    echo "  fix(api): corrige erro ao buscar usuários"
    echo ""
    exit 1
fi

exit 0
