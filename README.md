# Task: Logs Formatter with TDD

_"Test-driven development (TDD) is a software development process relying on software requirements being converted to test cases before software is fully developed, and tracking all software development by repeatedly testing the software against all test cases." Google_

## How to install this app

clone the repo and run:

    $ bundle install

to see the results run:

    $ ruby lib/logs_formatter.rb

to see the tests run:

    $ rspec spec/logs_formatter_spec.rb 


## My Set up

I created the following files:
.ruby-version 2.6.6 (because it’s the version I currently have)
Gemfile with spec gem (run bundle install and the gemfile.lock comes up)
$ bundle install

I ran: rspec --init (this creates the spec file)
    $ rspec --init 

& I created:
    $ mkdir spec
    $ touch spec/logs_formatter_spec.rb

    $ mkdir lib
    $ touch lib/logs_formatter.rb


& I linked the 2 files with:
require "phone_number_formatter"

& I added module LogsFormatter to lib/logs_formatter.rb

and the test is passing


## Test

Following the TDD method I wrote the test first and then wrote my method

I started with some pending tests and I built from there


## How I can improve my code?

Here is my work in 2.5 hours. If I have had more time:
- I would have refactored and improveed my tests
- I would have organized my code with the MVC partern.
- I would have asked someone to review my code, because I get different results than the e.g. from the exercise. I must have done something wrong 
