Caesar's Cipher
The Caesar’s Cipher is one of the simplest and most widely known encryption techniques. It is named after Julius Caesar because it was used by the Roman Empire to encode military secrets.

To use the cipher, draw the alphabet in a circle like so:

Alphabet with letters arranged in a circle
Take every letter of your message and shift it three places to the right. For example:

The letter a becomes d.
The letter b becomes e.
The letter c becomes f.
The word hello becomes khoor.
Shift 3 places to turn A to D
Write a CaesarCipher.swift program that encrypts a message by shifting each letter three places to the right.

Let’s get started!

Tasks
15/15 Complete
Mark the tasks as complete by checking them off
Setting Up
1.
First, declare an array named alphabet and store the English alphabet into it:

"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"


Hint
For numbers, it will look like:

var numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
2.
Because type is inferred, the alphabet array will hold the type String. For this project, however, we want the type to be Character.

The Character type stores individual characters whereas the String type stores a sequence of characters.

Modify the declaration of alphabet by adding the type [Character].


Hint
Suppose we are creating an array called vowel of type [Character]:

var vowel: [Character] = ["a", "e", "i", "o", "u"]
It will look and feel just like a String, but now each item cannot hold more than a single character.

3.
Create a variable called secretMessage and give it the value of "hello".

This is the message that we will try to encrypt.


Hint
The code should look something like:

var secretMessage = "hello"
4.
Print secretMessage to see what we have.


Hint
It should look something like:

hello
5.
Currently, secretMessage looks like "hello", but we want it to be an array instead, like ["h", "e", "l", "l", "o"], so that we can compare its items with the items of the alphabet array.

Swift comes with a nifty array initializer, Array(), that can convert a text string to an array of Characters:

var secretMessage = "brutus"
 
var message = Array(secretMessage)
// ["b", "r", "u", "t", "u", "s"]
Convert the string to an array of Characters using Array() initializer. Store the result in a new variable called message.


Hint
Create a new variable called message and convert secretMessage from a string to an array:

var message = Array(secretMessage)
6.
Print out the message.

It should output an array now!


Hint
It should look something like:

["h", "e", "l", "l", "o"]
The Nested Loop
7.
So now that we have two arrays:

message
alphabet
Let’s think about the logic for a minute.

We want to loop through the message and replace each letter with the letter that’s three places to the right in the alphabet.

Create an empty for-in loop that iterates through the characters of message:

The iterator variable should be called i and start at 0.
It should continue as long as it is less than message.count.
Each iteration should increment by 1.

Hint
The syntax should look like:

for i in 0 ..< message.count {
 
  // Code block
 
}
We can leave the loop body empty for now.

8.
But how do we shift each of the characters in message?

Well, first, we have to compare each of the characters in message with each of the characters in the alphabet.

We need another loop inside our first loop. A loop inside another loop is called a nested loop.

Create an empty for-in loop that iterates through the characters of alphabet:

The iterable variable should be called j and start at 0.
It should continue as long as it is less than alphabet.count.
Each iteration should increment by 1.
Note: We used a different iterator variable for the inner loop.


Hint
The nested loop should look like:

for i in 0 ..< message.count {
 
  for j in 0 ..< alphabet.count {
 
    // Code inside
 
  }
 
}
Since we used i for the outer loop, we are going to use a different counter variable, j, for the inner loop.

9.
Next, inside the inner loop, we want to check whether or not message[i] is equal to alphabet[j].

Write an if statement that compares message[i] with alphabet[j].

If they are equal, change the value of message[i] to alphabet[j+3] instead.


Hint
So this will go inside the nested loop:

if message[i] == alphabet[j] {
 
  message[i] = alphabet[j+3]
 
}
If the current character in message is equal to the current character in alphabet, then we replace the current character in message with the character that’s three places to the right in alphabet.

10.
Suppose the if statement found the matching characters and have done the shifting of the character in message, it’s time to finish the inner for-in loop and move on to the next character.

So in the if statement, add a break statement.


Hint
So this will go inside the nested loop:

if message[i] == alphabet[j] {
 
  message[i] = alphabet[j+3]
  break
 
}
If the current character in message is equal to the current character in alphabet, then we replace the current character in message with the character that’s three places to the right in alphabet, and exit out of the loop.

11.
Now we have finished the bulk of the program, let’s print message after the nested loop.


Hint
It should look like:

["k", "h", "o", "o", "r"]
Bug
12.
It may seem like we have a finished program, but not so fast…

Try running the program again with a new secretMessage this time: "codecademy".

Oops, there’s a bug!

Take a look at the error message (scroll to the very top).


Hint
If we scroll to the top of the error message, it should say:

Fatal error: Index out of range
13.
So what went wrong?

When the program tried to encrypt the "y" in ["c", "o", "d", "e", "c", "a", "d", "e", "m", "y"], it found its index in the alphabet, 24.

But when it looked up the letter 3 spaces to the right, which would be alphabet[27], it threw an error because the alphabet only has 26 elements! It is “out of range”.

To fix this, we can “wrap around” the alphabet by using the remainder operator: %.

On the line where we replace the current character in message, change alphabet[j+3] to alphabet[(j+3) % 26].

Now the new letter position will never go beyond 26.


Hint
if message[i] == alphabet[j] {
  message[i] = alphabet[(j+3)%26]
  break
}
Optional
14.
Congrats! You have created the infamous Caesar Cipher. 👏

If you’re up for a challenge, try to implement the following:

The encrypted message currently comes out of the encryption as an array. Is there a way to convert it to a String?
Sometimes we might need to encrypt a text string that includes capital letters. Is there a way to make sure all the letters are lowercased before the encryption process starts?

Hint
To convert an array to a text string, try searching for “convert array to string swift”. Remember, Google search is a developer’s BFF.

To create a lowercase version of a text string, try looking up the .lowercased() method.

Solutions
15.
Sample solution(s):

CaesarCipher.swift
P.S. If you make something cool, share it with us!