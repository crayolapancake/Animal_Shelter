require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('models/animal')
require_relative('models/owner')


get '/animals' do
  # puts "Index Route"
  @animals = Animal.all
  erb (:index)
end

get '/animals/new' do
  @owners = Owner.all
  erb(:new)
end

post '/animals' do
  Animal.new(params).save
  redirect to '/animals'
end

# get '/animals/owners' do
#   # puts "Index Route"
#   @owners = Owner.all
#   erb (:index)
# end
# not working
