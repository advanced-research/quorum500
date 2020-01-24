package main

// Configuration holds the parsed values from the JSON config.
type Configuration struct {
	// HTTP Port to run the API
	Port uint16 `json:"port"`
}
