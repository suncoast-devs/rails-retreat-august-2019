MIN = 1
MAX = 1_000_000_000
lower = MIN
upper = MAX
guess = nil
answer = nil
tries = 0

puts "Pick a number between #{MIN} and #{MAX}. I will guess it in #{Math.log2(MAX).ceil} tries or less."

while answer != "y"
  tries += 1
  guess = (upper + lower) / 2
  print "Is your number #{guess}? (y)es, (h)igher, (l)lower: "
  answer = gets.chomp

  case answer
  when "h"
    lower = guess + 1
  when "l"
    upper = guess - 1
  end
end

puts "Your number was #{guess}. I got it in #{tries} tries."
