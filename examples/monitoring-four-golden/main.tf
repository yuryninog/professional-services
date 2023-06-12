# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

provider "google" {

}

module "dashboard" {
  source = "./modules/dashboard"

  project_id           = var.project_id
  dashboard_name       = var.dashboard_name
  metric_saturation    = file("./metrics/traffic/gke_traffic.json")
  metric_traffic       = file("./metrics/error/gke_traffic.json")
  metric_latency       = file("./metrics/error/gke_traffic.json")
  metric_error         = file("./metrics/error/gke_traffic.json")
}