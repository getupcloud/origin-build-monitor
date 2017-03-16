#!/bin/bash

oc -n getup new-app -f
https://raw.githubusercontent.com/getupcloud/origin-build-monitor/master/origin-build-monitor.yaml
--param=CLIENTNAME=$1

oc -n getup policy add-role-to-user edit -z default
