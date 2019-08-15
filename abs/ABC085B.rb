N = gets.to_i
input = []

N.times do |num|
  input << gets.to_i
end

tower = []

input.each do |num|
  tower << num if tower.select { |val| val == num }.count == 0
end

puts tower.length
