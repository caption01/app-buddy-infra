### Root Infrastructure

this infra is create a vpc/subnet to hosted jenkins in ec2 and using ALB to revert proxy from 80 to 8080
since github webhook can't having payload path include port in url.

### source code is in root directory.

```
|
├── modules ---> this is separate terraform resource modules.
│   ├── alb
│   ├── ec2
│   └── vpc-subnet
├── main.tf ---> this is a main file to run.
├── outputs.tf
└── scripts ---> this is useful script to run.
```
