import UIKit

let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first

let carsCompaniesFilePath = dataFilePath?.appendingPathComponent("Cars.plist")

class Cars: Codable {
    var name: String = ""
    var subName: String = ""
    
    init(name:String,subName:String) {
        self.name = name
        self.subName = subName
    }
}

var carsArray: [Cars] = [Cars.init(name: "BMW", subName: "Class A"), Cars.init(name: "AUDI", subName: "Class A")]

// Encoding Data
func saveCars() {
    let encoder = PropertyListEncoder()
    
    do {
        let data = try encoder.encode(carsArray)
        try data.write(to: carsCompaniesFilePath!)
    } catch {
        print("Error encoding cars array, \(error)")
    }
}

saveCars()

// Decoding Data
func loadCars() -> [Cars] {
    var cars = [Cars]()
    if let data = try? Data(contentsOf: carsCompaniesFilePath!) {
        let decoder = PropertyListDecoder()
        do {
            cars = try decoder.decode([Cars].self, from: data)
            return cars
        } catch {
            print("Error decoding cars array, \(error)")
            return []
        }
    }
    return []
}

print(loadCars()[0].name)
