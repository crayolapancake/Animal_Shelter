require_relative('../db/sql_runner')

class Animal

  attr_accessor :name, :species, :age, :owner_id
  attr_reader :id

  def initialize(options)
      @id = options['id'].to_i if options['id']
      @name = options['name']
      @species = options ['species']
      @age = options ['age']
      @owner_id = options ['owner_id'].to_i
  end


  def save()
    sql = "INSERT INTO animals
    (name, species, age, owner_id)
    VALUES
    ($1, $2, $3, $4)
    RETURNING id"
    values = [@name, @species, @age, @owner_id]
    result = SqlRunner.run(sql, values)
    id = result.first['id']
   @id = id
  end

 def owner()
   animal = Owner.find(@owner_id)
   return owner
 end

 def update()
  sql = "UPDATE animals
  SET
  (name, species, age, owner_id) =
  ($1, $2, $3, $4)
  WHERE id = $5"      #remember to change this when adding breed etc
  values = [@name, @species, @age, @owner_id, @id]
  SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM animals
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM animals"
    animal_data = SqlRunner.run (sql)
    animals = map_items(animal_data)
    return animals
  end

  def self.map_items(animal_data)
    return animal_data.map { |animal| Animal.new(animal) }
  end

  def self.find(id)
    sql = "SELECT * FROM animals
    WHERE id = $1"
    values = (id)
    result = SqlRunner.run(sql, values).first
    animal = Animal.new(result)
    return animal
  end 


end
