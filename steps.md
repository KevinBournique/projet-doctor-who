# Etape 1 - Initaliser le serveur 

- Créer un fichier index.js 
- Créer le dépot npm et installer les packages
- Créer une première route pour afficher une page d'accueil 

## Etape 2 - Créer notre première vue

- Paramétrer Express pour utiliser EJS (penser à installer ejs au préalable)
  - app.set('view engine', 'ejs');
    - app.set('views', './app/views');
- Dans un dossier `views`, créer un fichier `home.ejs`
- Utiliser la fonction render proposé par Express pour afficher la view. 
- Créer le HTML/CSS pour correspondre à la maquette 

## Etape 3 - dynamiser 

- Installer pg
- Créer un dossier database dans lequel stocker la connexion à la BDD et le dataMapper 
- Créer des controllers pour gérer la logique de l'application 