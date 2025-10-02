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

======================================================================================================

✅ Day 1 – Core Setup & Foundation

Goal: Build your base Terraform workflow and understand GCP structure.

Hands-on Tasks:

Create a new Terraform project structure (prod and dev env folders)

Configure remote state in GCS (with separate prefix for prod/non-prod)

Use google provider with service account auth

Create:

VPC

Subnet

Firewall rule (allow SSH or HTTP)

Interview Angle:

Explain Terraform workflow (init/plan/apply)

State file handling & remote backends

✅ Day 2 – Compute Engine (GCE)

Goal: Deploy VMs using Terraform with production-like settings.

Hands-on Tasks:

Create VM with:

Custom machine type

Startup script

External & internal IP

SSH keys

Create Instance Template + Managed Instance Group (MIG)

Add autoscaling

Real Scenario:
“Create web server VMs in non-prod and prod using different machine types.”

✅ Day 3 – Storage + IAM + Service Accounts

Goal: Secure access and storage for apps.

Hands-on Tasks:

Create Cloud Storage buckets (dev vs prod naming)

Enable versioning & lifecycle rules

Create Service Accounts

Attach IAM roles via Terraform

Grant GCS access to specific VMs

Real Scenario:
“Backend app writes logs to a bucket — secure using IAM & SA.”

✅ Day 4 – GKE (Google Kubernetes Engine)

Goal: Deploy Kubernetes infra using Terraform.

Hands-on Tasks:

Create a GKE private/public cluster

Node pools (prod vs non-prod settings)

Enable Workload Identity or basic SA authentication

Use Terraform output to get kubeconfig

Real Scenario:
“Deploy app clusters with different node sizes for staging and prod.”

Interview Topics:

GKE auth

Private clusters

Node pools

✅ Day 5 – Cloud SQL + Networking

Goal: Deploy DB securely.

Hands-on Tasks:

Create PostgreSQL/MySQL Cloud SQL instance

Private IP connectivity

Database + user creation

Add firewall rules / VPC connectors

Real Scenario:
“App in GKE connects to Cloud SQL privately.”

✅ Day 6 – Cloud Functions + Cloud Run + Pub/Sub

Goal: Work on serverless workloads.

Hands-on Tasks:

Deploy Cloud Function (HTTP + Pub/Sub trigger)

Deploy a service on Cloud Run

Create Pub/Sub topic & subscription

Real Scenario:
“Trigger function when file uploaded in bucket.”

✅ Day 7 – CI/CD + Mock Interview + Project Review

Goal: Wrap up + interview preparation.

Tasks:

Write a reusable Terraform module

Create a simple CI/CD pipeline (GitHub Actions/Cloud Build)

Practice:

terraform plan approvals

Workspace-based deployments

Mock interview topics:

State mgmt

Modules

Provisioners

Error handling

Real-time troubleshooting

Deliverables:

1 mini-project (end to end infra)

Interview answers ready