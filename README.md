[![Code Climate](https://codeclimate.com/github/kompakt-solutions/currency-converter/badges/gpa.svg)](https://codeclimate.com/github/kompakt-solutions/currency-converter) [![Build Status](https://travis-ci.org/kompakt-solutions/currency-converter.svg?branch=master)](https://travis-ci.org/kompakt-solutions/currency-converter) [![Test Coverage](https://codeclimate.com/github/kompakt-solutions/currency-converter/badges/coverage.svg)](https://codeclimate.com/github/kompakt-solutions/currency-converter/coverage)

This is a currency converter web app, which uses the http://fixer.io API to get currency rates.

It is built using Rails 5, with CI/CD using Travis CI and Heroku. It also has support for running this app using docker.

## How to run the app

This project was built using docker to facilitate the development. In order to run the project locally, first install docker and then clone this repo.

Inside the project's root folder, run:

```shell
docker-compose build
docker-compose up
```

The first command will download the PostgreSQL docker image and build our app docker image. The second command will start the containers. If everything went well you should see something like this in your shell:

```shell
web_1  | => Booting Puma
web_1  | => Rails 5.1.0 application starting in development on http://0.0.0.0:3000
web_1  | => Run `rails server -h` for more startup options
web_1  | Puma starting in single mode...
web_1  | * Version 3.8.2 (ruby 2.4.1-p111), codename: Sassy Salamander
web_1  | * Min threads: 5, max threads: 5
web_1  | * Environment: development
web_1  | * Listening on tcp://0.0.0.0:3000
web_1  | Use Ctrl-C to stop
```

Open the browser and navigate to http://localhost:3000.

## Testing

To run the tests you can run:

```shell
docker-compose run --rm web rake db:setup
docker-compose run --rm web rspec
```

The first command will create the test database, and the second will run the tests.

