# Méthode des éléments finis


## Introduction

- Date des années 1960
- Permit par le dvpt des ordinateurs
- "Finite Element Notebook" H.Kardestuncer et D.H Norrie 

## Problèmes physiques, modèles mathématiques et solution par la méthode des éléments finis

![Schéma_processus](img/sherbrooke/elements_finis/process.png)
	*Le processus d’une analyse par la Méthode des Éléments Finis*

Utilisation de l'ordinateur.
Comment utiliser l'ordinateur pour  résoudre des problèmes ?

Première étape dans la conception de produits.
Un partie parmi la chaine.

![Schéma_conception](img/sherbrooke/elements_finis/conception.png)

## Vecteurs , Matrices et Tenseurs

### Matrice : Tableau de nombres ordonnés.
#### Matrice symétrique : 
- Carré 
- Egale à sa transposée => a~ij~ = a~ji~
#### Matrice bandes :
- Elements nuls (zéros) à l'extérieurs de la bande. Tient du dernier éléments non nuls
- Permet de se stocker plus facilement dans la mémoire d'un ordinateur
	Valeurs dans la bande + Largeur de Bande
#### Multiplication
Nombre de lignes de la première doit être égal au nombre de colonnes de la deuxième
A [m*n] * B [n * k] = C [m * k ]

Non commutativité

Multiplier une matrice par une constante => multiplier chaque terme

Associativité
(A + B) * C = AC + BC
(AB) * C = A * (BC)

A^4^ = A^2^*A^2^

V^T^AV = est un scalaire. Avec A une matrice et V un vecteur.
Cette opération est le quotient de **Raylai**

Ou 
A = U + D + U^T^ avec U la matrice triangle inférieure

(AB)^T^= B^T^A^T^

![inversion de matrice 2x2](https://lh6.googleusercontent.com/proxy/kch7dnuS0OYy8jJJPMr0KTNQFOQG9fhfgd5hngn2ej0s6ENpUbqvborpSWeAOSNWbkJMKjyD3FrIE7Ubd548DJx3swbL)
*inversion d'une matrice 2x2*


#### Partition des matrices

La partition est une séparation de la matrice en block. Cette séparation est choisie arbitrairement pour simplifier un problème.

#### Trace d'une matrice

C'est la somme des éléments sur la diagonale principale.

Des matrices peuvent être **instables** numériquement lorsqu'il y a des éléments avec un écart importaant

#### Vecteurs linéairement dépendants 

Des vecteurs sont linéairement indépendants si la combinaison linéaire de ces vecteurs est nulle si chaque coefficient est égal à zéro.

Triangulariser la matrice.
Voir exemple 2.22 du poly de cours.