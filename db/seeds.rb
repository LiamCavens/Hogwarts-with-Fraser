require_relative(".models/students.rb")

Student.delete_all()

student1 = Student.new({
    "first_name" => "Nicola",
    "last_name" => "Sturgeon",
    "house" => "Hufflepuff",
    "age" => 69
})

student1.save()

student2 = Student.new({
    "first_name" => "Donald",
    "last_name" => "Trump",
    "house" => "Slytherin",
    "age" => 74
})

student2.save()

