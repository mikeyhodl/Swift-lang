/*
A variable represents a particular piece of your computer’s memory that has been set aside for you to use to store, retrieve, and manipulate data.
Variables are declared using the var keyword.
Constants are declared using the let keyword.
Swift basic data types include:
Int: integers
Double: floating-point numbers
String: a sequence of characters
Bool: true/false
Single equals sign = indicates assignment.
Arithmetic operators include +, -, *, /, %.
Compound assignment operators include +=, -=, *=, /=, %=
*/

var height: Double = 1.71
var weight: Double = 92
var bmi: Double
 
bmi = weight / (height * height)
 
print("Your BMI is \(bmi)")

