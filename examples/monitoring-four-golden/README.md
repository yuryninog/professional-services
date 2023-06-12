# Golden Four Metrics 

This repository contains Terraform code to provision a Four Golden Metrics Dashboard in Google Cloud 
Monitoring.

## Instructions

Since that this repository has a module in Terraform, the only thing that you need is to provide the 
path of the four metrics that you want to include in the dashboard.

The metrics are available in the folder metrics, located in this project. The path must be specified 
as it is explained in the next table.

## Environment Variables

| Variable | Description | Description | Example |
|------|-------------|:--------:|
| project_id | The project ID that hosts the dashboard in GCP. | `string` | new_project |
| dashboard_name | A title for the dashboard. | `string` | Four Golden Metrics |
| metric_saturation | The path of the saturation metric that you want to include. | `string` | file("./metrics/traffic/gke_traffic.json") |
| metric_traffic | The path of the traffic metric that you want to include. | `string` | file("./metrics/traffic/gke_traffic.json") |
| metric_latency | The path of the latency metric that you want to include. | `string` | file("./metrics/traffic/gke_traffic.json") |
| metric_error | The path of the error metric that you want to include. | `string` | file("./metrics/traffic/gke_traffic.json") |

## References


