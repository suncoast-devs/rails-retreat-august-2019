class Animal
  def initialize(name)
    @name = name
  end

  def greeting
    "..."
  end

  def greet
    puts greeting
  end
end

module Speaking
  def greeting
    "Hello, my name is #{@name}, #{sound}!"
  end
end

class Dog < Animal
  include Speaking

  def sound
    "Woof"
  end
end

class Cat < Animal
  include Speaking

  def sound
    "Meow"
  end
end

class Computer
  include Speaking

  def initialize(name)
    @name = name
  end

  def sound
    "Beep, boop."
  end

  def greet
    exec "say #{greeting}"
  end
end

dog = Dog.new("Bernie")
dog.greet

cat = Cat.new("Pheobe")
cat.greet

hal = Computer.new("Hal 9000")
hal.greet
