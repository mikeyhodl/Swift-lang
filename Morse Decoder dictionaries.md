Morse Decoder
Morse code, named after American artist Samuel Finley Breese Morse, is a method of telecommunication that visually encodes letters into unique combinations of dots . and dashes -:

morse gif

Morse code has been used as a communication aide in aviation, radio, assistive technology, and more.

Here are a few rules to know when deciphering a Morse code message:

Each character is separated by a single space.
Each word is separated by three spaces.
Capitalization does not matter.
In this project, we are going to write a Swift program that uses dictionaries to encrypt and decrypt secret Morse code messages.

Tasks
27/27 Complete
Mark the tasks as complete by checking them off
Setting Up
1.
Take a look at the two variables at the top of Morse.swift: englishText and secretMessage.

As we work through this project, we’ll first figure out how to translate englishText into Morse code.

After we’ve gotten a little comfortable with seeing Morse code, we’ll finish the project off with deciphering secretMessage.


Hint
Both variables have String type data.

2.
Create a dictionary called letterToMorse that stores individual letters of the alphabet as String type keys and their morse counterpart as String type values.

To find the translated values, feel free to do your own research or check out this helpful guide.


Hint
The key-value pairs of the letterToMorse dictionary should look as follows:

[
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--.."
]
Turning Text into Morse Code
3.
Create an empty String called morseText. This value will store the encrypted message.


Hint
To create an empty string, append "" after the assignment operator:

var emptyText = ""
4.
Use a for-in loop to iterate through each character in englishText.

Name the placeholder element.


Hint
To loop through a String, use the following syntax:

for element in stringName {
  // Add body here
}
5.
Inside the for-in loop, create an if-let statement that assigns a variable called morseChar to the value of a key in the dictionary letterToMorse.

The key that will be used is the placeholder value element.

When you run this code, you will receive an error, but we will fix this in the next step.


Hint
The syntax for assigning a variable the value of a dictionary key via an if-let statement is as follows:

if let newVariable = dictionaryName[Key] {
  // Add body here
}
6.
When you ran the code in the last step, you may have received the following error:

error: cannot subscript a value of type '[String : String]' with an index of type 'Character'
The lettersToMorse dictionary has [String: String] type values and the variable element is of type Character. The difference in data type is causing this issue.

To fix this, change element‘s type inside letterToMorse[element] to a String type using string interpolation: "\(element)".


Hint
In this step, place element inside a String using string interpolation like so:

if let morseChar = letterToMorse["\(element)"]{
  // Add body here
}
7.
Inside the body of the if-let statement, modify morseText by appending morseChar as well as a space " " to the end of the value.

We add a space after morseChar so that each letter in morseText is separated by a single space. Doing this makes the message readable and easier to translate.


Hint
We can use the compound assignment operator += to append text to the end of a String:

morseText += morseChar + " "
8.
Create an else statement.

Inside the else statement, modify morseText by appending three spaces " " to the end of the value to represent the space between new words.


Hint
We can use a compound assignment operator += to append three spaces to morseText:

} else {
  morseText += "   "
} 
We are adding three spaces because in Morse code, three spaces represents the spacing between words.

9.
Great job! Now that we’ve finished populating morseText, let’s take a look at our encoded message.

Outside of the for-in loop, use print() to output morseText.


Hint
The output should be:

- .... .. ...   .. ...   .-   ... . -.-. .-. . -   -- . ... ... .- --. .
Storing a Decoded Message
10.
Create an empty String called decodedMessage.

This variable will eventually store the decoded version of secretMessage.


Hint
The syntax should look like this:

var secretMessage = ""
Creating an Array of Morse Code Letters
11.
In order to decode the secret message, we need to separate the value of secretMessage into individual Morse code letters.

We are going to use an array to store these individual Morse code letters.

Create an empty String array called morseCodeArray.


Hint
To create an empty String array, we can use the following code:

var emptyArray = [String]()
12.
Create an empty String called currMorse.

Since we’re going to be looping through secretMessage and a single Morse letter code can contain several characters, we’ll use currMorse to keep track of our current Morse code letter.


Hint
The syntax for the step could look like this:

var stringVariable = ""
We could also initialize a variable as a String type with this syntax:

var stringVariable: String = ""
13.
We are going to iterate through each character of secretMessage.

One of the rules of Morse code is that each letter is separated by a single space, while each word is separated by three spaces.

We are going to use this information to figure out when we hit a new letter or a new word in secretMessage in our loop.

Do the following:

Create a for-in loop that iterates through secretMessage.

Name the placeholder value char.

Leave the body empty for now.


Hint
To iterate through a String using a for-in loop, we can use the following syntax:

for placeHolder in stringVariable {
  // Add body of code here
}
For example, we had a String named animal that had a value of "penguin", we could loop through each character using this syntax:

var animal = "penguin"
for char in animal {
  print(char)
}
If we ran this code, we would get this result:

p
e
n
g
u
i
n
14.
Inside of our for-in loop, we want to check the character value of the current iteration. When the iteration is a space " ", we will need to treat it differently than other other characters.

Create an if statement that executes when the value of char is not a space " ".

Inside the if statement, append the value of char to currMorse.


Hint
If we want to use an if statement to check if the value of a character is not a space, we can use the following syntax:

if char != " " {
  currMorse.append(char)
}
15.
Create an else statement. This code will only execute when the value of char is a space.

Inside of the else statement, create a switch statement accepts currMorse as its expression.


Hint
The syntax for this step looks like this:

else {
  switch currMorse {
    // Cases will be added here
  }
}
 
16.
Inside the switch statement, set up the following cases:

Case 1: The value of currMorse is "":

Append a space " " to currMorse.
Case 2: The value of currMorse is " ":

Append a space " " to morseCodeArray.
Set the value of currMorse to "".
Default Case:

Append the value of currMorse to morseCodeArray.
Set the value of currMorse to "".
Think about why the cases are set up the way they are and what this switch statement accomplishes. Take a look at the hint below for further explanation.


Hint
The full switch statement will look like this:

switch currMorse {
  case "": 
    currMorse += " "
  case " ":
    morseCodeArray.append(" ")
    currMorse = ""
  default: 
    morseCodeArray.append(currMorse)
    currMorse = ""
}
We reach this switch statement only when the value of char is a space. Now we need to figure out if this a space between two Morse code letters or two Morse code words.

Our default case executes when we’ve reached the end of a Morse code letter. Since we collected all the characters we need, we will append this value to morseCodeArray. Then, we will reset the value of currMorse to "" so we can start building the next Morse code letter.

The second case will be run if currMorse has a value of a single space (" "). This means that we are working with the second space between two Morse code words. We will reflect this spacing between words by appending a single space (" ") to morseCodeArray. Once this is done, we reset currMorse to have a value of "".

The first case executes when currMorse has an empty String value (""). This means we may have hit the first space between two Morse code letters. In this statement, we will change currMorse to have a value of a single space (" "). If it is a space between two words, in the next iteration, the second switch case will be true and a space(" ") will be appended to morseCodeArray.

17.
Outside of the for-in loop, finish populating morseCodeArray by appending currMorse.

Print the value of morseCodeArray to see each Morse code letter contained as an individual element.


Hint
Add the following code outside of the for-in loop:

morseCodeArray.append(currMorse)
The output of morseCodeArray should look like this:

["....", "---", ".--", "-..", "-.--", " ", ".--.", ".-", ".-.", "-", "-.", ".", ".-."]
Creating A New Dictionary
18.
In the second step of this project, we created a dictionary that stores letters as keys and Morse code as values. Now, we are going to flip this by creating a new dictionary with morse keys and letter values.

Instead of initializing it with all the values, we are going to loop through letterToMorse to populate our new dictionary.

Create an empty dictionary called morseToLetter with String type keys and String type values.


Hint
There are two methods of declaring an empty dictionary.

Empty dictionary literal method:

var dictionaryName: [String: String] = [:]
Initializer syntax method:

var dictionaryName= [String: String]()
19.
Create a for-in loop that iterates through the keys and the values of the letterToMorse dictionary.

Name the key placeholder letter and the values placeholder morseChar.


Hint
To create a for-in loop that iterates through the keys and the values of a dictionary, we need to use the following syntax:

for (key, value) in dictionaryName {
  // Add code here
}
20.
We are going to populate morseToLetter.

In the body of the loop, add a key-value pair to morseToLetter with morseChar as the key and letter as the value.

Outside of the loop, output the value of morseToLetter to check if all the values look correct. If everything looks okay, feel free to delete this print() statement.


Hint
We are going to take the keys and values from one dictionary and add them to a second dictionary where the original values will now be keys and the original keys will now be values.

The syntax for this task will look something like this:

for (originalKey, originalValue) in originalDictionary {
  newDictionary[originalValue] = originalKey
}
Decoding The Message
21.
It’s time to decode the secret message!

Create a for-in loop that iterates through morseCodeArray. Name the place holder morseValue.


Hint
To iterate through an array using a for-in loop, we can use this syntax:

for placeHolder in ArrayName{
  // Add body of loop here
}
22.
Inside the loop, we are going to create a variable that will be assigned the value associated with the key morseValue in the morseToLetter dictionary.

Create an if-let statement that declares a letterChar variable that stores the value of morseToLetter[morseValue] only if the morseToLetter dictionary contains a key of morseValue.

Leave the body of the if-let statement empty.


Hint
To assign a variable the value associated with a dictionary key using an if-let statement, we can use the following syntax:

if let newVariable = dictionaryName[keyValue] {
  // if the key is in the dictionary, this will execute
}
 
23.
In the body of the if-let statement, append the value of letterChar to decodedMessage.

This action adds the translated letter to to our decodedMessage variable.


Hint
To append a new character to a String, we can use a compound assignment operator like so:

var stringMessage = "penguin"
stringMessage += "s"
print(stringMessage)  // Prints: penguins
24.
We can assume that, if morseValue does not exist as a key within morseToLetter, then the value of morseValue is a space.

Add an else statement underneath the newly created if-let statement. In the body of the else statement, append a space to the end of decodedMessage.


Hint
We can append a space to a String using this syntax:

decodedMessage += " "
25.
Print decodedMessage to find out what the secret message is!


Hint
If everything works, we should get the following output:

howdy partner!
Optional
26.
Great job completing this project!

If you want to keep challenging yourself, check out these additional tasks:

Add punctuation marks like ., ?, ,, and ! to your dictionary.
Modify your code to make all the characters in a message lower case before being translated into Morse code.
Modify your code to make the first letter of each sentence capitalized when translating from Morse code to text.

Hint
The punctuation marks translate into Morse code like this:

[
  ".": ".-.-.-",
  "?": "..--..",
  ",": "--..--",
  "!": "-.-.--"
]
To make all the characters in a String value lowercase, use the .lowercased() method.

You can read more about this method in the Swift Developer Documentation.

To capitalize the first letter of a sentence, iterate through the decoded message. After finding a period ("."), find the first letter character that appears and capitalize it using .uppercased().

Solution(s)
27.
Sample Solution(s):

Morse.swift
PS: If you make something cool, share it with us!