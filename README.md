# Sinatra Views

## Outline

1. We can use Sinatra to render html instead of plain text. For clarity, we write our html in seperate files. 
2. By default, Sinatra uses a templating language called "erb," which we'll learn more about in the next lesson. 
3. By default, Sinatra will look for certain file names in a directory called `views`
4. Create different routes that each render a different view (each one with plain HTML)


## Objectives

1. Understand the purpose of views in our Sinatra application
2. Be able to render views as separate files

## Instructions

### Part 1: Rendering HTML

Rendering plain text is a great way to test the behaviors of our routes, but it doesn't give us any control over how the content is displayed. We'd like to actually render html to the browser instead of just plain text. We could actually include html tags as a part of the string we're rendering. In the "/" route of our `app.rb` file, try the following: 

```ruby
	get '/' do
	  "<h1>Hello World</h1>"
	end
``` 

Run `rackup` and go to [http://localhost:9292](http://localhost:9292). You're "Hello World" should now appear as an h1. 

### Part 2: Using an ERB File


## Resources

* 