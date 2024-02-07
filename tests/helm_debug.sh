#!/usr/bin/env bash

helm dependency update
helm template test . -f ./Values.yaml --debug --dependency-update --render-subchart-notes