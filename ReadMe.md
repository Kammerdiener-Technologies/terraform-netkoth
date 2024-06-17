# Terraform NetKotH
This module attempts to provide a slightly opinionated method deploying [NetKotH](https://netkoth.org/)

## Purpose
The purpose of this module is to provide a clean way to quickly setup a NetKotH competition with a various amount of AMIs and then be able to quickly destroy it. This includes everything you would need for a NetKotH competition minus a VPN.

## Example
``` YAML
module "netkoth" {
  version = "1.0.0"

  compromised_server_key = "<<THE KEY YOU WANT TO USE FOR THE COMPROMISED MACHINES>>"
  netkoth_server_key = "<<THE KEY YOU WANT TO USE FOR THE NETKOTH MACHINE>>"
  logs = true

  // This can hold multiple AMIs. The key will help generate the name (compromised-<<KEY>>) and then the AMI ID of the machine you want to deploy
  compromised_server_ami =  {
    "1" = "ami-06cae005502e73112"
  }
}

```

After that you will need to setup a VPN in order to access: https://dev.to/kasukur/how-to-setup-an-aws-client-vpn-51f
You can skip the part about creating a VPC since that is created in the Module. 