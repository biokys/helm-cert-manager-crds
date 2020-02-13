#!/bin/bash

curl https://raw.githubusercontent.com/jetstack/cert-manager/master/deploy/manifests/00-crds.yaml > cert-manager-crds/templates/crds.yaml

echo "Done! Be sure to update the app version in the helm chart"
