region = "us-east-2"

namespace = "eg"

stage = "test"

name = "cloudformation-stack"

template_url = "https://aws-quickstart.s3.amazonaws.com/quickstart-compliance-cis-benchmark/templates/main.template"

parameters = {
  NotificationEmailAddressForCloudWatchAlarms = "notify-me@example.com"
  ConfigureCloudtrail                         = "Yes"
  ConfigureConfig                             = "Yes"
  ProfileLevel                                = "Level 2"
  QSS3BucketName                              = "aws-quickstart"
  QSS3KeyPrefix                               = "quickstart-compliance-cis-benchmark/"
}

capabilities = ["CAPABILITY_IAM"]

# Example: Disable rollback on stack creation failure
# disable_rollback = true
