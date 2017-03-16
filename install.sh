#!/bin/bash

set -exu

oc -n getup new-app -f origin-build-monitor.yaml --param=CLIENTNAME=$1

oc -n getup policy add-role-to-user edit -z default
