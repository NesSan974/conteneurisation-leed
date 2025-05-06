# 📦 Déploiement de l'application Leed avec Docker

Projet universitaire réalisé dans le cadre du module **R5.Real.09**.  
Ce projet avait pour objectif de conteneuriser l'application Leed, un agrégateur RSS minimaliste, en respectant les bonnes pratiques de déploiement avec **Docker** et **Docker Compose**.  
consigne disponible [ici](projet-leed.pdf)
## 🎯 Objectifs

- Comprendre et appliquer les concepts de virtualisation avancée.
- Créer un environnement de déploiement reproductible avec Docker.
- Utiliser Docker Compose pour orchestrer les services nécessaires.
- Suivre un cahier des charges précis pour garantir la conformité du packaging.

## 🛠️ Technologies utilisées

- Docker
- Docker Compose
- PHP / MySQL (selon les dépendances de Leed)
- Leed (https://github.com/LeedRSS/Leed)


## Pré-requis

- Docker `sudo apt install docker`
- docker-compose `sudo apt install docker-compose`
- une connexion internet pour que l'image puisse récupérer le projet git de [Leed](https://github.com/LeedRSS/Leed).

## Installation
```shell
git clone XXX
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
cp .env.example .env
```
et le **compléter**.  

Il est possible de modifier :
- les ports exposé grace aux variables `WEB_PORT` et `BDD_PORT`
- le nom de la base de donnée
- le mot de passe de la base de donnée

## Lancement

```shell
docker-compose -f docker-compose-prod.yml up -d
```

L'appli est maintenant disponible au http://localhost sur le port choisis dans le fichier '.env'  
(par defaut : [localhost:8080](http://localhost:8080) )

## Parametrage de l'application

### Automatique 

```shell
chmod +x parametrageLeed.sh && ./parametrageLeed.sh
```

### Manuelle
Afin de le paramétrer correctement, entrer : 

- Hote : bdd
- Identifiant : root
- Mot de passe : {mot de passe du fichier .env}
- Base : {nom de la base du fichier .env}

Puis créer un compte Administrateur

### Arret

```shell
docker-compose -f docker-compose-prod.yml down
```


## 🧑‍🎓 Auteur
Quentin Calpetard  
Étudiant en 3e année de [BUT Informatique, Parcours Réalisation d'applications : conception, développement, validation](https://formations.univ-grenoble-alpes.fr/fr/catalogue-2021/but-bachelor-universitaire-de-technologie-BUT/but-informatique-grenoble-KI4UEV4Y/parcours-realisation-d-applications-conception-developpement-validation-KI4UEV90.html)    
à l'IUT 2 de l'[UGA](https://www.univ-grenoble-alpes.fr/)