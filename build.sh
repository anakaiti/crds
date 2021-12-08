#!/usr/bin/env bash
rm output/*
kubectl get crd -ojson >crds.json
jsonnet -m output export.jsonnet
