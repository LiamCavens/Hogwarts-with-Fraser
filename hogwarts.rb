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
get "/hogwarts/new" do
    erb(:new)
end
#show
get "/hogwarts/:id" do
    @student = Student.find(params[:id])
    erb(:show)
end

#create
post "/hogwarts" do
    student = Student.new(params)
    student.save()
    redirect to "/hogwarts"
end
#edit

#update

#destroy