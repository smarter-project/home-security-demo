# security mvp2

This chart deploys home security demo mvp2 components.

## TL;DR

```console
helm repo add home-security-demo https://smarter-project.github.io/home-security-demo/
helm install \
     --create-namespace --namespace <namespace to use> \
     --set "home-ha-mock.configuration.urlLog=<URL to download replay lag>" \
     --set "home-ha-mock.configuration.model=llama3.2-vision:latest" \
     <local name> home-security-demo/home-security-demo
```

home-ha-mock.configuration.urlLog is required since there is no default value and the log is not present on the container image.

home-ha-mock.configuration.model is not required since the default is to use the model llama3.2-vision:latest.


# Overview

The home security mpv2 uses ML models to demonstrate a home security application replaying events from home assistant.

# Prerequisites

This chart assumes a full deployment of k3s with traefik, etc.

* k3s 1.25+
* Helm 3.2.0+

# Uninstalling the Chart

```
$ helm delete <local name> --namespace <namespace used>
```

# Parameters

## Common parameters

| Name | Description | Value |
| ---- | ----------- | ----- |
| home-ha-mock.configuration.urlLog | URL to download replay log from | | 
| home-ha-mock.configuration.model | Model to be used, need to be supported by ollama | llama3.2-vision:latest | 

