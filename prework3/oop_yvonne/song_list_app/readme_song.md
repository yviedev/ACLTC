### The Song List App

You will create a simple application that will allow a user to create a list of favorite songs, play the songs, and view other data about the songs. It'll be like iTunes, but worse.

Similar to the Todo App, this app will have two classes, Song and List, and a list can contain many songs. You should also create a third file called runner.rb in which you can test all the functionality of your application. (This file is similar to the todo_oop.rb file above.)

A. A Song should have the following attributes:
	1. (done) title - The name of the song. 
	2. (done) artist - The creator of the song. This will be represented using a string.
	3. (done) duration - The length of a song in seconds. This will be represented by a number.
	4. (done) lyrics - The lyrics of the song. This will be represented with a string.

(done) One should be able to call the title, artist, duration, and lyrics methods on a particular Song instance to view any of those pieces of information.

(done) B. A Song should also have a play method, which will "play" the song. Depending on your hardware, how you play the Song will vary. If you're on a Mac, you can use the following to actually get your computer to sound out the lyrics:   

    `say #{@lyrics}`

Note that those quotation marks are the special backtick marks (found under the tilde). If you're on another system, or the above doesn't work, you can "play" the song by simply printing the lyrics to the terminal (using puts). No, I wouldn't buy this software either.

(done) C. A Song should have a method called "friendly_duration" which should return the duration of the Song in minutes and seconds. For example, if this method is called on a Song with a duration of 150 seconds, it should return: "2 minutes, 30 seconds."

(done) D. Songs can be added to a List. Create a method called "add_song" to do so.

(done) E. A List should a have a method called "play", which will play all of the songs in the List.

(done) F. A List should have a method called "shuffle" which will play all of the songs in the List in *random order*.

(done) G. A List should have a method called "duration" which will return the total number of seconds of the entire list, based on the sum of the durations of all the Songs in that List.


