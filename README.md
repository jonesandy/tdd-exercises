# Test driven development
[![Build Status](https://travis-ci.com/jonesandy/tdd-exercises.svg?branch=master)](https://travis-ci.com/jonesandy/tdd-exercises) [![Maintainability](https://api.codeclimate.com/v1/badges/8df57e2cc1de188d3e75/maintainability)](https://codeclimate.com/github/jonesandy/tdd-exercises/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/8df57e2cc1de188d3e75/test_coverage)](https://codeclimate.com/github/jonesandy/tdd-exercises/test_coverage) 

This repository is for practicing TDD. The code contained in this repository will be accumulated from multiple practice assignments, tests and articles. Small summaries of each code file will be displayed below.

My process will be to follow the **RED** **GREEN** **REFACTOR** strategy.

I will also use this repository as practice for setting up basic Travis files and CodeClimate integration.

## Installation

Clone or download repository.   

```bash
git clone
```

Requires Ruby version > 2.6.5 
   
```bash
# to check ruby version
ruby -v
```

To install dependancies

```bash
# change into root folder
cd tdd-exercises

# run bundle to install dependancies
bundle install
```

To run tests.

```bash
# in the root folder run rspec
rspec
```

## Tech stack

* [RSpec](https://rspec.info/) used for testing.
* [SimpleCov](https://github.com/colszowka/simplecov) used for test coverage. 
* [Rubocop](https://github.com/rubocop-hq/rubocop) used for style guide.
* [CodeClimate](https://codeclimate.com/) used for maintainabilty badges and test coverage reports.
* [Travis CI](https://travis-ci.com/) used for build testing.

## Examples

### Student

This exercise test drives basic methods for simple scenarios.

```
As a student
So that I can remember people's names
I want an IRB application that stores names of people I meet

As a student
So that I can understand my recent motivation
I want an IRB application that stores my motivation ratings
And I want to see the average of my last 3 ratings
```

The process was to imagine how I would use the program, build tests for those scenarios and then write the code to make those tests pass. Once I have a passing test I can then refactor if needed.

Code example found [here](lib/student.rb). Test file found [here](spec/student_spec.rb).
