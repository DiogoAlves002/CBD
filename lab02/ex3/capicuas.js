capicuas = function () {
    var phones_array= db.phones.find({},{"display" : 1, "_id" : 0}).toArray()

    for (var i = 0; i < phones_array.length; i++) {  

        var phone= phones_array[i].display.split("-")[1] // get only the number
        var inverted_phone= phone.split('').reverse().join('')

        if (phone == inverted_phone){
            print(phone)
        }
    }
    print("Done!");
  }
  