# hello-ecs
Tutorial for run Docker container in AWS ECS.

### Create docker repository and push image

Go to AWS console -> `Services` -> `ECR` -> `Repositories` -> Click `Create repository`. 

Create repository `test` and push image `test:latest` using commands from `View push commands` (login, build, tag, push)

### Create Task definition

Go to AWS console -> `Services` -> `ECS` -> `Task definitions` -> Click `Create new Task Definitions`.

Select `EC2` -> Click `Next step` -> Type Task definition name -> Click `Add container`.

 Type name for your container -> Paste your container URL and tag `latest` (e.g. 012345678901..dkr.ecr.us-east-1.amazonaws.com/test:latest) -> Set `Hard limit` (e.g. Hard limit = 256) => Set `Port mappings` : `Host port = 80`, `Container port = 3000`, `Protocol = tcp` -> Click `Add`.

 Click `Create`.

 ### Create ECS Cluster

Go to AWS console -> `Services` -> `ECS` -> `Clusters` -> Click `Create Cluster`.

Select `EC2 Linux + Networking` -> Click `Next Step`.

Type `Cluster name` (e.g. TestCluster) -> Select `EC2 instance type = t2.micro` (or other)  -> Click Create.

Wait for creation done and click `View cluster`.
 ### Run Task in Cluster

Go to AWS console -> `Services` -> `ECS` -> `Clusters` -> Click on your `TestCluster` -> Click `Tasks` -> Click `Run new Task`.

Select `EC2` -> Select Cluster `TestCluster` -> Click `Run Task`.

### View your application in Web

Go to AWS console -> `Services` -> `ECS` -> `Clusters` -> Click on your `TestCluster` -> Click `ECS Instances` -> Click on active `Container Instance` -> In `Details` copy the `Public DNS` and go to this link -> READY.
