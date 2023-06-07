# Mon Suivi Social Migration

Projet de migration de la base de données de Mon Suivi Social de [monsuivisocial-app](https://gitlab.com/incubateur-territoires/startups/monsuivisocial/monsuivisocial-app) vers la [mon-suivi-social](https://github.com/inclusion-numerique/mon-suivi-social).


dump de la base de données distante

```sh
npm run dump
```

prepare la base de données en local

```sh
npm run prepare
```

restauration de la base de données en local pour la migration

```sh
npm run restore
```

génération des fichier sql de migration

```sh
npm run gen-migration
```

appliquer les fichiers de migration

```sh
npm run migrate
```

## util

```sh
pg_dump postgresql://mss:password@localhost:5433/mss --data-only -n public -Fc > ./dumps/migrated.dump
```

```sh
pg_restore -d "postgresql://user:password@localhost:5435/db?sslmode=require" -e -Fc --no-owner -n public ./dumps/migrated.dump
```
