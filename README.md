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