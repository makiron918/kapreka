puts "何回表示させますか？"
input = gets.to_i
input.times do
  puts "Hello"
end

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Student < class Person

class Student
  def introduce
    puts "私の名前は#{@name}です。#{@age}歳です。"
  end
end