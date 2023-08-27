# projet-doctor-who

Un projet en collaboration avec Thomas Pijat sur l'univers de la série Doctor Who

Celui ci regroupe la création d'un serveur avec Express, la mise en place et l'utilisation d'une BDD.

We use some NPM packages ( see on package.json to know all dependencies )

To start the project :
1. create a .env file and setup 
```
# Informations of diffusion
BASE_URL=http://localhost
PORT=5000
# Informations of db
PG_URL=postgres://USER:PASSWORD@DB_IP/DB_NAME
DIALECT=postgres
SECRET=PASSWORD
```
2. Execute DW.SQL script on a postgres db.
3. To install the project on local, execute :
``` npm install ```
4. Tu run the project, execute : 
``` npm run dev ```
