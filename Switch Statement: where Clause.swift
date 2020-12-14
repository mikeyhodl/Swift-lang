var wholeNumber = 15 

case let x where x % 2 == 0:
    print("message")
  case let x where x % 3 == 0:
    print("another message here")
  default:
    print("default message")

/*
var randomNumber = Int.random(in: 0...10)
 
switch randomNumber {
  case let x where x % 2 == 0:
    print("\(randomNumber) is even")
  case let x where x % 2 == 1:
    print("\(randomNumber) is odd")
  default:
    print("Invalid")
}

switch randomNumber {
  case let x where x % 2 == 0:
    print("\(randomNumber) is even")
  case let x where x % 2 == 1:
    print("\(randomNumber) is odd")
  default:
    print("Invalid")
}
 
// Prints: 7 is odd
*/