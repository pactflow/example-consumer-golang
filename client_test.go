package main

import (
	"fmt"
	"log"
	"os"
	"testing"

	"github.com/pact-foundation/pact-go/dsl"
)

// make test
func TestConsumer(t *testing.T) {

	// Create Pact connecting to local Daemon
	pact := &dsl.Pact{
		Consumer: "pactflow-example-consumer-golang",
		Provider: getProviderName(),
		Host:     "localhost",
	}
	defer pact.Teardown()

	// Pass in test case
	var test = func() error {
		client := NewClient(fmt.Sprintf("http://localhost:%d", pact.Server.Port))
		_, err := client.GetProduct("10")

		// TODO: assert things on product...

		return err
		// Call the API client
	}

	// Set up our expected interactions.
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

	// Verify
	if err := pact.Verify(test); err != nil {
		log.Fatalf("Error on Verify: %v", err)
	}
}

func getProviderName() string {
	if env := os.Getenv("PACT_PROVIDER"); env != "" {
		return env
	}

	return "pactflow-example-provider-golang"
}
