import UIKit

// FIRST EXAMPLE :

// Passing func as a param : with func data type (params and return types)
func calc(no1: Int, no2: Int, operation: (Int,Int) -> Int) -> Int{
    return operation(no1,no2)
}

func multi(no1: Int, no2: Int) -> Int {
    return no1 * no2
}

calc(no1: 4, no2: 5, operation: multi)

// Converting func to a closuer : no func keyword no func name
calc(no1: 4, no2: 5, operation: {(no1: Int, no2: Int) -> Int in
    return no1 * no2
})

// Minimizing code by removing unnceccery stuff : param types , return type, return keyword
print(calc(no1: 4, no2: 5, operation: {(no1, no2) in no1 * no2}))

print(calc(no1: 4, no2: 5, operation: {$0 * $1}))

// Trailing closure
print(calc(no1: 4, no2: 5) {$0 * $1} )


// SECOND EXAMPLE

let array = [4,7,5,3,9,2]

func addOne(number:Int) -> Int {
    return number + 1
}

array.map(addOne) // Normal mapping

array.map({(number:Int) -> Int in
    return number + 1
}) // Mapping using closuer

array.map({(number) in
    number + 1
}) // Removing types and return

array.map({$0 + 1}) // removing params : shorthand notation

array.map{$0 + 1} // Trailing closure

print(array.map{"\($0)"})



// THIRD EXAMPLE

class Firebase {
    
    func createUser(name: String, password: String, compleationHandler: (Bool,Int) -> Void) {
        // Creating user
        print("User created in the server")
        let isSucc = true
        let userID = 1
        compleationHandler(isSucc, userID)
    }
}

class MyApp {
    
    func registerButtonPressed() {
        
        let firebase = Firebase()
        
        firebase.createUser(name: "Monzer", password: "123456", compleationHandler: compleated)
        
        firebase.createUser(name: "Monzer", password: "123456", compleationHandler: {(isSucc, userID) in
            if isSucc == true {
                print("user created succ, you can now login with id = \(userID)")
            } else {
                print("There was an error")
            }
        })
        
        
    }
    
    func compleated(isSucc:Bool, userID:Int) {
        print(isSucc)
        print(userID)
    }
    
    
}

let myApp = MyApp()

myApp.registerButtonPressed()
