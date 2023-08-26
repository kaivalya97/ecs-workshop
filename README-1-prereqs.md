# Install and configure prerequisite tools
    
(1.a) Follow the steps mentioned in the corresponding links to install the tools to your machine. Please use your OS-specific instructions from the links.

    - aws-cli
        https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
    - git
    - git-remote-codecommit
        https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-git-remote-codecommit.html#setting-up-git-remote-codecommit-prereq

(1.b) Configure aws cli (named profile = ecs-workshop) to connect to your AWS lab account, by providing the following details in `aws configure --profile ecs-workshop` command:

```bash
$ aws configure --profile ecs-workshop
AWS Access Key ID: <COPY FROM CLOUDKIDA>
AWS Secret Access Key: <COPY FROM CLOUDKIDA>
Default region name: us-east-1
Default output format: None
```

(1.b) Prepare CodeCommit Repository

Oepn the file `infra/codepipeline/pipeline.yml` and enter VPC ID, Subnet IDs
