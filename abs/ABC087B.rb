A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

A_PRICE = 500
B_PRICE = 100
C_PRICE = 50

counter = 0

a_arr = []
b_arr = []
c_arr = []

(0..A).each do |num|
  a_arr << A_PRICE * num
end

(0..B).each do |num|
  b_arr << B_PRICE * num
end

(0..C).each do |num|
  c_arr << C_PRICE * num
end

(0..A).each do |num_a|
  a_price = A_PRICE * num_a
  (0..B).each do |num_b|
    b_price = B_PRICE * num_b
    (0..C).each do |num_c|
      c_price = C_PRICE * num_c
      sum = a_price + b_price + c_price
       counter += 1 if sum == X
    end
  end
end

puts counter
