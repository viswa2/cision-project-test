# cision-project-test
This is all about cision project devops test

1. Dockerfile for nginx 1.19
Write a Dockerfile to run nginx version 1.19 in a container. Choose a base image, considering security best practices, and aim for the image to pass a container image security test

`Ans:` Added Dockerfile in the repo root folder.

2. Kubernetes StatefulSet
Write a Kubernetes StatefulSet to deploy the nginx container from the previous question. Utilize persistent volume claims and define resource limits for optimal performance.

`Ans:` Added under `cision-project-test/stateful-set/statefulset.yaml`

3. Build a Deployment Pipeline
Set up a streamlined build and deployment pipeline for the nginx application using GitHub Actions or an equivalent CI/CD tool. Ensure the pipeline covers building the Docker image, running security checks, and deploying to a Kubernetes cluster.

`Ans:`  `Added repo in k8s/deployment.yaml & .github/workflows/ci-cd.yaml`

4. Text Manipulation Problem
Choose or create a text manipulation problem that involves using awk, sed, tr, and/or grep. Solve the problem, considering efficiency and readability.

`Ans:` 
1: Clean log file (remove " and []) using sed

sed 's/["\[\]]//g' access.log > cleaned.log

2: Extract IP and HTTP status code using awk

awk '{print $1, $9}' cleaned.log

3: Filter only GET requests using grep

grep 'GET' cleaned.log > get_requests.log

4: Count occurrences of each status code using awk, sort, and uniq

awk '{print $9}' cleaned.log | sort | uniq -c | sort -nr

5. Text Manipulation with an Object Orientated Programming Language
Solve the text manipulation problem from the previous question using any Object Orientated Programming language of your choice. Provide a clear and well-documented solution.

`Ans:` Added the code into `test-manipulation-shell-script/log-praser.sh`

`Note:` Remaining questions i don't have much programming knowledge, but i have started running python now, will start writing python code soon.