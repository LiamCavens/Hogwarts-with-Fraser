require_relative("../models/students_methods.rb")

Student.delete_all()

student1 = Student.new({
    "first_name" => "Rubeus",
    "last_name" => "Hagrid",
    "house" => "Griffindor",
    "age" => 90
})

student1.save()

student2 = Student.new({
    "first_name" => "Tom",
    "last_name" => "'Lord Voldemort' Riddle",
    "house" => "Slytherin",
    "age" => 89
})

student2.save()

