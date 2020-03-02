Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


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
- aller en rails c, prendre un event, le mettre a jour avec un vrai thesportdb_event_id et league id
- coder le service
- le tester en rails c avec l'event modifié
