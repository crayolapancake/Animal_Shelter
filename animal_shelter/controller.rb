require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('models/animal')
require_relative('models/owner')


get '/animals' do
  # puts "Index Route"
  @animals = Animal.all()
  erb (:"animals/index")
end


get '/animals/cats' do
  @animals = Animal.find_species('cat')
  erb (:"animals/index")
end

get '/animals/dogs' do
  @animals = Animal.find_species('dog')
  erb (:"animals/index")
end

get '/animals/new' do
  @owners = Owner.all
  erb(:"animals/new")
end

post '/animals' do
  Animal.new(params).save
  redirect to '/animals'
end

get '/animals/owner/new' do
  @animals = Animal.all
  erb(:"owners/reassign")
end

post '/animals/owner' do
  owner = Owner.new(params)
  owner.save
  Animal.adopt(params["animal_id"].to_i, owner.id)
  redirect to '/animals'
end
