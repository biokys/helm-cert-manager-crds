#!/bin/bash

version="$1"
if [ -z "$version" ]; then
    echo "Usage: update.sh version"
    exit 1
fi

curl "https://raw.githubusercontent.com/jetstack/cert-manager/release-$version/deploy/manifests/00-crds.yaml" > cert-manager-crds/templates/crds.yaml
git add .
git commit -a -m "Update CRDs to version $version"
git tag "$version"

echo "Done!"
