# GKE node-typescript api kubernetes example


Build

`docker build --progress=plain --build-arg CACHEBUST=$(date +%s) -t spielhoelle/node-api .`

Push

`docker push spielhoelle/node-api:latest`

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


## K8

`kubectl create -f deployment.yml`

`kubectl expose deployment node-api-k8 --type=NodePort --name=node-api-svc --target-port=3000`

`minikube ip`

`kubectl get svc`

`minikube dashboard`

`minikube service node-api-svc`
or
`kubectl port-forward svc/node-api-svc 3000:3000`