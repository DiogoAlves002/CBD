

db.getCollection("restaurants").find({})


//db.restaurants.find( {}, {nome: 1, localidade: 1, gastronomia: 1, $elemMatch:{score:1}, _id: 0 } )


// 14 attempt ↓
//db.restaurants.find({grades: {$elemMatch: {grade: "A"}, $elemMatch: {score: 10}, $elemMatch: {date: "2014-08-11T00: 00: 00Z"}}}, {nome:1, grades:1})

// 16 attempt ↓
db.restaurants.find({"address.coord.1": {$gt: 42}, "address.coord.1": {$lt: 52}}, {restaurant_id:1, nome:1, "address.coord": 1})
