# ECK stack Helm Chart

Requirements:
 1. Helm 3
 2. Kubernetes config file configured to the cluster

For a fast & easy installation run:
 1. `cp install.sh ../`
 2. `cd ..`
 3. `./install.sh -n logging -p YOURPWD`


To uninstall the stack, run:
 1. `cp uninstall.sh ../`
 2. `cd ..`
 3. `./uninstall.sh -n logging`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| elasticsearch.data.replicas | int | `3` |  |
| elasticsearch.data.volume.size | string | `"100Gi"` |  |
| elasticsearch.data.volume.storageClass | string | `"gp2"` |  |
| elasticsearch.httpService.name | string | `"elasticsearch-es-http"` |  |
| elasticsearch.httpService.port | int | `9200` |  |
| elasticsearch.httpService.scheme | string | `"http"` |  |
| elasticsearch.httpService.sslVerify | bool | `false` |  |
| elasticsearch.master.replicas | int | `1` |  |
| elasticsearch.master.volume.size | string | `"10Gi"` |  |
| elasticsearch.master.volume.storageClass | string | `"gp2"` |  |
| elasticsearch.resources.limits.cpu | int | `2` |  |
| elasticsearch.resources.limits.memory | string | `"4Gi"` |  |
| elasticsearch.service.name | string | `"elasticsearch"` |  |
| elasticsearch.version | string | `"8.4.0"` |  |
| fluentd.config.name | string | `"fluentdconfig"` |  |
| fluentd.service.name | string | `"fluentd"` |  |
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| kibana.apiService.name | string | `"kibana-kb-http"` |  |
| kibana.apiService.port | int | `5601` |  |
| kibana.secret.name | string | `"elasticsearch-es-elastic-user"` |  |
| kibana.secret.pwd | string | `nil` |  |
| kibana.secret.user | string | `"elastic"` |  |
| kibana.service.name | string | `"kibana"` |  |
| kibana.service.port | int | `5601` |  |
| kibana.service.targetPort | int | `5601` |  |
| kibana.service.type | string | `"NodePort"` |  |
| kibana.version | string | `"8.4.0"` |  |
| nameOverride | string | `""` |  |

----------------------------------------------
