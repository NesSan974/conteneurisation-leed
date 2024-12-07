# Leed en micro-service

Virtualisation Avancé 
Empaquetage de l'application ['Leed'](https://github.com/LeedRSS/Leed.git) grâce à docker.  

## Pré-requis

- Docker `sudo apt install docker`
- docker-compose `sudo apt install docker-compose`
- une connexion internet pour que l'image puisse récupérer le projet git.

## Installation
```shell
git clone git@gricad-gitlab.univ-grenoble-alpes.fr:iut2-info-stud/2024-s5/r5-adv-virt/a1/leed-calpetaq.git
cd leed-calpetaq/
```

### Mise en place

#### Docker

Afin de pouvoir conserver les données, il faut créer le dossier :
```shell
mkdir bdd-volume
```

#### variable d'environnement

renommer le fichier bdd.env.example
```shell
mv .env.example .env
```
et le **compléter**.  

Il est possible de modifier :
- les ports exposé grace aux variables `WEB_PORT` et `BDD_PORT`
- le nom de la base de donnée
- le mot de passe de la base de donnée

## Lancement 

```shell
docker-compose -f docker-compose-prod.yml
```

L'appli est maintenant disponible au http://localhost sur le port choisis dans le fichier '.env'  
(par defaut : [localhost:8080](http://localhost:8080) )