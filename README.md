# README

RESTful API to handle a database (using SQLite3) of vehicles, written in Ruby (Using Atom IDE).

### Tools, Frameworks & Versions

* <u>Ruby :</u> ruby 2.7.0p0 2019-12-25 [x86_64-linux-gnu]
* <u>SQLite3 :</u> 3.31.1 2020-01-27
* <u>Rails :</u> 5.2.6
* <u>Puma :</u> 3.12.6
* <u>Bundler :</u> 2.1.4
* <u>RSpec-rails :</u>
  RSpec 3.9 (Test framework)
  - rspec-core 3.9.3
  - rspec-expectations 3.9.4
  - rspec-mocks 3.9.1
  - rspec-rails 3.9.1
  - rspec-support 3.9.4

  - For the testing environment several gems have been installed in the Gemfile (factory_bot_rails, shoulda_matchers, faker and database_cleaner) :
  <b>Don't forget to run the command : <code>$ bundle install</code></b> to install the gems before runnin the API for the first time

### Configuration

#### Test

* The testing configuration is set in both files /spec/rails_helper.rb and /spec/spec_helper.rb

* Command line to run the tests : <code>$ bundle exec rspec</code>

#### Database

* Initialisation :
  - Initialise the DB by running a migration with the following command line : <code>$ bin/rails db:migrate</code>
  - Populate the DB with 6 veiculos, running the command line : <code>$ bin/rails db:seed</code>

* Cleaning :
  - You can clean the SQLite3 Database by running the following command : <code>bin/rails db:drop</code>

#### Run

* Run the API : execute the command line <code>$ rails s</code>
* Open your favorite browser to listen the port 3000 of localhost : <code>http://localhost:3000/veiculos</code>

### Routes and CRUD

The API routes are configurated in the file config/routes.rb, and have been tested with Postman. You can run the command <code>$ rails routes</code> to check these routes.

Look at the description below to add, read, update and delete some vehicles in the database, using POSTMAN or your web browser

#### GET

  * /veiculos : get the list of all vehicles registered in the DB
  * /veiculos/{id} : get the vehicle with the parameter {id}

#### POST

* /veiculos : add a vehicle in the database, for example :
  - In POSTMAN, select POST and fill the parameters, or paste the following http address :
  - localhost:3000/veiculos?marca=uma marca&veiculo=um modelo&ano=2000&descricao=uma descricao&vendido=true

#### PUT

* /veiculos/{id} : update the veiculo selected with its {id} (to update some datas on the veiculo nº7 for example) :
  - In POSTMAN, select PUT and fill the parameters, or paste the following address :
  - localhost:3000/veiculos/7?marca=uma outra marca&veiculo=um outro modelo&descricao=uma outra descricao

#### DELETE

* /veiculos/{id} : remove the veiculo nº{id}, for example :
  - In POSTMAN, select DELETE and paste the following address :
  - localhost:3000/veiculos/7 (to remove the veiculo nº7 from the DB)
