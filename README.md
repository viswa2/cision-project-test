# cision-project-test
This is all about cision project devops test

Dockerfile for nginx 1.19
Write a Dockerfile to run nginx version 1.19 in a container. Choose a base image, considering security best practices, and aim for the image to pass a container image security test

`Ans:` Added Dockerfile in the repo root folder.

Kubernetes StatefulSet
Write a Kubernetes StatefulSet to deploy the nginx container from the previous question. Utilize persistent volume claims and define resource limits for optimal performance.

`Ans:` Added under `cision-project-test/stateful-set/statefulset.yaml`

Build a Deployment Pipeline
Set up a streamlined build and deployment pipeline for the nginx application using GitHub Actions or an equivalent CI/CD tool. Ensure the pipeline covers building the Docker image, running security checks, and deploying to a Kubernetes cluster.

`Ans:`  `Added repo in k8s/deployment.yaml & .github/workflows/ci-cd.yaml`

