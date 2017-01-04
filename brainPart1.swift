// Mark: Exercise 1: Upside Down
//Your printer broke for some reason and prints everything upside down. Your task is to write a program that turns a string upside down, in order for the printer to work properly again.

let textToPrint = ".nwod edispu ma I"
let corrected = Array(textToPrint.characters.reversed())
let printCorrected = String(corrected)

let reversed = corrected.reversed()

// Mark: Exercise 2: Peak Finding

//You are given an array of numbers which increase up to a point and then decreases until the end of the array. Find the position where the array stops increasing any further and store it in a variable named peak.
let numbers = [1, 2, 3, 5, 9, 4, 3, 2, 1]
var peak = 0
var highest = 0

for i in 0..<(numbers.count) {
	if numbers[i] > highest {
		peak = i
		highest = numbers[i]
	}
}
print(peak)
