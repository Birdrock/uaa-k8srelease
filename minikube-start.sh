#!/usr/bin/env bash

minikube start \
  --extra-config=apiserver.authorization-mode=RBAC \
  --extra-config=apiserver.oidc-issuer-url="${OIDC_PROVIDER_URL}" \
  --extra-config=apiserver.oidc-username-claim=email \
  --extra-config=apiserver.oidc-client-id=birdkubeclient \
  --extra-config=apiserver.oidc-ca-file=/etc/ssl/certs/oidc.pem \
  --extra-config=apiserver.oidc-groups-claim=scope