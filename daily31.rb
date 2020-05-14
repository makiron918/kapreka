# puts "何回表示させますか？"
# input = gets.to_i
# input.times do
#   puts "Hello"
# end

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Student < Person

  def introduce
    puts "私の名前は#{@name}です。#{@age}歳です。"
  end
end

yamada = Student.new("山田", 20)
yamada.introduce