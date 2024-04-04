import Foundation

struct Tree{
    let code: String
    var circumference: Double? = nil
    var age: Int? = nil
    var growthFactor: Double? = nil
    var species: String? = nil
    var longitude: Double? = nil
    var latitude: Double? = nil
    var location: TreeLocation?
    var logged: Bool
    
    init(code: String, circumference: Double, species: String, growthFactor: Double, longitude: Double, latitude: Double) {
        self.code = code
        self.circumference = circumference
        self.species = species
        self.growthFactor = growthFactor
        self.age = Int((self.circumference!/3.14) * self.growthFactor!)
        self.latitude = latitude
        self.longitude = longitude
        logged = true
    }
    
    init(code: String){
        self.code = code
        logged = false
    }
}

extension Tree: Identifiable {
    var id: String { code }
}
