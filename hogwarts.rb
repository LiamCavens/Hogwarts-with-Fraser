require('sinarta')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/students.rb')

#index
get "/dogwarts" do 
    @students = Student.all()
    erb(:index)
end

#new

#show

#create

#edit

#update

#destroy