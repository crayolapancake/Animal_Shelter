require_relative('../models/animal')
require_relative('../models/owner')

owner1 = Owner.new({
  'name' => 'Jemma',
  'pets' => 'Lottie'
  })
owner2 = Owner.new({
  'name' => 'Tori',
  'pets' =>'Islay'
  })  #will pet name need to link to a hash? will lottie need to be animal.1?

owner1.save
owner2.save

animal1 = Animal.new({
  'name' => 'Pickle',
  'species'=> 'dog',
  'age' => 4
  #'adoptable' => 'no'
  })

  animal2 = Animal.new({
    'name' => 'Bambam',
    'species'=> 'cat',
    'age' => 3
    #'adoptable' => 'no'
    })

    animal3 = Animal.new({
      'name' => 'Max',
      'species'=> 'Dog',
      'age' => 8
      #'adoptable' => 'no'
      })

  animal1.save
  animal2.save
  animal3.save
