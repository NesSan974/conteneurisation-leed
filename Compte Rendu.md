## Codebase

J'ai préféré utilisé directement le repo git de leed afin d'éviter d'avoir à stocker une version à jour, à chaque changement.

## Dependencies et Config
La base de donée et le site web sont séparé en deux containers docker différent, afin de respecter les dependances et les services. Néanmoins, j'aurais préféré 2 .env différents afin d'éviter que les variable d'environnement contenant le mot de passe de la BDD se retrouve sur le serveur WEB, mais une consigne l'interdisait :
(Configuration centralisée Tous les éléments de configuration seront présents dans **le**
fichier .env). J'aurais en effet pu créé uns cript qui le scindé en plusieurs sous .env, mais le temps manque 

## Build, release, run
J'ai décidé de créé 2 fichiers docker-compose.yml afin de pouvoir rajouter pourquoi pas d'autre conteneur, comme un analyseur de réseaux en debug, ou un proxy en production

## Port binding
Le port des 2 conteneurs sont exposés en dev, car il peut être utile de se connecter a la base de donnée lorsque l'on debug.  
En revanche, Impossible d'y acceder en Prod.

## Logs
Aucun logs n'est exporté par manque de temps. Il aurait été intéréssant de monté le dossier de log du container a un dossier local.