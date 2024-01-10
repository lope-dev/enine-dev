// See https://terratest.gruntwork.io/docs/ for full Terratest Documentation.

package test

import (
	"github.com/gruntwork-io/terratest/modules/terraform"
	"testing"
	// "github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

// Module tests, using default or provided values.
func TestTerraformModule(t *testing.T) {
	t.Parallel()

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located--relative to tests.
		TerraformDir: "..",

		// By default, tests will read input values from .auto.tfvars
		VarFiles: []string{"ci.auto.tfvars"},

		// Variables can also be declared within this file directly.
		// Vars: map[string]interface{}{
		// 	"someVariable": someVariable,
		// },

		// Environment Variables can also be passed in to tests.
		// EnvVars: map[string]string{
		// 	"AWS_DEFAULT_REGION": awsRegion,
		// },

		// Retry this many times for non-fatal errors.
		MaxRetries: 3,
		// Wait this long between retrying again (in nanoseconds)
		TimeBetweenRetries: 5000000000, // 5 seconds
	}

	// Destroys our Terraform Module after it has been tested.
	defer terraform.Destroy(t, terraformOptions)

	// Performs a `terraform init` and `terraform apply` with to the module.
	terraform.InitAndApply(t, terraformOptions)

	// Test Assertions

	// examples:
	// actualValue := terraform.Output(t, terraformOptions, "the_name_of_an_output")
	// expectedValue := "a string that will appear in the output"
	//
	// assert.Contains(t, actualValue, expectedValue)
	// assert.Contains(t, someString, someSubString)
	// assert.NotContains(t, someString, someSubString)

	// Check the output is not empty
	pet_name := terraform.Output(t, terraformOptions, "pet_name")
	require.NotEmpty(t, pet_name)
}
