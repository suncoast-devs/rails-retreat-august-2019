[21, 7, 42, 8, 16].each do |n|
  puts n * n
end

hash = { :a => 1, :b => 2 }

hash.each do |k, v|
  puts "The key is #{k}, value is #{v}"
end

puts hash.keys.inspect
