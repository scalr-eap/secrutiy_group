# AWS Security Group

This template will create a security group with https open inbound. The user must specify the region and VPC where the secruity group will be created.

You can apply a policy to the region. The following has already been added to the scalr-module.hcl:

```
version = "v1"

variable "region" {
  policy = "cloud.locations"
  conditions = {
  cloud = "ec2"
  }
}
```

Now all you have to do is create a Cloud.Locations policy at the account level and assign the policy to your environment. See more here: https://scalr-athena.readthedocs-hosted.com/en/latest/catalog/variables.html#binding-to-policy

See the template here: https://github.com/scalr-eap/security_group
