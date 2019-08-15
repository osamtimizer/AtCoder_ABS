s = gets.chomp

exit if s.length > 10 ** 5

while s.length > 0
  if s.index("eraser") == 0
    s.slice!(0, 6)
  elsif s.index("erase") == 0
    s.slice!(0, 5)
  elsif s.index("dreameraser") == 0
    s.slice!(0, 11)
  elsif s.index("dreamerase") == 0
    s.slice!(0, 10)
  elsif s.index("dreamer") == 0
    s.slice!(0, 7)
  elsif s.index("dream") == 0
    s.slice!(0, 5)
  else
    break
  end
end

result = s.length == 0 ? "YES" : "NO"
puts result
