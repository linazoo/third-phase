# Week 7

<table>
  <tr>
  <th colspan="7">Quick Reference</th>
  </tr>

  <tr>
  <td><a href="#pre-work">Pre-Work</a></a></td>
  <td><a href="#monday">Monday</a></a></td>
  <td><a href="#tuesday">Tuesday</a></td>
  <td><a href="#wednesday">Wednesday</a></td>
  <td><a href="#thursday">Thursday</a></td>
  <td><a href="#friday">Friday</a></td>
  <td><a href="#weekend">Weekend</a></td>
  </tr>
</table>

---

## Groups ##

[Week 7 groups](../../../wiki)

---

Can you believe it's time for phase three already? We are so proud of you all for making it this far. You've all put in so much hard work. And you can now develop real things on the web!

You're a web developer now, and the extent to which you energize that label is a matter of the time and effort you give to continued, focused practice.

So yeah. Let's get ready to work even harder.

## TL;DR
Finish the core work listed here by Monday morning.
Part of that core work is to prepare a 5-10 minute talk and demo of a Rails feature. Claim your topic in the wiki to avoid duplicate choices.
Your blog must be written and deployed by Monday. You'll notice the README is really short. You'll have to lean on Google and one another to find good resources to guide you through the process.
Use model/migration/controller generators only 1x to see the file structure, then only use migration generators for the rest of the phase.

READ, RESEARCH, & DIG INTO THE ERRORS!

This phase is gonna be hard, and yes, you should still ask for help!

## Long version

We'll be kicking off the Phase 3 on Monday by diving in to Rails (whoo! raaaaaaails). Some parts of Rails will look similar to what you've been doing in Sinatra -- others won't. Along the way, we'll be diving into feature testing, client-side JavaScript frameworks, and PROJECTS.

Your homework for the this weekend is posted in the phase-3-guide in the pre-work section. The entire section list 'core' in the pre-work is your weekend work.  We expect each of you to build and deploy a blog using Rails by Monday morning (read the directions in the guide). 

For deployment, you'll need to sign up for Heroku if you haven't already. See the [Heroku docs for Rails 4](https://devcenter.heroku.com/articles/getting-started-with-rails4).

Make sure you create a Rails 4 application, not Rails 3. For your CSS and JS to work properly with Rails' asset pipeline feature, you'll need to add the `rails_12factor` gem to your Gemfile.  

Only use generators once to see what they do.  It is expected that you will only use _migration_ generators in this phase. Generators are for coders who have done stuff by hand so many times that the process has become boring, not for coders who have done stuff by hand so few times that the process is still tricky. Seriously, you'll thank yourself later for being diligent now and letting your fingers start remembering how those files come together. 

We'll be bending and flexing a lot in Phase 3. It will be hard. It will challenge you. I know you can all do it. Expect to dip into your panic zone, but reach out. Rails is a big framework and it can feel overwhelming. All the teachers in the space can answer your questions. We're all here for you. Ping us, get unstuck, then get back at it. 

Phase 3 is about ramping up for the real world. You'll be treated less like students and more like professional developers. Answers will not be served on a platter; rather, you'll have to take the initiative to pursue solutions on your own. We aren't looking for clever solutions; instead, we'll make sure your process is disciplined, your git log is spotless, and your code is well-written, tested, and robust. Consider us more your tech leads who you go to more for design decisions rather than "why isn't this working???" sort of answers.  This will push you all on reading the errors and digging in on your own, but you all need more practice with that. 


### Core

**Prep for Monday**

* Read [Intro to Phase 3](../resources/intro-to-p3.md)
* Read [Github Workflow](../resources/git-workflow.md)

**Rails**

- Read the [section in the Overview on Rails](../resources/intro-to-p3.md#on-rails).
* Go through [Learning Rails](../phase-3-prep/learning-rails.md)
* Watch a talk on rails (see below)
* [Build a Rails Blog](../../../../rails-blog-challenge)
* Choose a [Railsy talk (Week 1)](../resources/railsy-talk-topics.md) or [Gemsy Talk (week 2)](../resources/gemsy_talk_topics.md). These are short talks which you will give to the rest of the cohort.
* Deploy your Rails app to Heroku **from your personal laptop**

**Talks on Rails (watch one)**
- [Intro to Rails with Lucas - part 1 (45 min)](https://talks.devbootcamp.com/intro-to-rails-part-1)
- [Intro to Rails with Lucas - part 2 (1h 15min)](https://talks.devbootcamp.com/intro-to-rails-part-2)
- [Intro to Rails with Mike - (~2hr)](https://talks.devbootcamp.com/2014-coyotes-aeu-intro-to-rails)
- [Intro to Rails with Nate Delage (~1hr)](https://talks.devbootcamp.com/rails-intro-1)

### Additional Resources

- [Cool Stuff in Rails](../resources/cool-stuff-in-rails.md) (seriously read this)
- [Rails Resources](../resources/rails-resources.md)
- [Rails coming from Sinatra](../phase-3-prep/rails-sinatra.md)

---

## Monday
### Rails

### Core

**Talks**

- Railsy Talks

**Challenges**

- [Sinatra to Rails](../../../../sinatra-to-rails-pick-1-of-3-challenge)

**Prep for Tomorrow**

- Watch [Testing Web Apps with RSpec and Capybara](https://talks.devbootcamp.com/2014-salamanders-aeu-testing-web-apps-with-rspec-and-capybara)
- [Rails microchallenges](../microchallenges/rails-microchallenges.md)

Refresh on these topics:

- [RSpec Intro](../../../../phase-3-rspec-intro-challenge)

### Additional Resources

- [Cool Stuff in Rails](../resources/cool-stuff-in-rails.md) (seriously read this)
- [Rails Guides](http://guides.rubyonrails.org/) will be invaluable to you throughout Phase 3.
  - [Controllers](http://guides.rubyonrails.org/action_controller_overview.html)
  - [Routes](http://guides.rubyonrails.org/routing.html)
  - [Form Helpers](http://guides.rubyonrails.org/form_helpers.html)
  - [Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html)
  - [Strong Parameters](http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters)
- [Rails cheatsheet](http://courseware.codeschool.com/rails_for_zombies_2_cheatsheets.pdf)
- [Git workflow](../resources/git-workflow.md)

---

## Tuesday
### Integration and Controller Testing

### Core

**Talks**

- Railsy Talks

**Challenges**

- [Rocket, Paper-plane, Scissors](../../../../rocket-paperplane-scissors-challenge)
- [TDD Favorite Songs Application](../../../../tdd-favorite-songs-rails-challenge)

**Prep for Tomorrow**

- Watch this talk on [Lifecycle of a Project (Coding with Care)](https://talks.devbootcamp.com/coding-with-care)
- Read about [how to create user stories](http://techportal.inviqa.com/2011/07/19/how-to-create-user-stories/)
- Read the [Group Project Process](../resources/group_project_process.md)

---

## Wednesday
### Client Project - Day 1/3

### Core

**Talks**

- Railsy Talks

**Group Project**

[Client Project](../../../../client-project-challenge)

You should follow this [Group Project process](../resources/group_project_process.md) to get practice with the standard development team workflow.

Today, you will:

- meet with your client to get your project's requirements
- determine your team's working process
- write out and plan your user stories
- set up your CI tools, code coverage and deployment environment
- begin working on your features

**Prep for Tomorrow**

- Read up on good commit messages
    - [5 Tips for a Better Commit Message](http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message)
    - [Git Commit Message Suggestions](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
- Read [Sandi Metz' Rules For Developers](http://robots.thoughtbot.com/sandi-metz-rules-for-developers).

### Additional Resources

- Code Coverage
  - [simplecov](https://github.com/colszowka/simplecov)
  - [Coveralls](https://coveralls.io/)
- Continuous Integration (CI) services
  - [TravisCI](https://travis-ci.org) and Nate's [guide to Travis](../resources/travis.md)
  - [CircleCI](https://circleci.com)
  - [Codeship](https://codeship.com/)
- Code Style Guides
  - [Ruby Community Guide](https://github.com/bbatsov/ruby-style-guide)
  - [AirBnB Ruby Guide](https://github.com/airbnb/ruby)
  - [AirBnB JavaScript Guide](https://github.com/airbnb/javascript/tree/master/es5)

---

## Thursday
### Client Project - Day 2/3

### Core

**Talks**

- Railsy Talks

**Group Project**

- [Client Project](../../../../client-project-challenge)

Today you will:

- continue working on your user stories
- continue testing
- in the afternoon, meet with your client and demo the project so far. You will then collect their feedback and adjust your user story priorities based on that feedback.

### Additional Resources

- [Protecting Secret Tokens in Open Source Software](https://github.com/devbootcamp/reference/wiki/Open-Source-Secrets)

---

## Friday
### Client Project - Day 3/3

### Core

**Talks**

- Railsy Talks

**Group Project**

[Client Project](../../../../client-project-challenge)

Today, you will:

- continue working on your client features in the morning
- spend some time finalizing your project (styling, refactoring, adding documentation, etc.)
- demo your project to your cohort

---

## Weekend

### Core

**Talks**

Choose a [Gemsy Talk Topic](../resources/gemsy_talk_topics.md) (using a Gem within a Rails app) and prepare your lightning talk.

**Solo Project**

We want you to take this opportunity before final projects begin to build something that satisfies and expands your curiosity. Build an app with a client-side framework. Explore a different data store. Deploy a Rails application to a VPS like DigitalOcean or Linode that you set up yourself. Write a JavaScript game. Write an app in Python. Write one tiny app six times in six different JavaScript frameworks.

Satisfy that curious person that made you sign up to DBC in the first place who's been watching the last 7 weeks go by, picking up knowledge and power and wondering how to use it.

Build something, and then show us on Monday morning. Make yourself proud.

**Prep for Monday**
- Watch this [Advanced JavaScript Talk](https://talks.devbootcamp.com/mvc-oojs-memory-game)
- Read this [Jasmine intro](../resources/jasmine.md) to get familiar with JavaScript testing.
- [Jasmine documentation](http://jasmine.github.io)
