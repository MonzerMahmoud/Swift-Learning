import UIKit

let defaults = UserDefaults.standard

// User defaults is not a database , store only small portion of data.
// OS call the entire User defaults (plist) to get on pair .

struct UserDefaultsKeys {
    static let myName = "MyName"
    static let myID = "MyID"
    static let lastTimeAppOpened = "LastTimeAppOpened"
    static let cart = "Cart"
    static let userProfile = "UserProfile"
}

let cartItems = ["Apple", "Mango", "Soda"]
defaults.set("Monzer", forKey: UserDefaultsKeys.myName)
defaults.set(1, forKey: UserDefaultsKeys.myID)
defaults.set(Date(), forKey: UserDefaultsKeys.lastTimeAppOpened)
defaults.set(cartItems, forKey: UserDefaultsKeys.cart)
defaults.set(["numberOfItemsinCart":cartItems.count], forKey: UserDefaultsKeys.userProfile)

let myName = defaults.string(forKey: UserDefaultsKeys.myName)
let myID = defaults.integer(forKey: UserDefaultsKeys.myID)
let lastOpening = defaults.object(forKey: UserDefaultsKeys.lastTimeAppOpened)
let userCart = defaults.array(forKey: UserDefaultsKeys.cart)
let userProfile = defaults.dictionary(forKey: UserDefaultsKeys.userProfile)


















