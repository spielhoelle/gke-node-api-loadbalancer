# GKE node-typescript api kubernetes example


Build

`docker build --progress=plain --build-arg CACHEBUST=$(date +%s) -t spielhoelle/node-api .`

Kick-off


`docker run --name node-api -p 3000:3000 spielhoelle/node-api`
```
⚡⚡⚡️️️️️️️️️ Server is running at http://localhost:3000
```
You can try:
```
$ curl http://localhost:3000
Response from GKE node server container
```