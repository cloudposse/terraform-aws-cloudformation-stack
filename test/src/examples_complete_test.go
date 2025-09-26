package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func int32Ptr(i int32) *int32 { return &i }

// Test the Terraform module in examples/complete using Terratest.
func TestExamplesComplete(t *testing.T) {
	t.Parallel()

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../../examples/complete",
		Upgrade:      true,
		// Variables to pass to our Terraform code using -var-file options
		VarFiles: []string{"fixtures.us-east-2.tfvars"},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the value of an output variable
	name := terraform.Output(t, terraformOptions, "name")
	// Verify we're getting back the outputs we expect (check prefix and any suffix)
	assert.Contains(t, name, "eg-test-cloudformation-stack")

	// Run `terraform output` to get the value of an output variable
	id := terraform.Output(t, terraformOptions, "id")
	// Verify we're getting back the outputs we expect (check prefix and any suffix)
	assert.Contains(t, id, "stack/eg-test-cloudformation-stack")
}
