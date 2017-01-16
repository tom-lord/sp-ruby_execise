# SP Ruby Exercise

## Description of problem

Write a ruby script that:

a. Receives a log as argument (`webserver.log` is provided)
  e.g.: `./parser.rb webserver.log`

b. Returns the following:

1\. List of webpages with most page views ordered from most pages views to less page views,
  e.g.:

```
/home  90 visits
/index 80 visits
etc...
```

2\. List of webpages with most unique page views also ordered,
  e.g.:

```
/about/2   8 unique views
/index     5 unique views
etc...
```

## Tests

A few simple unit tests can be run via:

```
rake test
```
