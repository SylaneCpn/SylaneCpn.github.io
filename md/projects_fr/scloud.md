SCloud est mon premier pas dans le développement d'applications fullstack.

Comme son nom l'indique, SCloud est un Cloud c'est une application qui permet de mettre à disposition des fichiers en ligne afin de pouvoir les stocker et les récupérer depuis n'importe quel appareil.

SCloud dispose des fonctionnalités suivantes :

* Envoi de fichier sur le Cloud
* Téléchargement des fichiers présents sur le cloud
* Consultation le contenu des fichier sur le Cloud ( Texte,Image,Vidéo,PDF,etc... )
* Authentification pour garder du contenu personnel

L'application comprend 2 parties :

* Un client sous forme d'interface utilisateur
* Un serveur

Le programme serveur s'occupe de la gestion des fichiers et des utilisateurs, il doit tourner sur l'ordinateur sur lequel on souhaite stocker les fichiers.Il viendra fournir au client (s' il en à l'autorisation) les fichiers qu'il demande.

Le client quant à lui va se charger de demander les ressources voulues au serveur, Il fournit un moyen agréable de naviguer dans l'arborescence de fichiers.

Si vous voulez voir par vous même comment ça marche vous pouvez accéder à la version hébergée sur mon Raspberry PI :)
Vous pouvez accéder à la version web [ici](https://sylcpn.ddns.net).
Ou télécharger la version adaptée à votre système [ici](https://github.com/SylaneCpn/SCloudUI/releases/latest) ( Attention !!! Je n'ai pas la possibilité de tester le fonctionnement de l'application pour Mac et IOS, il faudra se contenter de la version Web pour vous. Désolé...)
En mode invité les fonctionnalités sont limitées,il est impossible de supprimer des fichier du serveur ou de rennomer une ressource.
J'ai mis a disposition un compte spécial pour pouvoir aller plus loin avec l'application sans avoir à créer manuellement une session avec tout le monde.
Vous pouvez donc vous connecter avec l'utilisateur "Community" et le mot de passe "4ALL" pour pouvoir jouer avec le dossier public. Il est à disposition pour tout le monde! N'hésitez pas à partager des choses !

Le client à été développé à l'aide du Framework [Flutter](https://flutter.dev) afin de pouvoir développer facilement une application multiplateforme en bénéficiant d'une fantastique expérience développeur.
Le serveur à été réalisé en Rust avec l'aide de la crate [Axum](https://docs.rs/axum/latest/axum/).

Le projet à été réalisé en intégralité par moi même et est disponible sur mon Github. Il est complètement possible d'héberger soi-même le serveur pour avoir un Cloud personnel (même si je recommande de choisir une solution plus complète que la mienne) ! N'hésitez pas à me contacter par mail si vous avez besoin d'aide :)

Lien du repo serveur :[https://github.com/SylaneCpn/](https://github.com/SylaneCpn/SCloud)

Lien du repo client : [https://github.com/SylaneCpn/SCloudUI/](https://github.com/SylaneCpn/SCloudUI/)



