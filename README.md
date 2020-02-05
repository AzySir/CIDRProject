# CIDRProject

This is a dummy project to show usage of terraform by creating a VPC and adding in specific CIDR ranges for Public, Private and Data Subnets


## Public Subnet
| Public |
| Supernet | AZ1 |  AZ2 |  AZ3 |
| --- | --- |
| 10.0.2.0/21 | 10.0.2.0/23 | 10.0.4.0/23 | 10.0.6.0/23 |

<!-- public_cidr  = ["10.0.2.0/23", "10.0.4.0/23", "10.0.6.0/23"] -->
| Private |
| Supernet | AZ1 |  AZ2 |  AZ3 |
| --- | --- |
| 10.0.8.0/20 | 10.0.8.2/23 | 10.0.12.0/23 | 10.0.16.0/23

<!-- private_cidr = ["10.0.8.2/23", "10.0.12.0/23", "10.0.16.0/23"] -->

| Private |
| Supernet | AZ1 |  AZ2 |  AZ3 |
| --- | --- |
| 10.0.20.0/21 | 10.0.20.0/23 | 10.0.22.0/23 | 10.0.24.0/23
<!-- data_cidr    = ["10.0.20.0/23", "10.0.22.0/23", "10.0.24.0/23"] -->

## Private Subnet

## Data Subnet 