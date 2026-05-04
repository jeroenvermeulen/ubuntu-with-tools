# Ubuntu Docker image with developer tools.

- [Docker Hub](https://hub.docker.com/repository/docker/jcmvermeulen/ubuntu-with-tools/general)

## Quickly run in Docker
```
docker run -it jcmvermeulen/ubuntu-with-tools bash
```

## Quickly run in Kubernetes
Uses the `default` namespace
```
kubectl apply -f https://raw.githubusercontent.com/jeroenvermeulen/ubuntu-with-tools/refs/heads/master/k8s-pod-amd64.yaml
kubectl get -n default pods ubuntu-with-tools
```
