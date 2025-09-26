region = "us-east-2"

namespace = "eg"

stage = "test"

name = "cloudformation-stack"

parameters = {
  NotificationEmailAddressForCloudWatchAlarms = "notify-me@example.com"
  ProfileLevel                                = "Level 2"
}

capabilities = ["CAPABILITY_IAM"]
