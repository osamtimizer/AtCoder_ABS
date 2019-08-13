a, b = gets.chomp.split(' ').map(&:to_i)
product = a * b
if product % 2 == 0
  print 'even'
else
  print 'odd'
end
