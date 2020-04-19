package main

import (
	"github.com/go-flutter-desktop/go-flutter"
	"github.com/go-flutter-desktop/plugins/path_provider"
	"github.com/go-flutter-desktop/plugins/shared_preferences"
)

var options = []flutter.Option{
	flutter.WindowInitialDimensions(800, 1280),
	flutter.AddPlugin(&path_provider.PathProviderPlugin{
		VendorName:      "fusion44",
		ApplicationName: "SendMany",
	}),
	flutter.AddPlugin(&shared_preferences.SharedPreferencesPlugin{
		VendorName:      "fusion44",
		ApplicationName: "SendMany",
	}),
}
