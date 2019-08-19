require "csv"

CSV.open("student.csv", { :headers => true }).each do |row|
  puts "#{row["name"]} has #{row["hair"]} hair."
end
