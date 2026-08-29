// SPDX-License-Identifier: Apache-2.0

package recipes

_equipment: [Name=string]: #Equipment & {name: Name}

_equipment: {
	"go-gemara": {
		description: "Go SDK for parsing and working with Gemara documents"
		url:         "https://github.com/gemaraproj/go-gemara"
		gemaraLayers: [1, 2, 3, 5, 6, 7]
		artifacts: [
			"GuidanceCatalog", "ThreatCatalog", "ControlCatalog",
			"VectorCatalog", "PrincipleCatalog", "CapabilityCatalog",
			"RiskCatalog", "Policy", "MappingDocument", "Lexicon",
			"EvaluationLog", "EnforcementLog", "AuditLog",
		]
		orbit: true
		when:  "You need to parse, convert, or work with Gemara documents programmatically"
	}
	"gemara-mcp": {
		description: "MCP server for interactively authoring and validating Gemara artifacts"
		url:         "https://github.com/gemaraproj/gemara-mcp"
		gemaraLayers: [1, 2, 3]
		artifacts: ["GuidanceCatalog", "ThreatCatalog", "ControlCatalog"]
		orbit: true
		when:  "You are authoring or iterating on Gemara definitions interactively"
	}
	"OSPS Baseline Scanner": {
		description: "Privateer-based scanner for evaluating repository security hygiene against the OSPS Baseline"
		url:         "https://github.com/ossf/pvtr-github-repo-scanner"
		gemaraLayers: [5]
		artifacts: ["EvaluationLog"]
		orbit: true
		when:  "You need compliance findings for a repository against the OSPS Baseline"
	}
	Minder: {
		description: "Supply chain measurement and reconciliation platform using the Kubernetes controller pattern"
		url:         "https://mindersec.dev"
		gemaraLayers: [5, 6]
		artifacts: []
		orbit: true
		when:  "You need continuous scanning and auto-remediation at org scale"
	}
	AMPEL: {
		description: "Supply chain policy engine that enforces security frameworks based on attestations and immutable evidence"
		url:         "https://github.com/carabiner-dev/ampel"
		gemaraLayers: [5, 6]
		artifacts: []
		orbit: false
		when:  "You need to enforce security policies based on attestations and immutable evidence"
	}
	darnit: {
		description: "AI-assisted remediation tool that consumes OSPS Baseline Scanner findings to suggest fixes"
		url:         "https://github.com/kusari-oss/darnit"
		gemaraLayers: [5, 6]
		artifacts: []
		orbit: false
		when:  "You have Baseline Scanner findings and want AI-suggested remediation"
	}
}
