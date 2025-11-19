# Simulando um Ataque de Brute Force de Senhas com Medusa e Kali Linux

Este repositório apresenta a implementação prática do desafio da DIO utilizando **Kali Linux**, a ferramenta **Medusa** e máquinas vulneráveis como **Metasploitable 2** e **DVWA**, para simular ataques de força bruta em serviços reais e compreender técnicas de mitigação.  
Tudo foi realizado em ambiente totalmente controlado, seguro e isolado.

---

## 1. Objetivo do Projeto

Este projeto tem como finalidade:

- Demonstrar a execução de ataques de força bruta em serviços como **FTP**, **DVWA** e **SMB**.
- Utilizar o **Kali Linux** como ambiente de auditoria e o **Medusa** como ferramenta de ataque.
- Entender como funcionam ataques de **brute force** e **password spraying**.
- Criar **wordlists simples** e **scripts básicos**.
- Documentar cada etapa de forma clara e organizada.
- Propor recomendações de mitigação.
- Consolidar o aprendizado em um repositório GitHub.

---

## 2. Arquitetura do Ambiente

Ambiente montado utilizando **VirtualBox**, com duas VMs:

| Máquina            | Sistema           | Papel                      |
|--------------------|-------------------|-----------------------------|
| Kali Linux         | Kali Rolling      | Atacante                   |
| Metasploitable 2   | Ubuntu modificado | Alvo (FTP, SMB, DVWA)     |

**Rede utilizada:** Host-Only / Internal Network  
Totalmente isolada da internet, garantindo segurança.

### Exemplo de IPs utilizados:

- **Kali:** `192.168.56.101`
- **Metasploitable:** `192.168.56.102`

---

## 3. Ferramentas Utilizadas

- **Kali Linux**
- **Medusa** – ferramenta de brute force para serviços de rede
- **Nmap** – varredura e enumeração
- **Metasploitable 2** – máquina vulnerável
- **DVWA** – aplicação vulnerável rodando no Metasploitable
- **Wordlists personalizadas**
- **Scripts Bash** para automação

---

## 4. Enumeração com Nmap

Antes dos ataques, foi realizada uma varredura:
nmap -sV -p- 192.168.56.102

### Resultados típicos:

- **Porta 21:** FTP  
- **Porta 80:** DVWA  
- **Portas 139/445:** SMB  
- **Outros serviços vulneráveis**
