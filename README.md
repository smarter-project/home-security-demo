# Smart-home security demo using AI - LLMs

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/home-security-demo)](https://artifacthub.io/packages/search?repo=home-security-demo)

## Motivation

A demo using LLM At the edge as part of home security application

## Usage

Charts that install the demo at a k3s cluster

```
helm repo add home-security-demo https://smarter-project.github.io/home-security-demo/
helm install \
     --set "home-ha-mock.configuration.urlLog=<URL to download replay lag>" \
     --set "home-ha-mock.configuration.model=llama3.2-vision:latest" \
     --set "home-orchestrator.configuration.ollamaVersion=0.6.0" \
     --set "home-orchestrator.configuration.model=llama3.2-vision:latest" \
     --set "home-orchestrator.configuration.hostVolumePath=/srv/shared-container-volumes/ollama" \
     <local name> home-security-demo/home-security-demo
```
home-ha-mock.configuration.urlLog is required since there is no default value and the log is not present on the container image.

home-ha-mock.configuration.model is not required since the default is to use the model llama3.2-vision:latest.

home-orchestrator.configuration.ollamaVersion by default uses latest but if already downloaded will not update, If you want a particular version set it here.

home-orchestrator.configuration.model is not required since the default is to use the model llama3.2-vision:latest. It sets the model that will be preloaded.

home-orchestrator.configuration.hostVolumePath by "/srv/shared-container-volumes/ollama" (correct for linux hosts but for MacOS use /opt/shared-container-volumes/ollama).

