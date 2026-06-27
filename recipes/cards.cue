// SPDX-License-Identifier: Apache-2.0

package recipes

// Unify YAML card data against the schema
title:       string
outcome:     string
audience:    #Audience
ingredients: [...string]
equipment:   [...string]
technique:   #Technique
yield:       [...#Yield]
