# Smart-home security demo using AI - LLMs

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/home-security-demo)](https://artifacthub.io/packages/search?repo=home-security-demo)

## Motivation

A demo using LLM At the edge as part of home security application

## Usage

Charts that install the demo at a k3s cluster

helm repo add home-demo https://smarter-project.github.io/homer-security-demo
helm install --set "home-ha-mock.configuration.urlLog=http://alexandre-main.internal/state_replay.log" home-security-demo home-demo/home-security-demo
