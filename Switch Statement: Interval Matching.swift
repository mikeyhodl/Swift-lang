var episode = 220
var villain: String 

switch episode {
  case 1...3: 
    villain = "Emperor Palpatine"
  case 4...6: 
    villain = "Darth Vader"
  case 7...9:
    villain = "Kylo Ren"
  default:
    villain = ""
}

print(villain)

/*
var year = 1943
 
switch year {
  case 1701...1800:
    print("18th century") 
  case 1801...1900:
    print("19th century")
  case 1901...2000: 
    print("20th century")
  case 2001...2100: 
    print("21st century")
  default: 
    print("You're a time traveler!")
} 
// Prints: 20th century

*/