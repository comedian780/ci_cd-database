# ci_cd-database

Buildbefehl:
```(bash)
docker build -t ci-cd-db
```

Startbefehl:  
Falls schon eine MySQL-Instanz auf dem Hostsystem läuft, muss auf einen anderen Port weitergeleitet werden

```(bash)
docker run -d --restart always --network=parcelnetwork --name=parcel-db ci-cd-db
```
