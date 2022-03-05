# D - ABC Transform
S = gets.chomp
Q = gets.chomp.to_i
tk = []
Q.times do |i|
  tk[i] = gets.chomp.split.map(&:to_i)
end

pp tk

puts "t = #{tk[0][0]} "