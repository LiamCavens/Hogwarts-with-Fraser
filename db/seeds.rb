require_relative("../models/students_methods.rb")
require_relative("../models/house_methods.rb")

House.delete_all()
Student.delete_all()


house1 = House.new({
    "house_name" => "Gryffindor",
})

house1.save()

house2 = House.new({
    "house_name" => "Hufflepuff",
})

house2.save()

house3 = House.new({
    "house_name" => "Ravenclaw",
})

house3.save()

house4 = House.new({
    "house_name" => "Slytherin",
})

house4.save()

student1 = Student.new({
    "first_name" => "Rubeus",
    "last_name" => "Hagrid",
    "house_id" => house1.id,
    "age" => 90
})

student1.save()

student2 = Student.new({
    "first_name" => "Tom",
    "last_name" => "'Lord Voldemort' Riddle",
    "house_id" => house2.id,
    "age" => 89
})

student2.save()


