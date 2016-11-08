#Using Selenium Server in a Docker container

This example is part of a blog post that you can read follwing this link: [underthehood-meltewater-blog][blog-link]

## To run the example

First you need to run the docker selenium image

```Bash
$ docker run -d -p 4444:4444 selenium/standalone-chrome
```

After run the bundle install to get the dependencies (we assume you already have ruby installed or you are using rbenv)

```Bash
$ bundle install
```

Now you can run the script:

```Bash
$ ruby simple_example.rb
```


[blog-link]:underthehood.meltwater.com