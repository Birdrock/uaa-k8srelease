#!/usr/bin/env bash

kubectl config set-credentials birdkube \
   --auth-provider=oidc \
   --auth-provider-arg=idp-issuer-url=https://uaa.uaa-acceptance.cf-app.com/ \
   --auth-provider-arg=client-id=birdkubeclient \
   --auth-provider-arg=client-secret=birdkubeclientsecret \
   --auth-provider-arg=idp-certificate-authority=/Users/pivotal/.minikube/certs/oidc.pem \
   --auth-provider-arg=refresh-token="${REFRESH_TOKEN}" \
   --auth-provider-arg=id-token="${ID_TOKEN}"