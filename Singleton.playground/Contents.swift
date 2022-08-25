import UIKit

// Singleton guarantes that only one instance of a class is initiated.

// Apple uses singleton in many API's:-
// 1. URLSession.shared
// 2. FileManager.default
// 3. UserDefaults.standard
// 4. SKPaymentQueue.default()

// Singleton side effect is having a global access to the object.

// Singleton is lazy.

// Ways to create singleton:-
// 1. Global Variables: by creating a global shared var for the class, but you can not make the class methods private.
// 2.1 Static Property and Private Initializer: by creating a static shared variable with private initializition of the class.
// 2.2 Static Property and Private Initializer with Shared Function: by creating a private static variable for initializition (which can be by a closure), with a private initializition of the class, and a shared function with the class as a return value.

class Car {
    var name = "BMW"
    
    static let singletonCar = Car(name: "MERC")
    
    init(name: String) {
        self.name =  name
    }
}

class A {
    init() {
        Car.singletonCar.name
        Car.singletonCar.name = "Huynday"
        Car.singletonCar.name
    }
}

class B {
    init() {
        Car.singletonCar.name
        Car.singletonCar.name = "Hunda"
        Car.singletonCar.name
    }
}

Car.singletonCar.name

Car.singletonCar.name = "AUDI"

Car.singletonCar.name

A()

Car.singletonCar.name

B()

Car.singletonCar.name

class Cart {
    var items: [Item]
    var itemsCount = 0
    
    static let singletonCart = Cart()
    
    private init() {
        self.items = []
    }
    
    func addItem(item: Item) {
        //items.append(item)
        itemsCount = itemsCount + 1
    }
    
    func removeItem(item: Item) {
        itemsCount = itemsCount - 1
    }
}

struct Item {
    var id: Int
    var name: String
}

class ScreenA {
    init() {
        Cart.singletonCart.addItem(item: Item(id: 1, name: "First"))
    }
}

class ScreenB {
    init() {
        Cart.singletonCart.addItem(item: Item(id: 2, name: "Second"))
    }
}

ScreenA()
ScreenB()

Cart.singletonCart.items
