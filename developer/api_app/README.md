# Sample express API app
Exposes end points  

- GET /
- GET /quote/random
- GET /quote/:index
- POST /quote  `{"author":"", "text":"" }`
- DEL /quote/:index
- GET /couch/test
- GET /couch/views  


## Pre-Requisites
Couchbase community edition 4.0.0 is used for this. Though it is easy to spin up a couchbase server using docker as `docker run -d --name db -p 8091-8094:8091-8094 -p 11210:11210 couchbase:community-4.0.0`, initial configuration of couch server is manual at this time. 

#### Initial configuration of couch server

1. Hit http://couchserver:8091/
2. Hit next and go with defaults. Select 'beer-sample' bucket on the screen and select Enable Flush
3. Ignore the failover error/warning for now. Sure you have to have at least another server for proper failover, however we are using this as development server for now
4. Click "Views" against default bucket and click "create development view"
5. Type "_design/dev_beer" and "beer" as view name and click Save
6. Now click "beer" row created and in the map-reduce area type the below content `function(doc) {
  if(doc.date && doc.title) {
    emit(doc.date, doc.title);
  }
}`
7. The above code means return any json documents that have date and title as keys (We will see this later because in /couch/views we retrieve these buckets to populate it on the view)
8. Don't forget to publish the view, so that it becomes official to production and usable


## Details 

Open app.js file and decipher yourself - its really easy, below is some help.  

Array of json - dataset is hardcoded as initial. First 5 end points above uses this dataset  

### GET /couch/test
Create a random json and upsert it into the "beer-sample" bucket (See at the top of app.js how we initialize connection to Couchbase)  
We also log it to console (to view the output on server stdout) and also return in the response  

### GET /couch/views
Create a ViewQuery and execute the view "beer", which we created in the "Initial Configuration..." section above.  
Resultset is output to console and api response

## Docker image
Build: `docker build -t  "api_snapshot" -f Dockerfile .`  
Run: `docker run -d -p 3412:3412 --name api_app api_snapshot` (It is assumed that there environment variable COUCH_SERVER is available to the container)  
Run: `docker run -d -p 3412:3412 -e COUCH_SERVER=$(docker-machine ip default) api_app` (assuming couch server is running on docker host. See app.js, where we reaad the environment variable $COUCH_SERVER)  

# Acceptance Tests

## Manual Testing during debugging
In /test folder, postman collection for api end points is available. Please take a look for initial understanding. Import the collection in Chrome Postman plugin

## Pre-Reqs

- Ruby 2.0 or higher installed
- `cd acceptance_tests`
- `bundle install`
- `bundle exec cucumber features` (The default cucumber profile assumes application is available on localhost:3412)


