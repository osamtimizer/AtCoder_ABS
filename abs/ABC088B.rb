N = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)

exit unless 1 <= N && N <= 100
arr.each do |num|
  exit unless 1 <= num && num <= 100
end

alice_result = 0
bob_result = 0

counter = 0
arr.sort.reverse.each do |num|
  if counter.even?
    alice_result += num
  else
    bob_result += num
  end
  counter += 1
end

puts alice_result - bob_result
