Conception d'une carte éléctronique permettant l'asservissement d'un système de chauffage controllé par IHM.

Le principe du projet était de créer un système de chauffage simple, une resistance dévait être contrôlée et asservie afin que sa temérature atteigne la température de commande. Un micro-contrôleur avait pour but de contôler l'asservissement et de gérer la logique de la carte. Le reste des composants avaient pour rôle de fournir des fonctions suppléméntaires au micro-contrôleur (filtre, capteurs de température).

Le système asservi était contrôlé par une IHM qui devait à la fois fournir un signal de commande à la carte mais aussi afficher un graphique montrant l'évolution de la température. La carte à été modélisé sur le logiciel Eagle, l'IHM à été fait en Python et la logique du micro-contrôleur à été écrite en C.

![IPS](img/ips.png)
_Schéma block de la structure de la carte_