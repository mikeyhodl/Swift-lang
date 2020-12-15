99 Bottles of Milk
If you have ever been stuck in a car during a long drive, you might have sung some fun, repetitive songs to help pass the time. One of those songs may have been the “99 Bottles of Milk” song.

The first verse of this song goes like this:

“99 bottles of milk on the wall, 99 bottles of milk!
You take one down and pass it around…
98 bottles of milk on the wall!”

The following verse repeats the lyrics above, except this time it would start with 98 bottles and end with 97 bottles; then, the lyrics would continue to repeat over and over again until we are left with 0 bottles of milk. When you think about it, that’s a lot of repetition!

Write a program in Bottles.swift that uses a while loop to print the “99 Bottles of Milk” song in its entirety.

Tasks
8/8 Complete
Mark the tasks as complete by checking them off
Creating a Loop
1.
Declare an Int variable called numBottles. Give numBottles a value of 99.

This variable will represent how many bottles of milk are on the wall.


Hint
We can declare an Int variable with the following syntax:

var number_of_apples: Int = 15
We can also declare a variable without a type using this syntax:

var number_of_oranges = 50
2.
Create a while loop that repeatedly executes a block of code as long as the value of numBottles is greater than 0.

You can leave the body of the loop empty for now.


Hint
Our loop should continue to repeat itself while the value of numBottles is greater than 0. The syntax may look like this:

while numBottles > 0 {
  // write the body of the loop here
}
Making the Song
3.
Add the song lyrics as print() statements to the body of the loop. The output should look something like this:

[numBottles] bottles of milk on the wall, [numBottles] bottles of milk!
You take one down and pass it around…
[numBottles] bottles of milk on the wall!
Not a fan of milk? Feel free to use a different kind of drink!


Hint
We can use several print() statements to accomplish this task! For example, here’s what the first print() statement could look like:

print ("\(numBottles) bottles of milk on the wall, \(numBottles) bottles of milk!")
4.
Inside the loop, decrease the value of numBottles by 1 before the last line of the verse gets print()ed.


Hint
Decrease the value of numBottles before you print the last line of the verse because the last line states the updated number of bottles on the wall!

Your code should something look like this:

while numBottles > 0 {
 
  print ("\(numBottles) bottles of milk on the wall, \(numBottles) bottles of milk!")
  print ("You take one down and pass it around...")
  // Decrease the value of numBottles by 1 here
  print ("\(numBottles) bottles of milk on the wall!\n")
 
}
If we don’t decrease the value of numBottles, we’ll end up creating an infinite loop.

We can decrease the value of numBottles with the following syntax:

numBottles = numBottles - 1
Or using the -= compound assignment operator:

numBottles -= 1
5.
Outside of the while loop, add the final lyrics of the song as a print() statement to your program:

0 bottles of milk on the wall, 0 bottles of milk!
Go to the store and buy some more,
99 bottles of milk on the wall!
Remember, this should only be printed after numBottles has a value of 0.


Hint
We should add this code outside of the while loop so that it only print()s after numBottles has a value of 0.

If we want to print everything using only one print() statement, we can use \n to print new lines of text. Take a look at the following syntax that turns one print() statement into three lines of text!

print ("\(numBottles) bottles of milk on the wall, \(numBottles) bottles of milk!\nGo to the store and buy some more,\n99 bottles of milk on the wall!")
Will output:

0 bottles of milk on the wall, 0 bottles of milk!
Go to the store and buy some more,
99 bottles of milk on the wall!
6.
Run your code to make sure everything works!


Hint
If the code runs correctly, we should see a lot of text in the terminal. Make sure to check that numBottles decreases from 99 to 0! Your output should look something like the following:

99 bottles of milk on the wall, 99 bottles of milk!
You take one down and pass it around...
98 bottles of milk on the wall!
 
98 bottles of milk on the wall, 98 bottles of milk!
You take one down and pass it around...
97 bottles of milk on the wall!
By the end, your output should look like this:

1 bottles of milk on the wall, 1 bottles of milk!
You take one down and pass it around...
0 bottles of milk on the wall!
 
0 bottles of milk on the wall, 0 bottles of milk!
Go to the store and buy some more,
99 bottles of milk on the wall!
Optional
7.
Great job completing this project! Feeling on a roll? Keep it up by checking out these additional tasks!

Complete this project again using a for-in loop.
Assign the lyrics of the song to some String variables.
Find another repetitive song to create a program for. For example: “Five Little Monkeys Jumping On The Bed”

Hint
When creating the for-in loop for the first challenge, you may want to use the stride() function to create a decrementing loop that starts at 99 and ends at 0.

In the second challenge, you will need to initialize some String variables that contain the lyrics as data, like in the following example:

var verse1: String = "\(numBottles) bottles of milk on the wall, \(numBottles) bottles of milk!"
In the third challenge, create a variable that represents how many monkeys are jumping in the bed.

Solutions(s)
8.
Sample solutions:

Bottles.swift
FiveLittleMonkeys.swift
P.S. If you make something cool, share it with us!