# Azure - Kubernetes NGINX ingress Module

## Introduction

This module will install an NGINX ingress module into an AKS cluster.  This is largely to bridge the gap between AzureDNS/Azure Static IP/AKS.
<br />

<!--- BEGIN_TF_DOCS --->
## Providers

| Name | Version |
|------|---------|
| helm | >= 1.2.4 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| additional\_yaml\_config | yaml config for helm chart to be processed last | `string` | `""` | no |
| enable\_default\_tls | enable default tls (entry secret name) | `bool` | `false` | no |
| helm\_chart\_version | helm chart version | `string` | `"3.4.1"` | no |
| helm\_release\_name | helm release name | `string` | n/a | yes |
| helm\_repository | nginx-ingress helm repository url | `string` | `"https://kubernetes.github.io/ingress-nginx"` | no |
| ingress\_class | name of the ingress class to route through this controller | `string` | `"nginx"` | no |
| kubernetes\_create\_namespace | create kubernetes namespace | `bool` | `true` | no |
| kubernetes\_namespace | kubernetes\_namespace | `string` | `"default"` | no |
| load\_balancer\_ip | loadBalancerIP | `string` | n/a | yes |
| replica\_count | The number of replicas of the Ingress controller deployment. | `number` | `1` | no |
| tls\_default\_secret | k8s secret containing crt/key for default tls certificate (format is {namespace}/{secret}) | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| ingress\_class | Name of the ingress class to route through this controller |
<!--- END_TF_DOCS --->
