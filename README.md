# desafio_bridge

Repositório criado para o desafio do Processo Seletivo 2023/1 do Laboratório Bridge para a vaga de Bolsista de
Desenvolvimento Suporte.

## Contexto do desafio

Uma empresa precisa de uma solução de banco de dados relacional para
armazenar informações sobre os produtos que vende em sua loja online. Para isso, a
empresa contratou você para criar o esquema do banco de dados e escrever algumas
consultas SQL para testar a integridade dos dados. Você deve criar um esquema em que
seja possível satisfazer as consultas a seguir [...]

## Técnologias utilizadas

* Banco de dados PostgreSQL versão 15.2;
* Oracle SQL Developer Data Modeler para a modelagem do banco;
* O projeto foi desenvolvido em um ambiente Ubuntu 22.04 LTS;

## Executando o projeto

`git clone https://github.com/jeanpelissoli/desafio_bridge`

### 1) Instalar o PostgreSQL

* Tutorial para instalação no Ubuntu 22.04: https://itslinuxfoss.com/install-setup-postgresql-database-ubuntu-22-04/
* Instalação no Windows: https://www.postgresql.org/download/windows/

### 2) Inicializar e criar o Banco de dados

#### Digite no terminal:
* Para inicializar o serviço: `sudo systemctl start postgresql`
* Para fazer login: `sudo -i -u postgres psql`
* Para criar o banco: `CREATE DATABASE desafio_bridge;`

### 3) Criar o schema para o desafio

#### Digite no terminal:
* Para se conectar ao banco: `\c desafio_bridge`
* Para executar o script de criação do schema: `\i /path/scripts/schema/createSchema.sql;`
* Para popular as tabelas: `\i /path/scripts/schema/populateTables.sql;`
* Onde "path" representa o diretório onde estão os arquivos.

## Testando os scripts de consulta

#### Digite no terminal:
* Consulta 1: `\i /path/scripts/queries/query1.sql;`
* Consulta 2: `\i /path/scripts/queries/query2.sql;`
* Consulta 3: `\i /path/scripts/queries/query3.sql;`
* Consulta 4: `\i /path/scripts/queries/query4.sql;`
* Consulta 5: `\i /path/scripts/queries/query5.sql;`
* Consulta 6: `\i /path/scripts/queries/query6.sql;`

## Considerações finais
A imagem com o modelo relacional está contida no pdf do relatório e também na pasta imgs, que também possuí algumas imagens mostrando
os resultados das consultas realizadas com os scripts.
