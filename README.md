#Train Departure Board 
##Woody Butler 12/31/2016

A small webapp that retrieves and formats train departure data from MBTA online source, and displays in a table. 

##Build instructions:
`mix deps.get`

##Run instructions:
`mix phoenix.server`
localhost:4000/test

Largest source code changes from original package are in the /web/views/page_view.ex, however some styling and routing changes were made as well. Future improvements could be numerous, as this was my first foray into Elixir, or using a functional approach to web development. Some examples would be splitting page_requester function into more helper functions (Legacy habit from functional class at college, no helper functions generally allowed during assignments), loading data into a PSQL database and then reading from that to ensure fast clientside responses, and UI/UX changes to further highlight trains that are currently in station or not running on schedule. 
