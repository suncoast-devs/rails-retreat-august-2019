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

## `tmp`

Temporary files, caches, etc. Mostly ignored in git.

## `vendor`

Another "back-in-the-day" thing. For third-party code.
