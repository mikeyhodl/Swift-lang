Structured Gym Regimen
When exercising it’s really helpful to have a goal in mind and a plan to achieve that goal. While everyone’s goals are different, we can use structures to devise a plan and keep us on track!

We’ll first create a structure for our exercises. We’ll use this structure to keep track of:

its name.
what muscle groups it targets.
how many repetitions (reps) we should do in one go.
how many rounds of repetitions we should do (sets).
How many total reps we’ll be doing.
Another structure we’ll need to keep track of all these exercises is for our regimen! This structure will:

track the day of the week.
store the exercises we should do for a given day.
include a method to remind us of a given day’s workout regimen.
Are you ready to work this out? 🏋️‍♀️

Tasks
18/18 Complete
Mark the tasks as complete by checking them off
Creating the Exercise Structure
1.
In Exercise.swift, we’ll create our regimen program!

To start, we’ll create a structure named Exercise that will model real-life exercises. But before we write any code, let’s review what properties go into Exercise.

This structure should:

have a name.
a list of muscle groups that the exercise targets.
track how many repetitions (reps) are done in one go.
track how many sets, or rounds of repetitions, we should do.
tally up the total amount of reps.

Hint
We’ll add code in this next step, but before coding, we should have a plan of what we want to code up.

2.
Since we know what properties we need to include in Exercise, lets code it up!

Create a structure named Exercise with the following properties and their types:

name with type String.
muscleGroups with type [String].
reps with type Int.
sets with type Int.
totalReps with type Int.

Hint
Use the struct keyword to make a structure. Then, to assign properties, use the var keyword followed by the name and then a : with the type, like so:

struct Example {
  var someString: String
  var anInteger: Int
  var anArrayOfIntegers: [Int]
}
Wrapping a type with brackets, [ ], means we’re typing the variable to store an array containing the specified type. In the example above, anArrayOfIntegers is typed to an array of Ints.

3.
With our properties set up, we can now create the init() method.

The init() method should have the following parameters:

name: String
muscleGroups: [String]
reps: Int
sets: Int

Hint
The init() method does not need the func keyword. Here’s a refresher on the syntax:

init(firstParam: String, secondParam: [String]) {
 
}
We didn’t include totalReps since we can calculate that using reps multiplied by sets.

4.
Inside the init() method, assign the parameter values to the properties:

self.name takes on the value of name.
self.muscleGroups takes on the value of muscleGroups.
self.reps takes on the value of reps.
self.sets takes on the value of sets.
self.totalReps takes on the value of reps multiplied by sets .

Hint
The init() method does not need a func keyword:

init(param1: Type, param2: Type) {
  self.param1 = param1
  self.param2 = param2
}
If you want to compare your code, it should look like:

struct Exercise {
  var name: String
  var muscleGroups: [String] 
  var reps: Int
  var sets: Int
  var totalReps: Int
 
  init(name: String, muscleGroups: [String], reps: Int,  sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps 
    self.sets = sets
    self.totalReps = sets * reps 
  }
}
Adding Exercise Instances
5.
Using the Exercise structure, we can make instances of exercises! One common and useful exercise to gain muscle is the push-up.

Create a variable called pushUp that is an instance of Exercise with the following arguments:

name: "Push up".
muscleGroups: ["Triceps", "Chest", "Shoulders"]
reps: 10
sets: 3
You may want to change the values to suit your goals but we’ll be using this example in the later steps.


Hint
To create an instance use the following syntax:

var newInstance = StructureName(argLabel: "Value")
Also, go ahead and have fun with it! If you don’t like push-ups and prefer something else go ahead and substitute it for another value. Just keep in mind that you might have to adjust your code slightly later on.

If you’re using push-ups, your code should look like:

var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)
6.
Print out pushUp to check that the instance was created properly.

Once it’s confirmed that it works and there are no errors, you can safely remove the print() statement.

You can take a pause here to create even more Exercise instances if you want, like sit-ups or squats. If not, go on to create the regimen structure. The power is in your hands!


Hint
It’s good to get some feedback to see that your code is working properly before building other code on top of it. Here you’re using a print() statement and since it’s not needed later on, once you see that the values are correct, it is safe to remove it.

Your output should look like:

Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3, totalReps: 30)
Creating The Regimen Structure
7.
With our Exercise instance(s) set up, we can now create another structure that holds the template for each day of the week. Once again, let’s set up a plan before we commit to writing any code.

This structure will model a regimen that keeps track of our day’s exercises. For example, we’ll have a Monday regimen that contains the exercises we want to do on Mondays. Tuesday’s regimen will contain another list of exercises that are done on Tuesdays.

This means we’ll need a structure to:

Keep track of what day of the week it is.
Store an array of Exercise instances.

Hint
A regimen is a plan for what exercise we should do in one sitting. We’ll model this regimen in the next steps!

8.
Time to implement this regimen structure!

Create a structure called Regimen that has the following properties:

dayOfWeek with type String.
exercises with type [Exercise].

Hint
Use the struct keyword to make a structure. Then, to assign properties, use the var keyword followed by the name and then a : with the type, like so:

struct Example {
  var someString: String
  var anArrayOfIntegers: [Int]
}
9.
In the body of init(), assign:

self.dayOfWeek the value of dayOfWeek.
self.exercises the value of exercises.

Hint
Your code should look like:

struct Regimen {
  var dayOfWeek: String 
  var exercises: [Exercise]
 
  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }
}
10.
Time to check that the Regimen structure works.

Create an instance of Regimen called mondayRegimen that has the arguments:

dayOfWeek: "Monday"
exercises: [pushUp]
Then print out the value of mondayRegimen.


Hint
To create an instance use the following syntax:

var newInstance = StructureName(argLabel: "Value")
If you decided to use a different exercise your code will look different from what the instructions ask you to do specifically.

If you only added in pushUp, your output should look like:

Regimen(dayOfWeek: "Monday", exercises: [Exercise.Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3, totalReps: 30)])
Forming an Exercise Plan
11.
Let’s add a method to the Regimen structure to make it even more useful. This method will print out what day of the week it is and what exercises to do and how many times to do them for.

Inside the Regimen struct, create a method called printExercisePlan() that doesn’t have any parameters and doesn’t return anything.


Hint
This method does require a func keyword followed by the name of the method, like so:

func sampleMethod() {
}
12.
Inside the method, add a print statement that tells you what day of the week it is and a little introductory phrase like:

Today is [Day of the week] and the plan is to: 
Sub in self.dayOfWeek for [Day of the week].


Hint
You can change up your phrase! Use whatever you want as an encouragement!

Your method should look like:

func printExercisePlan() {
  print("Today is \(self.dayOfWeek) and you're going to:")
}
13.
Since self.exercises is an array of Exercise instances, let’s loop through each one.

Add a for-in loop that iterates over self.exercises and uses exercise as the placeholder variable.


Hint
To create a for-in loop:

for placeholderVar in someArray {
}
Your code should look like:

func printExercisePlan() {
  print("Today is \(self.dayOfWeek) and you're going to:")
  for exercise in self.exercises {
 
  }
}
14.
We can use the loop with some print() statements that say what to do and how many times to do it.

Inside the loop you just created, add a print() statement that says:

Do [Number of sets] sets of [Number of reps] [Exercise name]s
Use string interpolation to replace the values in [ ] with the correct property values.


Hint
Since each exercise is represented by our placeholder variable ( exercise), the first value is exercise.sets, followed by exercise.reps, and lastly exercise.name.

The full print statement is:

print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
After adding the print() statement inside the for-in loop, your code should resemble:

func printExercisePlan() {
  print("Today is \(self.dayOfWeek) and you're going to:")
  for exercise in self.exercises {
    print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
  }
}
15.
Let’s add one more print() statement to list out how many total repetitions are required.

It should output something like:

That's a total of [Total exercise reps] [Exercise name].
For our pushUp example it would print out:

That's a total of 30 Push ups

Hint
Since each exercise is represented by our placeholder variable ( exercise), the first value is exercise.totalReps and then exercise.name.

The full print statement is:

print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
The full method should look like:

func printExercisePlan() {
  print("Today is \(self.dayOfWeek) and you're going to:")
  for exercise in self.exercises {
    print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
    print("That's a total of \(exercise.totalReps) \(exercise.name)s")
  }
}
16.
Check .printExercisePlan() in action by calling it on mondayRegimen.


Hint
To call the method, append the method name with parentheses to the instance name using dot notation like so:

sampleInstance.sampleMethod()
The output should resemble:

Today is Monday and you're going to:
Do 3 sets of 10 Push ups
That's a total of 30 Push ups
Additional Challenges
17.
Congratulations, you made your very own regimen using structures!

This project creates the basis of an app but it’s not fully complete. You can customize it to your liking. If you want to challenge yourself further:

Create additional Exercise instances.
Create additional Regimen instances.
Add a mutating method to the Regimen structure to add exercises.
Solutions
18.
If you want to compare your solution, here’s a sample solution: Exercise.swift.

Let us know if you make something really cool!