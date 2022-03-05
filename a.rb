#A - T-shirt
A,B,C,X = gets.chomp.split.map(&:to_f)

# 上位Aに入る場合
if X <= A then
  puts "1"
  exit
end
# 上位A＋１からB位中のC人
if X >= A+1 and  X <= B then
  puts C/(B - A )
  exit
end

# B未満
puts 0
