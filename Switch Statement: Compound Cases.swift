var planet = "Earth" 

switch planet {
  case "Earth", "Mercury", "Venus", "Mars":
   print("Terrestrial planet") 
  case "Saturn", "Jupiter", "Uranus", "Neptune":
   print("Jovian planet") 
  default: 
   print("Unknown planet")
}

/*
var country = "India"
 
switch country {
  case "USA", "Mexico", "Canada":
    print("\(country) is in North America. 🌏")
  case "South Africa", "Nigeria", "Kenya":
    print("\(country) is in Africa. 🌍")
  case "Bangladesh", "China", "India":
    print("\(country) is in Asia. 🌏")
  default: 
    print("This country is somewhere in the world!")
} 

*/