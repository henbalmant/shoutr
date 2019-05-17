# Shouter

Shouter is a social network based on Twitter. This project was developed for the purpose of learning, and only.

## Dependencies

### Ruby

The application require the 2.3.7 ruby version 

### Rails

Use rails 5.0.7

### Postgres

The application require a postgres server, at least in the `9.3` version. Any install method is fine (brew, dmg package ...).

## Installing

### Using rvm

To install rvm, run the following command in terminal

    bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

You can see that rvm is installed correctly by running rvm -v, which should show something like this

    rvm 1.26.9 (latest) by Wayne E. Seguin <wayneeseguin@gmail.com>, Michal Papis <mpapis@gmail.com> [https://rvm.io/]

Now that you have rvm. Ruby is simple to install

    rvm install X.Y.V

Where "X.Y.V" is the version number.

### Using rbenv (alternative to rvm)

To install rbenv and ruby-build with a dirt config for bash:

    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    source ~/.bash_profile

On successful install the message "rbenv is a function" should be the output of the command:

    type rbenv

To install a ruby version with rbenv

    rbenv install ruby-X.Y.Z
    
## Setup app:

Install project dependencies:

    bundle install

Configure your `config/database.yml` and create database

    bundle exec rails db:create
    
Ensure that all migrations are present after database restore:

    bundle exec rails db:migrate

and run server

    bundle exec rails s
    
