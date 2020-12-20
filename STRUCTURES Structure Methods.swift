struct Band {
  var genre: String
  var members: Int
  var isActive: Bool
  
  init(genre: String, members: Int, isActive: Bool) {
    self.genre = genre
    self.members = members
    self.isActive = isActive
  }
  
  // Add your method below 🤘
  func pumpUpCrowd() -> String {
    if self.isActive {
      return "Are you ready to ROCK?"
    } else {
      return "..."
    }
  }
  
}

// Create your instance below 🎸 🥁 
var fooFighters = Band(genre: "rock", members: 6, isActive: true)

print(fooFighters.pumpUpCrowd())
