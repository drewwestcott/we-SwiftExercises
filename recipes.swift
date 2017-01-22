//: Exercise from weheartswift.com - https://www.weheartswift.com/cooking-recipes/

import UIKit

let recipes = ["Put eggs in a frying pan", "Cut the beef", "Boil the beef"]
let keyword = "beef"


// First way
for recipe in recipes.enumerated() {

	let title = recipe.element
	if (title.range(of: keyword) != nil) {
		print(title)
	}
	
}

// Second way
for recipe in recipes {
	
	if (recipe as NSString).contains(keyword) {
		
		print(recipe)
		
	}
	
}
