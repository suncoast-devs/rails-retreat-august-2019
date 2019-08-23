# Board Game Library

## `app`

This is where our application acutally lives:

- `assets`: JavaScript, images & CSS
- `channels`: For real-time websocket stuff
- **`controllers`**: CONTROLLERS
- `helpers`: Helper functions, mostly for views
- `jobs`: Background processing
- `mailers`: Email handling code
- **`models`**: MODELS
- **`views`**: VIEWS

MVC - Model, View, Controller

## `bin`

bin-stub scripts for making sure you're executing the right versions of
bundler and/rails, also some utility scripts setting up and app.

## `config`

All the various configuation bits for the app. `routes.rb` is probably the
most important file you'll use day-to-day.

## `db`

- `seeds.rb` for loading test or example data. Possibly seeding a production database with starter data. Whatever you want to do with it.

This is also where database migrations and your schema will be stored.

## `lib`

Rarely used these days.

## `logs`

Where all logs are stored by default. In production you'd probably setup a
remote logging service or rotate the log files hear. Don't forget to clear
them once in a while in development.

`rails log:clear`

## `public`

This is where static assets hosted by the HTTP server live.

## `storage`

This is for ActiveStorage, file uploading built-in to rails

## `test`

This is where all of our unit, functional, etc. tests will go.

### Unit Tests (aka Model Tests)

> Model tests are used to test the various models of your application.

The can be used to test business logic from the inside out, internally.

### Functional Tests (aka Controller Tests)

> In Rails, testing the various actions of a controller is a
> form of writing functional tests. Remember your controllers
> handle the incoming web requests to your application and
> eventually respond with a rendered view. When writing
> functional tests, you are testing how your actions handle
> the requests and the expected result or response, in some
> cases an HTML view.

E.g. Does the controller redirect correctly after updating a resources.

- Very granular, one test does not verify multiple actions

### Integration Tests

> Integration tests are used to test how various parts of
> your application _interact_. They are generally used to
> test important workflows within our application.

- More broad then functional tests:
  - Validate views, check for specific text on pages
  - one tests might walk thorugh multiple actions to
    validate a workflow.
  - Often tell a story

### System Tests

Like integration tests, but run the browser with selenium
These are your full end-to-end tests.

> System tests allow you to test user interactions with your application, running tests in either a real or a headless browser. System tests uses Capybara under the hood.

## `tmp`

Temporary files, caches, etc. Mostly ignored in git.

## `vendor`

Another "back-in-the-day" thing. For third-party code.

## `brew install ImageMagick`
