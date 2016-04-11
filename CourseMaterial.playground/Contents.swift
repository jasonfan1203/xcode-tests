//: Playground - noun: a place where people can play

import UIKit

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
