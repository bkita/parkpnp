# README

Sample parkpnp application.

* Ruby version 2.3.0

* Ruby version 5.0.1

* System dependencies

To install gems on your machine pleas run: bundle install --without production
Application uses PG database but only on production.

* Database migrations

bundle exec rake db:migrate

* Database seeds

bundle exec rake db:seed

* How to run the test suite

bundle exec rspec

* How to run the application

Please run the application with Stripe publishable and secret keys, e.g:

PUBLISHABLE_KEY=pk_test_123123 SECRET_KEY=sk_test_123123 rails s