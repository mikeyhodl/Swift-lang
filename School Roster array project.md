School Roster
You have been hired by a school to help them sort their student roster.

After a database failure, the school has lost its entire student roster. Fortunately, the school was able to get lists of the students who are enrolled in each class.

It’s your job to help sort this data and provide the school with valuable information using sets.

Good luck!

worm in apple

Tasks
11/11 Complete
Mark the tasks as complete by checking them off
All Student Roster
1.
Take a look at the 6 sets in Roster.swift.

Each set contains the names of students who are currently enrolled in a specific class. Students can take multiple classes, so there is overlapping data between several of the sets.

Use the set operation .union() to combine all the students into one set called allStudents.

You may need to use the .union() several times to achieve this goal.


Hint
Use .union() to combine all students in each class.

To create a set that contains all the students in german101, spanish101, and advancedCalculus, we can use the following code:

var allStudents = spanish101.union(german101)
allStudents = allStudents.union(advancedCalculus)
Another option for combining multiple sets using .union() is:

var allStudents = spanish101.union(german101).union(advancedCalculus)
2.
The school wants to know the names of all the students and how many students are currently enrolled in at least 1 class.

Use a for-in loop to iterate through allStudents and print() the name of each individual student.

Use print() and .count() to output the total number of students.


Hint
To loop through a set, we can use the following syntax:

for placeholder in setName {
  // Add code here
}
To get the number of items in a set, we can use this code:

print(setName.count)
In total, there are 17 individual students.

Language Classes
3.
The school needs to know which students aren’t taking any language classes.

Create a set called noLanguage that contains the students who aren’t taking either german101 or spanish101 by using the .subtracting() operation.

Output these names to the terminal.


Hint
Create a set that combines the values of the sets german101 and spanish101 using .union().

Then, use .subtracting() to subtract the german101/spanish101 combined set from the allStudents set.

You should get the following values in your final set:

["Jasmine", "Gabby", "Ana", "Galina", "Samantha", "Aldrian", "Vanessa"]
4.
Administration wants to know which students are taking either spanish101 or german101, but not both.

Use the set operation .symmetricDifference() to store the names of these students in a set called spanishOrGerman.

Print spanishOrGerman to the output terminal.


Hint
Use symmetricDifference() with the sets spanish101 and german101 to find out which students are present in at least one set but not both.

To use .symmetricDifference() in Swift, check out this syntax:

var setC = setA.symmetricDifference(setB)
The students taking at least one language class but not both are:

["Kenny", "Sonny", "Adam", "Cynara", "Skyla", "Alif", "Aldany"]
5.
The school offers a language award to any student who takes all three of the following classes: spanish101, german101, and englishLiterature.

Use the set operation .intersection() to create a set called languageAwardWinners that contains any students enrolled in all three classes.


Hint
We can use the .intersection() operation to find out which values overlap between two sets.

Use this operation multiple times to find out which students are in all three classes.

For example, to find the students who take artHistory, spanish101, and computerScience, we can use this code:

var threeClasses = spanish101.intersection(artHistory)
threeClasses = threeClasses.intersection(computerScience)
print(threeClasses) // Prints: ["Skyla"]
We can also use method chaining for getting the overlapping data from three of the classes:

var threeClasses = spanish101.intersection(artHistory).intersection(computerScience)
print(threeClasses) // Prints: ["Skyla"]
The students who are winning the language award are:

["Alex", "Angela"]
Class Size
6.
The school wants information about the number of classes that have 7 or more students.

Create a variable called sevenPlus and give it a value of 0.


Hint
To set a variable to 0, use the following code:

var number = 0
7.
Create a set called classSet that contains the set variable of each class.


Hint
To create a set that contains sets, the code will look like this:

var setName: Set = [spanish101, german101, englishLiterature, computerScience, artHistory, advancedCalculus]
8.
Use a for-in loop to iterate through each value in classSet.

Inside the for-in loop, create an if statement that checks if the number of students in each set exceeds 7 or more by using the .count property.


Hint
To loop through a set, you can use the following syntax:

for placeholder in setName {
  if placeHolder.count >= 7 {
    // Add code here
  }
}
9.
Inside the if statement, increase the value of sevenPlus by 1.

Outside of the for-in loop, print() the value of sevenPlus.


Hint
Place your code inside an if statement.

For example:

var counter = 0
if variableName.count >= 7 {
  counter += 1
}
There should be 4 classes with seven or more students.

Optional
10.
Great job completing this project!

The school wants to hire you for more work. If you’re up for the challenge, check out these additional tasks!

The student "Skyla" has transferred to a new school. Use .remove() to delete the student from any classes they are currently enrolled in.
The students from the computerScience class and advancedCalculus class are going on a field trip. Create a set called fieldTrip that combines these two sets using .union().
The day of the field trip, there is a test in german101. Use .subtracting() to remove any students in fieldTrip who are also in german101.

Hint
For challenge 1:

"Skyla" is a student in "spanish101", "artHistory", and "computerScience".
For challenge 2 and 3:

Try using .union() on the computerScience and advancedCalculus to combine the two classes. Then, use .subtracting() to remove the students who are in german101. This can be done on the same line like so:
var newSet = SetA.union(SetB).subtracting(SetC)
The following students will be attending the fieldtrip:
["Aldany", "Jasmine", "Samantha", "Galina", "Ana", "Gabby", "Sonny"]
Sample Solution(s)
11.
Sample Solution(s):

Roster.swift