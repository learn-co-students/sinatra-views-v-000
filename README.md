# Sinatra Views


## Objectives

1. Understand the purpose of views in our Sinatra application
2. Be able to render views as separate files

## Instructions

### Part 1: Rendering HTML

Rendering plain text is a great way to test the behaviors of our routes, but it doesn't give us any control over how the content is displayed. We'd like to structure our content using HTML and render that to the browser instead. The most basic way to do this is to include html tags as a part of the string we're rendering. In the "/" route of our `app.rb` file, try the following: 

```ruby
	get '/' do
	  "<h1>Hello World</h1>"
	end
``` 

Run `shotgun` and go to [http://localhost:9393](http://localhost:9393). You're "Hello World" should now appear as an h1. Nice!

### Part 2: Using an ERB File

You can imagine that writing HTML this way would get very messy, very quickly. Luckily, most web frameworks include a templating engine that allows us to render HTML content from a different file. We call these files "views." Views represent what the user sees and make up the "V" of our "MVC". 

By default, Sinatra uses a templating engine called ERB, or Embedded Ruby. We'll learn more about ERB in the next lesson. For now, just know that our view files will use the extension `.erb` and that we can write HTML code there just like a plain old `.html` file. Sinatra is also configured by default to look for our `.erb` files in a directory called `views`. 

Create a new file called `index.erb` inside of the `views` directory. Add the following code into that file.

```erb
<!DOCTYPE html>
<html>
	<head>
		<title>My First View!!</title>
	</head>
	<body>
		<h1>Hello World</h1>
		<p>This HTML code is inside of a '.erb' file in the views directory, where it belongs.</p>
	</body>
</html>

```

Now, we just need to update our controller to render the `index.erb` file at the "/" route. The syntax for this is as follows:

```ruby
	get '/' do
	  erb :index
	end
``` 

This tells Sinatra to render a file called `index.erb` inside of a directory called `views`. Save your files and refresh your preview to see your changes. Awesome, right? 

### Part 3: Multiple Routes with Multiple Views

We can create as many routes and views as we want. Let's create a route called "/info" in our controller. 

```ruby
	get '/' do
	  erb :index
	end
	
	get "/info" do
	  "Testing the info page"
	end
```

With `shotgun` running, head to [http://localhost:9393/info](http://localhost:9393/info). You should see "Testing the info page" rendered there. This lets us know that our route is defined properly. Next, let's have this route render a separate file instead. Inside of the `views` directory, create a file called `info.erb`. Add whatever HTML code you like. 

```erb
<!DOCTYPE html>
<html>
	<head>
		<title>Info Page</title>
	</head>
	<body>
		<h1>Info Page</h1>
		<p>This is the info page: here's some information about me!.</p>
	</body>
</html>

```

Finally, update our controller to render that file. 

```ruby
	get '/' do
	  erb :index
	end
	
	get "/info" do
	  erb :info
	end
```

It's important to note that the name of the file doesn't have to match the name of the route. For example, if we wanted our "/info" route to render a file called `dogs.erb`, we could do so like this: 

```ruby
	get '/' do
	  erb :index
	end
	
	get "/info" do
	  erb :dogs
	end
```

By convention though, we keep our routes and our erb files named the same. This makes it easier to keep track of as our projects get bigger. 

