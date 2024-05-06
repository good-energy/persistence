# PERSISTENCE

## TOOLS

### Database Markup Language

*DBML (Database Markup Language) is an open-source DSL language designed to define and document database schemas and structures. It is designed to be simple, consistent and highly-readable.*

*It also comes with command-line tool and open-source module to help you convert between DBML and SQL.*

-- [dbml.dbdiagram](dbml.dbdiagram.io)

[VSCODE DBML](https://marketplace.visualstudio.com/items?itemName=matt-meyers.vscode-dbml) <br> provides language support for the Database Markup Language (DBML)

[DBML ERD Visualizer](https://marketplace.visualstudio.com/items?itemName=bocovo.dbml-erd-visualizer) <br> generates a visualization of your database schema defined in a .dbml file.


### [dbmate](https://github.com/amacneil/dbmate)

*Dbmate is a database migration tool that will keep your database schema in sync across multiple developers and your production servers.*

## INFRASTRUCTURE

[Neon](neon.tech)<br>
serverless Postgres with storage and compute separation for autoscaling plus database branching. 

currently using neon to explore database branching. Plus not having to take care of backups and security. 
Might go for to self hosted postgres later.

[GitHub Actions]()<br>
Changes are currently applied to databases via github actions on push/merge to test and main branch. 

## LOCAL DEVELOPMENT

### docker postgres

Setup a local postgres database via [docker](https://www.docker.com/blog/how-to-use-the-postgres-docker-official-image/). 

```shell
docker run --name persistence.klimaschutz.plus -e POSTGRES_USER={user} -e POSTGRES_PASSWORD={password} -e POSTGRES_DB={database} -p 5432:5432 -d postgres
```

and create a .env file for dbmate
```shell
DATABASE_URL=postgres://{user}:{password}@localhost:5432/{database}
```
and apply exiting migartions to database
```
dbmate migrate 
```
