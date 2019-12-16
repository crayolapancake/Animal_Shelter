## Animal Shelter: Ruby Project

Web application Project

Designed an animal shelter website with details of animals to be adopted and funtionality to match animals with owners

Built using Ruby, HTML, CSS and PostgreSQL using CRUD.


## Installation

Install Postgres: $ brew install postgres && brew services start postgresql

Install rvm http://rvm.io/

Install bundler: $ gem install bundler

Install pry: $ gem install pry

$ git clone ...

# If prompted, install the version of Ruby required for this project

Install project gems: $ bundler install

Create development database: $ createdb animal_shelter

Set up tables: $ psql -d animal_shelter -f db/animal_shelter.sql

Seed development database with some data $ ruby db/seeds.rb

Run ruby controller.rb

