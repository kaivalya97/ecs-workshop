# Create codepipeline


(1.a) Create Codepipeline using AWS cloudformation stack:

```bash
$ aws cloudformation create-stack \
    --profile ecs-workshop \
    --stack-name codepipeline-ecs-workshop \
    --template-body file://infra/codepipeline/pipeline.yaml \
    --capabilities CAPABILITY_NAMED_IAM 
```
