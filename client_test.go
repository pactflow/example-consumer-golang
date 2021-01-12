package main

import (
	"fmt"
	"log"
	"os"
	"testing"

	"github.com/pact-foundation/pact-go/dsl"
	"github.com/stretchr/testify/assert"
)

func TestConsumer(t *testing.T) {
	pact := &dsl.Pact{
		Consumer: "pactflow-example-consumer-golang",
		Provider: getProviderName(),
	}
	defer pact.Teardown()

	// Arrange
	pact.
		AddInteraction().
		Given("a product with ID 10 exists").
		UponReceiving("a request to get a product").
		WithRequest(dsl.Request{
			Method: "GET",
			Path:   dsl.String("/product/10"),
		}).
		WillRespondWith(dsl.Response{
			Status:  200,
			Headers: dsl.MapMatcher{"Content-Type": dsl.Regex("application/json", "application/json;?.*")},
			Body:    dsl.Match(&Product{}),
		})

	// Act
	var test = func() error {
		client := NewClient(fmt.Sprintf("http://localhost:%d", pact.Server.Port))
		product, err := client.GetProduct("10")

		// Perform any unit test expectations here...
		assert.Equal(t, "10", product.ID)

		return err
	}

	// Assert
	if err := pact.Verify(test); err != nil {
		log.Fatalf("Error on Verify: %v", err)
	}
}

// Function to determine which provider should be used. This is not something you'd usually need to do
// but is helpful here as it allows us to mix and match languages across the demo projects
func getProviderName() string {
	if env := os.Getenv("PACT_PROVIDER"); env != "" {
		return env
	}

	return "pactflow-example-provider-golang"
}
