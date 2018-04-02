require_relative('../models/animal')
require_relative('../models/owner')

owner1 = Owner.new({
  'name' => 'Jemma'
  })
owner2 = Owner.new({
  'name' => 'Tori'
  })

owner3 = Owner.new({
  'name' => 'Nicole'
  })

owner1.save
owner2.save
owner3.save

animal1 = Animal.new({
  'name' => 'Lottie',
  'species'=> 'dog',
  'age' => 5,
  'adoptable' => 'yes',
  'owner_id' => owner1.id
  #'adoptable' => 'no'
  })

  animal2 = Animal.new({
    'name' => 'Bambam',
    'species'=> 'cat',
    'age' => 3,
    'adoptable' => 'yes',
    'owner_id' => owner2.id
    #'adoptable' => 'no'
    })

    animal3 = Animal.new({
      'name' => 'Islay',
      'species'=> 'dog',
      'age' => 3,
      'adoptable' => 'yes',
      'owner_id' => owner3.id
      #'adoptable' => 'no'
      })

  animal1.save
  animal2.save
  animal3.save
