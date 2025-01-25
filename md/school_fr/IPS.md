Conception d'une carte électronique permettant l'asservissement d'un système de chauffage contrôlé par IHM.

Le principe du projet était de créer un système de chauffage simple, une résistance devait être contrôlée et asservie afin que sa température atteigne la température de commande. Un microcontrôleur avait pour but de contrôler l'asservissement et de gérer la logique de la carte. Le reste des composants avaient pour rôle de fournir des fonctions supplémentaires au microcontrôleur (filtre, capteurs de température).

Le système asservi était contrôlé par une IHM qui devait à la fois fournir un signal de commande à la carte mais aussi afficher un graphique montrant l'évolution de la température. La carte a été modélisé sur le logiciel Eagle, l'IHM a été fait en Python et la logique du microcontrôleur a été écrite en C.

![IPS](img/ips.png)
_Schéma block de la structure de la carte_
