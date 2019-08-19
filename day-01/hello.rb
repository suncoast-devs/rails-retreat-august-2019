number = 42
PHI = 1.618 # This is a constant.

number = 7

puts PHI * number

if number > 1
  puts "It's bigger than one"
else
  puts "Not bigger than one"
end

100.times {
  print "."
}

i = 0

while i <= 100
  puts "Number #{i}"
  i += 1
end

puts 100.class

# numbers

puts 3
puts 4.7
puts(10_000_000_000)
puts 0xFF
puts 0b10101010

# booleans and nil

puts true
puts false
puts nil

if nil
  puts "HOW?"
else
  puts "This will happen."
end

#strings

puts "This is #{PHI}."
puts "That's cool."

#arrays

puts [1, 2, 2, 3]
puts [1, "da", true]

#hashes

# {
#   name: 'Jason'
# }

person_1 = {
  "name" => "Jason",
  "hair" => "Brown",
}

#symbols

puts :symbol

person_2 = {
  :name => "Jason",
  :hair => "Brown",
  "name" => "Tony",
  34 => "Thirty For",
}

puts person_1["hair"] == person_2[:hair]

puts person_1[:hair]

puts person_2[:name]
puts person_2["name"]

puts person_2

# drive(:fast)

# Classes

# class Animal {
#   constructor () {

#   }
# }

# new Animal()

class Animal
  def initialize(name)
    @name = name
  end

  def greeting
    "Hello, my name is #{@name}"
  end

  def greet
    puts greeting
  end
end

animal_a = Animal.new("Be-Bop")
animal_b = Animal.new("Rocksteady")

animal_a.greet
animal_b.greet

class Dog < Animal
  def greeting
    "Woof, woof, #{@name}!"
  end
end

dog = Dog.new("Bernadette")

dog.greet

puts 4 * 4

class Integer
  def *(a)
    self + a
  end
end

puts 4 * 4

puts "foo".empty?
puts "".empty?
puts nil.empty?
