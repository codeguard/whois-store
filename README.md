# README

This is a Rails application which stores whois data for domains.


## Starting the app

In a local development environment with Ruby and Bundler installed:

```
cd whois-store
bundle install
rails s
```

## Running tests

Tests can be run with `rails test` after installing the application dependencies with `bundle install`.


## Using vagrant

Using a vagrant development environment requires [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox). With those two dependencies installed you can start and connect to the development environment:

```
vagrant up
vagrant ssh
```
