def log(message)
  puts message.inspect
end

numbers = [1, 2, 4, 53, 455, 123, 231]

double_numbers = numbers.map do |n|
  n + n
end

log numbers.inspect
log double_numbers.inspect

sum = 0
numbers.each { |n| sum += n }
log sum

log numbers.reduce { |memo, n| memo * n }

log numbers.any? { |n| n > 500 }

# log numbers.reduce(false) { |memo, n| n > 500 ? true : false }

log numbers.select { |n| n > 100 }
log numbers.find { |n| n > 100 }

log numbers.reject { |n| n > 100 }

log numbers.first
log numbers.last
