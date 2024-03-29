# efk-stack

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| elasticsearch.auth.disabled | bool | `true` |  |
| elasticsearch.data.replicas | int | `1` |  |
| elasticsearch.data.volume.size | string | `"10Gi"` |  |
| elasticsearch.data.volume.storageClass | string | `"gp2"` |  |
| elasticsearch.http.tls.disabled | bool | `false` |  |
| elasticsearch.master.replicas | int | `1` |  |
| elasticsearch.master.volume.size | string | `"10Gi"` |  |
| elasticsearch.master.volume.storageClass | string | `"gp2"` |  |
| elasticsearch.resources.limits.cpu | string | `"300m"` |  |
| elasticsearch.resources.limits.memory | string | `"1Gi"` |  |
| elasticsearch.version | string | `"8.5.0"` |  |
| fluentd.config.name | string | `"fluentdconfig"` |  |
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| kibana.http.tls.disabled | bool | `true` |  |
| kibana.password | string | `nil` |  |
| kibana.service.port | int | `5601` |  |
| kibana.service.targetPort | int | `5601` |  |
| kibana.service.type | string | `"NodePort"` |  |
| nameOverride | string | `""` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
