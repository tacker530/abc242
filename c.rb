# C - 1111gal password
N = gets.chomp.to_i
DIV = 998244353

# 可能性のある数
dp = []
dp << [1,1,1,1,1,1,1,1,1]
(N).times do |i|
  dp << [0,0,0,0,0,0,0,0,0]
end

N.times do |i|
  #puts "#{i}" if i.modulo(10000) == 0
  9.times do |j|
      if j == 0 then
      dp[i+1][j] = (dp[i][j] + dp[i][j+1]).modulo(DIV)
    elsif j == 8 then
      dp[i+1][j] = (dp[i][j] + dp[i][j-1]).modulo(DIV)
    else
      dp[i+1][j] = (dp[i][j] + dp[i][j-1] + dp[i][j+1]).modulo(DIV)
    end
  end
end

pp dp[N-1].sum.modulo(DIV)
