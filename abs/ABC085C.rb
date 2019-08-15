N, Y = gets.chomp.split(' ').map(&:to_i)

max_10000yen_count = Y / 10000

(0..max_10000yen_count).each do |num_1|
  remain = N - num_1
  (0..remain).each do |num_2|
    num_3 = N - num_1 - num_2
    if Y - (num_1 * 10000 + num_2 * 5000 + num_3 * 1000) == 0
      puts "#{num_1} #{num_2} #{num_3}"
      exit
    end
  end
end

puts "-1 -1 -1"
