number = 42
guess = nil

while guess != number
  print "What number am I thinking of? "
  guess = gets.to_i

  unless guess.nil?
    if guess > number
      puts "Too high."
    else
      puts "Too low." unless number == guess
    end
  end
end

puts "You got it, dude!"
