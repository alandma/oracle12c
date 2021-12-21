# Container com database oracle12c

Criação de um container, rodando o bando de dados oracle12c para ambiente de dev e testes.

> Seu "dump" para ser restaurado, deve estar da pasta dump e no formato e em `SQL`.

# Scripts
Os scripts são utilizados para criação do tablespace, usuario e efetuar alterações no database, todos os scripts executam auto ao iniciar o container.

## criar_usuario.sql
Cria o tablespace que será utilizado pelo schema, o usuario, da permissão DBA para ele e permissão para o dump dir dentro do container.

O arquivo pode ser alterado "orcl" trocada conforme desejado.

## alteracoes_banco.sql
As alterações no banco são para tonar as requisições mais rapidas.

## import_dump.sh
Esse script será utilizado para restaurar o DUMP e remapear o schema para o criado no "criar_usuario" ou manter o mesmo.

# Executar o db oracle12c
```bash
docker-compose up -d --build
```