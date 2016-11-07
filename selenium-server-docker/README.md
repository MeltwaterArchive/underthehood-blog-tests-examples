#Using Selenium Server in a Docker container

This example here is part of a blog post that you can read follwing this link: [underthehood-meltewater-blog][blog-link]

## To run the example

First need run the docker selenium image

```Bash
$ docker run -d -p 4444:4444 selenium/standalone-chrome
```

After run bundle install to get the dependencies (we assume you have ruby installed or rbenv)

```Bash
$ bundle install
```

Now you can run the script

```Bash
$ ruby simple_example.rb
```


[blog-link]:underthehood.meltwater.com