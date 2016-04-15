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


// Exercise 5

func isEven (number: Int) -> Bool {
    if (number % 2 != 0){
        return false
    }
    return true
}

isEven(5)
isEven(6)
isEven(8)
isEven(0)


// Array Lecture

// Array literal
var names = ["Aaa","Bbb","Ccc","Ddd"]
var names2: [String] = ["Aaaa","Bbbb","Cccc","Dddd"]

// Declaring an empty array
var names3 = [String]()
var names4 = [String](count: 5, repeatedValue: "HI")

// Getting things out of an array
names4[0] = "HELLO"

print(names4)

// adding elements to arrays
var names5 = [String]()

names5.append("aa")
names5.append("bb")
names5.append("cc")
names5.removeAtIndex(2)
names5.append("dd")
names5.insert("zz", atIndex: 0)

// real example
var shoppingCart = [String]()
var budget = 500.0
var currentCartAmount = 0.0

func addItemToCart(item: String, price: Double){
    if currentCartAmount + price <= budget {
        shoppingCart.append(item)
        currentCartAmount += price
        print(currentCartAmount)
    } else{
        print("Not enough money")
    }
}

addItemToCart("Game", price: 50.50)
addItemToCart("Food", price: 100.75)

print(shoppingCart)



// Loops Lecture
var ages = [12,25,36,57,59]

for x in 0 ..< ages.count {
    var age = ages[x]
    if age >= 50 {
        print("you old as shit")
    }
}




//Dictionaries Lecture

var webster: [String: String] = ["krill":"any of the small crustaceans", "fire":"a burning mass of material"]

// "if let" is a powerful tool in swift, prevents crashes by checking if something actually exists
if let krill = webster["krill"]{
    print(krill)
}


//OOP Lecture
class Vehicle {
    
    //class-only private variables
    private var _engine = "4 cylinder"
    private var _color = "Blue"
    private var _odometer = 300
    
    //getters / setters
    var odometer: Int {
        get {
            return _odometer
        }
        set {
            if newValue > _odometer {
                _odometer = newValue
            }
        }
    }
    
    //initializers / constructors
    init (engine: String, color: String) {
        self._engine = engine
        self._color = color
    }
    
    init () {
        
    }
    
    func enterMiles (miles: Int) {
        _odometer += miles
    }
}

var srx = Vehicle(engine: "6 cylinder", color: "Green")
var volvo = Vehicle()

//Inheritance

class Person {
    private var _eyeColor = "red"
    private var _name: String
    
    init (name: String) {
        self._name = name
    }
    
    func catchPhrase () -> String {
        return "HELLO!"
    }
}

var john = Person(name: "John")
print(john.catchPhrase())

class Animorph: Person {
    
    var animalType = "dog"
    
    //initializes the base class and then some
    convenience init (type: String, name: String) {
        self.init(name: name)
        animalType = type
    }
    
    //overrides the base class and change some
    override func catchPhrase() -> String {
        return "some oher catch phrase"
    }
}

var mary = Animorph(name: "Mary")
print(mary.catchPhrase())



































