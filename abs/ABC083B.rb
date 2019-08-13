input = gets.chomp.split(' ').map(&:to_i)

N = input[0]
A = input[1]
B = input[2]

exit unless A && B && N
exit if 10 ** 4 < N || A < 1|| B  < A || 36 < B

powers = []

BASE = 10
(0..3).each do |exp|
  powers << BASE ** exp
end

applied_sum = 0

(1..N).each do |num|
  num_digit = Math.log10(num).to_i
  sum = 0
  remain = num
  num_digit.downto(0) do |digit|
    target_digit_num = remain / powers[digit]
    remain -= target_digit_num * powers[digit]
    sum += target_digit_num
  end
  applied_sum += num if A <= sum && sum <= B
end

puts applied_sum
