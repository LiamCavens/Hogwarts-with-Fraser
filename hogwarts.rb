require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/students_methods.rb')

#index
get "/hogwarts" do 
    @students = Student.all()
    erb(:index)
end

#new
get "hogwarts/new" do
    erb(:new)
end
#show

#create

#edit

#update

#destroy