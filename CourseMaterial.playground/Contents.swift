//: Playground - noun: a place where people can play

import UIKit

// Function Lecture

var bankAccount = 500.00
var itemAmount = 199.95

func canPurchase(amount: Double) -> Bool {
    if bankAccount >= amount {
        return true
    }
    return false
}

func processPurchase(amount: Double) {
    bankAccount -= amount
    print("You made a purchase of \(amount)")
    print("Your remaining balance is \(bankAccount)")
}

if canPurchase(itemAmount) {
    processPurchase(itemAmount)
} else {
    print("You're broke as shit, dude!")
}


// Exercise 1

func add(a: Double, b:Double) -> Double {
    return a + b
}

add(5, b: 10)

// Exercise 2

func subtract (a: Int, b: Int) -> Int {
    return abs (a - b)
}

subtract(5, b: 100)

// Exercise 3

func multiply (a: Float, b: Float) -> Float {
    return a * b
}

multiply(1.23, b: 2.55)

// Exercise 4

func divide (a: Double, b: Double) -> Double {
    return a / b
}

divide(10, b: 5)









































