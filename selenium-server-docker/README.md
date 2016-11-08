# Using Selenium Server in a Docker container

This example is an illustration of how to write test for Selenium using rspec, and is part of a blog post on [underthehood-meltewater-blog](http://underthehood.meltwater.com)

## To run the example

First you need to start the docker selenium image
```Bash
$ docker run -d -p 4444:4444 selenium/standalone-chrome
```

Then you install the dependencies:
```Bash
$ bundle install
```

Now you can run the script:
```Bash
$ ruby simple_example.rb
```
