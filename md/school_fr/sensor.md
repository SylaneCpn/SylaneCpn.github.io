Communication de différents capteurs controllés par des cartes STM32,reliés en liaison CAN (Controller Area Network) à un IHM permettant à un opérateur de visualiser les valeurs.

Le but du projet est de configurer un ensemble de micro-contrôleurs sur lesquels se trouvent différents capteurs (température, luminosité, pression atmosphérique, gyroscope, etc...) et de les relier ensemble dans un réseau de bus CAN (Controller Area Network). Les cartes sont interrogés par une IHM qui envoie des requêtes puis récupère les réponses et affiche les données.

[Plus d'infos ici](https://web.enib.fr/~kerhoas/rescapt_cours_index.html)

![CAN](img/CAN.jpg)
_Une photo de l'IHM conçu lors du projet_