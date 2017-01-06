import Foundation
let N = 7

// your code here
var i = 4
var hasFactor: Bool
var primes = [2,3]
var range: Double

repeat {
	i += 1
	hasFactor = false
	range = sqrt(Double(i))
	for x in 2...Int(range) {
		if i % x == 0 {
			hasFactor = true
		}
	}
	
	if hasFactor == false {
		primes.append(i)
	}
	
} while primes.count < N

for prime in primes {
    print(prime)
}
