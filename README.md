# Test driven development
[![Build Status](https://travis-ci.com/jonesandy/tdd-exercises.svg?branch=master)](https://travis-ci.com/jonesandy/tdd-exercises) [![Maintainability](https://api.codeclimate.com/v1/badges/8df57e2cc1de188d3e75/maintainability)](https://codeclimate.com/github/jonesandy/tdd-exercises/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/8df57e2cc1de188d3e75/test_coverage)](https://codeclimate.com/github/jonesandy/tdd-exercises/test_coverage) 

This repository is for practicing TDD. The code contained in this repository will be accumulated from multiple practice assignments, tests and articles. Small summaries of each code file will be displayed below.

My process will be to follow the **RED** **GREEN** **REFACTOR** strategy.

I will also use this repository as practice for setting up basic Travis files and CodeClimate integration.

## Table of contents

*  [Installation](#installation)
*  [Tech Stack](#tech-stack) 
*  [Examples](#examples)
    * [Student](#student)
    * [Dice](#dice)
    

## Installation

Clone or download repository to your local machine.      

```bash
git clone
```

Requires Ruby version 2.6.5 
   
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

This exercise test drives basic methods for two simple scenarios.

```
As a student
So that I can remember people's names
I want an IRB application that stores names of people I meet

As a student
So that I can understand my recent motivation
I want an IRB application that stores my motivation ratings
And I want to see the average of my last 3 ratings
```

The process was to imagine how I would use the program first. Once I had the usages in mind, build tests for those scenarios and then write the code to make those tests pass. Once I have a passing test I can then refactor if needed.

Code example found [here](lib/student.rb). Test file found [here](spec/student_spec.rb).

### Dice

Using TDD to build a single Dice object based on the following user stories.

```
As a board game player,
So that I can play a game
I want to be able to roll a dice

As a board game player,
So that I know how many steps I should move
Rolling a dice should give me a number between 1 and 6

As a dice app developper,
So that I give players a good game experience
I want the dice roll to be randomly picked

As a board game player,
So that I can play many types of games
I want to be able to roll any number of dice at the same time

As a board game player,
So that I know what my score was when I rolled several dice
I want to get the result of each dice roll
```

This example keeps all methods inside one class. Ideally I would have broken out the throws into a seperate class that rolled multiple Dice objects to get score. But brief was to use one object to create the user stories.

Code example found [here](lib/dice.rb). Test file found [here](spec/dice_spec.rb).
