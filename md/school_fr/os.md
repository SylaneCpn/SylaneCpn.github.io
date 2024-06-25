Réalisation d'un système d'exploitation pour carte NXP.

Le but de la conception est d'implémenter les fonctionalités principales attendues d'un système d'exploitation. En particulier le multitaches (avec la notion d'appels systèmes, l'allocation de mémoire et le changement de contexte, la gestion d'une queue de processus notamment fait par l'utilisation de sémaphores) et la gestions de périphériques (les drivers).

Au final nous obtenons un système capable de lancer plusieurs processus simultanément en évitant les disfonctionnements typiques tels que l'interblocage et la famine et de gérer un système de fichiers et d'autres drivers.