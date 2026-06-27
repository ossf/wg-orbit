// SPDX-License-Identifier: Apache-2.0

// Schema for ORBIT recipe cards.
// Each card maps an outcome to ingredients, equipment, technique, and yield.
package recipes

import "github.com/gemaraproj/gemara"

#Ingredient: {
	name:        string
	description: string
	url?:        string
	gemaraType?: gemara.#ArtifactType
}

#Equipment: {
	name:        string
	description: string
	url:         string
	gemaraLayers: [...int & >=1 & <=7]
	artifacts: [...gemara.#ArtifactType]
	orbit: bool
	when:  string
}

#Technique: {
	description: string
}

#Yield: {
	name:        string
	description: string
}

#Audience: {
	role: "Software Developer / Maintainer" |
		"Open Source Professional (OSPO)" |
		"Security Engineer / Architect" |
		"CI/CD DevOps & Tooling Integrator" |
		"Package & Repository Manager" |
		"Executive / End-User Consumer"
	context: string
}

#RecipeCard: {
	title:       string
	outcome:     string
	audience:    #Audience
	ingredients: [...string]
	equipment:   [...string]
	technique:   #Technique
	yield:       [...#Yield]
}
