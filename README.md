# ci_cd-database

Buildbefehl:
```
docker build -t ci-cd-db
```

Startbefehl:  
Falls schon eine MySQL-Instanz auf dem Hostsystem läuft, muss auf einen anderen Port weitergeleitet werden

```
docker run -d --restart always -p 3306:3306 --name=parcel-db ci-cd-db
```
