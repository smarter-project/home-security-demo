# security mvp2

This chart deploys security mvp2 components.
It assumes that smarter-edge is installed.

For more information on smarter go to https://getsmarter.io

## TL;DR

```console
helm install --create-namespace --namespace mvp2 security-mvp2  security-demo-mvp2
```

# Overview

The scureiry mpv2 uses ML models to demonstrate a home security application.

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

# Notes

- Make sure you set both the common parameters for things to work properly.
