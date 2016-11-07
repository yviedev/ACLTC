#Date: 10-30-2016
###Brian - instructor
###Carolina - TA
###Brandon - TA

##Cool new classmates
- Ray
- Ana
- Ron
- Matt
- David
- Dan
- Jigmey
- Joel

##High-level Overview:
* Rails - piece of code that someone else wrote that you can put in your file
* Git vs. Github
* HTML5
* CSS
* Bootstrap - makes rules for you. Pain in the neck (we will see on Thursday).
* Schema Design - how your data is connected to each other. Think FB (all of your posts, likes, data.) They need to be able to connect you as a user to their data.
* SQL (Structured Query Language) (PostgreSQL) - language of relational databases
    * NoSQL (Mongo)
* JavaScript - Language used in browser. Logic for your broswer
    * AngularJS - JS framework. Updates page and database at the same time

##Industry Best Practices
* Open Source
* Agile - PM organizational method
* Test Driven Development - a way to write a test to make sure it does a thing
* API's (application program interface) - your website goes to another website, grabs some info an comes back.

##Coding in the Real World:
- Professionalism
- Communication
- Making Tradeoffs
- Working with other people's code
- Working with non-technical people

Pragmatism
- Getting Things Done

Collaboration
- Taking Initiative
- Tinkering
- Always be learning

##Gists - if you copy and paste a gist link into your Medium blog it will output a code box.

##Using the terminal is much faster than navigating through UI folders.
- ls -a shows hidden files. files that start with a . are hidden/system files
- pwd tells you what folder you are in
- ls -l gives you a list
- ls -al 
- la -la does the same thing 
- clear clear terminal, but can scroll up 
- cmd k clear but can't scroll up 
- tab will autocomplete for you which you can use to make sure that you are in the right folder and to prevent typos
- ls - GF 
- teleporting - folder names need to be unique
- cd ../ go back one directory
- mkdir makes new directory (Remmber to cd into that folder)
- touch makes a new file 
- echo Text >> adds text into a new file 
- cat Filename and it will show what is in the file 
- rm removes file. Doesn't confirm delete. There is no way to recover file.
- rmdir removes empty folders 
- rm -rf will delete everything (be careful using this command)
spaces confuse terminal 
- say allows computer to speak
- history 20 shows last 20 commands that you did 
    ! command number
- cd ~ goes to home folder 
- cd / all the way to the root folder (for installing things) 
- cat filename | say => use this command to have the contents of one of the files spoken aloud

##Git
* commits - use in the present tense
    
##What am I responsible for to help me get unstuck?
##What are others responsible for to help me get unstuck?

1. My code is blowing up?
- Read the error and find the right error line
- When in doubt, p it out 
- Print the variables near the error lines

2. I don't know how to get started
- Pseudo-code
- Google

###Exercises
<http://codekata.com/kata/kata04-data-munging/>


#Date: 10-31-2016
#pair programming
#sit in a new seat
do this at the start of every class

#RoR

#benefits of open-source coding in GitHub

#setting up ssh keys for GitHub
<https://docs.google.com/document/d/19IHjU51aq1JjslFRGRpvPLmT9tPQulbqbiyd-Macq2U/edit>

#Git exercises
make a new local repo, initialize, add, commit, make exact folder on github, add remote and push

#Classes
My boss wants me to keep track of two employees using ruby code. They have 4 pieces of info - Name, Salary, Active

#Ways to store info
- hash
    * learned about symbols
- array
- class

##Exercises
- Read more about Ruby’s hash symbol syntax:
<http://alwayscoding.ca/momentos/2012/06/15/ruby-hash-syntax-hashrocket-vs-json-style/>

- Read more about how attr_reader works its magic (advanced stuff here) 
<https://mikeyhogarth.wordpress.com/2011/12/01/creating-your-own-attr_accessor-in-ruby/>

* <https://gist.github.com/riceb53/9bfa91d521f5e6ef8dfd894ddb4e3fb8>
    + Copy and paste the code from the above gist into a new file called employee.rb.
    + Create a new method in your class called full_name. It should return the first name combined with the last name. Also, if the last name ends with the letter s, it should add an “Esquire” at the end. 
    + employee1.full_name should return “Majora Carter”
    + employee2.full_name should return “Danilo Campos, Esquire”
    + Rewrite the initialize method to provide default values if they are missing from the options hash.


#Date: 11-1-2016
#notes
- stop writing 12 lines of code before running it.
- write fewer lines and then test.
- stay DRY and not WET (write everything twice)

#inheritance
- you can only inherit from one class but there can be a chain of inheritances.
- if you have a duplicate method in the child class, ruby will run that method instead of looking in the inherited class.
- learned how to make a new parent class

##`super`
- The way super handles arguments is as follows:
    - When you invoke super with no arguments Ruby sends a message to the parent of the current object, asking it to invoke a method of the same name as the method invoking super. It automatically forwards the arguments that were passed to the method from which it's called.
    - Called with an empty argument list - `super()`-it sends no arguments to the higher-up method, even if arguments were passed to the current method.
    - Called with specific arguments - `super(a, b, c)` - it sends exactly those arguments.

##other new terms
- attr_reader
- attr_writer
- attr_accessor

##hot keys for sublime
- <http://docs.sublimetext.info/en/latest/reference/keyboard_shortcuts_osx.html>

###Exercise 1
- Create a new file called inheritance_example.rb and open it in Sublime.
- Copy the Car and Bicycle class into your file: <https://gist.github.com/peterxjang/e9b69b4de36b2c41ef4b> 
- Use inheritance to DRY up the classes. Note - a car is NOT a type of bicycle, and a bicycle is NOT a type of car!
- To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car "Beeeeeeep!"
- Bonus: Read more about inheritance and object hierarchy in Ruby here: >https://www.leighhalliday.com/object-hierarchy-in-ruby>

###Exercise 2
- Create a new file called manager.rb. Paste in the code from <https://github.com/acltc/object-oriented-ruby/blob/498e769ae3d93df6b1562ad8e84bd8a1aeda398c/manager.rb> 
- Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.
- Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false. (note - you’ll have to modify the Employee class in order to accomplish this!)
- Bonus: What happens when you define a method in the Employee and Manager class with the same name? Read more about method overriding here: http://rubylearning.com/satishtalim/ruby_overriding_methods.html

###Exercise 3
- Open the inheritance_example.rb file from the previous example.
- Add car specific attributes to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (speed, type, weight, etc.). - Use the super method to keep the initialize methods DRY.
- Open the store_item.rb file you created from the previous lesson.
Some of your store items are food, which have a shelf life. Create a class called Food which inherits from your original class and has an additional property of shelf_life.
- Bonus: Read about the differences between redefining, overriding, and super. Complete the exercise at the end to get the tests to pass: https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/37-classes-inheritance/lessons/88-redefining-overriding-and-super

###Class Code
<https://gist.github.com/riceb53/f009eab172d09c862618bd117f913614>


#Date: 11-2-2016
###Modules
* anyone who can perform the functions of the module can use it.
* is different from inheritance
    - don't need to make child inherit `<`
    - use `include Module`
    - Modules are about providing methods that you can use across multiple classes - think about them as "libraries" (as you would see in a Rails app). Classes are about objects; modules are about functions.
    - For example, authentication and authorization systems are good examples of modules. Authentication systems work across multiple app-level classes (users are authenticated, sessions manage authentication, lots of other classes will act differently based on the auth state), so authentication systems act as shared APIs.
    - You might also use a module when you have shared methods across multiple apps (again, the library model is good here).

|	|class |module |
|-----|:-----:|------:                     
|instantiation |can be instantiated |can *not* be instantiated |     
|usage |object creation |mixin facility. provide a namespace. |   
|superclass |module |object |
|methods  |class methods and instance methods  | module methods and instance methods |
|inheritance |inherits behaviour and can be base for inheritance  | No inheritance |                               
|inclusion |cannot be included | can be included in classes and modules by using the include command (includes all instance methods as instance methods in a class/module) |
|extension |cannot extend with extend command (only with inheritance) | module can extend instance by using extend command (extends given instance with singleton methods from module) |   

###Structure
* Should seperate files into classes
    - require relative
    - require
    - load
* Good to name module or class the same name as file name

###Initialize methods in modules (bad idea)
- Doesn't make sense in the real world
- Initialize is: when I make a new class, I run this method

##Name Spacing
- Don't have classes of the same name (bad)

###Ruby Gems
+ Most times a class will be put inside of a module
   - **object = Module::Class.new**

###Exercise1
 - Wrap your store item files in a module called StoreFront. (note that class names aren’t named with snake case)

###Pair Programming
- Overall Ruby review
- Explain pair programming (check-in, driver, navigator)
- Share Whirlwind Ruby exercises, students work in pairs <https://docs.google.com/document/d/1Z7DaCGEwPKQOQptvBD8jd_XCSMkPBc1fW-igdZcj6a8/edit> 
- Share OOP exercise <https://gist.github.com/peterxjang/0164f3426579fef3128a>


#Date: 11-3-2016
##CSS and HTML
- **missed first 19 minutes :-(**
- change style only in CSS
- id's can only be used once
- classes can be used more than once
- a `.` is a CSS selector
- `#` is for classes
- `<div>` will separate contact and put it below the previous `<div>` tag
- `width: inherit`
    + takes the width from `<main>` and applies it that child class
- `overflow: hidden`
    + ???
- `overflow: scroll`
    + vertical scroll bar
- Media queries (??)

###Exercise 1
- resume.cs
- create .css to jazz up resume
- <http://codepen.io/anon/pen/yVLaYw>

###CSS game
<https://flukeout.github.io/>

###Developer's Tools
###Console

###Exercise 2
- View quora.com and modify homepage to not show the sign-up blocker

###Bootstrap
- <http://getbootstrap.com/>

###Materialize
- Google bootstrap
- <http://materializecss.com/>

###Color
<http://htmlcolorcodes.com/>

###Exercise 3
- http://codepen.io/mark_acltc/pen/EVedOZ>
- Make codepen page into final page
- <http://codepen.io/anon/pen/WoNoKx>

##Weekend work
- Write a blog post on medium
- Finish the pair-programming problems from 11-2
    + <https://docs.google.com/document/d/1Z7DaCGEwPKQOQptvBD8jd_XCSMkPBc1fW-igdZcj6a8/edit>
    + <https://gist.github.com/peterxjang/0164f3426579fef3128a>
- Do the weekend work exercises
    + <https://github.com/acltc/weekend_work>

#Date: 11-6-2016
###How does the web work?
- server
    + has an input and output
    + you give server a url and it returns a webpage
    + GET wiki/stuff HTTP/1.1 Host: en.wikipedia.org
    + Status Codes
        * <http://en.wikipedia.org/wiki/List_of_HTTP_status_codes>
    + Postman
        * <https://github.com/postmanlabs/postman-app-support>

##RAILS
- When run for the first time, it will run a bunch of code and you will get a bunch of files. Similar to Bootstrap.
- Will be using 3 things from now on:
    + Web Browser (Chrome)
    + Text Editor (Sublime)
    + Terminal
- To create a new rails project
    + `rails new name-of-your-app`
    + Don’t forget that to work with your app, you need to be in the correct directory! So, do:
        + `cd name-of-your-app`
    + To run your rails app (also known as the webserver):
        + `rails server`
    + To create a new controller: (the name of your controller must be PLURAL!)
        + `rails generate controller name-of-your-controllers`
- Most of what we are doing is in the `app` folder
- localhost: 3000 == GET "/"
    + will set up a local server
    + `rails server`
- `cmd + T` = opens new terminal
- `rails generate controller pages`
    ```
        def info_about
            render 'information.html'
        end
    ```
- config => routes.rb
    + `get '/about' => 'pages#info_about'`
- app => views => pages => about.html
- `html.erb` = embedded ruby
    + `<%= Time.now%>` will run in ruby
- Dev tools (Chrome) = `cmd + option + I`
    + head = views => layouts => application.html.erb
    + Title by default is name of rails application
        + To change the name: 
            + `<title><%= @title %></title>`

###Exercise 1
- Create a brand new rails app that:
    + Tells your fortune
    + Predicts lottery number
    + Counts user views
    + Bonus exercises
        * Add a page that contains the lyrics for '99 bottles of beer...'
        * Display the lotto numbers as an ul, with each number in its own list item

###Exercise 2
- Create an array of three hashes in your controller. Each hash should have keys:
    - first_name
    - last_name
    - account_number
    - email_address
    - The account number should be a randomly generated 10 digit code.
    - Using the ruby “each” method (or similar method), use tables to display all the information from the array of hashes.
    - Display this information in a view

###Exercise 3
- Skill - Loop through a collection of data to perform some computation
- Make up 5 new problems (each should be a separate Ruby file in the `deliberate_practice` folder)

###What does it take to be a [good] developer?
- Be able to solve problems
- 50% programming skills
- 50% soft skills
- 85% of jobs are never advertised
- <http://www.codenewbie.org/blogs/what-i-look-for-in-a-junior-developer>
    + Knowledge of some of our tech stack
    + Enthusiam
    + Attention to detail
    + Hunger for learning
    + Thirst to contribute
    + What have you built?
    + How do you get unstuck?

###Design personal blog
-<https://startbootstrap.com/>

