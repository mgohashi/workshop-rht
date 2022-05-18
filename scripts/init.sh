#!/bin/sh
oc apply -k $(dirname $0)/../pre-req/istio-system-ns/ -n istio-system
oc apply -f $(dirname $0)/../pre-req/istio-system-ns/jaeger.yml -n istio-system
# sleep 200
oc apply -f $(dirname $0)/../pre-req/istio-system-ns/basic-smcp.yml -n istio-system
oc apply -f $(dirname $0)/../pre-req/openshift-gitops-ns/openshift-gitops-ns-application.yml -n openshift-gitops