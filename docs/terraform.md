## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| additional_tag_map | Additional tags for appending to each tag map | map(string) | `<map>` | no |
| attributes | Additional attributes (e.g. `1`) | list(string) | `<list>` | no |
| capabilities | A list of capabilities. Valid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND | list(string) | `<list>` | no |
| delimiter | Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes` | string | `-` | no |
| enabled | Set to false to prevent the module from creating any resources | bool | `true` | no |
| environment | Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT' | string | `` | no |
| label_order | The naming order of the id output and Name tag | list(string) | `<list>` | no |
| name | Solution name, e.g. 'app' or 'jenkins' | string | - | yes |
| namespace | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | string | `` | no |
| on_failure | Action to be taken if stack creation fails. This must be one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE` | string | `ROLLBACK` | no |
| parameters | Key-value map of input parameters for the Stack Set template. (_e.g._ map("BusinessUnit","ABC") | map(string) | `<map>` | no |
| policy_body | Structure containing the stack policy body | string | `` | no |
| regex_replace_chars | Regex to replace chars with empty string in `namespace`, `environment`, `stage` and `name`. By default only hyphens, letters and digits are allowed, all other chars are removed | string | `/[^a-zA-Z0-9-]/` | no |
| stage | Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release' | string | `` | no |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')` | map(string) | `<map>` | no |
| template_url | Amazon S3 bucket URL location of a file containing the CloudFormation template body. Maximum file size: 460,800 bytes | string | - | yes |
| timeout_in_minutes | The amount of time that can pass before the stack status becomes `CREATE_FAILED` | number | `30` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | ID of the CloudFormation Stack |
| name | Name of the CloudFormation Stack |
| outputs | Outputs of the CloudFormation Stack |

