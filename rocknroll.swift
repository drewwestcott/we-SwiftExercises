//: Playground - noun: a place where people can play

import UIKit

let numFloors = 3
let length = 3
let steps = 4
let pizzaPrice = 60

func Rock(_ steps : Int) {
	for _ in 0..<steps {
		print("Rock")
	}
}

func Roll(_ meters : Int) {
	for _ in 0..<meters {
		print("Roll")
	}
}

func Turn(_ side : String) {
	print("Turn(\(side))")
}

func Door(_ action : String) {
	print("Door(\(action))")
}

func Charge(_ amount : Int) {
	print("Charge(\(amount))")
}

func Deliver(_ item : String) {
	print("Deliver(\(item))")
}

func travelAcrossFloor(length: Int, steps: Int) {
	Roll(length)
	Turn("Left")
	Rock(steps)
	Turn("Left")
}

// your code here
func deliverPizza(floor: Int, length: Int, steps: Int, price: Int) {
	
		Door("Open")
	for _ in 0..<floor {
		travelAcrossFloor(length: length, steps: steps)
	}
	Roll(length)
	Turn("Right")
	Charge(price)
	Deliver("Pizza")
}

deliverPizza(floor: numFloors, length: length, steps: steps, price: pizzaPrice)
