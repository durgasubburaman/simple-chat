# simple-chat
Simple container-based web chat application

## Overview
The simple chat is composed of three services:

- A redis database
- [A simple http API wrote in Golang](https://github.com/jcorioland/simple-chat-api)
- [A basic web front wrote in ASP.NET Core 1.0](https://github.com/jcorioland/simple-chat-client)

## Running the simple chat

### Local Environment

TODO

### Kubernetes

Create the namespaces:

```bash
kubectl apply -f kubernetes/namespaces.yaml
```

Deploy the application:

```bash
kubectl apply -f kubernetes/simple-chat.yaml
```

### Docker Swarm

TODO
