[21, 7, 42, 8, 16].each do |n|
  puts n * n
end

hash = { :a => 1, :b => 2 }

hash.each do |k, v|
  puts "The key is #{k}, value is #{v}"
end

puts hash.keys.inspect

("a".."z").each { |l| puts l }

n = 42
(1..n).each { |l| puts l }

name = "Bob"

if name =~ /a/
  puts "Name contains an \"a\""
end

print "What's your name? "
case name = gets.chomp
when /^a/i
  puts "#{name} is always first in line."
when /a/
  puts "Name contains an \"a\""
when /o/
  puts "do odooo dodoo too do."
else
  puts "Hi, #{name}"
end
