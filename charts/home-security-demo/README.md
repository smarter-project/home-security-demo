# security mvp2

This chart deploys home security demo mvp2 components.

## TL;DR

```console
helm repo add home-security-demo https://smarter-project.github.io/home-security-demo/
helm install --create-namespace --namespace <namespace to use> --set "home-ha-mock.configuration.urlLog=<URL to download replay lag>" home-security-demo/home-security-demo
```

# Overview

The home security mpv2 uses ML models to demonstrate a home security application replaying events from home assistant.

# Prerequisites

This chart assumes a full deployment of k3s with traefik, etc.

* k3s 1.25+
* Helm 3.2.0+

# Uninstalling the Chart

```
$ helm delete security-mvp2 --namespace mpv2
```

# Parameters

## Common parameters

| Name | Description | Value |
| ---- | ----------- | ----- |
| home-ha-mock.configuration.urlLog | URL to download replay log from | | 

