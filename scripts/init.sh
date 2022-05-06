#!/bin/sh
oc apply -k $(dirname $0)/../pre-req/istio-system-ns/
oc apply -f $(dirname $0)/openshift-gitops-ns-application.yml