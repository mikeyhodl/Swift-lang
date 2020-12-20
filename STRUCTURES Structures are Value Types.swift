struct Finch {
  var lengthInCm: Double
  var nestLocation: String

  init(lengthInCm: Double, nestLocation: String) {
    self.lengthInCm = lengthInCm
    self.nestLocation = nestLocation
  }
}

var groundFinch = Finch(lengthInCm: 15.0, nestLocation: "Bush")

// Add your code below 🐦

var cactusFinch = groundFinch 

cactusFinch.nestLocation = "Cactus"

print(cactusFinch.nestLocation)
print(groundFinch.nestLocation)
