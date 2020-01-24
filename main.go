package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"io/ioutil"

	"github.com/sirupsen/logrus"
)

func main() {
	configFile := flag.String("config-file", "./config.json", "Path to configuration file")
	flag.Parse()

	contents, err := ioutil.ReadFile(*configFile)
	if err != nil {
		logrus.WithError(err).WithField("config-file", *configFile).Fatal("failed to read config file")
	}

	var cfg Configuration
	if err := json.Unmarshal(contents, &cfg); err != nil {
		logrus.WithError(err).WithField("config-file", *configFile).Fatal("failed to parse config file")
	}

	fmt.Println(cfg)
}
