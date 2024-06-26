Un des pricipaux problèmes que j'ai avec l'écriture de programmes en C ou en C++ est la compilation.
Compiler en programme simple c'est facile. Mais dès lors qu'il y a plusieurs modules, la compilation devient vite fastidieuse avec
autant de commandes à saisir dans le terminal que de module à compilier. 

Une approche pour palier à cette difficulté est d'écrire un makefile qui fera compilera avec la commande `make` tous les fichiers sources nécessaires.  
C'est l'approche la plus efficace dans le cas de gros projets. Mais malheureusement ces makefile ne sont pas facile à écrire et comporte des difficultés qui ne sont pas simple à surmonter pour les débutants et les programmeurs manquant de familiarité avec le language.

C'est ici qu'intervient la Single Compilation Unit qui permet de fabriquer un executable et un invoquant une unique fois le compilateur. Le plus beau avec cette technique c'est qu'elle est incroyablement simple à mettre en place.  
Elle consiste simplement à regrouper tous nos fichiers `.c` dans un nouveau fichier source.

Nous allons illustrer ça par un exemple :

Imaginons les fichiers `foo.c` , `bar.c` , `baz.c` qui sont nos modules, et leurs fichiers d'en-tête respectifs `foo.h` , `bar.h` , `baz.h` ayant les contenus suivants:

```c
// foo.c

#include <stdio.h>
#include "foo.h"

void
foo(void) {
    printf("called foo\n");
}
```
```C
// bar.c

#include <stdio.h>
#include "bar.h"

void
bar(void) {
    printf("called bar\n");
}
```

```c
// baz.c

#include <stdio.h>
#include "baz.h"

void
baz(void) {
    printf("called baz\n");
}
```

 et les fichiers d'en-tête :

```c
// foo.h

#ifndef FOO_H
#define FOO_H

void
foo(void);

#endif
```

```c
// bar.h

#ifndef BAR_H
#define BAR_H

void
bar(void);

#endif
```

```c
// baz.h

#ifndef BAZ_H
#define BAZ_H

void
baz(void);

#endif
```
Créons maintenant un fichier `prog.c` qui appelle tous nos modules :

```c
// prog.c

#include "foo.h"
#include "bar.h"
#include "baz.h"

int
main(void) {
    foo();
    bar();
    baz();

    return 0;
}
```
En temps normal il faudrait comilier chaque fichier `.c` puis les lier à `prog.c` pour obenir un executable.
Au lieu de ça nous allons créer un dernier fichier  `main.c` avec le contenu suivant : 

```c
// main.c

#include "foo.c"
#include "bar.c"
#include "baz.c"
#include "prog.c"

```

A présent il ne reste plus qu'a exécuter la commande :

```bash

gcc main.c -o main

```

et hop ! L'exécutable `main` est apparu.
en l'excutant avec `./main` nous obtenons dans le terminal :

```

    called foo
    called bar
    called baz

```

Le programme s'est compilé et déroulé sans encombre !
Et en deux lignes de commande ! Il est désormais bien plus facile de compiler son code source.

Attention cepandant, cette technique nécessite que votre machine ait assez de mémoire pour pouvoir compiler tous les fichiers d'un coup !
Il vaut mieux éviter cette méthode pour les gros projets.
