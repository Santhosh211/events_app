# README
Coding Challenge 

For the coding exercise, you will need to write a simple service for storing and retrieving events
using a framework (Ruby, Rails) and database (MySQL, PostgreSQL).
An event consists of a timestamp, a string, and the hostname from which it originated.
Event
Timestamp
String
Hostname
Events can come from multiple "orgs" (this system is multi­tenant, single instance of software
serves multiple customers).
Construct the simplest thing you can think of that'll store these events and handle the following
queries, both in reverse chronological order:
* the last N events for an org
* the last N events for a specific host within an org

Provide results in GitHub, along with a README file and 1 test for either query above.

### SETUP ###
Set the ruby version:
* code was developed using ruby 2.3.0

Install the gems:   
* run `bundle install`  

MySQL:  
* App uses mysql, set up mysql

Setup the database, a seed database has been provided:  
* `rake db:create`  
* `rake db:migrate`  
* `rake db:seed`   

*unit tests have been provided, to run:  

run `bin/rails test`

### INSTRUCTIONS ###

*run query for last N events for an org.

`RestClient.get('http://localhost:3000/organizations/get_last_n_events?id=2')`

*run query for last N events for a specific host within an org.

`RestClient.get('http://localhost:3000/organizations/get_last_n_events?id=2&limit=2&hostname=Host%20abc')`