Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

# Notifications

## Step 1 - creation model --> Model

nom : Notification
colonnes :
  bet room ref
  user ref
  action (ex: 'event_created', 'message_sent')
  read (boolean, default: false)

ajouter un has_many notifs sur le user et la bet room

## Step 2 - creer des notifs --> Controller

- sur la creation d'un event
- sur la creation d'un message

## Step 3 - afficher les notifs --> View

page listing bet rooms, pour chaque bet room

récuperer les notifs :
- de la bet room
- pour le current user
- qui sont non lues

Afficher le nombre

## Step 4 - marquer comme lu

controller bet room, sur la show de la bet room

récuperer les notifs :
- de la bet room
- pour le current user
- qui sont non lues

les marquer comme lues

---

# API

## Step 1 - creation de l'event (pari)

Leagues
https://www.thesportsdb.com/api/v1/json/1/all_leagues.php
-> selectionne un league id
-> on le stocke dans la table events, colonne thesportdb_league_id

Next events per league
https://www.thesportsdb.com/api/v1/json/1/eventsnextleague.php?id=4328
-> selectionne un event id
-> on le stocke dans la table events, colonne thesportdb_event_id

## Step 2 - results

Details event
https://www.thesportsdb.com/api/v1/json/1/lookupevent.php?id=603734
-> on récupere intHomeScore et intAwayScore
-> on en deduit si le results est true ou false
-> on met a jour le results de l'event


## TODO

- ajouter les 2 colonnes dans la table events, de type integer (OK)
- aller en rails c, prendre un event, le mettre a jour avec un vrai thesportdb_event_id et league id (OK)
- coder le service
- le tester en rails c avec l'event modifié
