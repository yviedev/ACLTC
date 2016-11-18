#Date: 10-30-2016
###Brian - instructor
###Carolina - TA
###Brandon - TA

###Cool new classmates
- Ray
- Ana
- Ron
- Matt
- David
- Dan
- Jigmey
- Joel

###High-level Overview:
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

###Industry Best Practices
* Open Source
* Agile - PM organizational method
* Test Driven Development - a way to write a test to make sure it does a thing
* API's (application program interface) - your website goes to another website, grabs some info an comes back.

###Coding in the Real World:
- Professionalism
- Communication
- Making Tradeoffs
- Working with other people's code
- Working with non-technical people

###Pragmatism
- Getting Things Done

###Collaboration
- Taking Initiative
- Tinkering
- Always be learning

##Gists - if you copy and paste a gist link into your Medium blog it will output a code box.

###Using the terminal is much faster than navigating through UI folders.
- `ls -a` shows hidden files. files that start with a . are hidden/system files
- `pwd` tells you what folder you are in
- `ls -l` gives you a list
- `ls -al` 
- `ls -la` does the same thing 
- `clear` clear terminal, but can scroll up 
- `cmd k` `clear` but can't scroll up 
- tab will autocomplete for you which you can use to make sure that you are in the right folder and to prevent typos
- `ls` - GF 
- teleporting - folder names need to be unique
- `cd ../` go back one directory
- `mkdir` makes new directory (Remmber to cd into that folder)
- `touch` makes a new file 
- `echo "text" >> file` adds text into a new file 
- `cat` Filename and it will show what is in the file 
- `rm` removes file. Doesn't confirm delete. There is no way to recover file.
- `rmdir` removes empty folders 
- `rm -rf` will delete everything (be careful using this command)
spaces confuse terminal 
- `say` allows computer to speak
- `history` 20 shows last 20 commands that you did 
    ! command number
- `cd ~` goes to home folder 
- `cd /` all the way to the root folder (for installing things) 
- `cat filename | say =>` use this command to have the contents of one of the files spoken aloud

###Git
* commits - use in the present tense
    
###What am I responsible for to help me get unstuck?
###What are others responsible for to help me get unstuck?

1. My code is blowing up?
- Read the error and find the right error line
- When in doubt, p it out 
- Print the variables near the error lines

2. I don't know how to get started
- Pseudo-code
- Google

###Exercises
<http://codekata.com/kata/kata04-data-munging/>


###Date: 10-31-2016 - Intro Into GitHub & Open Source / Ruby Core Review
- pair programming
- sit in a new seat
- do this at the start of every class

###RoR

###benefits of open-source coding in GitHub

###setting up ssh keys for GitHub
<https://docs.google.com/document/d/19IHjU51aq1JjslFRGRpvPLmT9tPQulbqbiyd-Macq2U/edit>

###Git exercises
- make a new local repo, initialize, add, commit, make exact folder on github, add remote and push

###Classes
- My boss wants me to keep track of two employees using ruby code. They have 4 pieces of info - Name, Salary, Active

###Ways to store info
- hash
    * learned about symbols
- array
- class

###Exercises
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


#Date: 11-1-2016 - Ruby Inheritance
###notes
- stop writing 12 lines of code before running it.
- write fewer lines and then test.
- stay DRY and not WET (write everything twice)

###inheritance
- you can only inherit from one class but there can be a chain of inheritances.
- if you have a duplicate method in the child class, ruby will run that method instead of looking in the inherited class.
- learned how to make a new parent class

###`super`
- The way super handles arguments is as follows:
    - When you invoke super with no arguments Ruby sends a message to the parent of the current object, asking it to invoke a method of the same name as the method invoking super. It automatically forwards the arguments that were passed to the method from which it's called.
    - Called with an empty argument list - `super()`-it sends no arguments to the higher-up method, even if arguments were passed to the current method.
    - Called with specific arguments - `super(a, b, c)` - it sends exactly those arguments.

###other new terms
- attr_reader
- attr_writer
- attr_accessor

###hot keys for sublime
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


#Date: 11-2-2016 - Ruby Modules
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

###Name Spacing
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


#Date: 11-3-2016 - HTML & CSS
###CSS and HTML
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

###Weekend work
- Write a blog post on medium
- Finish the pair-programming problems from 11-2
    + <https://docs.google.com/document/d/1Z7DaCGEwPKQOQptvBD8jd_XCSMkPBc1fW-igdZcj6a8/edit>
    + <https://gist.github.com/peterxjang/0164f3426579fef3128a>
- Do the weekend work exercises
    + <https://github.com/acltc/weekend_work>

#Date: 11-6-2016 - Intro into Rails
###How does the web work?
- server
    + has an input and output
    + you give server a url and it returns a webpage
    + GET wiki/stuff HTTP/1.1 Host: en.wikipedia.org
    + Status Codes
        * <http://en.wikipedia.org/wiki/List_of_HTTP_status_codes>
    + Postman
        * <https://github.com/postmanlabs/postman-app-support>

###RAILS
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
```ruby
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
    + head = app => views => layouts => application.html.erb
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

#Date: 11-7-2016 - Models and Databases
- Page counter didn't work in last exercise because we didn't have a database.
- Database: piece of software that is optimized for storing alot of data efficiently.
- Models: are classes that talk to the database
    - FB: anything that we have to keep track of should be a model (e.g., users, posts, likes, etc.)
    - Ebay: users, items

###Exercise 1:
- Make a cookbook app
```ruby
# Anything below in italics and red is to be replaced with your own custom words!

# To create a new rails project

   rails new name-of-your-app --database=postgresql

# Don’t forget that to work with your app, you need to be in the correct directory! So, do:

   cd name-of-your-app

# To create your postgres database:

   rake db:create

# To run your rails app (also known as the webserver):

   rails server

# NOTE: Once your rails server is running, you will no longer be able to run commands from that terminal tab
# it is being hogged by the rails server. 
# You must create a new terminal tab (Command + T) and run your terminal commands from there.

# To create a new controller: (the name of your controller must be PLURAL!)

    rails generate controller name-of-your-controllers
    Example: rails generate controller recipes

# To create a new model: (the name of your model must be SINGULAR!)

   rails generate model ModelName attribute_1 attribute_2 attribute_3 ..etc…
   
# Example: rails generate model Recipe title chef prep_time:integer

# After creating each model, you must enter this magical incantation (which will be explained later):

    rake db:migrate

# To run your rails console:

    rails console

# Model methods:

# Create:

   x = ModelName.new({attribute_1: “some value”, attribute_2: “some value”})
   x.save

# Read:

   x = ModelName.all
   x = ModelName.first
   x = ModelName.last
   x = ModelName.find_by(attribute_1: “some value”)

# To access an attribute of a particular model object directly:
   x = ModelName.find_by(attribute_1: “some value”)
   x.attribute_name

# Update:

   x = ModelName.find_by(attribute_1: “some value”)
   x.attribute_2 = "new updated value"
# or
   x.assign_attributes({attribute_2: “new updated value”})
   x.save

# Destroy:
   x = ModelName.find_by(attribute_1: “some value”)
   x.destroy
```
##Rails Application

```
# routes.rb

Rails.application.routes.draw do
  get '/place_with_a_recipe' => 'recipes#jay_recipe'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# recipe_controller.rb

class RecipesController < ApplicationController

  def jay_recipe
    @title = "Jay recipe"
    @recipe = Recipe.find_by(id: 2)
    render 'eggs.html.erb'
  end

  def all_da_recipes
    @title = "All recipes"
    @recipes = Recipe.all
    render 'all.html.erb'
  end

end

# eggs.html.erb

<h2>here are some eggs</h2>
<p><%= @recipe.chef %></p>
<p><%= @recipe.ingredients %></p>
<p><%= @recipe.directions %></p>

# all.html.erb

<h2>here are some eggs</h2>
<% @recipes.each do |recipe| %>
  <p>Recipe by: <%= recipe.chef %></p>
  <p>Recipe ingredients: <%= recipe.ingredients %></p>
  <p>Recipe instructions: <%= recipe.directions %></p>
  <br>
<% end %>
```

###Exercise 2
- write code that would add 100 students to your db using faker
- <https://github.com/stympy/faker>

#Date: November 8, 2016 - Rails CCS & Gemfile, Mini Capstone
###Phonebook Rails App
- make phone_number a string instead of an integer bc of different type of phone number formats.
- go to db/seed.rb

```ruby
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do 
  contact = Contact.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number)
  contact.save
end
```

- `rake db:seed`

###How to add a gem file to Rails application
- Go to `Gemfile`
- Add `gem gem-name`
- Run `bundle` or `bundle update` in bash

###CSS and Sass(SCSS)
- contact-app => app => stylesheets
- <https://github.com/twbs/bootstrap-sass>
    + Add ‘bootstrap-sass’ anywhere in your Gemfile.
        + `gem 'bootstrap-sass', '~> 3.3.6'`
    + Inside your terminal (make sure you’re in the folder where your Rails app is), run: 
        + `bundle install`
    + Inside app/assets/stylesheets, create a new file called _external.css.scss
        + Add these lines to that file:
            + `@import "bootstrap-sprockets";`
            + `@import "bootstrap";`
    + Inside app/assets/javascripts/application.js, add this line under the line that says `//=require jquery`: 
        + `//= require bootstrap-sprockets`
    + If your rails server was already running, restart it.

###Mini-Capstone Exercise
1 - Create a new rails app called mini-capstone with a postgres database (check your Gemfile for the line `gem 'pg'` to make sure you’re using postgres)
    a - Use git to initialize, add, and commit your code.
    b - Use GitHub to create a repo called mini-capstone, then copy and paste the commands to push your git repo to GitHub.

2 -  Create a products controller
    a - Use git to add, commit, and push your code.

3 - Create a product model. Some important attributes include name, price, image, and description.
    a - Use git to add, commit, and push your code.

4 - Create a page that displays all the available products.
    a - Use git to add, commit, and push your code.

5 - Install Bootstrap, using the cheat sheet provided earlier
    a - Use git to add, commit, and push your code.
    b - <http://stackoverflow.com/questions/31483823/sort-table-data-by-columns-in-rails-with-bootstrap>
        * Use to add css to table

- Bonus: Read more about creating initial data using a seed file here: http://www.railszilla.com/rails-seed-data-example/rails. Try to use the faker gem (https://github.com/stympy/faker) and the seeds.rb file to generate your data!

#Date: 11-9-2016 - Params
- site=webhp 
    * Similar to hash. These are hashes in Ruby
- params: Allows us to get flexible user input
```
QuerysController < ApplicationController
    def show_message
        p '*' * 30
        @message = params["some_key"]
        p '*' * 30
        render 'new_message.html.erb'
    end
end
```

On the webpage enter `/route?param key=input`

###Exercise 1
- Create a brand new app called params-game-app where you can use query parameters to tell the app your name, and the app will show your name on the screen in all caps.
- Next make it so that if your name begins with the letter “a”, there’s a message that appears saying, “Hey, your name starts with the first letter of the alphabet!”
- Create the guess-a-number game using query parameters. (Reminder: This is the game where the app chooses a number between 1 and 100, and the user has to guess what it is. It also tells the user after each guess whether to guess higher or lower.) One caveat: Instead of having the program choosing a random number in advance, just choose a specific number, such as 36. One other gotcha: All params are initially treated as strings, so you’ll have to do some conversion to integer to work around that.
- Bonus: Read more about how Rails creates parameters from urls here: <http://codefol.io/posts/How-Does-Rack-Parse-Query-Params-With-parse-nested-query>
    - Try to make some more complex get paramters!
- Bonus: Create a new route, action, and view, that counts + 1 every time a button is clicked (without a database!).

###Wildcards
- add `get '/practice/:idaho' => 'queries#wild'` in routes.rb
- add the following to your controller:
```ruby
def wild
    @title = "Wildcard"
    @name = params["idaho"]
    render 'wild.html.erb'
end
```

- add to url =? `http://localhost:3000/practice/jane`
- result will be:
   - `<h1>I am wild <%= @name %>.</h1>`
   - I am wild jane

###Exercise 2
- Recreate the same guess-a-number exercise as above but using url params.
- Bonus: Read about the difference between wildcard segments and route globbing here: http://guides.rubyonrails.org/routing.html#route-globbing-and-wildcard-segments. Try to make a route that uses both (this is advanced stuff!).

###Forms
```erb
<%= form_tag '/guess_number_result', method: :post do %>
  <%= label_tag :message %>
  <%= text_field_tag :message %>
  <%= submit_tag 'Submit This!!' %>
<% end %>
```

###Exercise 3
- Recreate the same guess-a-number exercise as above but by using a form. 
- Bonus: In your contacts app, add a feature so that a user can add a new contact via a form. You do not need to save the contact to a database.

#Date: 11-10-2016 - Params

###Exercise 1
- To get started on security app
- Copy the link from Github
    + fork/clone <https://github.com/acltc/params-security-app-5>
- In your terminal: git clone copied-link
- cd folder-name
- bundle
- rails server

- Run it in your terminal and go to localhost:3000.
- Back story: You are hackers breaking into a enemy government’s classified website, whose source code you’ve hacked and downloaded. Based on the source code alone (and the skills we’ve learned today), you will hack your way to obtain a top secret message.
- Work in pairs - this is tough!

- Gate 1: (Query param) http://localhost:3000/dbaf78yh3n3r2rfwfnd8andfh?secret=nasdf82fe2
- Gate 2: (Wildcard) http://localhost:3000/dbaf78yh3nnd844andfh66/centerfuge
- Gate 3: (Form) http://localhost:3000/dbaf78yh3nwctwretnd8andfh
    + Password: Budapest
- Can use Postman to DELETE http://localhost:3000/dbaf78yh3nnd32438andfh/
    + or `<input name="_method" type="hidden" value="delete">` in dev tools
- http://localhost:3000/
- Must use Postman

###Mini-Capstone
- Add a form to add a new contact to your project just like the demo.
- Add a form to add a new product in your mini-capstone.

###REST
- Created by [Roy T. Fielding] <http://roy.gbiv.com/>
- Good practice so that someone else looking at your code will know what is happening easily

##CRUD (Create, read, update and delete)
- <http://guides.rubyonrails.org/routing.html#crud-verbs-and-actions>

|HTTP Verb   |Path   |Controller#Action   |Used for   | 
|---|---|---|---|
|GET |/photos |photos#index    |display a list of all photos|
|GET |/photos/new |photos#new  |return an HTML form for creating a new photo|
|POST|/photos |photos#create   |create a new photo|
|GET |/photos/:id |photos#show |display a specific photo|
|GET |/photos/:id/edit         |photos#edit |return an HTML form for editing a photo|
|PATCH/PUT   |/photos/:id |photos#update   |update a specific photo|
|DELETE  |/photos/:id |photos#destroy  |delete a specific photo|

#Date: 11-13-2016
```ruby
# controller
def index
    @recipes = Recipe.all
    render 'index.html.erb.'
end

def show
    @recipe = Recipe.find_by(id: params["id"]) #key/value pair
    render 'show.html.erb'
end

#new and create
def new
    render 'new.html.erb'
end

def create
    render 'create.html.erb'
end

def edit
    @recipe = Recipe.find_by(id: params["id"])
    render 'edit.html.erb'
end

def update
    @recipe = Recipe.find_by(id: params["id"])
    @recipe.update(title: params["title"], chef: params["chef"], directions: params["directions"], ingredients:params["ingredients"])
    render 'update.html.erb'
end

def destroy
    # grab the recipe by id
    @recipe = Recipe.find_by(id: params["id"])
    # kill it
    @recipe.destroy
    render 'destroy.html.erb'
end
```

```
#html form file
<%= form_tag "/products/@product.id", method: :post do %> #don't forget to change patch to post
  <div>
  <%= label_tag :name %>
  <%= text_field_tag :name, @product.name %>
  </div>
  <div>
  <%= label_tag :price %>
  <%= text_field_tag :price, @product.price %>
  </div>
  <div>
  <%= label_tag :image %>
  <%= text_field_tag :image, @product.image %>
  </div>
  <div>
  <%= label_tag :description %>
  <%= text_field_tag :description, @product.description %>
  </div>
  <%= submit_tag 'Submit This!!' %>
<% end %>
```

- Make sure that wildcard routes go later than specific routes.
- Use double quotes for string interpolation

###How to Google

#Date: 11-14-2016
###redirects
- `render` for (index, show, new, edit)
- no `render` for (create, update, destroy) 
    + create => `/Model/#{instance.id}`
    + update => `/Model/#{instance.id}`
    + destroy => `/Model`
- delete inapplicable instance variables
- delete inapplicable erb files
    + create
    + update
    + destroy

###flash messages
- Stick in controller method
    +  flash[:created] = "You made a new thing"
- add to application.html.erb
```
    <body>
    <% flash.each do |name, message| %>
        <%= message %>
    <% end %>
```

###Alerts
- <http://getbootstrap.com/components/#alerts>
```html
    <body>
    <% flash.each do |name, message| %>
        <div class="alert alert-success" role="alert"><%= message %></div>
    <% end %>
```
- match up keys with bootstrap classes
    + `<div class="alert alert-<%= name %>" role="alert">`
- Dismissable alerts
    + `<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>`

###CSS
- <http://www.cssfontstack.com/>
- <http://subtlepatterns.com/>
- .each_slice() ruby method

#Date: 11-15-2016
###Model
``` ruby
#moving method to the model where they belong

def mardi_gras_time
    prep_time * 2
end

#def prep_time
    #ingredients.split(',')
#end

#def split_directions
    #directions.split(',')
#end

def split_something(thing_to_split)
    thing_to_split.split(',')
end

def hours_and_minutes
    hours = prep_time / 60
    minutes = prep_time % 60
    message = ""
    if hours > 0
        message += "#{hours} hours"
    end
    if minutes > 0
        message += "#{minutes} minutes"
    end

    message
end

def pretty time
    created_at.strftime("%b %d %y")
end
```

- number_to_currency => $9.00

```
def style_message
    if price.to_f < 3
        style = "red"
    else
        style = ""
    end
end
```

###Style by condition
`<p class="<%= product.style_message %>"><%= product.sale_message %></p>`

###Edit model
- db => migrate => create db

###Migration
- `rails new app migration-app`
- `rails generate model Product title description isbn`
- `rails generate migration (title of migration)`
- update new database
    + add_column :products, :stock, :integer
- `rake db:migration`
- Active Record supports the following database column types:
    + :binary
    + :boolean
    + :date
    + :datetime
    + :decimal
    + :float
    + :integer
    + :primary_key
    + :string
    + :text
    + :time
    + :timestamp

- schema is current database

###To create a database:
1. In the terminal, `run: rake db:create`
    - Note: you only need to do this once per app

###To create a new table in the database:
1. In the terminal, run: 
    `rails generate model Product name:string description:text 'price:decimal{5,2}'`
    - DOUBLE CHECK THE GENERATED MIGRATION FILE CODE (in db/migrate folder)
    - If there are typos, you can fix them now before doing the next step
    - In the terminal, run: rake db:migrate
    - Note: A description of rails database types can be found here: <http://stackoverflow.com/questions/11889048/is-there-documentation-for-the-rails-column-types>

###To make changes to existing database tables:
1. In the terminal, run: rails generate migration NameDescribingTheChange
2. Add code to the new migration file generated in the db/migrate folder
    - All available commands here: <http://api.rubyonrails.org/classes/ActiveRecord/Migration.html> 
    - Add a column: `add_column :products, :image, :string`
    - Rename a column: `rename_column :products, :image, :photo`
    - In this example, `image is the old name, photo is the new name`
    - Remove a column: `remove_column :products, :photo, :string`
    - Change a data type: `change_column :products, :quantity, :integer`
        * In this example, quantity will become an integer
    - Using decimals: add_column :products, :price, :decimal, precision: 5, scale: 2
        * Precision is the total number of digits, scale is the number of digits after the decimal
        * In this example, 103.42 is a valid price, 3432.21 is invalid (total digits is greater than precision)
        * NOTE: postgres is a bit touchy changing strings to decimals, use these two lines in a migration:
            - change_column :products, :price, "numeric USING CAST(price AS numeric)"
            - change_column :products, :price, :decimal, precision: 9, scale: 2
3. DOUBLE CHECK YOUR MIGRATION FILE CODE
    - If there are typos, you can fix them now before doing the next step
4. In the terminal, run: rake db:migrate
5. Shortcuts for steps 1 and 2:
    - To add a column to a table:
        * `rails generate migration AddImageToProducts image:string`
    - To remove a column from a table:
        * rails generate migration RemovePhotoFromProducts photo:string
    - No other shortcuts exist - if you need to rename, change, etc., you’ll need to generate an empty migration file and write the code in as described above

###To generate sample data for database:
1. Write code in the db/seeds.rb file (instead of through the rails console)
2. In the terminal, run: rake db:seed
3. Note: If you already have sample data created from rails console or your application, you can use this gem to generate a seed file so others can reproduce it: <https://github.com/rroblak/seed_dump>

#Date: 11-16-2016

###More Migration
-Can name your migration file to add to migration file
    - `AddSoldToProducts`
    - `RemoveSoldFromProducts`

###SQL (Structured Query Language)
- `select first_name from contacts;`
|Common SQL Queries|
|---------|-----------|
|SELECT *
FROM recipes;| Select all columns from the recipes table |
|SELECT description, photo
FROM recipes; | Select only description and photo from recipes table |
|SELECT *
FROM recipes
WHERE name = 'Pizza'; |
Select all from recipes where name = 'Pizza' |
|SELECT *
FROM recipes
WHERE prep_time > 100 
AND name = 'Pizza'; |
Select all from recipes where pre_time > 100 and name ='Pizza' (Use WHERE the first time, then AND for the 2nd, 3rd, etc. times) |
|SELECT *
FROM recipes
WHERE prep_time > 100
OR name = 'Pizza'; |
Select all from recipes where pre_time > 100 or name ='Pizza' |
|SELECT *
FROM recipes
ORDER BY prep_time;
|Select all and order all recipes in ascending order|
|SELECT *
FROM recipes
ORDER BY prep_time DESC;|
|Select all and order all recipes in descending order|
|SELECT *
FROM recipes
LIMIT 5;|
|Select the first 5 recipes|
|SELECT COUNT(*)
FROM recipes;
Count the number of recipes|
|SELECT SUM(prep_time)
FROM recipes;|
|Get the sum of all the prep_times from recipes|
|SELECT AVG(prep_time)
FROM recipes;|
|Get the average of all the prep_times from recipes|
|SELECT * 
FROM recipes 
WHERE ingredients LIKE '%bread%';|
|Select all from recipes where ingredients contains the string 'bread' (case sensitive)|
|SELECT * 
FROM recipes 
WHERE description NOT LIKE '%bake%';|
Select all from recipes where description doesn’t contain the string 'bake' (case sensitive) |

###Exercise
- Use SQL to grab the following data from the employees database:
- Get all info about employees whose last names begin with “Z”.
- Get the first name and last name of employees whose last names begin with “Mi”.
- Get first name,  last name, and birthday of 5 oldest employees.
- Get all info about the 5 most recent hires.
- Get all info about 5 most recent female hires.
* Bonus: Get all the info on all employees whose first name is Mario or Luigi.
* Bonus: Get only the first and last name of employees without the the last name “Aingworth.”
* Bonus: Get all the info on employees whose first name is Arif, but only those hired between 1988 and 1992.
* Bonus: How many employees were making over $100,000 a year on June 24, 1992? Return only a number.

#Date: 11-17-2016

###Migration Review

###seeds.rb
- Make data
- add `gem seed_dump`
    * run `bin/rake db:seed:dump`

###Exercise
- Create a new rails app called real-estate-app
    - Create a model (don’t worry about routes, views, or controllers) with the attributes below. Try your best to choose the correct datatype when creating the model:
        - description
        - year_built
        - square_feet
        - bedrooms
        - bathrooms
        - floors
        - availability
        - price
    - Bonus: Your project manager has told you that they no longer need to know “floors” for listings. Remove it from your model.
- Exercise: Make additional changes to your Contacts App
    - One of the other developers in your company has created a map to show where all the addresses are on a google map. But, she needs the data to be computer/search friendly, and instead of adding an address column, add two attributes called “latitude” and “longitude.” Use the float datatype. 
    • Bonus: Update (or create if you haven’t already) the form that users use to input their address details. Instead of saving the address directly like before, have the controller convert the address to latitude and longitude. To do this you’ll need to:
    - Add the “geocoder” gem to your gemfile. Bundle.
    - In your controller, you can get the coordinates by:
        - coordinates = Geocoder.coordinates(address)
        - where address is whatever the user inputted (like “1441 W Carmen Ave, Chicago, IL”). And coordinates is an array of latitude and longitude.

###Active Record Queries
- It's simplier, easier and you write in Ruby
- Comparison of SQL to Active Record in Rails