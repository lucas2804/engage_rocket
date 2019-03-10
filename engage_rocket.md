# Hello!

Thank you for showing your interest with EngageRocket! We're excited to get to know you.

This is our technical screening test. You're expected to spend at most a couple of hours working throught the problems
below. Once you are done, let us know. Regardless of how it goes, we promise we will provide feedback on your answers,
and give suggestions on areas you can work on. Have fun!

## 1. Set Checker

In the card game of [Set](https://en.wikipedia.org/wiki/Set_(card_game)), each card has four distinct attributes:

- shape (diamond, oval, squiggle)
- colour (green, red, purple)
- fill (blank, lined, filled)
- count (one, two, three)

A set is made from any three cards where each attributes is either all the same _or_ all different. For example, the below three cards make a set, because all the attributes are different across all the cards.

![](https://user-images.githubusercontent.com/5259935/53721988-6ebb4680-3e9f-11e9-8e3e-ecc0fae6bd4e.png)

In our application, a Set card is modelled by:

```ruby
Card = Struct.new(shape, colour, fill, count)
```

(All attributes are passed as symbols.)

Your task is to implement the following function which takes three `Card` objects as input, and returns `true` if the three cards make a set, or false otherwise.

```ruby
def set?(*cards)
  # Add your implementation here
end
```

**Constraints:**

 - All cards in a deck of Set are unique, so you don't need to care about looking for duplicates.
 
 
## 2. Domain Modelling
 
In EngageRocket we collect feedback from employees anonymously. One of the forms of feedback we collect are answers to
open-ended questions, for example:
 
> If you could change one thing to make your organisation a better place to work, what would it be?
 
Now we want to build a feature that allows managers to acknowledge that they have seen the feedback, and initiate an
anonymous discussion with the employee who left the feedback. Below is an empty `routes.rb` file. Your task is to add
routes that can satisfy all of the requirements listed.

```ruby
# config/routes.rb
Belong::Engine.routes.draw do
  # Add your routes here
end
```

**Requirements:**

 - As a manager, I can acknowledge that I have seen an open-ended answer.
 - As a manager, I can start a conversation with the employee who wrote the answer.
 - As an employee, I can respond to a conversation with the manager.
 - As a manager, I can mark a conversation as resolved.


## 3. Bug Fixing

We use Sentry to proactively find and fix bugs that our users encounter in production. Whenever an application error
occurs, we get a stack trace deilivered to us. We take turns to act as Rocket Surgeon, who is in charge of fixing
these bugs.

This week you are the Rocket Surgeon. You have just received a bug report in Sentry. Describe how what you do next.
How do you go about trouble shooting the issue? Depending on what you find, what will your next step be? When do you
consider the issue "fixed"?

## 4. Collaboration

Assume you are working on building a new feature in the application, and you are facing some implementation issues.
The new feature doesn't seem to go well together with the existing features, and more and more edge cases seem to
appear as you go along. Describe, in as much detail as you like, how you would handle this situation.
