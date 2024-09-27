package main

import (
	"encoding/json"
	"fmt"
	"io"
	"net/http"
)

// Client is a UI for the User Service.
type Client struct {
	host string
}

// Product is the domain object
type Product struct {
	ID   string `json:"id" pact:"example=10"`
	Name string `json:"name" pact:"example=pizza"`
	Type string `json:"type" pact:"example=food"`
}

// NewClient returns a new initialised API Client
func NewClient(host string) *Client {
	return &Client{host: host}
}

// GetProduct returns a single product
func (c *Client) GetProduct(id string) (*Product, error) {
	res, err := http.Get(fmt.Sprintf("%s/product/10", c.host))
	if res.StatusCode != 200 || err != nil {
		return nil, fmt.Errorf("unable to retrieve product: %v", err)
	}

	data, err := io.ReadAll(res.Body)
	if err != nil {
		return nil, err
	}

	var response Product
	err = json.Unmarshal(data, &response)
	if err != nil {
		return nil, err
	}

	return &response, err
}
