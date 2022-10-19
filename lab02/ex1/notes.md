# Starting Mongo by hand -- __PREFERED WAY__

## Start MongoBD
`mongod --dbpath </home/das002/programas/MongoDB>`

# Starting Mongo by Service -- __NOT PREFERED WAY__

## Start MongoDB
```sudo systemctl start mongod```

## Stop MongoDB
```sudo systemctl stop mongod```

## Restart MongoDB
```sudo systemctl restart mongod```

## Begin using MongoDB
```mongosh``` 

## Remove Data Directories

`sudo rm -r /var/log/mongodb`
`sudo rm -r /var/lib/mongodb`

[Tutorial_page] (https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/)


# Initial Mongo Interactions

```show dbs```
admin    40.00 KiB
config  108.00 KiB
local    72.00 KiB

`add database`
mongoimport --db cbd --collection restaurants --drop --file path_to_file/restaurants.json

