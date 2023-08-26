# Create codecommit repository
    
(1.a) Create codecommit repository to host the application code

```bash
$ cd ecs-workshop/
$ aws codecommit create-repository \
    --profile ecs-workshop \
    --repository-name ecs-codecommit \
    --repository-description "ecs-workshop nodejs application"
```

If successful, the command output would like this:

```
{
    "repositoryMetadata": {
        "accountId": "AWS_ACCOUNT_ID",
        "repositoryId": "5a3309b6-b663-4a96-9012-69f843095013",
        "repositoryName": "ecs-codecommit",
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
$ cd ~
$ git clone codecommit::us-east-1://ecs-workshop@ecs-codecommit
```

(1.c) Copy the contents of the Github repo into the codecommit repo

```bash
$ cd ecs-codecommit/
$ cp -r ../ecs-workshop/* .
$ git add *
$ git commit -a "first commit"
$ git push
```

# Create pipeline in AWS Codepipeline

[Click here for steps to creating codepipeline](README-codepipeline.md)
