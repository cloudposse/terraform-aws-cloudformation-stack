region = "us-east-2"

namespace = "eg"

stage = "test"

name = "cloudformation-stack"

template_url = "https://raw.githubusercontent.com/pinkbear/quickstart-compliance-cis-benchmark/1607e072c0744906ce1b072796172b93a8897d1f/templates/cis-benchmark.template"

parameters = {
  NotificationEmailAddressForCloudWatchAlarms = "notify-me@example.com"
  ConfigureCloudtrail                         = "Yes"
  ConfigureConfig                             = "Yes"
  ProfileLevel                                = "Level 2"
  QSS3BucketName                              = "aws-quickstart"
  QSS3KeyPrefix                               = "quickstart-compliance-cis-benchmark/"
}

capabilities = ["CAPABILITY_IAM"]
