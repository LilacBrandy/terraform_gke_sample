# Terraform Sample: Google Kubernetes Engine (GKE)

This repo is designed to be used as a starting point for running your container-based workloads on
GKE.

## What does it do?

It deploys a Kubernetes cluster with pre-emptible nodes on GKE which runs nginx. It sets up a load
balancer for handling ingress into the cluster.

## Getting started

1. Setup a service account on Google Cloud with permissions to create compute resources as well as
   Kubernetes based work. For simplicity, if you're in a sand-boxed environment, give the service
   account "Owner" level permissions. Otherwise use good habits and assign the least amount of
   privilege to the service account.
1. Store the downloaded json file which contains access keys in your repo, and update the file
   `terraform.tfvars` with your filename for the credentials and at the same time, update your
   project name.
1. Run `terraform plan` to confirm what is going to be deployed.
1. Run `terraform apply` to deploy the cluster.
1. [Optional] You may choose another region if you don't want to use `australia-southeast1` which is
   the default as it's closest to me.
1. Authenticate to the cluster and deploy the services using kubectl. Eg, `kubectl apply -f deployment.yml`

Done! After the pods are ready, and the ingress load balancer created, you'll be done and ready to
see your pods running on the live internet. Congratulations!

## Contributing!

Found a problem or want to make an improvement? Please do. Fork the repo, commit your change and
then create a pull request to get the ball rolling.
