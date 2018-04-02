# to do: setup delete & update owner, if needed. remember to change attr_accessor also



require_relative('../db/sql_runner')

class Owner

  attr_reader :id, :name, :pets

  def initialize(options)
      @id = options['id'].to_i if options['id']
      @name = options['name']
      @pets = options [] #is this right?
  end

  def save()
    sql = "INSERT INTO owners
    (name, pets)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@name, @pets]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id.to_i
  end

  def self.find(id)
    sql = "SELECT * FROM owners
    WHERE id = $1"
    values = [id]     #not an @instance variable?
    result = SqlRunner.run(sql, values).first #returns first itme in array
    owner = Owner.new(result)
    return owner
  end

  def format_name
    return "#{@first_name.capitalize} #{@last_name.capitalize}"
  end

  def self.map_items(owner_data)
    return house_date.map { |owner| Owner.new(owner) }
  end

end
