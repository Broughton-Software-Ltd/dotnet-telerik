The Telerik reporting packages require additional libraries to be present on the system.

This repository provides a container, starting from the dotnet sdk, with those additional libraries installed. This is useful if you want to mount your local volumes while developing.

A tagged image is currently hosted in [AWS ECR](https://eu-west-1.console.aws.amazon.com/ecr/repositories/public/037382310299/broughton-software/dotnet-telerik?region=eu-west-1).

###Updating AWS ECR repository image:
Authenticate with ECR repository and get auth token 

`aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/c0j9d8z7`

Build the image

`docker build -t broughton-software/dotnet-telerik .`

Tag the image

`docker tag broughton-software/dotnet-telerik:latest public.ecr.aws/c0j9d8z7/broughton-software/dotnet-telerik:latest`

Push to ECR

`docker push public.ecr.aws/c0j9d8z7/broughton-software/dotnet-telerik:latest`