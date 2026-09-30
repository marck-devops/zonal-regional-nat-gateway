# Zonal and Regional NAT Gateways

Terraform for two AWS VPC designs that give private subnets outbound internet access.

| Directory | Design |
| --- | --- |
| `Zonal/` | One NAT gateway per Availability Zone. Private subnet 1 (`10.0.1.0/24`) sends `0.0.0.0/0` to `nat-az1`. Private subnet 2 (`10.0.2.0/24`) sends `0.0.0.0/0` to `nat-az2`. |
| `Regional/` | One regional NAT gateway for both Availability Zones. Both private subnets share a route table whose `0.0.0.0/0` target is that gateway. |

Each stack is a separate VPC (`10.0.0.0/16`). Apply only the directory you want.

```powershell
cd Zonal
terraform init
terraform apply
```

```powershell
cd Regional
terraform init
terraform apply
```

The AWS provider must be `6.40.0` or newer. The default region is `us-east-1`.
