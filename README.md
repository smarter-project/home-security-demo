# Smart-home security demo using AI - LLMs

## Motivation

A demo using LLM At the edge as part of home security application

## Usage

Charts that install the demo at a k3s cluster

helm install --set "home-ha-mock.configuration.urlLog=http://alexandre-main.internal/state_replay.log" home-security-demo charts/home-security-demo
