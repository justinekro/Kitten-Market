# Avant toute chose...

## On crée sa branche

* git checkout -b « ma-branche » 

* on fait les modif 

Une fois qu'on est content :

* `git add .`

* `git commit -m « nouvelle modif sur ma-branche »`

## On merge avec sa branche, mais avant...

* On check avec les autres qu’ils n’ont pas fait des modifs sur master 

* `git checkout master`

* `git pull origin master` (on met à jour son master  avec la dernière version)

* `git merge ma-branche` (on fusionne les deux branches)

* `git push origin master` (on pousse sur master)


A ce moment, un message chelou s’affiche, keskonfé ???

* Appuyer "i"

* Ecrire le message de merge "Merge of master and ma-branche"

* Appuyer sur "esc"

* Ecrire ":wq"

* Appuyer sur enter

* `branch -d ma-branche` On supprime sa branche, c'est plus clean :)

## Tout le monde fait un pull origin master pour être à jour

# Suivi du projet

- [x] Done 
- [ ] To Do

* L'ensemble des fonctionnalités de base ont été réalisées

* Installations réussies de MailJet et de l'Action Mailer. Utilisez votre adresse email lors du sign up !

* Création d'un profil administrateur qui permet d'ajouter et editer des chatons. L'administrateur à également accès a l'historique des commandes de l'ensemble des utilisateurs.

* Identifiants du compte administrateur:

* Utilisation de la librairie paperclip pour stocker les images à distance. Les images lors de l'ajout d'un nouveau chaton via le compte Admin sont stockées via le service Amazon AWS S3 Account et redimensionnées grace à ImageMagick. Il est possible d'obtenir le lien de l'image stockée sur amazon en utilisant l'inspecteur de votre navigateur.

* Installation de la gem stripe pour effectuer les paiements. N'hésitez pas a commander nos plus belles photos de chatons !



