# DevOps challenge

With this challenge we want to evaluate your skills as a DevOps expert. The solution should:
- Meet every requirement detailed in the Main objectives.
- Demonstrate your ability to produce high quality and well documented code.

To achieve these goals, you can use all the tools and libraries you want. Finally, there is one optional goal which, if achieved, will be positively considered.


## Required tools
To implement a solution, you should be familiar with these tools:

1. Any Linux environment
2. [Java 11](https://adoptopenjdk.net/)
3. [Docker](https://docs.docker.com/engine/install/)
## Objectives
The main goal is to create and run a Docker container with this Spring Boot application. You only have to implement the code in the three files that are in the scripts folder.
### Main
1. Implement the **build.sh** script, this script should compile the Spring Boot application and create the Docker image.
2. Implement the **Dockerfile**, add the necessary commands to assemble the image. This image should include the previously compiled code, and it should also execute it.
3. Implement the **run.sh** script, this script should run the Docker container.
4. Create a pipeline that loads the previously created Docker image into a registry. Explain briefly which CI/CD tool and registry were chosen and why.

   Explanation - AWS is concerned, Chooses ECR repository with Jenkins CICD. Jenkins installed on EC2 instance. With this setup it allows to use Integrated AWS security through IAM for push & pull image. Also, this setup is very convenience since both CICD & repository are within the AWS ecosystem. Images upload and download is fast & Integration is straightforward.

   ECR - * Allowed to Easy Integration with Other AWS services EKS/ECS/Lambda. 

         * ECR life cycle policy is providing more control for lifecycle management.

         * ECR enhanced scanning feature is providing vulnerability scanning for both operating systems and programing language package vulnerabilities.

         * ECR also supports immutable tags, preventing image tags from being overwritten.

         * ECR provide High availability & durability.

  Jenkins - Most famous CICD tool in the IT space with below features.

         * Opensource tool

         * It is very extensible "There are over 1000 plugins."

         * Support Distributed Builds – Multiple slaves & parallel execution.

         * Possibility of Integrated security EX: LDAP/RBAC/SSO

         * Support pipeline-as-code

  Alternative tool option - AWS code-pipeline
### Optional
1. Explain how to deploy previously created Docker image into AWS and which tools and services you will use for. _Note: there aren't a bad or good answer, but you need argument it_

  * I will select Amazon Elastic Kubernetes Service (EKS) : EKS is a managed Kubernetes service that let us to run Kubernetes on AWS without managing the underlying Kubernetes control plane. EKS is provide more scalability & resilience to deployments. EKS support horizontal and vertical scalability which is recommended to use for large-scale & production-ready deployments.

 Tools – EKS/ECR (as registry), Docker or containerd (mostly come up with manage nodegroups)/application load balancer/route53.

 Implementation plan - K8s Deployment with 2 replicas/Type load balancer service for expose application to outside "Also can create Ingress for use common Load balancer to reduce wasting resources."

 Alternative options - Amazon Elastic Container Service (ECS)/AWS Lightsail Containers/Direct Deployment on EC2



**IMPORTANT:** You don't need a real AWS account, we are only going to evaluate the usage of the AWS command line interface.
