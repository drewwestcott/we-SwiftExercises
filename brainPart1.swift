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

// Mark: Exercise 3: Peak Counting

// You are given an array of numbers representing the height above the horizon of the mountains from Beautiful British Columbia.
// Count the number of peaks in the beautiful view and store their number in a variable called numPeaks.

let numbers = [1, 2, 3, 2, 1, 3, 5, 2, 3, 1]

// your code here
var peaks = [Int]()
var numPeaks = 0

var peaked = false
for i in 0..<(numbers.count-1) {
	if (numbers[i] > numbers[i+1] && peaked == false) {
		peaks.append(i)
		peaked = true
	}
	if (numbers[i] < numbers[i+1] && peaked == true) {
		peaked = false
	}
}
let peak1 = numbers.max()
numPeaks = peaks.count

// Mark: Exercise 5: Expand the Sequence

// You are given an array numbers. Expand the numbers into an a palindrome landscape of mountains. 
// For numbers = [2,3,2,4], palindromeMountains = [1,2,1,2,3,1,2,1,2,3,4,3,2,1]

let numbers = [2,3,2,4]

// your code here
var palindromeMountains = [1]

// your code here
for i in (0..<numbers.count).reversed() {
	
	let peak = numbers[i]
	
	for i in 2...peak {
		palindromeMountains.insert(i, at: 0)
	}
	
	for i in (1..<peak).reversed() {
		palindromeMountains.insert(i, at: 0)
	}
	
}
print(palindromeMountains)
