## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create | Used when creating the Resource Group. | `string` | `"90m"` | no |
| custom\_name | Define your custom name to override default naming convention | `string` | `null` | no |
| delete | Used when deleting the Resource Group. | `string` | `"90m"` | no |
| deployment\_mode | Specifies how the infrastructure/resource is deployed | `string` | `"terraform"` | no |
| enabled | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| extra\_tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map(string)` | `null` | no |
| label\_order | The order of labels used to construct resource names or tags. If not specified, defaults to ['name', 'environment', 'location']. | `list(any)` | <pre>[<br>  "name",<br>  "environment",<br>  "location"<br>]</pre> | no |
| location | Azure region (e.g. `eastus`, `westus`). | `string` | `null` | no |
| lock\_level | Specifies the lock level for the resource group to prevent accidental changes. | `string` | `"CanNotDelete"` | no |
| managedby | ManagedBy, eg 'terraform-az-modules'. | `string` | `"terraform-az-modules"` | no |
| name | Name  (e.g. `app` or `cluster`). | `string` | `null` | no |
| notes | Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created. | `string` | `"This Resource Group is locked by terrafrom"` | no |
| read | Used when retrieving the Resource Group. | `string` | `"5m"` | no |
| repository | Terraform current module repo | `string` | `"https://github.com/terraform-az-modules/terraform-azure-resource-group"` | no |
| resource\_lock\_enabled | Enable or disable lock resource | `bool` | `false` | no |
| resource\_position\_prefix | Controls the placement of the resource type keyword (e.g., "rg", "rg-lock") in the resource name.<br><br>- If true, the keyword is prepended: "rg-core-dev".<br>- If false, the keyword is appended: "core-dev-rg".<br><br>This helps maintain naming consistency based on organizational preferences. | `bool` | `true` | no |
| update | Used when updating the Resource Group. | `string` | `"90m"` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource\_group\_id | The ID of the Resource Group. |
| resource\_group\_location | The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. |
| resource\_group\_name | The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. |
| tags | A mapping of tags which should be assigned to the Resource Group. |

