# EFK stack Helm Chart

## Intro
 1. This project includes everything (we) needed in order to install the EFK stack on our Kubernetes cluster:
 2. Elasticsearch
 3. Kibana
 4. Fluentd
 5. Java multi-line log correct filtering (fluentd)
 6. ECK — Elastic Cloud for Kubernetes (Operator)
 7. Built-in imported data-view & dashboards (details on the following [article](https://medium.com/develeap/auto-load-objects-to-kibana-elasticsearch-stack-2nd-edition-d5a4fe75bd40))

More details on the following [article](https://medium.com/@giladneiger/eck-stack-efk-one-click-installation-e5cabe430b5c)

#
## Requirements:
 1. Helm 3
 2. Kubernetes config file configured to the cluster
#
## Install
For a fast & easy installation run:

`./install.sh -n logging -p YOURPWD`
#
## Uninstall

To uninstall the stack, run:

`./uninstall.sh -n logging`
