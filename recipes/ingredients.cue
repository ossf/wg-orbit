// SPDX-License-Identifier: Apache-2.0

package recipes

_ingredients: [Name=string]: #Ingredient & {name: Name}

_ingredients: {
	"OSPS Baseline": {
		description: "Security controls organized by maturity level for open source projects"
		url:         "https://baseline.openssf.org"
		gemaraType:  "ControlCatalog"
	}
	"Security Insights": {
		description: "Machine-readable security practices specification for open source projects"
		url:         "https://github.com/ossf/security-insights"
	}
}
