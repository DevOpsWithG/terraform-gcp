## Terraform-GCP

### Week 1: Foundations & Networking

```Objective:``` Strong grip on Terraform basics + GCP IAM and Networking.

- **Terraform basics:** provider config, state files, workspaces, modules, variables.

- **IAM:** Service accounts, roles, least privilege.

- **Networking:** VPC, subnets, firewall, routes, NAT, peering.

### Hands-on Scenarios:

- Multi-environment IAM setup with Terraform.

- Create separate VPCs for dev/prod, connect them with peering.

- Secure private VM internet access using Cloud NAT.

Week 2: Compute & Storage

Objective: Deploy scalable workloads with Terraform.

Compute Engine: VMs, MIGs, startup scripts.

Storage: GCS buckets, lifecycle rules, versioning.

Load Balancing: HTTP(S), TCP, SSL certs.

Hands-on Scenarios:

Auto-healing web app on MIG behind HTTPS load balancer.

Bucket with logs + lifecycle rules (30-day archival).

Multi-region failover load balancing setup.

Week 3: Databases & Containers

Objective: Data + containerized workloads on GCP.

Cloud SQL: Instances, replicas, private IP.

Spanner & BigQuery (intro-level, for SRE/DevOps view).

GKE: Cluster creation, node pools, autoscaling.

Hands-on Scenarios:

GKE cluster with Terraform + deploy app using kubectl.

Cloud SQL backend + GKE frontend with private connectivity.

BigQuery dataset fed from GCS logs (ETL-lite pipeline).

Week 4: Advanced Real-Time Scenarios

Objective: Tie everything together, prepare for interviews.

Monitoring & Logging: Cloud Monitoring alerts, log sinks to GCS.

CI/CD with Terraform: Cloud Build pipeline for IaC deployments.

Multi-environment management: Workspaces, variable files, remote state.

Hands-on Final Project:

3-tier app:

Frontend → GKE

Backend → Cloud SQL

Storage → GCS

LB + IAM + Monitoring + CI/CD with Terraform

Blue-green deployment with Terraform workspaces.
