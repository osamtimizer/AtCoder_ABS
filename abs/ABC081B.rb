n = gets.to_i
given = gets.chomp.split(' ').map(&:to_i)

counter = 0
condition_violated = false

while true do
  n.times do |num|
    if given[num] % 2 == 0
      given[num] = given[num] / 2
    else
      condition_violated = true
      break
    end
  end
  if condition_violated
    break
  end
  counter += 1
end

puts counter
