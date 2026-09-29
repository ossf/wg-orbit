// SPDX-License-Identifier: Apache-2.0

package recipes

import (
	"tool/file"
	"tool/cli"
	"encoding/yaml"
	"strings"
)

_cardFiles: {
	"enforce-baseline-compliance":              "recipes/enforce-baseline-compliance.yaml"
	"demonstrate-baseline-adherence":    "recipes/demonstrate-baseline-adherence.yaml"
	"baseline-remediation":  "recipes/baseline-remediation.yaml"
}

_audienceURLs: {
	"Software Developer / Maintainer":  "https://ossf.github.io/community/personas/developer/"
	"Open Source Professional (OSPO)":   "https://ossf.github.io/community/personas/ospo/"
	"Security Engineer / Architect":     "https://ossf.github.io/community/personas/security/"
	"CI/CD DevOps & Tooling Integrator": "https://ossf.github.io/community/personas/devops/"
	"Package & Repository Manager":      "https://ossf.github.io/community/personas/package-manager/"
	"Executive / End-User Consumer":     "https://ossf.github.io/community/personas/executive/"
}

_gemaraLayerLabels: {
	"1": "Layer 1: Vectors & Guidance"
	"2": "Layer 2: Threats & Controls"
	"3": "Layer 3: Risk & Policy"
	"4": "Layer 4: Sensitive Activities"
	"5": "Layer 5: Intent & Behavior Evaluation"
	"6": "Layer 6: Preventive & Remediative Enforcement"
	"7": "Layer 7: Audit & Continuous Monitoring"
}

_orbitIcon: {
	"true":  "✓"
	"false": ""
}

// _renderCard produces the markdown for a single recipe card.
// Equipment and ingredient names are resolved from the _equipment
// and _ingredients registries so YAML cards only carry references.
_renderCard: {
	_input: _
	let c = _input

	let header = "# \(c.title)\n\n"
	let outcome = "## Outcome\n\n\(c.outcome)\n\n"
	let roleURL = _audienceURLs[c.audience.role]
	let audience = "**Audience:** [\(c.audience.role)](\(roleURL)) — \(c.audience.context)\n\n"

	// Ingredients table — resolve names from registry
	let ingredientRows = [ for name in c.ingredients {
		let i = _ingredients[name]
		let link = strings.Join([
			if (i.url & string) != _|_ {"[\(i.name)](\(i.url))"},
			if (i.url & string) == _|_ {i.name},
		], "")
		"| \(link) | \(i.description) |"
	}]
	let ingredients = "## Ingredients\n\n| Name | Description |\n|:-----|:------------|\n\(strings.Join(ingredientRows, "\n"))\n\n"

	// Equipment table — resolve names from registry
	let equipmentRows = [ for name in c.equipment {
		let e = _equipment[name]
		let layerLabels = [ for l in e.gemaraLayers {_gemaraLayerLabels["\(l)"]}]
		let orbit = _orbitIcon["\(e.orbit)"]
		"| [\(e.name)](\(e.url)) | \(e.description) | \(orbit) | \(strings.Join(e.artifacts, ", ")) | \(strings.Join(layerLabels, ", ")) | \(e.when) |"
	}]
	let equipmentSection = "## Equipment\n\n| Name | Description | ORBIT | Artifacts | Gemara Layers | When to use |\n|:-----|:------------|:------|:----------|:--------------|:------------|\n\(strings.Join(equipmentRows, "\n"))\n\n"

	// Technique
	let technique = "## Technique\n\n\(c.technique.description)\n\n"

	// Yield table
	let yieldRows = [ for y in c.yield {
		"| \(y.name) | \(y.description) |"
	}]
	let yieldSection = "## Yield\n\n| Artifact | Description |\n|:---------|:------------|\n\(strings.Join(yieldRows, "\n"))\n\n"

	output: header + outcome + audience + ingredients + equipmentSection + technique + yieldSection
}

command: render: {
	readEnforce: file.Read & {
		filename: "recipes/enforce-baseline-compliance.yaml"
		contents: string
	}

	readDemonstrate: file.Read & {
		filename: "recipes/demonstrate-baseline-adherence.yaml"
		contents: string
	}

	readRemediation: file.Read & {
		filename: "recipes/baseline-remediation.yaml"
		contents: string
	}

	writeEnforce: file.Create & {
		$after: readEnforce
		let c = yaml.Unmarshal(readEnforce.contents)
		let rendered = (_renderCard & {_input: c})
		filename: "docs/recipes/enforce-baseline-compliance.md"
		contents: rendered.output
	}

	writeDemonstrate: file.Create & {
		$after: readDemonstrate
		let c = yaml.Unmarshal(readDemonstrate.contents)
		let rendered = (_renderCard & {_input: c})
		filename: "docs/recipes/demonstrate-baseline-adherence.md"
		contents: rendered.output
	}

	writeRemediation: file.Create & {
		$after: readRemediation
		let c = yaml.Unmarshal(readRemediation.contents)
		let rendered = (_renderCard & {_input: c})
		filename: "docs/recipes/baseline-remediation.md"
		contents: rendered.output
	}

	writeIndex: file.Create & {
		$after: [readEnforce, readDemonstrate, readRemediation]
		let enforce = yaml.Unmarshal(readEnforce.contents)
		let demonstrate = yaml.Unmarshal(readDemonstrate.contents)
		let remediation = yaml.Unmarshal(readRemediation.contents)
		filename: "docs/recipes/README.md"
		contents: """
			# ORBIT Recipe Cards

			Recipe cards map outcomes to the ORBIT tools and resources needed to achieve them.

			## Cards

			- [\(enforce.title)](enforce-baseline-compliance.md) — \(enforce.audience.role)
			- [\(demonstrate.title)](demonstrate-baseline-adherence.md) — \(demonstrate.audience.role)
			- [\(remediation.title)](baseline-remediation.md) — \(remediation.audience.role)

			"""
	}

	print: cli.Print & {
		$after: [writeIndex, writeEnforce, writeDemonstrate, writeRemediation]
		text: "Rendered docs/recipes/README.md and per-card pages."
	}
}
