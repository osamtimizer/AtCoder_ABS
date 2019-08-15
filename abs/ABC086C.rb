class Point
  def initialize(x, y)
    @x = x
    @y = y
  end

  def length_to(x, y)
    (@x - x).abs + (@y - y).abs
  end

  def update(x, y)
    @x = x
    @y = y
  end
end

N = gets.chomp.to_i
exit if N > 10 ** 5

itinerary = []
N.times do |num|
  t, x, y = gets.chomp.split(' ').map(&:to_i)
  itinerary << [t, x, y]
end

current_position = Point.new(0, 0)
current_time = 0
goal = true

itinerary.each do |destination|
  t, x, y = destination
  length = current_position.length_to(x, y)
  remain_time = t - current_time

  if length > remain_time
    goal = false
    break
  end

  if (length.odd? && remain_time.even?) || (length.even? && remain_time.odd?)
    goal = false
    break
  end

  current_position.update(x, y)
  current_time = t
end

answer = goal ? "Yes" : "No"
puts answer
