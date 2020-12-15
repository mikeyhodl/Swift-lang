Whale Talk
Our goal is to take human phrases like "turpentine and turtles" and translate it to its “whale talk” equivalent: "UUEEIEEAUUEE".

There are a few simple rules for translating English text to “whale language”:

There are no consonants. Only vowels: "a", "e", "i", "o", "u".
The "u"s and "e"s are extra long, so we must double them in our program.
Once we have converted text to the whale language, the result is sung slowly, as is a custom in the ocean.
Whale

Write a WhaleTalk.swift program that uses loops to accomplish this translation.

Let’s get started!

Tasks
13/13 Complete
Mark the tasks as complete by checking them off
Setting Up
1.
Create a variable named input that is equal to any phrase you’d like. This variable will contain the text we’re going to translate into “whale talk”.


Hint
Try a string like:

var input = "Swift loops? Easy peasy."
2.
Create another variable output and assign it to an empty string. This variable will contain the translated “whale talk”.


Hint
Since you’ll be adding to this empty string use the var keyword.

An empty string is a string without any characters inside ("").

Looping
3.
Create a for-in loop that iterates over each character of input. We’ll be referring to the placeholder variable as char.


Hint
Here’s a refresher on for-in syntax:

for placeholder in someSequence {
 
}
4.
While iterating through input, we may encounter some capital letters. To ensure that we check through all the letters, we will use the method .lowercased() on char. This converts any uppercase character into lowercase characters (and keeps lowercase characters the same).

Inside the body of the for-in loop, create a variable named lowerChar and assign it the value char.lowercased().


Hint
.lowercased() is a method that can be called on strings to convert the string to a lowercase string. For instance:

let yell = "AHHH"
let whisper = yell.lowercased()
 
print(whisper)  // Prints: ahhh
Translating to Whale Talk
5.
Now that we know we’re checking every character, we have to create a switch statement that checks lowerChar. We’ll add in the case statements later.

Note: Since the switch statement won’t be finished until step 10, there will be errors and warnings in the terminal as you save your code. By the end though, all red text from the errors and warnings will disappear!


Hint
The syntax for a switch statement:

switch someCondition {
  // cases will go here 
}
Make sure to still be within the body of the for-in loop when creating the switch statement.

6.
We first want to check if lowerChar is an "a", "i", or "o".

In the switch body, add a compound case statement that checks if lowerChar is any of the 3 vowels mentioned.


Hint
We’re only creating the case statement for now. In the next step, we’ll add in executable code for this case.

Here’s a refresher on the syntax for a compound case statement:

switch someCondition {
  case firstVowel, secondVowel, thirdVowel:
    // Code to add in next step
}
7.
For all three of these vowels, we only add to output one capitalized vowel.

Therefore, under the newly added case, update output by adding lowerChar.uppercased() to the end of output.


Hint
To add to the empty string output, you can use reassign it:

output = output + lowerChar.uppercased()
Or use a compound assignment operator:

output += lowerChar.uppercased()
8.
We also have to account for when lowerChar is an "e".

Add another case statement to check for "e".
In the body of the case statement, update output to add "EE" at the end.

Hint
To add on to the end of a string:

var surprise = "Yer a wizard, "
 
surprise += "Harry!"
 
print(surprise)  // Prints: Yer a wizard, Harry!
9.
The last vowel we have to check is "u".

Add another case statement to check for "u".
In the body of the case statement, update output to add "UU" at the end.
10.
We only want to add vowels, so anything else we’ll skip over.

Finish the switch statement by adding a default case. Inside the default, add the continue keyword to skip over any other characters.

Note: After finishing this step, there shouldn’t be any more errors or warnings!


Stuck? Get a hint
11.
After looping through input, our loop will have fully created output. Under the for-in loop, print out output!

Remember, when reading aloud “whale talk” is sung slowwwly… and loudly!


Hint
Use a print() statement to print output to the terminal.

Printing after the for-in loop means the final result of output is printed to the terminal. If we included the print() statement within the for-in loop, we would see how output changes as the loop iterates.

Additional Challenges
12.
Great job! (or as the whales say, “EEAO”)

If you want to challenge yourself further:

Add an additional case to the switch statement.
Allow certain consonants to be included in output.
Combine the "e" and "u" cases into a single compound case.

Hint
For the first challenge, what other characters would be interesting to include? Special characters (!, ?, $), or emojis?

For the second challenge, you’ll need to add an additional cases or add to the compound case statement.

For the third challenge, you’ll need a way to check what the case is matching.

Solutions
13.
If you want to compare your solution, here’s a sample solution: WhaleTalk.swift.

Let us know if you make something really cool!