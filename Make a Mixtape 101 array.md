Make a Mixtape 101
It is the era of the cassette tape and making a homemade mixtape for that special someone is no laughing matter. It’s serious business! ♪♪

“The making of a good compilation tape is a very subtle art. Many do’s and don’ts. First of all, you’re using someone else’s poetry to express how you feel. This is a delicate thing.” - High Fidelity

Cassette Tape

Write a program in Mixtape.swift that holds the ultimate playlist of music in a Swift array.

Let’s get started!

Tasks
10/10 Complete
Mark the tasks as complete by checking them off
Setting Up
1.
An impressive compilation tape has a theme and conveys a message. Think about the person you are making the tape for and what you hope to express to them.

Write a comment at the top of the program with the theme of your mixtape.


Hint
To write a single-line comment, use //:

// Theme: 💔
To write a multiline comment, use /* and */:

/* 
  Make a Mixtape 101
  Theme: 💔
*/
2.
Next, think of a name for the playlist!

Copy and paste the following ASCII art into the program:

print(".------------------------.")
print("| mixtape name    90 min |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")
And print the name of your playlist within it.


Hint
Add the name of your mixtape within the second print() statement. Feel free to leave some room in the title for the duration of your mixtape.

Choose Your Songs
3.
Declare an array called mixtape that stores String values.


Hint
To create an empty array of a certain type, we can use the initializer syntax:

var arrayName = [Type]()
Suppose we want to create an empty array called mixtape of the type String:

var mixtape = [String]()
4.
Take some time to find ten or more songs that you want to add the playlist.

As you are finding them, use .append() to add them to the mixtape array.

Make sure to include both the artist name and the song title.


Hint
The .append() method can be called to add a new item to the end of an array.

For example:

mixtape.append("Xanny Bar - Porches")
mixtape.append("Spirit Was - LVL UP")
mixtape.append("Soul Love - David Bowie")
mixtape.append("First Love / Late Spring - Mitski")
Less Is More
5.
“Making a tape is like writing a letter – there’s a lot of erasing and rethinking and starting again.” - High Fidelity

Less is more! Don’t just dump all your favorite songs onto the mixtape. If you want to send a message, be spare with your selections. Use only what you need to say what you want, and nothing more.

Use the .count property to determine the number of songs in your mixtape. Wrap it in a print() statement to output that number.


Hint
The .count property finds out the number of items in an array:

print(mixtape.count)
6.
This compilation tape should not contain any fillers. Every song should be gold and from the heart. And a super long album sometimes gets stale.

Use the .remove() method to take out one or two of the songs.


Hint
To remove an element at index 2:

mixtape.remove(at: 2)
Order
7.
“The making of a great compilation tape, like breaking up, is hard to do and takes ages longer than it might seem. You gotta kick off with a killer, to grab attention. Then you got to take it up a notch, then you got to cool it off a notch.” - High Fidelity

Order your songs carefully. Putting tracks in the perfect order is part of the art of the mixtape. Consider the narrative, tonal, emotional and musical arc of the mixtape. Craft your songs into a story.

Use .remove() and .insert() methods to delete and add more tracks.


Hint
For example, to add a new song at the beginning of the mixtape:

mixtape.insert("You Swan, Go On - Mount Eerie", at: 0)
Tracklist
8.
Last but not least, let’s print out the tracklist using a for-in loop so that the output looks something like:

Porches - Xanny Bar 
Mitski - First Love / Late Spring
Quarterbacks - Center
LVL UP - Hookwink'd
LVL UP - Spirit Was
Mount Eerie - Great Ghosts
Mount Eerie - You Swan, Go On
The Microphones - I Felt Your Shape
Posture - Circles
David Bowie - Soul Love
Porches - rangerover
Mitski - Last Words of a Shooting Star

Hint
The for-in loop should look something like:

for item in arrayName {
  print(item)
}
Optional
9.
Create a tracklist for the two sides of the compilation tape, “Side A” and “Side B”, using for-in loop(s). For example:

Side A:
 
1.  Porches - Xanny Bar 
2.  Mitski - First Love / Late Spring
3.  Quarterbacks - Center
4.  LVL UP - Hookwink'd
5.  LVL UP - Spirit Was
6.  Mount Eerie - Great Ghosts
 
Side B:
 
7.  Mount Eerie - You Swan, Go On
8.  The Microphones - I Felt Your Shape
9.  Posture - Circles
10. David Bowie - Soul Love
11. Porches - rangerover
12. Mitski - Last Words of a Shooting Star

Hint
There are two ways to accomplish this:

Using one for-in loop that iterates through the whole array.
Using one for-in loop that iterates through the first half of the array and another that iterates through the second half.
Solutions
10.
Take out your boombox and throw on your denim jacket. It’s time to play the songs from the top!

Solutions:

AwesomeMixVol1.swift
Taylor.swift
If you make something cool, share it with us!