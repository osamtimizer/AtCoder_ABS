input = gets.to_i(2)
result = 0

(0..2).each do |num|
  result += input[num]
end

print "#{result}\n"
