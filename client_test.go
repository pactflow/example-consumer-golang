package main

import (
	"fmt"
	// "log"
	"os"
	"testing"

	"github.com/pact-foundation/pact-go/v2/consumer"
	"github.com/pact-foundation/pact-go/v2/matchers"
	"github.com/stretchr/testify/assert"
)

var Regex = matchers.Regex

func TestConsumer(t *testing.T) {
	mockProvider, err := consumer.NewV2Pact(consumer.MockHTTPProviderConfig{
		Consumer: "pactflow-example-consumer-golang",
		Provider: getProviderName(),
	})
	assert.NoError(t, err)

	// Arrange
	err = mockProvider.
		AddInteraction().
		Given("a product with ID 10 exists").
		UponReceiving("a request to get a product").
		WithRequest("GET", "/product/10").
		WillRespondWith(200, func(b *consumer.V2ResponseBuilder) {
			b.Header("Content-Type", Regex("application/json", "application/json;?.*")).
				BodyMatch(&Product{})
		}).
		ExecuteTest(t, func(config consumer.MockServerConfig) error {
			// Act: test our API client behaves correctly
			// Initialize the API client and point it at the Pact mock server
			client := NewClient(fmt.Sprintf("http://%s:%d", config.Host, config.Port))

			// Execute the API client
			product, err := client.GetProduct("10")

			// Assert: check the result
			assert.NoError(t, err)
			assert.Equal(t, "10", product.ID)
			return err
		})

	assert.NoError(t, err)

	// Assert

}

// Function to determine which provider should be used. This is not something you'd usually need to do
// but is helpful here as it allows us to mix and match languages across the demo projects
func getProviderName() string {
	if env := os.Getenv("PACT_PROVIDER"); env != "" {
		return env
	}

	return "pactflow-example-provider-golang"
}
