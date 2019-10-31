# Mqtt2Mysql Service Applicaton

## Description
While building my home automation system, I had the problem of wanting to store all my systems 'state' information historically for review later on in a Grafana dashboard. A couple of solutions existed, but being it was a simple problem I decided to fix the issue myself. The application, by default, subscribes to all the topics in the MQTT Broker ("#") and writes the changes to a MySQL database in two tables. The message data is timestamp in milliseconds to allow for dashboard software (e.g. Grafana) to query the information and produce time series graphs and diagrams.

As my home automation uses MQTT as a central queue for all events (Lights, Power Plugs, Smart TVs, etc.), this means every devices state is up for review on the dashboard at any time by writing the appropiate query.

## Running The Application
The Github repository is currently connected to Docker Hub. A new docker image named "geoffh1977/mqtt2mysql" is created with every push to master. Feel free to download this image and use it to your hearts content. All items are configurable via Environment variables and the SQL to create the inital DB/tables in MySQL is available in the Github repository.

