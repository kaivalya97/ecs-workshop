# Create codecommit repository
    
(1.a) Create codecommit repository to host the application code

```bash
$ cd ~/awsug-ecs-workshop/github/ecs-workshop
$ aws codecommit create-repository \
    --profile ecs-workshop \
    --repository-name ecs-workshop \
    --repository-description "ecs-workshop nodejs application"
```

If successful, the command output would like this:

```
{
    "repositoryMetadata": {
        "accountId": "AWS_ACCOUNT_ID",
        "repositoryId": "5a3309b6-b663-4a96-9012-69f843095013",
        "repositoryName": "ecs-workshop",
        "repositoryDescription": "ecs-workshop nodejs application",
        "lastModifiedDate": "2023-08-24T14:30:51.001000+00:00",
        "creationDate": "2023-08-24T14:30:51.001000+00:00",
        "cloneUrlHttp": "https://git-codecommit.us-east-1.amazonaws.com/v1/repos/ecs-workshop",
        "cloneUrlSsh": "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/ecs-workshop",
        "Arn": "arn:aws:codecommit:us-east-1:AWS_ACCOUNT_ID:ecs-workshop"
    }
}
```

(1.b) Pull the empty codecommit repository on your machine using "Clone HTTPS (GRC)" URL from codecommit console

```bash
$ cd ~/awsug-ecs-workshop/github/ecs-workshop/codecommit
$ git clone codecommit::us-east-1://ecs-workshop@ecs-workshop
```

(1.c) Clone a bare copy of github repository to a local folder, and push it to codecommit repository

```bash
$ git clone --mirror https://github.com/kaivalya97/ecs-workshop.git github-mirror
$ cd github-mirror
$ git push codecommit::us-east-1://ecs-workshop@ecs-workshop --all
$ cd ..
$ rm -rf github-mirror
$ cd ecs-workshop
$ git fetch origin main:main
$ git checkout main
$ git log 
```

The `git log` command should show all commits originally pushed to github repository, now migrated to the codecommit repository. 


# Create pipeline in AWS Codepipeline

[Click here for steps to creating codepipeline](README-codepipeline.md)
